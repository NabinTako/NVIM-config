require("config.options")
require("config.keymaps")
require("config.lazy")
require("config.autocmd")

-- INFO: --vim configs --
-- -- Transparent backgrounds --
local hl = vim.api.nvim_set_hl

hl(0, "Normal", { bg = "none" }) -- normal text
hl(0, "NormalNC", { bg = "NONE" })
-- hl(0, "CursorLine", { bg = "NONE" }) -- Cursor line number
hl(0, "NormalFloat", { bg = "none" }) -- floating window
hl(0, "NeoTreeNormal", { bg = "none" }) --neo tree
hl(0, "NeoTreeNormalNC", { bg = "none" })
hl(0, "LineNr", { bg = "none" }) -- line number
hl(0, "FloatBorder", { fg = "NONE", bg = "NONE" }) -- popup border
hl(0, "FloatTitle", { fg = "NONE", bg = "NONE" }) -- Floating window title
hl(0, "Search", { bg = "NONE", fg = "#fab387" })
hl(0, "QuickFixLine", { bg = "NONE", fg = "#ff6c6b" })

-- Pmenu (popup completion menu)
hl(0, "Pmenu", { bg = "NONE" })
hl(0, "PmenuSel", { bg = "NONE" })
hl(0, "PmenuSbar", { bg = "NONE" })
hl(0, "PmenuThumb", { bg = "NONE" })

-- LSP-related
hl(0, "LspFloatWinNormal", { bg = "NONE" })
hl(0, "LspInfoBorder", { fg = "NONE", bg = "NONE" })

-- Main floating window
hl(0, "TelescopeNormal", { bg = "NONE" })

-- Borders
hl(0, "TelescopeBorder", { bg = "NONE", fg = "NONE" })

-- Prompt title area
hl(0, "TelescopePromptTitle", { bg = "NONE", fg = "NONE" })
hl(0, "TelescopeResultsTitle", { bg = "NONE", fg = "NONE" })
hl(0, "TelescopePreviewTitle", { bg = "NONE", fg = "NONE" })

-- Preview + results + prompt areas
hl(0, "TelescopePromptNormal", { bg = "NONE" })
hl(0, "TelescopeResultsNormal", { bg = "NONE" })
hl(0, "TelescopePreviewNormal", { bg = "NONE" })

-- Prompt border
hl(0, "TelescopePromptBorder", { bg = "NONE", fg = "NONE" })
hl(0, "TelescopeResultsBorder", { bg = "NONE", fg = "NONE" })
hl(0, "TelescopePreviewBorder", { bg = "NONE", fg = "NONE" })
-- INFO: -- End of vim configs --
--
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
