local Chrome = script.Parent.Parent.Parent.Chrome
local EnrolledConsoleExperienceControls = require(Chrome.Flags.EnrolledConsoleExperienceControls)

local FFlagRespawnActionChromeShortcutTelemetry = game:DefineFastFlag("RespawnActionChromeShortcutTelemetry", false)

return EnrolledConsoleExperienceControls and FFlagRespawnActionChromeShortcutTelemetry
