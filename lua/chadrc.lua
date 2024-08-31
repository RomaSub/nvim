-- This file  needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "everforest",
  transparency = true,
  statusline = {
    theme = "vscode_colored",
  },
  cmp = {
    style = "atom",
  },
  tabufline = {
    order = { "treeOffset", "buffers", "tabs" }, -- можно переместить treeOffset в конец
  },
  nvdash = {
    load_on_startup = true,
    header = {
      "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
      "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
      "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
      "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
      "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
      "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
      "       ,                                  ",
      "       \\`-._           __                 ",
      "        \\\\  `-..____,.'  `.               ",
      "         :`.         /    \\`.             ",
      "         :  )       :      : \\            ",
      "          ;'        '   ;  |  :           ",
      "          )..      .. .:.`.;  :           ",
      "         /::...  .:::...   ` ;            ",
      "         ; _ '    __        /:\\           ",
      "         `:o>   /\\o_>      ;:. `.         ",
      "        `-`.__ ;   __..--- /:.   \\        ",
      "        === \\_/   ;=====_.':.     ;       ",
      "         ,/'`--'...`--....        ;       ",
      "              ;                    ;      ",
      "            .'                      ;     ",
      "          .'                        ;     ",
      "        .'     ..     ,      .       ;    ",
      "       :       ::..  /      ;::.     |    ",
      "      /      `.;::.  |       ;:..    ;    ",
      "     :         |:.   :       ;:.    ;     ",
      "     :         ::     ;:..   |.    ;      ",
      "      :       :;      :::....|     |      ",
      "      /\\     ,/ \\      ;:::::;     ;      ",
      "    .:. \\:..|    :     ; '.--|     ;      ",
      "   ::.  :''  `-.,,;     ;'   ;     ;      ",
      ".-'. _.'\\      / `;      \\,__:      \\     ",
      "`---'    `----'   ;      /    \\,.,,,/     ",
      "                   `----`                 ",
    },
    buttons = {},
  },

  hl_override = {
    -- St_VisualMode = {
    --   bg = "#0d0f18", --delay
    -- },
    -- St_InsertMode = {
    --   bg = "#0d0f18"--delay,
    -- },
    -- St_NormalMode = {
    --   bg = "#0d0f18",--delay
    -- },
    -- St_CommandMode = {
    --   bg = "#0d0f18",--delay
    -- },
    -- St_cwd = {
    --   bg = "#0d0f18",--delay
    -- },
    -- NvDashAscii = {
    --   fg = "#90ceaa",--delay
    --   bg = "#0d0f18",--delay
    -- },
    -- NvDashButtons = {
    --   fg = "#90ceaa",--delay
    --   bg = "#0d0f18",--delay
    -- },
    Comment = { italic = true },
    ["@comment"] = { italic = true },
    DiffChange = {
      bg = "#464414",
      fg = "none",
    },
    DiffAdd = {
      bg = "#103507",
      fg = "none",
    },
    DiffRemoved = {
      bg = "#461414",
      fg = "none",
    },
  },
}

return M
