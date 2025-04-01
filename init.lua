require("config.options")
require("config.keymaps")
require("config.lazy")
require("config.autocmd")

-- vim.cmd.colorscheme("kanagawa-wave")
-- local win_op = function()
-- 	local Snacks = require("plugins.snacks")
--
-- 	-- Get the content of the current buffer
-- 	local buf_content = vim.api.nvim_buf_get_lines(0, 0, -1, false)
--
-- 	-- Create a table to store words starting with "test"
-- 	local test_words = {}
--
-- 	-- Iterate over the buffer lines and extract words starting with "test"
-- 	for _, line in ipairs(buf_content) do
-- 		for word in string.gmatch(line, "%S+") do
-- 			if word:match("^local") then
-- 				table.insert(test_words, word)
-- 			end
-- 		end
-- 	end
--
-- 	if #test_words == 1 then
-- 		print("No functions found.")
-- 		return
-- 	end
--
-- 	-- Create the floating window using Snacks
-- 	Snacks.win({
-- 		title = "Words starting with 'test'",
-- 		border = "rounded",
-- 		position = "center",
-- 		size = { width = 60, height = math.min(#test_words + 2, 15) }, -- Dynamic height
-- 		content = test_words,
-- 	})
-- end
--
-- -- Keymap to open the window with words starting with "test"
-- vim.keymap.set(
-- 	"n",
-- 	"<leader>fe",
-- 	win_op,
-- 	{ desc = "See words starting with 'test' in the file" }
-- )
