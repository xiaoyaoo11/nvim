local map = vim.keymap.set
vim.g.mapleader = " "

map("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

map("i", "<C-b>", "<ESC>^i", { desc = "Move beginning of line" })
map("i", "<C-e>", "<End>", { desc = "Move end of line" })

map("i", "<C-h>", "<Left>", { desc = "Move left" })
map("i", "<C-l>", "<Right>", { desc = "Move right" })
map("i", "<C-j>", "<Down>", { desc = "Move down" })
map("i", "<C-k>", "<Up>", { desc = "Move up" })

map("n", "<C-h>", "<C-w>h", { desc = "Switch window left" })
map("n", "<C-l>", "<C-w>l", { desc = "Switch window right" })
map("n", "<C-j>", "<C-w>j", { desc = "Switch window down" })
map("n", "<C-k>", "<C-w>k", { desc = "Switch window up" })

map("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
map("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
map("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
map("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

map("t", "<C-x>", "<C-\\><C-N>", { desc = "terminal escape terminal mode" })

map("n", "<leader>/", "gcc", { desc = "Toggle Comment", remap = true })
map("v", "<leader>/", "gc", { desc = "Toggle comment", remap = true })

map("n", "<leader>w", ":w<cr>", { desc = "Save file", remap = true })

-- Quit Neovim
map("n", "<leader>q", ":q<cr>", { desc = "Quit Neovim", remap = true })

-- Select all
map("n", "<C-a>", "gg<S-v>G", { desc = "Select all", noremap = true })

-- Indenting
map("v", "<", "<gv", { desc = "Indenting", silent = true, noremap = true })
map("v", ">", ">gv", { desc = "Indenting", silent = true, noremap = true })

-- Resize window
map("n", "<C-Up>", ":resize -3<CR>")
map("n", "<C-Down>", ":resize +3<CR>")
map("n", "<C-Left>", ":vertical resize -3<CR>")
map("n", "<C-Right>", ":vertical resize +3<CR>")

-- Telescope
map("n", "<leader>ff", "<cmd> Telescope find_files <CR>")
map("n", "<leader>fo", "<cmd> Telescope oldfiles <CR>")
map("n", "<leader>fw", "<cmd> Telescope live_grep <CR>")
map("n", "<leader>gt", "<cmd> Telescope git_status <CR>")

-- nvterm
map({ "n", "t" }, "<A-i>", function()
	require("nvterm.terminal").toggle("float")
end, opts, { desc = "Open a floating terminal" })

map({ "n", "t" }, "<A-h>", function()
	require("nvterm.terminal").toggle("horizontal")
end, opts, { desc = "Open a horizontal terminal" })

map({ "n", "t" }, "<A-v>", function()
	require("nvterm.terminal").toggle("vertical")
end, opts, { desc = "Open a vertical terminal" })

map("n", "<leader>h", function()
	require("nvterm.terminal").new("horizontal")
end, opts, { desc = "Open a new horizontal terminal" })

map("n", "<leader>v", function()
	require("nvterm.terminal").new("vertical")
end, opts, { desc = "Open a new vertical terminal" })

map("t", "<C-x>", "<C-\\><C-N>", { desc = "Terminal escape terminal mode" })
