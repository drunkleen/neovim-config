-- lua/plugins/comment.lua

return {
	"numToStr/Comment.nvim",
	lazy = false,
	config = function()
		require("Comment").setup()
		local api = require("Comment.api")

		-- Normal mode: toggle comment for current line
		vim.keymap.set("n", "<leader>/", api.toggle.linewise.current, {
			desc = "Toggle comment line",
		})

		-- Visual mode: toggle comment for selection
		vim.keymap.set("v", "<leader>/", function()
			local esc = vim.api.nvim_replace_termcodes("<ESC>", true, false, true)
			vim.api.nvim_feedkeys(esc, "nx", false)

			api.locked("toggle.linewise")(vim.fn.visualmode())
		end, {
			desc = "Toggle comment selection",
		})
	end,
}
