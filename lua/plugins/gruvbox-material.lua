return {
	'sainnhe/gruvbox-material',
	lazy = false,
	enabled = true,
	priority = 1000,
	config = function()
		-- Optionally configure and load the colorscheme
		-- directly inside the plugin declaration.
		vim.g.gruvbox_material_foreground = 'medium'
		vim.g.gruvbox_material_background = 'medium'
		vim.g.gruvbox_material_ui_contrast = 'high'
		vim.g.gruvbox_material_float_style = 'bright'
		vim.g.gruvbox_material_statusline_style = 'material'
		vim.g.gruvbox_material_cursor = 'auto'
		vim.g.gruvbox_material_enable_italic = true
		vim.cmd.colorscheme('gruvbox-material')
	end
}
