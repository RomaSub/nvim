require "nvchad.mappings"

local map = vim.keymap.set

map("n", "<leader>w", "<cmd>w<CR>", { desc = "Save" })
map("n", "<leader>cx", function()
  require("nvchad.tabufline").closeAllBufs()
end, { desc = "Close All Buffers" })

map("n", "<leader>ft", "<cmd>TodoTelescope<CR>", { desc = "Find Todo" })
map("n", "\\", "<cmd>:vsplit <CR>", { desc = "Vertical Split" })

-- Trouble

map("n", "<leader>qx", "<cmd>Trouble<CR>", { desc = "Open Trouble" })
map("n", "<leader>qw", "<cmd>Trouble diagnostics toggle<CR>", { desc = "Open Workspace Trouble" })
map("n", "<leader>qd", "<cmd>Trouble  document_diagnostics<CR>", { desc = "Open Document Trouble" })
map("n", "<leader>qq", "<cmd>Trouble diagnostics toggle filter.buf=0<CR>", { desc = "Open Quickfix" })
map("n", "<leader>ql", "<cmd>Trouble symbols<CR>", { desc = "Symbols" })
map("n", "<leader>qt", "<cmd>Trouble <CR>", { desc = "Open Todo Trouble" })



-- Git
map("n", "<leader>gl", ":Flog<CR>", { desc = "Git Log" })
map("n", "<leader>gf", ":DiffviewFileHistory<CR>", { desc = "Git File History" })
map("n", "<leader>gc", ":DiffviewOpen HEAD~1<CR>", { desc = "Git Last Commit" })
map("n", "<leader>gt", ":DiffviewToggleFile<CR>", { desc = "Git File History" })
map('n', '<leader>h', ':nohlsearch<CR>')

-- Basic

map("n", "<leader>[", "<Cmd>call append(line('.') - 1, repeat([''], v:count1))<CR>")
map("n", "<leader>]", "<Cmd>call append(line('.'),     repeat([''], v:count1))<CR>")
map("i", "jj", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
