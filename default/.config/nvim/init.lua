-- Config

vim.opt.mouse = "nicr"
vim.opt.mouse = ""

--vim.opt.mouse =

-- Search
vim.opt.showmatch = true
vim.opt.ignorecase = true
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.grepprg = "grep\\ -nh\\ $*"

-- Visuals
---vim.opt.t_CO = "256"
vim.opt.list = true
vim.opt.listchars = "tab:|->"
vim.opt.number = true
vim.opt.ruler = true
vim.opt.cc = "80"
vim.opt.wildmode = "longest,list"
vim.opt.wildmenu = true
vim.opt.cursorline = true
vim.opt.ttyfast = true
vim.opt.title = true
vim.opt.showmode = false
vim.opt.background = "dark"
vim.api.nvim_exec(
[[
	highlight Comment ctermfg = 39
	highlight LineNr ctermfg = 8 ctermbg = 232
	highlight cCommentString ctermfg = 6
	highlight cComment ctermfg = 6
	highlight SpecialKey ctermfg = 55
	highlight String ctermfg = 49
	highlight Constant ctermfg = 34
	highlight CursorLineNr ctermfg = 14 ctermbg = 232
	highlight Whitespace ctermfg = 24
	highlight Identifier ctermfg = 86
	highlight Statement ctermfg = 46
	highlight ColorColumn ctermbg = 24
	highlight StorageClass ctermfg = 154
	highlight cDefine ctermfg = 34
	highlight Number ctermfg = 51
]], false)


-- File
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"
vim.opt.fileencodings = "utf-8"
vim.opt.swapfile = false

-- Ident
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
---vim.opt.backspace = "ident,eol,start"

-- Statusline
local mode_t = {
	['n'] = 'NORMAL',
	['v'] = 'VISUELL',
	['V'] = 'VZEILE',
	['\\<C-V>'] = 'VBLOCK',
	['i'] = 'EINFÜGEN',
	['R'] = 'ERSETZEN',
	['Rv'] = 'VERSETZEN',
	['c'] = 'BEFEHL',
	['!'] = 'KONSOLE',
	['t'] = 'TERMINAL'
}

local function load_mode()
	local m = vim.api.nvim_get_mode().mode
	if mode_t[m] == nil then return m end
	return mode_t[m]
end

vim.api.nvim_exec(
[[
	highlight StatuslineFilename ctermfg=Black ctermbg=Cyan
	highlight StatuslineMode ctermfg=Black ctermbg=Red
	highlight StatuslineLineNr ctermfg=White ctermbg=Black
	highlight StatuslineClear ctermbg=NONE
]], false)

local statusline = {
	'%#StatuslineMode#', -- colour
	'[',
	load_mode(), -- Current mode eg. Insert, Normal, etc
	']',
	'%#StatuslineFilename#', -- colour
	' %.40F', --Filename until length of 40
	'%m',
	'%#StatuslineClear#',
	'%=',
	'%#StatuslineLineNr#',
	'[HEX=0x%06B]',
	' [%{&fileencoding?&fileencoding:&encoding}]',
	' [%{&fileformat}]',
	' [%03p%%]',
	' [%03l:%03L:%03c]'
}
vim.opt.statusline = table.concat(statusline)
