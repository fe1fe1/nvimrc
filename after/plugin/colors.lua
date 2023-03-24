function ColorMyPencils(color)
	color = color or "monokai"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", {bg = "#000000"})
	vim.api.nvim_set_hl(0, "NormalFloat", {bg = "#000000"})
	vim.api.nvim_set_hl(0, "LineNr", {bg = "#000000"})
	vim.api.nvim_set_hl(0, "FloatBorder", {bg = "#000000"})
	vim.api.nvim_set_hl(0, "NonText", {bg = "#000000"})
	vim.api.nvim_set_hl(0, "EndOfBuffer", {bg = "#000000"})
	vim.api.nvim_set_hl(0, "TelescopeNormal", {bg = "#000000"})
	vim.api.nvim_set_hl(0, "TelescopeBorder", {bg = "#000000"})
	vim.api.nvim_set_hl(0, "StatusLine", {bg = "#000000"})
	vim.api.nvim_set_hl(0, "Pmenu", {bg = "#222222", fg = "#FFFFFF"})
	vim.api.nvim_set_hl(0, "PmenuSel", {bg = "#FFFFFF", fg = "#000000"})
	vim.api.nvim_set_hl(0, "PmenuSbar", {bg = "#000000", fg = "#000000"})
	vim.api.nvim_set_hl(0, "PmenuThumb", {bg = "#000000", fg = "#000000"})
end

ColorMyPencils()

