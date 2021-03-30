local Modules = script.Parent
local FFlagAESPromptsSupportGamepad = require(Modules.Flags.FFlagAESPromptsSupportGamepad)

return {
	enableExperimentalGamepadSupport = FFlagAESPromptsSupportGamepad,
	enableAlertCustomTitleFooterConfig = game:DefineFastFlag("UIBloxInGameEnableAlertCustomTitleFooterConfig", false),
}
