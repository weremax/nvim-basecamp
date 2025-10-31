require("mason").setup()

require("mason-lspconfig").setup {
    automatic_enable = false
}

vim.lsp.enable({'lua_ls'})

local on_attach = function(_, _)
    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
    vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})

    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
    vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, {})
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
end

vim.lsp.config('lua_ls', {
    root_dir = function(bufnr, on_dir)
        if not vim.fn.bufname(bufnr):match('%.txt$') then
            on_dir(vim.fn.getcwd())
            on_attach = on_attach
        end
    end
})



-- vim.lsp.config("lua_ls".setup {
--     on_attach = on_attach
-- })
