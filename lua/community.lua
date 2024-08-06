-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  -- import/override with your plugins folder

  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.go" },
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.html-css" },
  { import = "astrocommunity.pack.bash" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.sql" },
  { import = "astrocommunity.pack.toml" },
  { import = "astrocommunity.pack.xml" },
  { import = "astrocommunity.pack.yaml" },
  { import = "astrocommunity.editing-support.comment-box-nvim" },
  { import = "astrocommunity.pack.typescript-all-in-one" },
  { import = "astrocommunity.pack.docker" },
  { import = "astrocommunity.pack.python-ruff" },
  { import = "astrocommunity.icon.mini-icons" },
  { import = "astrocommunity.motion.flash-nvim" },
  { import = "astrocommunity.utility.noice-nvim" },
  { import = "astrocommunity.scrolling.nvim-scrollbar" },
  { import = "astrocommunity.color.transparent-nvim" },
  { import = "astrocommunity.colorscheme.everforest" },
  { import = "astrocommunity.recipes.heirline-mode-text-statusline" },
  { import = "astrocommunity.neovim-lua-development.lazydev-nvim" },
  -- { import = "astrocommunity.recipes.heirline-nvchad-statusline" },
}
