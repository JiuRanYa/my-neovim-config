
local status, easyMotion = pcall(require, 'easymotion')
if(not status) then return end

easyMotion.setup({})
