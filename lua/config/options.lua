local global = vim.g
local o = vim.opt

global.mapleader = " "

-- Editor options

o.number = true -- Print the line number in front of each line
o.relativenumber = true -- Show the line number relative to the line with the cursor in front of each line.

o.shiftwidth = 4 -- Number of spaces to use for each step of (auto)indent.
o.tabstop = 4 -- Number of spaces that a <Tab> in the file counts for.

o.autoindent = true -- Copy indent from current line when starting a new line.
o.smartindent = true

o.wrap = false;	-- lines longer than the window will not wrap

o.swapfile = false	-- disable swapfiles
o.backup = false	-- disable backupfiles
o.undofile = true	-- enable undofiles (needed for undotree?)

o.hlsearch = false	-- disable highlighting previous search matches
o.incsearch = true	-- highlight currently searched pattern while typing

o.termguicolors = true	-- Enables 24-bit RGB color in the TUI
o.guicursor = ""	-- Reset guicursor 

o.scrolloff = 8	-- Minimum number of screen lines to keep above and below the cursor
o.isfname:append("@-@")	-- Characters specified in this are included in file and path names

o.updatetime = 300	-- If this many milliseconds nothing is typed the swap file will be written to disk

o.colorcolumn = "80" -- Draw a colored line at column 80
o.syntax = "on" -- When this option is set, the syntax with this name is loaded.
o.cursorline = true -- Highlight the screen line of the cursor with CursorLine.
o.encoding = "UTF-8" -- Sets the character encoding used inside Vim.
o.ruler = true -- Show the line and column number of the cursor position, separated by a comma.
o.mouse = "a" -- Enable the use of the mouse. "a" you can use on all modes
o.title = true -- When on, the title of the window will be set to the value of 'titlestring'
o.hidden = true -- When on a buffer becomes hidden when it is |abandon|ed
o.ttimeoutlen = 0 -- The time in milliseconds that is waited for a key code or mapped key sequence to complete.
o.wildmenu = true -- When 'wildmenu' is on, command-line completion operates in an enhanced mode.
o.showcmd = true -- Show (partial) command in the last line of the screen. Set this option off if your terminal is slow.
o.showmatch = true -- When a bracket is inserted, briefly jump to the matching one.
o.splitright = on	-- When on, splitting a window will put the new window right of the current one
o.splitbelow = on	-- When on, splitting a window will put the new window below the current one
