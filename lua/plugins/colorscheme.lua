return { -- You can easily change to a different colorscheme.
	-- Change the name of the colorscheme plugin below, and then
	-- change the command in the config to whatever the name of that colorscheme is.
	--
	-- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
	enabled = true,
	-- "folke/tokyonight.nvim",
	"rebelot/kanagawa.nvim",
	priority = 1000, -- Make sure to load this before all the other start plugins.
	-- vim.cmd.colorscheme("kanagawa-wave"),
	name = "kanagawa",
	config = function()
		-- Load the colorscheme here.
		-- Like many other themes, this one has different styles, and you could load
		-- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
		-- require("kanagawa").setup({
		-- 	transparent = true,
		-- })
		-- require("kanagawa").load("wave")

		vim.cmd.colorscheme("kanagawa-wave")
		vim.notify("colorscheme ran..")

		-- You can configure highlights by doing something like:
		vim.cmd.hi("Comment gui=none")
	end,
}
