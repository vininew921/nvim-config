function ColorMyPencils(color)
    color = color or "ayu-mirage"
    vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" })
    vim.api.nvim_set_hl(0, "StatusLine", { bg = "none" })
    vim.api.nvim_set_hl(0, "LineNr", { bg = "none" })
    vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })

    local buffer_groups = vim.fn.getcompletion("Buffer*", "highlight")
    for _, group in ipairs(buffer_groups) do
        vim.api.nvim_set_hl(0, group, { bg = "none" })
    end
end

ColorMyPencils()
