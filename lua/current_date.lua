function Current_date()
    local current_date = os.date("!%Y-%m-%dT%H:%M:%S+09:00")
    return current_date
end

function Hello()
    local pos = vim.api.nvim_win_get_cursor(0)[2]
    local line = vim.api.nvim_get_current_line()
    local nline = line:sub(0, pos) .. 'hello' .. line:sub(pos + 1)
    vim.api.nvim_set_current_line(nline)
end
