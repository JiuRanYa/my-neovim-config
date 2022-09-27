local status, autosave = pcall(require, 'auto-save')
if(not status) then return end

local config = {
  enabled = true, -- start auto-save when the plugin is loaded (i.e. when your package manager loads it)
  callbacks = { -- functions to be executed at different intervals
    before_saving = function()
      vim.notify('error')
      require('neoformat')
    end, -- ran whe
  }
}

autosave.setup(config)
