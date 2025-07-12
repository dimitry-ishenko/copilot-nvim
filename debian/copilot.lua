require("copilot").setup({
    suggestion = {enabled = false},
    panel = {enabled = false}
})

-- Disable by default
require("copilot.command").disable()

local function map(mode, lhs, rhs)
    vim.keymap.set(mode, lhs, rhs, {noremap = true})
end

map("n", "<leader>pd", ":Copilot disable<cr>")
map("n", "<leader>pe", ":Copilot enable<cr>")
