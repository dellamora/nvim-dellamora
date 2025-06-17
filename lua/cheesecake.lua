-- Cheesecake colorscheme for Neovim
-- A soft and clean theme with strong pink accent

local M = {}

-- Color palette
local colors = {
  -- Main colors
  bg = '#fdf0d5',
  fg = '#5a5355',
  cursor = '#d91c81',
  selection_bg = '#d91c81',
  selection_fg = '#fdf0d5',

  -- Normal colors
  black = '#fdf0d5',
  red = '#b8a4a8',
  green = '#9db89d',
  yellow = '#d4c19a',
  blue = '#a8b4c2',
  magenta = '#d91c81',
  cyan = '#b8c4a8',
  white = '#5a5355',

  -- Bright colors
  bright_black = '#f3e2bf',
  bright_red = '#c4b2b8',
  bright_green = '#a8c4a8',
  bright_yellow = '#e2d4a8',
  bright_blue = '#b8c4d2',
  bright_magenta = '#e62d94',
  bright_cyan = '#c4d2b8',
  bright_white = '#4a4548',

  -- UI colors
  subtle_bg = '#f8f0e8',
  muted_fg = '#8a7a7d',
  border = '#f0e8e0',
  url = '#d91c81',
}

-- Helper function to set highlight groups
local function hi(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

-- Load the colorscheme
function M.load()
  -- Reset colors
  vim.cmd 'hi clear'
  if vim.fn.exists 'syntax_on' then
    vim.cmd 'syntax reset'
  end

  vim.o.background = 'light'
  vim.g.colors_name = 'cheesecake'

  -- Editor highlights
  hi('Normal', { fg = colors.fg, bg = colors.bg })
  hi('Cursor', { fg = colors.selection_fg, bg = colors.cursor })
  hi('CursorLine', { bg = colors.bright_black })
  hi('CursorColumn', { bg = colors.bright_black })
  hi('CursorLineNr', { fg = colors.magenta, bold = true })
  hi('LineNr', { fg = colors.muted_fg })
  hi('SignColumn', { bg = colors.bg })
  hi('ColorColumn', { bg = colors.bright_black })

  -- Visual selection
  hi('Visual', { fg = colors.selection_fg, bg = colors.selection_bg })
  hi('VisualNOS', { fg = colors.selection_fg, bg = colors.selection_bg })

  -- Search
  hi('Search', { fg = colors.selection_fg, bg = colors.magenta })
  hi('IncSearch', { fg = colors.selection_fg, bg = colors.bright_magenta })
  hi('CurSearch', { fg = colors.selection_fg, bg = colors.bright_magenta })

  -- Windows and splits
  hi('WinSeparator', { fg = colors.border })
  hi('VertSplit', { fg = colors.border })
  hi('StatusLine', { fg = colors.selection_fg, bg = colors.magenta })
  hi('StatusLineNC', { fg = colors.muted_fg, bg = colors.subtle_bg })
  hi('WildMenu', { fg = colors.selection_fg, bg = colors.magenta })

  -- Tabs
  hi('TabLine', { fg = colors.muted_fg, bg = colors.subtle_bg })
  hi('TabLineSel', { fg = colors.selection_fg, bg = colors.magenta })
  hi('TabLineFill', { bg = colors.subtle_bg })

  -- Popup menu
  hi('Pmenu', { fg = colors.fg, bg = colors.subtle_bg })
  hi('PmenuSel', { fg = colors.selection_fg, bg = colors.magenta })
  hi('PmenuSbar', { bg = colors.border })
  hi('PmenuThumb', { bg = colors.muted_fg })
  hi('PmenuKind', { fg = colors.blue, bg = colors.subtle_bg })
  hi('PmenuKindSel', { fg = colors.selection_fg, bg = colors.magenta })

  -- Floating windows
  hi('NormalFloat', { fg = colors.fg, bg = colors.subtle_bg })
  hi('FloatBorder', { fg = colors.border, bg = colors.subtle_bg })
  hi('FloatTitle', { fg = colors.magenta, bg = colors.subtle_bg, bold = true })

  -- Folding
  hi('Folded', { fg = colors.muted_fg, bg = colors.bright_black })
  hi('FoldColumn', { fg = colors.muted_fg })

  -- Diffs
  hi('DiffAdd', { fg = colors.green, bg = colors.bright_black })
  hi('DiffChange', { fg = colors.yellow, bg = colors.bright_black })
  hi('DiffDelete', { fg = colors.red, bg = colors.bright_black })
  hi('DiffText', { fg = colors.bright_yellow, bg = colors.yellow })

  -- Messages
  hi('ErrorMsg', { fg = colors.bright_magenta })
  hi('WarningMsg', { fg = colors.yellow })
  hi('MoreMsg', { fg = colors.green })
  hi('Question', { fg = colors.blue })
  hi('MsgArea', { fg = colors.fg })

  -- Spell checking
  hi('SpellBad', { fg = colors.red, undercurl = true })
  hi('SpellCap', { fg = colors.blue, undercurl = true })
  hi('SpellLocal', { fg = colors.cyan, undercurl = true })
  hi('SpellRare', { fg = colors.magenta, undercurl = true })

  -- Syntax highlighting
  hi('Comment', { fg = colors.muted_fg, italic = true })
  hi('Constant', { fg = colors.magenta })
  hi('String', { fg = colors.green })
  hi('Character', { fg = colors.green })
  hi('Number', { fg = colors.magenta })
  hi('Boolean', { fg = colors.magenta })
  hi('Float', { fg = colors.magenta })

  hi('Identifier', { fg = colors.blue })
  hi('Function', { fg = colors.blue })

  hi('Statement', { fg = colors.bright_magenta })
  hi('Conditional', { fg = colors.bright_magenta })
  hi('Repeat', { fg = colors.bright_magenta })
  hi('Label', { fg = colors.bright_magenta })
  hi('Operator', { fg = colors.fg })
  hi('Keyword', { fg = colors.bright_magenta })
  hi('Exception', { fg = colors.bright_magenta })

  hi('PreProc', { fg = colors.cyan })
  hi('Include', { fg = colors.cyan })
  hi('Define', { fg = colors.cyan })
  hi('Macro', { fg = colors.cyan })
  hi('PreCondit', { fg = colors.cyan })

  hi('Type', { fg = colors.yellow })
  hi('StorageClass', { fg = colors.yellow })
  hi('Structure', { fg = colors.yellow })
  hi('Typedef', { fg = colors.yellow })

  hi('Special', { fg = colors.magenta })
  hi('SpecialChar', { fg = colors.magenta })
  hi('Tag', { fg = colors.magenta })
  hi('Delimiter', { fg = colors.fg })
  hi('SpecialComment', { fg = colors.muted_fg, italic = true })
  hi('Debug', { fg = colors.red })

  hi('Underlined', { fg = colors.url, underline = true })
  hi('Ignore', { fg = colors.muted_fg })
  hi('Error', { fg = colors.bright_magenta })
  hi('Todo', { fg = colors.bright_magenta, bg = colors.bright_yellow, bold = true })

  -- LSP highlighting
  hi('@variable', { fg = colors.fg })
  hi('@variable.builtin', { fg = colors.cyan })
  hi('@variable.parameter', { fg = colors.fg })
  hi('@variable.member', { fg = colors.blue })

  hi('@constant', { fg = colors.magenta })
  hi('@constant.builtin', { fg = colors.magenta })
  hi('@constant.macro', { fg = colors.cyan })

  hi('@string', { fg = colors.green })
  hi('@string.escape', { fg = colors.magenta })
  hi('@string.regex', { fg = colors.green })

  hi('@character', { fg = colors.green })
  hi('@character.special', { fg = colors.magenta })

  hi('@number', { fg = colors.magenta })
  hi('@boolean', { fg = colors.magenta })
  hi('@float', { fg = colors.magenta })

  hi('@function', { fg = colors.blue })
  hi('@function.builtin', { fg = colors.cyan })
  hi('@function.macro', { fg = colors.cyan })
  hi('@method', { fg = colors.blue })
  hi('@constructor', { fg = colors.yellow })

  hi('@keyword', { fg = colors.bright_magenta })
  hi('@keyword.function', { fg = colors.bright_magenta })
  hi('@keyword.operator', { fg = colors.bright_magenta })
  hi('@keyword.return', { fg = colors.bright_magenta })
  hi('@keyword.conditional', { fg = colors.bright_magenta })
  hi('@keyword.repeat', { fg = colors.bright_magenta })
  hi('@keyword.exception', { fg = colors.bright_magenta })
  hi('@keyword.import', { fg = colors.cyan })

  hi('@operator', { fg = colors.fg })
  hi('@punctuation.delimiter', { fg = colors.fg })
  hi('@punctuation.bracket', { fg = colors.fg })
  hi('@punctuation.special', { fg = colors.magenta })

  hi('@type', { fg = colors.yellow })
  hi('@type.builtin', { fg = colors.yellow })
  hi('@type.definition', { fg = colors.yellow })

  hi('@property', { fg = colors.blue })
  hi('@field', { fg = colors.blue })

  hi('@comment', { fg = colors.muted_fg, italic = true })
  hi('@comment.documentation', { fg = colors.muted_fg, italic = true })
  hi('@comment.error', { fg = colors.bright_magenta, bold = true })
  hi('@comment.warning', { fg = colors.yellow, bold = true })
  hi('@comment.todo', { fg = colors.bright_magenta, bg = colors.bright_yellow, bold = true })
  hi('@comment.note', { fg = colors.blue, bold = true })

  -- Language-specific
  -- HTML
  hi('@tag', { fg = colors.cyan })
  hi('@tag.attribute', { fg = colors.blue })
  hi('@tag.delimiter', { fg = colors.fg })

  -- CSS
  hi('@property.css', { fg = colors.fg })
  hi('@type.css', { fg = colors.blue })
  hi('@string.css', { fg = colors.green })

  -- JavaScript/TypeScript
  hi('@variable.javascript', { fg = colors.fg })
  hi('@variable.typescript', { fg = colors.fg })
  hi('@variable.parameter.javascript', { fg = colors.blue })
  hi('@variable.parameter.typescript', { fg = colors.blue })
  hi('@variable.member.javascript', { fg = colors.blue })
  hi('@variable.member.typescript', { fg = colors.blue })

  -- JavaScript/TypeScript keywords
  hi('@keyword.import.javascript', { fg = colors.cyan })
  hi('@keyword.import.typescript', { fg = colors.cyan })
  hi('@keyword.export.javascript', { fg = colors.cyan })
  hi('@keyword.export.typescript', { fg = colors.cyan })
  hi('@keyword.function.javascript', { fg = colors.bright_magenta })
  hi('@keyword.function.typescript', { fg = colors.bright_magenta })
  hi('@keyword.return.javascript', { fg = colors.bright_magenta })
  hi('@keyword.return.typescript', { fg = colors.bright_magenta })

  -- JavaScript/TypeScript functions
  hi('@function.javascript', { fg = colors.blue })
  hi('@function.typescript', { fg = colors.blue })
  hi('@method.javascript', { fg = colors.blue })
  hi('@method.typescript', { fg = colors.blue })
  hi('@function.builtin.javascript', { fg = colors.cyan })
  hi('@function.builtin.typescript', { fg = colors.cyan })

  -- TypeScript specific
  hi('@type.typescript', { fg = colors.yellow })
  hi('@type.builtin.typescript', { fg = colors.yellow })
  hi('@type.definition.typescript', { fg = colors.yellow })
  hi('@keyword.type.typescript', { fg = colors.bright_magenta })
  hi('@keyword.interface.typescript', { fg = colors.bright_magenta })
  hi('@keyword.class.typescript', { fg = colors.bright_magenta })
  hi('@keyword.extends.typescript', { fg = colors.bright_magenta })
  hi('@keyword.implements.typescript', { fg = colors.bright_magenta })

  -- JavaScript/TypeScript operators
  hi('@operator.javascript', { fg = colors.fg })
  hi('@operator.typescript', { fg = colors.fg })
  hi('@punctuation.bracket.javascript', { fg = colors.fg })
  hi('@punctuation.bracket.typescript', { fg = colors.fg })
  hi('@punctuation.delimiter.javascript', { fg = colors.fg })
  hi('@punctuation.delimiter.typescript', { fg = colors.fg })

  -- JavaScript/TypeScript constants
  hi('@constant.javascript', { fg = colors.magenta })
  hi('@constant.typescript', { fg = colors.magenta })
  hi('@constant.builtin.javascript', { fg = colors.magenta })
  hi('@constant.builtin.typescript', { fg = colors.magenta })
  hi('@boolean.javascript', { fg = colors.magenta })
  hi('@boolean.typescript', { fg = colors.magenta })
  hi('@number.javascript', { fg = colors.magenta })
  hi('@number.typescript', { fg = colors.magenta })

  -- JavaScript/TypeScript strings
  hi('@string.javascript', { fg = colors.green })
  hi('@string.typescript', { fg = colors.green })
  hi('@string.template.javascript', { fg = colors.green })
  hi('@string.template.typescript', { fg = colors.green })
  hi('@string.escape.javascript', { fg = colors.magenta })
  hi('@string.escape.typescript', { fg = colors.magenta })

  -- JavaScript/TypeScript comments
  hi('@comment.javascript', { fg = colors.muted_fg, italic = true })
  hi('@comment.typescript', { fg = colors.muted_fg, italic = true })
  hi('@comment.documentation.javascript', { fg = colors.muted_fg, italic = true })
  hi('@comment.documentation.typescript', { fg = colors.muted_fg, italic = true })

  -- JSX/TSX
  hi('@tag.javascript', { fg = colors.cyan })
  hi('@tag.typescript', { fg = colors.cyan })
  hi('@tag.builtin.javascript', { fg = colors.cyan })
  hi('@tag.builtin.typescript', { fg = colors.cyan })
  hi('@tag.attribute.javascript', { fg = colors.blue })
  hi('@tag.attribute.typescript', { fg = colors.blue })
  hi('@tag.delimiter.javascript', { fg = colors.fg })
  hi('@tag.delimiter.typescript', { fg = colors.fg })

  -- JavaScript/TypeScript special
  hi('@constructor.javascript', { fg = colors.yellow })
  hi('@constructor.typescript', { fg = colors.yellow })
  hi('@namespace.typescript', { fg = colors.yellow })
  hi('@module.typescript', { fg = colors.yellow })

  -- Python
  hi('@variable.python', { fg = colors.fg })
  hi('@function.builtin.python', { fg = colors.cyan })

  -- Diagnostic
  hi('DiagnosticError', { fg = colors.bright_magenta })
  hi('DiagnosticWarn', { fg = colors.yellow })
  hi('DiagnosticInfo', { fg = colors.blue })
  hi('DiagnosticHint', { fg = colors.cyan })

  hi('DiagnosticVirtualTextError', { fg = colors.bright_magenta, bg = colors.bright_black })
  hi('DiagnosticVirtualTextWarn', { fg = colors.yellow, bg = colors.bright_black })
  hi('DiagnosticVirtualTextInfo', { fg = colors.blue, bg = colors.bright_black })
  hi('DiagnosticVirtualTextHint', { fg = colors.cyan, bg = colors.bright_black })

  hi('DiagnosticUnderlineError', { undercurl = true, sp = colors.bright_magenta })
  hi('DiagnosticUnderlineWarn', { undercurl = true, sp = colors.yellow })
  hi('DiagnosticUnderlineInfo', { undercurl = true, sp = colors.blue })
  hi('DiagnosticUnderlineHint', { undercurl = true, sp = colors.cyan })

  -- Git signs
  hi('GitSignsAdd', { fg = colors.green })
  hi('GitSignsChange', { fg = colors.yellow })
  hi('GitSignsDelete', { fg = colors.red })
  hi('GitSignsCurrentLineBlame', { fg = colors.muted_fg, italic = true })

  -- Telescope
  hi('TelescopeNormal', { fg = colors.fg, bg = colors.subtle_bg })
  hi('TelescopeBorder', { fg = colors.border, bg = colors.subtle_bg })
  hi('TelescopePromptNormal', { fg = colors.fg, bg = colors.bright_black })
  hi('TelescopePromptBorder', { fg = colors.border, bg = colors.bright_black })
  hi('TelescopePromptTitle', { fg = colors.magenta, bold = true })
  hi('TelescopePreviewTitle', { fg = colors.blue, bold = true })
  hi('TelescopeResultsTitle', { fg = colors.green, bold = true })
  hi('TelescopeSelection', { fg = colors.selection_fg, bg = colors.magenta })
  hi('TelescopeMatching', { fg = colors.bright_magenta, bold = true })

  -- NvimTree
  hi('NvimTreeNormal', { fg = colors.fg, bg = colors.subtle_bg })
  hi('NvimTreeFolderIcon', { fg = colors.blue })
  hi('NvimTreeFolderName', { fg = colors.blue })
  hi('NvimTreeOpenedFolderName', { fg = colors.bright_blue, bold = true })
  hi('NvimTreeSpecialFile', { fg = colors.magenta })
  hi('NvimTreeExecFile', { fg = colors.green })
  hi('NvimTreeGitDirty', { fg = colors.yellow })
  hi('NvimTreeGitNew', { fg = colors.green })
  hi('NvimTreeGitDeleted', { fg = colors.red })

  -- WhichKey
  hi('WhichKey', { fg = colors.magenta })
  hi('WhichKeyGroup', { fg = colors.blue })
  hi('WhichKeyDesc', { fg = colors.fg })
  hi('WhichKeySeparator', { fg = colors.muted_fg })
  hi('WhichKeyFloat', { bg = colors.subtle_bg })
  hi('WhichKeyBorder', { fg = colors.border, bg = colors.subtle_bg })

  -- Indent guides
  hi('IndentBlanklineChar', { fg = colors.border })
  hi('IndentBlanklineContextChar', { fg = colors.magenta })

  -- Terminal colors
  vim.g.terminal_color_0 = colors.black
  vim.g.terminal_color_1 = colors.red
  vim.g.terminal_color_2 = colors.green
  vim.g.terminal_color_3 = colors.yellow
  vim.g.terminal_color_4 = colors.blue
  vim.g.terminal_color_5 = colors.magenta
  vim.g.terminal_color_6 = colors.cyan
  vim.g.terminal_color_7 = colors.white
  vim.g.terminal_color_8 = colors.bright_black
  vim.g.terminal_color_9 = colors.bright_red
  vim.g.terminal_color_10 = colors.bright_green
  vim.g.terminal_color_11 = colors.bright_yellow
  vim.g.terminal_color_12 = colors.bright_blue
  vim.g.terminal_color_13 = colors.bright_magenta
  vim.g.terminal_color_14 = colors.bright_cyan
  vim.g.terminal_color_15 = colors.bright_white
end

return M
