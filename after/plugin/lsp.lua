local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  lsp_zero.default_keymaps({buffer = bufnr})
end)

require('mason').setup({})
require('mason-lspconfig').setup({
	ensure_installed = {'lua_ls', 'clangd', 'rust_analyzer', 'cmake'},
	handlers = {
		lsp_zero.default_setup,
		rust_analyzer = function()
			require('lspconfig').clangd.setup({

			})
		end,
		rust_analyzer = function()
			require('lspconfig').rust_analyzer.setup({

			})
		end,
        cmake = function()
            require('lspconfig').cmake.setup({

            })
        end,
	},
})
