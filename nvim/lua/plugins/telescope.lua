return {
    {
        'nvim-telescope/telescope.nvim',
        dependencies = {
            'nvim-lua/plenary.nvim'
        },
        config = function()
            local telescope = require('telescope')
            local builtin = require('telescope.builtin')
            local command = require('telescope.command')

            telescope.setup {
                extensions = {
                    fzf = {
                        fuzzy = true,
                        override_generic_sorter = true,
                        override_file_sorter = true,
                        case_mode = "smart_case",
                    }
                }
            }

            telescope.load_extension('fzf')

            local keymap = require('utils.keymap')
            keymap.set('n', '<leader>ft', command.load_command, { desc = 'Open telescope' })
            keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Files' })
            keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Grep' })
            keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Files' })
            keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Files' })
        end,
    },
    {
        'nvim-telescope/telescope-fzf-native.nvim',
        build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build'
    }
}
