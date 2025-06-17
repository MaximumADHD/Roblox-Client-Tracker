local Chrome = script.Parent.Parent.Parent.Chrome
local EnrolledConsoleExperienceControls = require(Chrome.Flags.EnrolledConsoleExperienceControls)

local FFlagLeaveActionChromeShortcutTelemetry = game:DefineFastFlag("LeaveActionChromeShortcutTelemetry", false)

return EnrolledConsoleExperienceControls and FFlagLeaveActionChromeShortcutTelemetry
