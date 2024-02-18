vim.api.nvim_create_user_command('Rfinder',
    function()
        local path = vim.api.nvim_buf_get_name(0)
        if path == '' then
            print("Somehow invalid path, at least it doesn't break the whole neovim anymore lol")
            return
        end
        os.execute('open -R ' .. path)
    end,
    {}
)

vim.cmd([[
    autocmd BufWritePre ~/Projects/**/{*.js,*.jsx,*.ts,*.tsx} Neoformat
]])

vim.cmd([[
    autocmd BufWritePost ~/Akular/**/{*.js,*.jsx,*.ts,*.tsx} :EslintFixAll
]])


