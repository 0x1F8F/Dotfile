require('mason').setup()
require('mason-lspconfig').setup()

-- require('jdtls').start_or_attach({
--     cmd = {'/usr/bin/jdtls'},
--     root_dir = vim.fs.dirname(vim.fs.find({'gradlew', '.git', 'mvnw'}, { upward = true })[1]),
-- })
--


local lspconfig = require 'lspconfig'

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require('lspconfig')['rust_analyzer'].setup {
	capabilities = capabilities,
}

lspconfig.denols.setup {
	capabilities = capabilities,
	root_dir = lspconfig.util.root_pattern('deno.json', 'deno.jsonc'),
}

lspconfig['ts_ls'].setup {
	capabilities = capabilities,
	root_dir = lspconfig.util.root_pattern 'package.json',
	single_file_support = false,
}

lspconfig.typos_lsp.setup {
	init_options = {
		config = "~/.config/typos-lsp/typos.toml",
		diagnosticSeverity = "Hint"
	}
}

lspconfig.jdtls.setup{
	capabilities = capabilities,
}

lspconfig.systemd_ls.setup{
	capabilities = capabilities,
}

lspconfig.svelte.setup {
	capabilities = capabilities,
}

lspconfig.clangd.setup {
	capabilities = {
		offsetEncoding = { "utf-8", "utf-16" },
		textDocument = {
			completion = {
				editsNearCursor = true
			}
		}
	},
	cmd = { "clangd", "--compile-commands-dir=." },
	filetypes = { "c", "cc", "h", "hxx", "hxx", "cpp", "objc", "objcpp", "cuda", "proto" }
}

lspconfig.tailwindcss.setup {
	capabilities = capabilities,
}

lspconfig.astro.setup {
	filetypes = { 'astro' },
	capabilities = capabilities,
}

lspconfig.jsonls.setup {
	filetypes = { 'json', "jsonc" },
	capabilities = capabilities,
}

lspconfig.ruff.setup {
	init_options = {
		settings = {
			-- Modification to any of these settings has no effect.
			enable          = true,
			-- ignoreStandardLibrary = true,
			organizeImports = true,
			fixAll          = true,
			lint            = {
				enable = true,
				run    = 'onType',
			},
		},
	},
	capabilities = capabilities,
}

lspconfig.pyright.setup {
	capabilities = capabilities,
}

lspconfig['lua_ls'].setup {}
