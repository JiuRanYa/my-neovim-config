local status, autosave = pcall(require, 'auto-save')
if (not status)
  then
    vim.notify('Not find auto-save')
  end

local config = {
  enabled = true, -- start auto-save when the plugin is loaded (i.e. when your package manager loads it)
  callbacks = { -- functions to be executed at different intervals
  },
  debounce_delay = 200,
}

autosave.setup(config)
