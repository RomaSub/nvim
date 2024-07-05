require "nvchad.mappings"

local map = vim.keymap.set


map("n", "<leader>w", "<cmd>w<CR>", { desc = "Save" })
map("n", "<leader>cx", function()
  require("nvchad.tabufline").closeAllBufs()
end, { desc = "Close All Buffers" })

map("n", "<leader>ft", "<cmd>TodoTelescope<CR>", { desc = "Find Todo" })
map("n", "\\", "<cmd>:vsplit <CR>", { desc = "Vertical Split" })


-- Move Lines
map("n", "<C-j>", "<cmd>m .+1<cr>==", { desc = "Move Down" })
map("n", "<C-k>", "<cmd>m .-2<cr>==", { desc = "Move Up" })
map("i", "<C-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move Down" })
map("i", "<C-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move Up" })
map("v", "<C-j>", ":m '>+1<cr>gv=gv", { desc = "Move Down" })
map("v", "<C-k>", ":m '<-2<cr>gv=gv", { desc = "Move Up" })

--Formatting
map("n", "<leader>cf", function() 
  require("conform").format()
end, { desc = "Format Code" })

-- Diagnostics

map("n", "<leader>cd", vim.diagnostic.open_float, { desc = "Line Diagnostics" })
map("n", "<leader>td", "<cmd>Trouble diagnostics toggle<CR>", { desc = "Open Workspace Trouble" })
map("n", "<leader>tq", "<cmd>Trouble diagnostics toggle filter.buf=0<CR>", { desc = "Open Quickfix" })
map("n", "<leader>ts", "<cmd>Trouble symbols<CR>", { desc = "Symbols" })
map("n", "<leader>tt", "<cmd>Trouble<CR>", { desc = "Open Todo Trouble" })



-- Git
map("n", "<leader>gl", ":Flog<CR>", { desc = "Git Log" })
map("n", "<leader>gf", ":DiffviewFileHistory<CR>", { desc = "Git File History" })
map("n", "<leader>gc", ":DiffviewOpen HEAD~1<CR>", { desc = "Git Last Commit" })
map("n", "<leader>gt", ":DiffviewToggleFile<CR>", { desc = "Git File History" })

-- Basic

map("n", "<leader>[", "<Cmd>call append(line('.') - 1, repeat([''], v:count1))<CR>")
map("n", "<leader>]", "<Cmd>call append(line('.'),     repeat([''], v:count1))<CR>")
map("i", "jj", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
