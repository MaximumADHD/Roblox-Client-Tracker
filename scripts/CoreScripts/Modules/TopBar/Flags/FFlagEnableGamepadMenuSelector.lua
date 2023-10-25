local FFlagAddMenuNavigationToggleDialog = require(script.Parent.FFlagAddMenuNavigationToggleDialog)

return game:GetEngineFeature("GamepadMenuVirtualCursorPromptKeys")
	and game:DefineFastFlag("EnableGamepadMenuSelector", false)
	and FFlagAddMenuNavigationToggleDialog
