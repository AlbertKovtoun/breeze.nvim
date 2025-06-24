-- lua/breeze.lua
-- This file defines the Breeze colorscheme for Neovim.

-- Your original color palette
local colors = {
	bg = "#232627",
	fg = "#ffffff",
	red = "#ed1515",
	green = "#11d116",
	orange = "#f67400",
	blue = "#1d99f3",
	purple = "#9b59b6",
	teal = "#1cdc9a",
	dark_gray = "#232627",
	gray = "#7f8c8d",
	light_gray = "#7f8c8d",
}

-- A distinct, medium-dark gray for selection
local selection_bg = "#303030"

-- Helper function to set highlights
local highlight = function(group, opts)
	vim.api.nvim_set_hl(0, group, opts)
end

-- Clear existing highlights and reset syntax
vim.cmd("highlight clear")
if vim.fn.exists("syntax_on") then
	vim.cmd("syntax reset")
end

-- Set background and colorscheme name
vim.o.background = "dark"
vim.g.colors_name = "breeze" -- This is crucial for :colorscheme command to find it

-- Basic UI Highlights
highlight("Normal", { fg = colors.fg, bg = colors.bg })
highlight("NormalFloat", { fg = colors.fg, bg = colors.dark_gray })
highlight("FloatBorder", { fg = colors.gray })
highlight("CursorLine", { bg = colors.dark_gray })
highlight("LineNr", { fg = colors.gray })
highlight("CursorLineNr", { fg = colors.orange, bold = true })
highlight("SignColumn", { bg = colors.bg })
highlight("VertSplit", { fg = colors.gray })
highlight("WinSeparator", { fg = colors.gray })

-- Search Highlights
highlight("Search", { fg = colors.bg, bg = colors.orange })
highlight("IncSearch", { fg = colors.bg, bg = colors.red })

-- Selection Highlight
highlight("Visual", { bg = selection_bg })

-- Status Line Highlights
highlight("StatusLine", { fg = colors.fg, bg = colors.gray })
highlight("StatusLineNC", { fg = colors.light_gray, bg = colors.dark_gray })

-- Popup Menu Highlights (for completion, etc.)
highlight("Pmenu", { fg = colors.fg, bg = colors.dark_gray })
highlight("PmenuSel", { fg = colors.bg, bg = colors.blue })

-- Syntax Highlighting (Common groups)
highlight("Comment", { fg = colors.gray, italic = true })
highlight("String", { fg = colors.green })
highlight("Number", { fg = colors.red })
highlight("Boolean", { fg = colors.red })
highlight("Function", { fg = colors.blue, bold = true })
highlight("Keyword", { fg = colors.purple, bold = true })
highlight("Type", { fg = colors.teal, bold = true })
highlight("Operator", { fg = colors.teal })
highlight("PreProc", { fg = colors.orange })
highlight("Special", { fg = colors.orange })
highlight("Error", { fg = colors.red, bold = true })
highlight("Todo", { fg = colors.orange, bold = true })

-- LSP Diagnostic Highlights
highlight("DiagnosticError", { fg = colors.red })
highlight("DiagnosticWarn", { fg = colors.orange })
highlight("DiagnosticInfo", { fg = colors.blue })
highlight("DiagnosticHint", { fg = colors.teal })

-- Tree-sitter Highlights (Common @ groups)
highlight("@variable", { fg = colors.fg })
highlight("@variable.builtin", { fg = colors.red })
highlight("@constant", { fg = colors.purple })
highlight("@string", { fg = colors.green })
highlight("@number", { fg = colors.red })
highlight("@boolean", { fg = colors.red })
highlight("@function", { fg = colors.blue, bold = true })
highlight("@keyword", { fg = colors.purple, bold = true })
highlight("@type", { fg = colors.teal, bold = true })
highlight("@operator", { fg = colors.teal })
highlight("@comment", { fg = colors.gray, italic = true })

-- Plugin Specific Highlights (Telescope, Which-key)
highlight("TelescopeNormal", { fg = colors.fg, bg = colors.dark_gray })
highlight("TelescopeBorder", { fg = colors.gray })
highlight("TelescopeSelection", { fg = colors.fg, bg = colors.gray })
highlight("TelescopeMatching", { fg = colors.orange, bold = true })

highlight("WhichKey", { fg = colors.blue })
highlight("WhichKeyGroup", { fg = colors.purple })
highlight("WhichKeyDesc", { fg = colors.fg })
highlight("WhichKeySeperator", { fg = colors.gray })

-- No return M, no M.setup() needed if loaded via :colorscheme
