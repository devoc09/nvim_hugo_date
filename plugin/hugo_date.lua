if vim.fn.has('nvim') ~= 1 then
    return
end

local map = vim.api.nvim_set_keymap

map('n', '<S-d>', ":lua require('current_date').Insert()<cr>", {noremap=true, silent=true})
