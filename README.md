```lua filename="init.lua"
-- ~/.config/nvim/lua/configs/lspconfig.lua
-- Loaded automatically by NvChad

-- Load defaults i.e lua_lsp
-- require("nvchad.configs.lspconfig").defaults()

local lspconfig = require("lspconfig")
-- local nvlsp = require("nvchad.configs.lspconfig")

-- Dynamically point to the path of @vue/language-server
-- which contains @vue/typescript-plugin
local vue_typescript_plugin =
	vim.fn.expand(vim.fn.stdpath("data") .. "/mason/packages/vue-language-server/node_modules/@vue/language-server")

-- Set up ts_ls LSP with @vue/typescript-plugin
lspconfig.ts_ls.setup({
	-- on_attach = nvlsp.on_attach,
	-- on_init = nvlsp.on_init,
	-- capabilities = nvlsp.capabilities,
	init_options = {
		plugins = {
			{
				name = "@vue/typescript-plugin",
				location = vue_typescript_plugin,
				languages = { "vue" },
			},
		},
	},
	filetypes = {
		"javascript",
		"typescript",
		"vue",
	},
	settings = {
		typescript = {
			tsserver = {
				useSyntaxServer = false,
			},
			inlayHints = {
				includeInlayParameterNameHints = "all",
				includeInlayParameterNameHintsWhenArgumentMatchesName = true,
				includeInlayFunctionParameterTypeHints = true,
				includeInlayVariableTypeHints = true,
				includeInlayVariableTypeHintsWhenTypeMatchesName = true,
				includeInlayPropertyDeclarationTypeHints = true,
				includeInlayFunctionLikeReturnTypeHints = true,
				includeInlayEnumMemberValueHints = true,
			},
		},
	},
})
```
