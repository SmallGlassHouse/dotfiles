-- shortcut for explorer
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- vertical movement for selected code with respect to intendation
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")

-- alternative escape sequence from incput mode
vim.keymap.set("i", "jj", "<ESC>")

-- yank to system buffer
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
