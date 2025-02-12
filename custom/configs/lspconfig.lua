local config = require("plugins.configs.lspconfig")

local on_attach = config.on_attach
local capabilities = config.capabilities

local lspconfig = require("lspconfig")

local servers = {
  "pyright",
}

lspconfig.clangd.setup {
  on_attach = function(client, bufnr)
    client.server_capabilities.signatureHelpProvider = false
    on_attach(client, bufnr)
  end,
  capabilities = capabilities,
}

lspconfig.omnisharp.setup {
    cmd = { "omnisharp", "--languageserver", "--hostPID", tostring(vim.fn.getpid()) },
    filetypes = { "cs", "vb" },
    root_dir = lspconfig.util.root_pattern("*.sln", "*.csproj", ".git"),
    settings = {
        omnisharp = {
            enableRoslynAnalyzers = true,
            organizeImportsOnFormat = true,
            enableEditorConfigSupport = true,
        },
    },
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup({
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = {"python"},
  })
end
