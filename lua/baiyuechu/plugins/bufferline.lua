return {
	"akinsho/bufferline.nvim",
	version = "*",
	lazy = false,
	cmd = { "BufferLine" },
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		local bg = "#98be65"

		require("bufferline").setup({
			options = {
				-- mode = "tabs",
				-- -- no open file no name on startup
				-- ------------------------------------------------
				-- hover = {
				--    enabled = true,
				--    delay = 0,
				--    reveal = { "close" },
				-- },
				-- buffer_close_icon = "󰅚",
				indicator = {
					-- icon = "▎", -- this should be omitted if indicator style is not 'icon'
					icon = "",
					style = "icon",
				},
				show_buffer_close_icons = false,
				show_close_icon = false,
				-- diagnostics = "nvim_lsp",
				-- -- separator_style = "slope",
				numbers = "ordinal",
				offsets = {
					-- '┌', '┬', '┐',
					{
						filetype = "NvimTree",
						text = "File Explorer",
						highlight = "Directory",
						text_align = "center",
					},
					{
						filetype = "neo-tree",
						text = "File Explorer",
						highlight = "Directory",
						text_align = "center",
					},
					{
						filetype = "aerial",
						text = "Outline Explorer",
						highlight = "Directory",
						text_align = "center",
					},
					{
						filetype = "undotree",
						text = "Undo Explorer",
						highlight = "Directory",
						text_align = "center",
					},
					{
						filetype = "spectre_panel",
						text = "Project Blurry Search",
						highlight = "Directory",
						text_align = "center",
					},
				},
			},
			highlights = {
				buffer_selected = {
					bg = bg,
					bold = false,
					fg = "#000000",
				},
				numbers_selected = {
					fg = "#000000",
					bg = bg,
				},
				close_button_selected = {
					fg = "#000000",
					bg = bg,
				},
				modified_selected = {
					bg = bg,
				},
				indicator_selected = {
					bg = bg,
				},
				separator_selected = {
					bg = bg,
				},
				pick_selected = {
					bg = bg,
				},
				error_selected = {
					bg = bg,
				},
				warning_selected = {
					bg = bg,
				},
				info_selected = {
					fg = "#582ab5",
					bg = bg,
				},
				hint_diagnostic_selected = {
					fg = "#000000",
					bg = bg,
				},
				duplicate_selected = {
					fg = "#000000",
					bg = bg,
				},
			},
		})
	end,
}
