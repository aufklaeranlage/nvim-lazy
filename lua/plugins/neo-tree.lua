return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
	lazy = false,
	config = function ()
		vim.keymap.set("n", "<leader>ee", "<Cmd>Neotree toggle<CR>")
		vim.keymap.set("n", "<leader>er", "<Cmd>Neotree focus<CR>")
		require('neo-tree').setup({
			close_if_last_window = false, -- Close Neo-tree if it is the last window left in the tab
			popup_border_style = "NC", -- or "" to use 'winborder' on Neovim v0.11+
			enable_git_status = true,
			enable_diagnostics = true,
			open_files_do_not_replace_types = { "terminal", "trouble", "qf" }, -- when opening files, do not use windows containing these filetypes or buftypes
			open_files_using_relative_paths = false,
			filesystem = {
				window = {
					position = 'left',
					widht = '35',
					mapping_options = {
						noremap = true,
						nowait = true,
					},
					mappings = {
						['a'] = 'add',
						['A'] = 'add_directory',
						['d'] = 'delete',
						['r'] = 'rename',
						['b'] = 'rename_basename',
						['c'] = 'copy',
						['m'] = 'move',
						["q"] = "close_window",
						["z"] = "close_all_nodes",
						['<cr>'] = 'open',
						["S"] = "open_split",
						["s"] = "open_vsplit",
						['H'] = 'toggle_hidden',
					},
				},
			},
		})
	end
}
