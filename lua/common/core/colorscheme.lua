vim.opt.termguicolors = true

vim.cmd("colorscheme gruvbox")

local status, _ = pcall(vim.cmd, "colorscheme gruvbox")
if not status then
	print("Colorscheme not found!")
	return
end
