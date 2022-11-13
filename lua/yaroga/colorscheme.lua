if ((vim.api.nvim_eval('exists("&termguicolors")')) and (vim.api.nvim_eval('exists("&winblend")'))) then
  vim.cmd [[
    syntax enable
    set termguicolors
    set winblend=0
    set wildoptions=pum
    set pumblend=5
    set background=dark
    let g:neosolarized_termtrans=1
  ]]
end
