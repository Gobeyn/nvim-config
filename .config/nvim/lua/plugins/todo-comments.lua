return {
	-- Add keywords: PERF, HACK, TODO, NOTE, FIX, WARNING and a colon in a comment
	"folke/todo-comments.nvim",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local todo_comments = require("todo-comments")
		vim.keymap.set("n", "<leader>cn", function()
			todo_comments.jump_next()
		end, {}) -- Comment next
		vim.keymap.set("n", "<leader>cp", function()
			todo_comments.jump_prev()
		end, {}) -- Comment previous
		todo_comments.setup()
	end,
}
