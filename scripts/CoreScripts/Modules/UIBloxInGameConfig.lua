local CorePackages = game:GetService("CorePackages")

local Modules = script.Parent
local FFlagAESPromptsSupportGamepad = require(Modules.Flags.FFlagAESPromptsSupportGamepad)
local FFlagUseUpdatedUIBloxCheckbox = require(CorePackages.UIBloxFlags.FFlagUseUpdatedUIBloxCheckbox)

return {
	enableExperimentalGamepadSupport = FFlagAESPromptsSupportGamepad,
	enableAlertCustomTitleFooterConfig = game:DefineFastFlag("UIBloxInGameEnableAlertCustomTitleFooterConfig", false),
	useUpdatedCheckbox = FFlagUseUpdatedUIBloxCheckbox,
}
