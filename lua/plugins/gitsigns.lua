return { -- Adds git related signs to the gutter, as well as utilities for managing changes
	"lewis6991/gitsigns.nvim",
	opts = {
		signs = {
			add = { text = "+" },
			change = { text = "~" },
			delete = { text = "-" },
			topdelete = { text = "‾" },
			changedelete = { text = "~" },
		},
		signs_staged = {
			add = { text = "+" },
			change = { text = "~" },
			delete = { text = "-" },
			topdelete = { text = "‾" },
			changedelete = { text = "*" },
			untracked = { text = "┆" },
		},
		signs_staged_enable = true,
		current_line_blame = true, -- Toggle with `:Gitsigns toggle_current_line_blame`
		current_line_blame_opts = {
			virt_text = true,
			virt_text_pos = "eol", -- 'eol' | 'overlay' | 'right_align'
			delay = 500,
			ignore_whitespace = false,
			virt_text_priority = 100,
			use_focus = true,
		},
		current_line_blame_formatter = "<author>, <author_time:%R> - <summary>",
		on_attach = function(bufnr)
			local gitsigns = require("gitsigns")

			local function map(mode, l, r, desc)
				opts = { buffer = bufnr, desc = desc }
				vim.keymap.set(mode, l, r, opts)
			end

			-- Navigation
			map("n", "gj", function()
				if vim.wo.diff then
					vim.cmd.normal({ "]c", bang = true })
				else
					gitsigns.nav_hunk("next")
				end
			end, "Goto next git change")

			map("n", "gk", function()
				if vim.wo.diff then
					vim.cmd.normal({ "[c", bang = true })
				else
					gitsigns.nav_hunk("prev")
				end
			end, "Goto previous git change")

			-- Actions
			map(
				"n",
				"<leader>gS",
				gitsigns.stage_hunk,
				"add open file to stage"
			)
			map(
				"n",
				"<leader>gR",
				gitsigns.reset_hunk,
				"remove uncommitted changes from file"
			)

			map("v", "<leader>gs", function()
				gitsigns.stage_hunk({ vim.fn.line("."), vim.fn.line("v") })
			end, "Add selected changes")

			map("v", "<leader>gr", function()
				gitsigns.reset_hunk({ vim.fn.line("."), vim.fn.line("v") })
			end, "remove selected changes")

			-- map("n", "<leader>hS", gitsigns.stage_buffer)
			-- map("n", "<leader>hR", gitsigns.reset_buffer)
			map("n", "gp", gitsigns.preview_hunk, "see changes")
			-- map(
			-- 	"n",
			-- 	"<leader>hi",
			-- 	gitsigns.preview_hunk_inline,
			-- 	"see changes in-line"
			-- )

			-- map("n", "<leader>hb", function()
			-- 	gitsigns.blame_line({ full = true })
			-- end, "see commit log")

			-- map(
			-- 	"n",
			-- 	"<leader>gD",
			-- 	gitsigns.diffthis,
			-- 	"see changes in split window"
			-- )

			-- map("n", "<leader>hD", function()
			-- 	gitsigns.diffthis("~")
			-- end)

			-- Toggles
			map(
				"n",
				"<leader>tb",
				gitsigns.toggle_current_line_blame,
				"Toggle git line blame"
			)
			map(
				"n",
				"<leader>td",
				gitsigns.toggle_deleted,
				"Toggle git deleted"
			)
			map(
				"n",
				"<leader>tw",
				gitsigns.toggle_word_diff,
				"Toggle git word diff"
			)

			-- Text object
			-- map({ "o", "x" }, "ih", gitsigns.select_hunk)
		end,
	},
}
