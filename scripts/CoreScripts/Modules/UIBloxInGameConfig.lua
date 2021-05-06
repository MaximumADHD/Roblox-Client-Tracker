local CorePackages = game:GetService("CorePackages")

local FFlagUseUpdatedUIBloxCheckbox = require(CorePackages.UIBloxFlags.FFlagUseUpdatedUIBloxCheckbox)

return {
	enableExperimentalGamepadSupport = true,
	enableAlertCustomTitleFooterConfig = game:DefineFastFlag("UIBloxInGameEnableAlertCustomTitleFooterConfig", false),
	useUpdatedCheckbox = FFlagUseUpdatedUIBloxCheckbox,
}
