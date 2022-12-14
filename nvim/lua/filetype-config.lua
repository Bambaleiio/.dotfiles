-- In init.lua or filetype.nvim's config file
require("filetype").setup({
    overrides = {
        extensions = {
            -- Set the filetype of *.pn files to potion
            -- pn = "potion",
        },
        literal = {
            -- Set the filetype of files named "MyBackupFile" to lua
            -- MyBackupFile = "lua",
        },
        complex = {
            -- Set the filetype of any full filename matching the regex to gitconfig
            -- [".*git/config"] = "gitconfig", -- Included in the plugin
        },

        -- The same as the ones above except the keys map to functions
        function_extensions = {
            ["cpp"] = function()
                vim.bo.filetype = "cpp"

                vim.opt.tabstop = 4
                vim.opt.shiftwidth = 4
                -- Remove annoying indent jumping
                vim.bo.cinoptions = vim.bo.cinoptions .. "L0"
            end,
        },
    },
})
