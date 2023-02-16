-- lspconfig
local nvim_lsp = require('lspconfig')
local servers = {'clangd', 'pyright', 'tsserver'}


for _, lsp in ipairs(servers) do
	nvim_lsp[lsp].setup {}
end
