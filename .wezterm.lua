local wezterm = require "wezterm"

local config = {}
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- Default window size
config.initial_cols = 120
config.initial_rows = 30

-- Theme settings
config.color_scheme = "Dracula (Official)"
config.use_fancy_tab_bar = false

-- Font settings
config.font = wezterm.font("PlemolJP Console NF", {weight=450, stretch="Normal", style="Normal"})
config.font_size = 16.0

-- Key bindings
config.keys = {
  { key = "LeftArrow", mods = "SUPER", action = wezterm.action.ActivateTabRelative(-1) },
  { key = "RightArrow", mods = "SUPER", action = wezterm.action.ActivateTabRelative(1) },

  { key = "LeftArrow", mods = "ALT", action = wezterm.action.ActivatePaneDirection("Left") },
  { key = "RightArrow", mods = "ALT", action = wezterm.action.ActivatePaneDirection("Right") },
  { key = "UpArrow", mods = "ALT", action = wezterm.action.ActivatePaneDirection("Up") },
  { key = "DownArrow", mods = "ALT", action = wezterm.action.ActivatePaneDirection("Down") },

  { key = "v", mods = "ALT", action = wezterm.action.SplitVertical { domain = "CurrentPaneDomain" } },
  { key = "h", mods = "ALT", action = wezterm.action.SplitHorizontal { domain = "CurrentPaneDomain" } },

  { key = "w", mods = "SUPER", action = wezterm.action.CloseCurrentPane { confirm = true } },
  { key = "W", mods = "SUPER", action = wezterm.action.CloseCurrentTab { confirm = true } },
}

return config
