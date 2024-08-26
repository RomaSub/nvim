require "nvchad.mappings"

local map = vim.keymap.set

map("n", "<leader><leader>", "<cmd>e #<cr>", { desc = "Switch to Other Buffer" })
-- map("n", "<leader>w", "<cmd>w<CR>", { desc = "Save" })
map("n", "<leader>cx", function()
  require("nvchad.tabufline").closeAllBufs()
end, { desc = "Close All Buffers" })

map("n", "<leader>ft", "<cmd>TodoTelescope<CR>", { desc = "Find Todo" })
map("n", "\\", "<cmd>:split <CR>", { desc = "Horizontal Split" })
map("n", "|", "<cmd>:vsplit <CR>", { desc = "Vertical Split" })

-- typescript-tools
map("n", "gd", "<Cmd>lua vim.lsp.buf.definition()<CR>", { desc = "Go to Definition" })
map("n", "K", "<Cmd>lua vim.lsp.buf.hover()<CR>", { desc = "Hover Documentation" })
map("n", "gi", "<Cmd>lua vim.lsp.buf.implementation()<CR>", { desc = "Go to Implementation" })
map("n", "gr", "<Cmd>lua vim.lsp.buf.references()<CR>", { desc = "References" })
map("n", "<space>D", "<Cmd>lua vim.lsp.buf.type_definition()<CR>", { desc = "Type Definition" })
map("n", "<space>qq", "<Cmd>TSToolsFixAll<CR>", { desc = "Fix" })
map("n", "<space>rf", "<Cmd>TSToolsRenameFile<CR>", { desc = "Rename file" })
map("n", "<space>rq", "<Cmd>TSToolsFileReferences<CR>", { desc = "File references" })

--ui
map("n", "<space>ui", "<Cmd>TSToolsOrganizeImports<CR>", { desc = "Organize Imports" })
map("n", "<space>uu", "<Cmd>TSToolsAddMissingImports<CR>", { desc = "Add missing Imports" })
map("n", "<space>uo", "<Cmd>TailwindConcealToggle<CR>", { desc = "включает/выключает скрытие" })
map(
  "n",
  "<space>uc",
  "<Cmd>TailwindColorToggle<CR>",
  { desc = "включает/выключает цветовые подсказки" }
)
map(
  "n",
  "<space>us",
  "<Cmd>TailwindSort<CR>",
  { desc = "сортирует все классы в текущем буфере" }
)

-- rust-tools
map("n", "<space>rr", "<Cmd>RustLsp renderDiagnostic current<CR>", { desc = "Rust render error" })
map("n", "<space>rk", "<Cmd>RustLsp joinLines<CR>", { desc = "Rust join Lines" })
map("n", "<space>re", "<Cmd>RustLsp flyCheck<CR>", { desc = "Rust codeAction" })

-- Move Lines
-- map("n", "<C-j>", "<cmd>m .+1<cr>==", { desc = "Move Down" })
-- map("n", "<C-k>", "<cmd>m .-2<cr>==", { desc = "Move Up" })
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
