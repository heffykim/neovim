-- status line like vim-airline

-- Display attached LSP client
local function lsp_client_name()
    -- local bufnr = vim.api.nvim_get_current_buf()

    -- local clients = vim.lsp.buf_get_clients(bufnr)
    local clients = vim.lsp.get_clients({ bufnr = 0 })
    if next(clients) == nil then
        return "n/a"
    end

    local c = {}
    for _, client in pairs(clients) do
        table.insert(c, client.name)
        -- table.insert(c, string.sub(client.name, 0, 8) .. "...")
    end
    return "\u{f085} " .. table.concat(c, ",")
end

-- hide content on narrow windows
local function hide_in_width()
    return vim.fn.winwidth(0) > 80
end

local function clock()
    local time = tostring(os.date()):sub(12, 16)
    return time
end

return {
    "nvim-lualine/lualine.nvim",
    lazy = true,
    event = { "BufReadPre", "BufNewFile" },

    opts = {
        options = {
            globalstatus = false, -- true == single statusline
            icons_enabled = true,
            theme = "kanagawa",
            component_separators = "⋮",
            --section_separators = { left = "", right = "" },
            section_separators = { left = "", right = "" },
        },
        sections = {
            lualine_a = {
                {
                    -- shorten mode names
                    -- https://github.com/nvim-lualine/lualine.nvim/issues/614#issuecomment-1072275099
                    "mode",
                    fmt = function(res)
                        return res:sub(1, 1)
                    end,
                },
            },
            lualine_c = {
                --{ "searchcount" },
                {
                    "buffers",
                    show_filename_only = true,
                    --fmt = function(str)
                    --	return str:sub(1, 1)
                    --end,
                    --fmt = function()
                    --	return string.gsub(vim.api.nvim_buf_get_name(0), vim.loop.cwd(), "")
                    --end,
                },
            },
            lualine_x = {
                -- specify full list of elements when adding custom things
                { "encoding",      cond = hide_in_width },
                { "fileformat",    cond = hide_in_width },
                { "filetype" },
                { lsp_client_name, cond = hide_in_width },
                --{ clock, cond = hide_in_width },
                function()
                    local ok, pomo = pcall(require, "pomo")
                    if not ok then
                        return ""
                    end

                    local timer = pomo.get_first_to_finish()
                    if timer == nil then
                        return ""
                    end

                    return "󰄉 " .. tostring(timer)
                end,
            },
        },
    },
}
