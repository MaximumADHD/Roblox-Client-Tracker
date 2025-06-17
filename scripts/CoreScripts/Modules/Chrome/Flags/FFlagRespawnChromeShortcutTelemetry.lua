local Chrome = script.Parent.Parent.Parent.Chrome
local EnrolledConsoleExperienceControls = require(Chrome.Flags.EnrolledConsoleExperienceControls)

local FFlagRespawnChromeShortcutTelemetry = game:DefineFastFlag("RespawnChromeShortcutTelemetry", false)

return EnrolledConsoleExperienceControls and FFlagRespawnChromeShortcutTelemetry
