-- lua/plugins/themery.lua
return {
	"zaldih/themery.nvim",
	lazy = false,
	config = function()
		require("themery").setup({
			themes = {
				-- "catppuccin-latte",
				"carbonfox",
				"catppuccin-frappe",
				"catppuccin-macchiato",
				"catppuccin-mocha",
				"dracula",
				"duskfox",
				"everblush",
				"everforest",
				"github_dark_default",
				"gruvbox",
				"kanagawa-dragon",
				"kanagawa-lotus",
				"kanagawa-wave",
				"material-darker",
				"melange",
				"mellifluous",
				"mellow",
				"miasma",
				"moonfly",
				"nightfox",
				"night-owl",
				"nord",
				"nordfox",
				"onedark",
				"onedark_vivid",
				"onedark_dark",
				"oxocarbon",
				"palenight",
				"rose-pine-moon",
				"terafox",
				"tokyonight-moon",
				"tokyonight-night",
				"tokyonight-storm",
				"vaporwave",
				"zephyr",
			},
			livePreview = true,
			-- add the config here
		})

		vim.keymap.set("n", "<leader>tt", "<cmd>Themery<CR>", { desc = "Open Themery menu" })
	end,
}
