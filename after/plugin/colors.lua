function ColorMyPencils(color)
	color = color or "monokai"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", {bg = "#000000"})
	vim.api.nvim_set_hl(0, "NormalFloat", {bg = "#000000"})
	vim.api.nvim_set_hl(0, "LineNr", {bg = "#000000"})
	vim.api.nvim_set_hl(0, "FloatBorder", {bg = "#000000"})
	vim.api.nvim_set_hl(0, "NonText", {bg = "#000000"})
	vim.api.nvim_set_hl(0, "EndOfBuffer", {bg = "#000000"})
	vim.api.nvim_set_hl(0, "StatusLine", {bg = "#888888"})
end

ColorMyPencils()

