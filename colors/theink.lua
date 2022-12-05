vim.cmd[[highlight clear]]

local highlight = function(group, bg, fg, attr)
    fg = fg and 'guifg=' .. fg or ''
    bg = bg and 'guibg=' .. bg or ''
    attr = attr and 'gui=' .. attr or ''

    vim.api.nvim_command('highlight ' .. group .. ' '.. fg .. ' ' .. bg .. ' '.. attr)
end

local link = function(target, group)
    vim.api.nvim_command('highlight! link ' .. target .. ' '.. group)
end

-- core colors

local Color0 = '#000000' --comments
local Color1 = '#000000' --icon colors
local Color2 = '#000000' --error stuff
local Color3 = '#343434' --local public
local Color4 = '#343434' --strings
local Color5 = '#000000' --Operator
local Color6 = '#000000' --function - highlight - link
local Color7 = '#000000' --parens not funcitonin
local Color8 = '#000000'  --args
local Color9 = '#dde3e1' --background
local Color10 = '#000000'
local Color11 = '#d2d2d2' --cursorline / columns
local Color12 = '#000000' --gutter number line
local Color13 = '#c43f91' --tabline
local Color14 = '#000000' --TabLine
local Color15 = '#000000' --indent char

highlight('Comment', nil, '#ffffff', 'italic')
highlight('Special', nil, '#949494', 'bold')
highlight('Constant', nil, Color1, nil)
highlight('Error', nil, Color2, nil)
highlight('Type', nil, Color3, 'bold')
highlight('String', nil, Color4, 'italic')
highlight('Keyword', nil, Color3, 'bold')
highlight('Conditional', nil, Color3, nil)
highlight('Repeat', nil, Color3, nil)
highlight('Operator', nil, Color5, nil)
highlight('Type', nil, Color6, 'bold')
highlight('Function', nil, Color6, 'bold')
highlight('Type', nil, Color6, nil)
highlight('parens', nil, Color7, nil)
highlight('Identifier', nil, Color8, 'italic')
highlight('Comment', nil, nil, 'italic')
highlight('WildMenu', '#000000', '#ffffff', nil)
highlight('Pmenu', '#000000', Color10, nil)
highlight('PmenuSel', '#000000', '#ffffff', nil)
highlight('PmenuThumb', '#000000', Color10, nil)
highlight('Normal', Color9, '#000000', 'bold')
highlight('Visual', '#000000', '#ffffff', nil)
highlight('CursorLine', Color11, nil, nil)
highlight('ColorColumn', '#ffffff', nil, nil)
highlight('SignColumn', Color9, nil, nil)
highlight('LineNr', nil, Color12, italic)
highlight('TabLine', Color9, Color13, nil)
highlight('TabLineSel', Color14, Color9, nil)
highlight('TabLineFill', suitwhite, Color13, nil)
highlight('TSPunctDelimiter', nil, Color10, nil)
highlight('IndentBlanklineChar',nil, Color15, nil)
highlight('Cursor', '#ffaf00', '#000000' , 'italic')
highlight('Directory', nil, '#ff0000' , 'italic')
highlight('NERDTreeCWD', nil, '#800000' , 'italic')

link('Conditional', 'Operator')
link('TSParameterReference', 'TSParameter')
link('TSPunctSpecial', 'TSPunctDelimiter')
link('TSPunctBracket', 'MyTag')
link('TSTag', 'MyTag')
link('TSTagDelimiter', 'Type')
link('TSRepeat', 'Repeat')
link('TSNumber', 'Number')
link('TSType', 'Type')
link('TSConstBuiltin', 'TSVariableBuiltin')
link('Whitespace', 'Comment')
link('Operator', 'Keyword')
link('TSConstant', 'Constant')
link('Repeat', 'Conditional')
link('TSFloat', 'Number')
link('TSComment', 'Comment')
link('TSString', 'String')
link('NonText', 'Comment')
link('Folded', 'Comment')
link('TelescopeNormal', 'Normal')
link('TSFuncMacro', 'Macro')
link('TSKeyword', 'Keyword')
link('TSConditional', 'Conditional')
link('CursorLineNr', 'Identifier')
link('Macro', 'Function')
link('TSField', 'Constant')
link('TSOperator', 'Operator')
link('TSLabel', 'Type')
link('TSParameter', 'Constant')
link('TSProperty', 'TSField')
link('TSFunction', 'Function')
link('TSNamespace', 'TSType')


