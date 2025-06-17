local Chrome = script.Parent.Parent.Parent.Chrome
local EnrolledConsoleExperienceControls = require(Chrome.Flags.EnrolledConsoleExperienceControls)

local FFlagLeaveChromeShortcutTelemetry = game:DefineFastFlag("LeaveChromeShortcutTelemetry", false)

return EnrolledConsoleExperienceControls and FFlagLeaveChromeShortcutTelemetry
