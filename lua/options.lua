require "nvchad.options"

local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

-- status line height
vim.opt.cmdheight = 0

vim.api.nvim_create_autocmd("CmdlineEnter", {
  group = vim.api.nvim_create_augroup("cmdheight_1_on_cmdlineenter", { clear = true }),
  desc = "Don't hide the status line when typing a command",
  command = ":set cmdheight=1",
})

vim.api.nvim_create_autocmd("CmdlineLeave", {
  group = vim.api.nvim_create_augroup("cmdheight_0_on_cmdlineleave", { clear = true }),
  desc = "Hide cmdline when not typing a command",
  command = ":set cmdheight=0",
})

vim.api.nvim_create_autocmd("BufWritePost", {
  group = vim.api.nvim_create_augroup("hide_message_after_write", { clear = true }),
  desc = "Get rid of message after writing a file",
  pattern = { "*" },
  command = "redrawstatus",
})

--прокрутка вниз в нормальном режиме
vim.api.nvim_set_keymap('n', 'j', 'v:count ? "j" : (line(".") == line("$") ? "<C-e>" : "j")', { noremap = true, expr = true, silent = true })
--прокрутка вниз в визуальном режиме
vim.api.nvim_set_keymap('x', 'j', 'v:count ? "j" : (line(".") == line("$") ? "<C-e>" : "j")', { noremap = true, expr = true, silent = true })


-- Блочный курсор
vim.opt.guicursor = {
  "n-v-c:block", 
}

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
