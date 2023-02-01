local Current_date = {}

function Current_date.Get()
    local current_date = os.date("!%Y-%m-%dT%H:%M:%S+09:00")
    return current_date
end

local Buffer = {}

function Buffer.Insert()
    vim.cmd(string.format("normal! a%s", Current_date.Get()))
end

return Buffer
