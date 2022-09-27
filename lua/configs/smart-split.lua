local status, smart_split = pcall(require, 'smart-split')

if (not status) then return end

smart_split.setup({})
