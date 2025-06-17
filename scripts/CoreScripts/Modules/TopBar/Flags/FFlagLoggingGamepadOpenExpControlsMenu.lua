local Chrome = script.Parent.Parent.Parent.Chrome
local EnrolledConsoleExperienceControls = require(Chrome.Flags.EnrolledConsoleExperienceControls)

local FFlagLoggingGamepadOpenExpControlsMenu = game:DefineFastFlag("LoggingGamepadOpenExpControlsMenu", false)

return EnrolledConsoleExperienceControls and FFlagLoggingGamepadOpenExpControlsMenu
