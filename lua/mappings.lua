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

-- Tests
map("n", "<leader>tt", function()
  require("neotest").run.run()
end, { desc = "Run nearest test" })
map("n", "<leader>tf", function()
  require("neotest").run.run(vim.fn.expand "%")
end, { desc = "Run file test" })
map("n", "<leader>to", ":Neotest output<CR>", { desc = "Show test output" })
map("n", "<leader>ts", ":Neotest summary<CR>", { desc = "Show test summary" })


-- Git
map("n", "<leader>gl", ":Flog<CR>", { desc = "Git Log" })
map("n", "<leader>gf", ":DiffviewFileHistory<CR>", { desc = "Git File History" })
map("n", "<leader>gc", ":DiffviewOpen HEAD~1<CR>", { desc = "Git Last Commit" })
map("n", "<leader>gt", ":DiffviewToggleFile<CR>", { desc = "Git File History" })
map('n', '<leader>h', ':nohlsearch<CR>')

-- Terminal
-- map("n", "<C-]>", function()
--   require("nvchad.term").toggle { pos = "vsp", size = 0.4 }
-- end, { desc = "Toogle Terminal Vertical" })
-- map("n", "<C-\\>", function()
--   require("nvchad.term").toggle { pos = "sp", size = 0.4 }
-- end, { desc = "Toogle Terminal Horizontal" })
-- map("n", "<C-f>", function()
--   require("nvchad.term").toggle { pos = "float" }
-- end, { desc = "Toogle Terminal Float" })
-- map("t", "<C-]>", function()
--   require("nvchad.term").toggle { pos = "vsp" }
-- end, { desc = "Toogle Terminal Vertical" })
-- map("t", "<C-\\>", function()
--   require("nvchad.term").toggle { pos = "sp" }
-- end, { desc = "Toogle Terminal Horizontal" })
-- map("t", "<C-f>", function()
--   require("nvchad.term").toggle { pos = "float" }
-- end, { desc = "Toogle Terminal Float" })

-- Basic

map("n", "<leader>[", "<Cmd>call append(line('.') - 1, repeat([''], v:count1))<CR>")
map("n", "<leader>]", "<Cmd>call append(line('.'),     repeat([''], v:count1))<CR>")
map("i", "jj", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
