local lsp = require('lsp-zero').preset({
  name = 'minimal',
  set_lsp_keymaps = true,
  manage_nvim_cmp = true,
  suggest_lsp_servers = false,
})

lsp.ensure_installed({
	'tsserver',
	'eslint',
	'clangd',
	'lua_ls'
})



local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
	['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
	['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
	['<C-y>'] = cmp.mapping.confirm({ select = true}),
	['<C-Space>'] = cmp.mapping.complete(),
})

lsp.on_attach(function (client, bufnr)
	print("help")
	local opts = {buffer = bufnr, remap = false}

	vim.keymap.set("n", "gd", function () vim.lsp.buf.definition() end, opts)
	vim.keymap.set("n", "<leader>dn", function () vim.diagnostic.goto_next() end, opts)
	vim.keymap.set("n", "<leader>dp", function () vim.diagnostic.goto_prev() end, opts)
	vim.keymap.set("n", "<leader>vrr", function () vim.lsp.buf.references() end, opts)
	vim.keymap.set("n", "<leader>vrn", function () vim.lsp.buf.rename() end, opts)
end)

lsp.setup_nvim_cmp({mapping = cmp_mappings})

-- (Optional) Configure lua language server for neovim
lsp.nvim_workspace()

lsp.setup()
