local Chrome = script.Parent.Parent.Parent.Chrome
local EnrolledConsoleExperienceControls = require(Chrome.Flags.EnrolledConsoleExperienceControls)

local FFlagIntegrationsChromeShortcutTelemetry = game:DefineFastFlag("IntegrationsChromeShortcutTelemetry", false)

return EnrolledConsoleExperienceControls or FFlagIntegrationsChromeShortcutTelemetry
