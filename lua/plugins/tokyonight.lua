return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("tokyonight").setup({
      -- The theme comes in three styles: 
      -- `storm`, a darker variant `night` and `day`
      style = "night", 
      -- The theme is used when the background is set to light
      light_style = "day",
      -- Enable this to disable setting the background color
      transparent = false, 
      -- Configure the colors used when opening a `:terminal` in Neovim
      terminal_colors = true, 
      styles = {
        -- Style to be applied to different syntax groups
        -- Value is any valid attr-list value for `:help nvim_set_hl`
        comments = { italic = true },
        keywords = { italic = true },
        functions = {},
        variables = {},
        -- Background styles. Can be "dark", "transparent" or "normal"
        sidebars = "dark", -- style for sidebars, see below
        floats = "dark", -- style for floating windows
      },
      -- Adjusts the brightness of the colors of the **Day** style. 
      -- Number between 0 and 1, from dull to vibrant colors
      day_brightness = 0.3, 
      -- dims inactive windows
      dim_inactive = false, 
      -- When `true`, section headers in the lualine theme will be bold
      lualine_bold = false,

      --- You can override specific color groups to use other groups or 
      --- a hex color function will be called with a ColorScheme table
      ---@param colors ColorScheme
      on_colors = function(colors) end,

      --- You can override specific highlights to use other groups or 
      --- a hex color function will be called with 
      --- a Highlights and ColorScheme table
      ---@param highlights tokyonight.Highlights
      ---@param colors ColorScheme
      on_highlights = function(highlights, colors) end,

      -- When set to true, the theme will be cached for better performance
      cache = true, 

      ---@type table<string, boolean|{enabled:boolean}>
      -- plugins = {
        -- enable all plugins when not using lazy.nvim
        -- set to false to manually enable/disable plugins
        -- all = package.loaded.lazy == nil,
        -- uses your plugin manager to automatically enable needed plugins
        -- currently only lazy.nvim is supported
        -- auto = true,
        -- add any plugins here that you want to enable
        -- for all possible plugins, see:
        -- https://github.com/folke/tokyonight.nvim/tree/main/lua/tokyonight/groups
        -- telescope = true,
      -- },    
    })
    vim.cmd[[colorscheme tokyonight]]
    vim.api.nvim_set_hl(0, 'LineNrAbove', { fg='#fb508f', bold=true })
    vim.api.nvim_set_hl(0, 'LineNr', { fg='#ffffff', bold=true })
    vim.api.nvim_set_hl(0, 'LineNrBelow', { fg='#51b3ec', bold=true })
  end
}
