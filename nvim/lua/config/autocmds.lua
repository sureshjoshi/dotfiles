local function augroup(name)
  return vim.api.nvim_create_augroup("user-" .. name, { clear = true })
end

-- Highlight on yank
vim.api.nvim_create_autocmd("TextYankPost", {
  group = augroup("highlight_yank"),
  callback = function()
    (vim.hl or vim.highlight).on_yank()
  end,
})

vim.api.nvim_create_autocmd("LspAttach", {
    group = augroup("lsp-attach"),
    callback = function (event)
        local client = vim.lsp.get_client_by_id(event.data.client_id)


        if client and client:supports_method('textDocument/documentHighlight', event.buf) then
            local highlight_augroup = augroup("lsp-highlight")
            vim.api.nvim_create_autocmd({ 'CursorHold', 'CursorHoldI' }, {
              buffer = event.buf,
              group = highlight_augroup,
              callback = vim.lsp.buf.document_highlight,
            })

            vim.api.nvim_create_autocmd({ 'CursorMoved', 'CursorMovedI' }, {
              buffer = event.buf,
              group = highlight_augroup,
              callback = vim.lsp.buf.clear_references,
            })

            vim.api.nvim_create_autocmd('LspDetach', {
              group = augroup("lsp-detach"),
              callback = function(event2)
                vim.lsp.buf.clear_references()
                vim.api.nvim_clear_autocmds { group = 'user-lsp-highlight', buffer = event2.buf }
              end,
            })
        end

        if client and client:supports_method("textDocument/inlayHint", event.buf) then
            vim.lsp.inlay_hint.enable(true)
		end
    end
});
