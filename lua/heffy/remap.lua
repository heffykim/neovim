vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- disable the spacebar key's default behavior in Normal and Visual modes
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

-- vertical scroll and center
vim.keymap.set({ "n" }, "<C-d>", "<C-d>zz", { noremap = true, silent = true })
vim.keymap.set({ "n" }, "<C-u>", "<C-u>zz", { noremap = true, silent = true })

-- resize with arrows
vim.keymap.set({ "n" }, "<Up>", ":resize -2<CR>", { noremap = true, silent = true })
vim.keymap.set({ "n" }, "<Down>", ":resize +2<CR>", { noremap = true, silent = true })
vim.keymap.set({ "n" }, "<Left>", ":vertical resize -2<CR>", { noremap = true, silent = true })
vim.keymap.set({ "n" }, "<Right>", ":vertical resize +2<CR>", { noremap = true, silent = true })

-- window management
vim.keymap.set({ "n" }, "<leader>-", "<C-w>s", { noremap = true, silent = true })
vim.keymap.set({ "n" }, "<leader>|", "<C-w>v", { noremap = true, silent = true })
vim.keymap.set({ "n" }, "<leader>we", "<C-w>=", { noremap = true, silent = true })
vim.keymap.set({ "n" }, "<leader>wx", ":close<CR>", { noremap = true, silent = true })

-- Navigation between splits
vim.keymap.set({ "n" }, "<C-k>", ":wincmd k<CR>", { noremap = true, silent = true })
vim.keymap.set({ "n" }, "<C-j>", ":wincmd j<CR>", { noremap = true, silent = true })
vim.keymap.set({ "n" }, "<C-h>", ":wincmd h<CR>", { noremap = true, silent = true })
vim.keymap.set({ "n" }, "<C-l>", ":wincmd l<CR>", { noremap = true, silent = true })

-- stay in indent mode
vim.keymap.set({ "n" }, "<", "<gv", { noremap = true, silent = true })
vim.keymap.set({ "n" }, ">", ">gv", { noremap = true, silent = true })
