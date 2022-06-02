local configs = require("nvim-treesitter.configs")
configs.setup {
  ensure_installed = {
    "lua",
    "rust",
    "python",
    "markdown",
    "vue",
    "tsx",
    "toml",
    "fish",
    "php",
    "json",
    "yaml",
    "swift",
    "html",
    "scss",
  },
  autotag = {
    enable = true,
  },
  sync_install = false,
  ignore_install = { "" }, -- List of parsers to ignore installing
  highlight = {
    enable = true, -- false will disable the whole extension
    disable = { "" }, -- list of language that will be disabled
    additional_vim_regex_highlighting = true,
  },
  indent = { enable = true, disable = { "yaml" } },

  -- raninbow --
  rainbow = {
    enable = true,
    -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
    extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
    max_file_lines = nil, -- Do not enable for files with more than n lines, int
    -- colors = {}, -- table of hex strings
    -- termcolors = {} -- table of colour name strings
  },

  -- playground --
  playground = {
    enable = true,
  },

  -- comments --
  context_commentstring = {
    enable = true,
    enable_autocmd = false,
  }
}
