--[[
	Provides a base implementation of style tables for the Framework
	that are completely empty and only used so that the Framework
	can run for testing.

	StudioFrameworkStyles extends this style table to implement
	default values for Studio plugins.
]]

local function newDefaults()
	return {
		Default = {},
	}
end

local FrameworkStyles = {}
function FrameworkStyles.new()
	return {
		Common = newDefaults(),

		Box = newDefaults(),
		Image = newDefaults(),
		RoundBox = newDefaults(),

		Button = newDefaults(),
		LoadingBar = newDefaults(),
		LinkText = newDefaults(),

		ToggleButton = newDefaults(),
		RadioButton = newDefaults(),
		RadioButtonList = newDefaults(),

		TextLabel = newDefaults(),
	}
end

return FrameworkStyles
