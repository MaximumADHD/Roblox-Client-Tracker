-- **DEPRECATED**: Theme is deprecated. Use ColorMode instead.
-- The light/dark/system concept is now called ColorMode. "Theme" is reserved
-- for app-level themes (e.g. Circuit Rush, Kinetic Energy).
local ColorMode = require(script.Parent.ColorMode)

export type Theme = ColorMode.ColorMode

return ColorMode
