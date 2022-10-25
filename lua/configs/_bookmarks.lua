local status, bookmarks = pcall(require, 'bookmarks')
if(not status) then return end

bookmarks.setup({})
