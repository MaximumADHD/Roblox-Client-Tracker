local CorePackages = game:GetService("CorePackages")

local FFlagUseUpdatedUIBloxCheckbox = require(CorePackages.UIBloxFlags.FFlagUseUpdatedUIBloxCheckbox)
local FFlagUIBloxGridViewIsMountedCleanup = require(CorePackages.UIBloxFlags.FFlagUIBloxGridViewIsMountedCleanup)
local FFlagNoSpawnInGridViewHandler = require(CorePackages.UIBloxFlags.FFlagNoSpawnInGridViewHandler)

return {
	noSpawnInGridViewHandler = FFlagNoSpawnInGridViewHandler,
	gridViewIsMountedCleanup = FFlagUIBloxGridViewIsMountedCleanup,
	enableExperimentalGamepadSupport = true,
	enableAlertCustomTitleFooterConfig = game:DefineFastFlag("UIBloxInGameEnableAlertCustomTitleFooterConfig", false),
	useUpdatedCheckbox = FFlagUseUpdatedUIBloxCheckbox,
}
