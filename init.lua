local lazypath = vim.fn.stdpath('data') .. 'lazy/lazy.nvim'

if not vim.loop.fs_stat(lazypath) then
  require('core.bootstrap').lazy(lazypath)
end

vim.opt.rtp:prepend(lazypath)
require 'core'
require 'plugins'
