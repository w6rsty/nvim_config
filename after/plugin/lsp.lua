local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  lsp_zero.default_keymaps({buffer = bufnr})
end)

require('mason').setup({})
require('mason-lspconfig').setup({
	ensure_installed = {'lua_ls', 'clangd', 'rust_analyzer', 'cmake'},
	handlers = {
		lsp_zero.default_setup,
	    clangd = function()
            require('lspconfig').clangd.setup({
                cmd = { "clangd", "--background-index" },
                on_attach = function(client, bufnr)
                    local opts = { noremap=true, silent=true }
                end,
                filetypes = { "c", "cpp", "objc", "objcpp" },
                root_dir = require('lspconfig').util.root_pattern("compile_commands.json", "compile_flags.txt", ".git"),
        })

		end,
		rust_analyzer = function()
			require('lspconfig').rust_analyzer.setup({
                settings = {
                    ["rust-analyzer"] = {
                        checkOnSave = {
                            command = "clippy",
                            allTargets = false,
                        }
                    }
                }
			})
		end,
        cmake = function()
            require('lspconfig').cmake.setup({

            })
        end,
	},
})
