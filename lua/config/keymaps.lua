-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.g.mapleader = " "

--- @params mode string | table
--- @params combination string
--- @params command string | function
--- @params commandDesc string
local function setKeyMap(mode, combination, command, commandDesc)
	if mode == "" then
		mode = { "n", "i", "v" }
	end
	vim.keymap.set(mode, combination, command, { desc = commandDesc })
end

vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Diagnostic keymaps
vim.keymap.set(
	"n",
	"<leader>fq",
	vim.diagnostic.setloclist,
	{ desc = "Open diagnostic [Q]uickfix list" }
)

setKeyMap("n", "<leader>e", "<cmd>Neotree toggle<cr>", "toggle neo tree")
setKeyMap({ "n", "i", "v" }, "<C-s>", "<esc><cmd>w<cr>", "Save File")
setKeyMap({ "n", "v" }, "<leader>q", "<cmd>bd!<cr>", "[]Delete current buffer")
setKeyMap(
	"n",
	"<leader>qq",
	"<cmd>bufdo bd!<cr><cmd>q!<cr>",
	"[Q]uit vim without saving."
)
setKeyMap({ "i", "v" }, "qv", "<esc>", "Escape From Insert Mode")
setKeyMap(
	"n",
	"<leader>j",
	"<cmd>lua vim.diagnostic.goto_next()<cr>",
	"Goto next file warning"
)
setKeyMap(
	"n",
	"<leader>k",
	"<cmd>lua vim.diagnostic.goto_prev()<cr>",
	"Goto prvious file warning"
)
setKeyMap({ "n", "v" }, "<leader>fs", "<cmd>w<cr>", "[F]ile [S]ave")
-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set(
	"t",
	"<Esc><Esc>",
	"<C-\\><C-n>",
	{ desc = "Exit terminal mode" }
)

-- TIP: Disable arrow keys in normal mode
-- vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
setKeyMap("n", "<S-h>", "<C-w><C-h>", "Move focus to the left window")
setKeyMap("n", "<S-l>", "<C-w><C-l>", "Move focus to the right window")
setKeyMap("n", "<S-j>", "<C-w><C-j>", "Move focus to the lower window")
setKeyMap("n", "<S-k>", "<C-w><C-k>", "Move focus to the upper window")
setKeyMap("n", "<leader>wv", "<C-w>v", "Split [W]indow [V]ertically")
setKeyMap("n", "<leader>ws", "<C-w>s", "Split [W]indow horizontally")
setKeyMap("n", "<leader>wq", "<C-w>q", "[W]indow [Q]uit")
