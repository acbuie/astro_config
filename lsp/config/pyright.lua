return {
  capabilities = (function()
    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities.textDocument.publishDiagnostics.tagSupport.valueSet = { 2 }
    return capabilities
  end)(),
  settings = {
    python = {
      analysis = {
        useLibraryCodeForTypes = true,
        diagnosticsSeverityOverrides = {
          reportUnusedVariable = "warning",
        },
        typeCheckingMode = "off",
      },
    },
  },
}
