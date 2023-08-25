local lsp_utils = require('utils.lsp')

local lsp_tools = {
    -- language servers
    'gopls',
    'terraform-ls',
    'lua-language-server',

    -- linters
    'golangci-lint',

    -- formatter

    -- code actions
    'gomodifytags',
}

local servers_config = {
    lua_ls = function()
        local ok, neodev = pcall(require, 'neodev')
        if not ok then
            vim.notify("cannot import 'neodev'; using empty config", vim.log.levels.WARN)
            return {}
        end

        neodev.setup({})

        return {
            settings = {
                Lua = {
                    hint = {
                        enable = true,
                    },
                    workspace = {
                        checkThirdParty = false,
                    },
                    format = {
                        enable = false
                    },
                },
            },
        }
    end,
}

return {
    {
        'neovim/nvim-lspconfig',
        dependencies = {
            'williamboman/mason-lspconfig.nvim'
        },
        init = function()
            lsp_utils.customise_ui()
            lsp_utils.setup_vim_diagnostics()
        end,
        config = function()
            local nvim_lspconfig = require('lspconfig')
            local mason_lspconfig = require('mason-lspconfig')
            for _, server in ipairs(mason_lspconfig.get_installed_servers()) do
                local config = lsp_utils.create_config(servers_config, server)
                nvim_lspconfig[server].setup(config)
            end
        end,
    },
    {
        'williamboman/mason.nvim',
        config = function()
            local mason = require('mason')
            mason.setup()
        end,
    },
    {
        'williamboman/mason-lspconfig.nvim',
        dependencies = {
            'williamboman/mason.nvim'
        },
    },
    {
        'WhoIsSethDaniel/mason-tool-installer.nvim',
        opts = {
            ensure_installed = lsp_tools,
            auto_update = true,
            run_on_start = true,
        },
    },
    {
        'VonHeikemen/lsp-zero.nvim',
        config = function()
            local lsp = require('lsp-zero').preset({})
            lsp.on_attach(function(client, bufnr)
                lsp.default_keymaps({buffer = bufnr})
            end)
            local mason_lspconfig = require('mason-lspconfig')
            lsp.setup_servers(mason_lspconfig.get_installed_servers())
            lsp.setup()
        end,
    },
    {
        'folke/neodev.nvim',
    },
}
