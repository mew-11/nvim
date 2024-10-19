return {
	"folke/noice.nvim",
	lazy = false,
	dependencies = {
		"MunifTanjim/nui.nvim",
		"rcarriga/nvim-notify",
	},
	config = function()
		require("noice").setup({
			cmdline = {
				enabled = true, -- enables the Noice cmdline UI
				format = {
					cmdline = { title = " Command Line   ", pattern = "^:", icon = " ", lang = "vim" },
					search_down = {
						title = " Search   ",
						kind = "search",
						pattern = "^/",
						icon = "  ",
						lang = "regex",
					},
					search_up = {
						title = " Search   ",
						kind = "search",
						pattern = "^%?",
						icon = "  ",
						lang = "regex",
					},
					filter = { pattern = "^:%s*!", icon = "$", lang = "bash" },
					lua = {
						title = " Lua   ",
						pattern = { "^:%s*lua%s+", "^:%s*lua%s*=%s*", "^:%s*=%s*" },
						icon = " ",
						lang = "lua",
					},
					help = { title = " Help   ", pattern = "^:%s*he?l?p?%s+", icon = "⭐" },
					input = { view = "cmdline_input", icon = "󰘳 " }, -- Used by input()
				},
			},
			scroll = false, -- enable/disable scrolling in the cmdline

			lsp = {
				override = {
					["vim.lsp.util.convert_input_to_markdown_lines"] = false,
					["vim.lsp.util.stylize_markdown"] = false,
					["cmp.entry.get_documentation"] = true,
					["cmp.lsp.progress"] = true,
				},
				progress = {
					enabled = true,
				},
				hover = {
					enabled = false,
				},
				signature = {
					enabled = false,
				},
			},
			presets = {
				bottom_search = true, -- use a classic bottom cmdline for search
				lsp_doc_border = true, -- add a border to hover docs and signature help
				command_palette = {
					views = {
						cmdline_popup = {
							position = {
								row = "33%",
								col = "50%",
							},
						},
					},
				},
			},
			views = {
				mini = {
					win_options = {
						winblend = 0,
					},
				},
			},
			messages = {
				enabled = true, -- enables the Noice messages UI
				view = "mini", -- default view for messages
				view_search = "virtualtext", -- view for search count messages. Set to `false` to disable
			},
			format = {
				spinner = {
					name = "dots",
				},
			},
		})
	end,
}
