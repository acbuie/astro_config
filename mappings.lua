-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    ["<C-d>"] = { "<C-d>zz" },
    ["<C-u>"] = { "<C-u>zz" },
    ["<leader>r"] = { name = "Rainbow CSV" },
    ["<leader>ra"] = { "<cmd>RainbowAlign<cr>", desc = "Align CSV" },
    ["<leader>rs"] = { "<cmd>RainbowShrink<cr>", desc = "Shrink CSV" },
  },
  v = {
    -- Visual mode
    -- ["J"] = { ":m '>+1<cr>gv=gv" }, can't get these to work :(
    -- ["K"] = { ":m '<-2<cr>gv=gv" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
