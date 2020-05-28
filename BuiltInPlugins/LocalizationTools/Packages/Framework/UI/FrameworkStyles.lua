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

		-- UI Styles
		Box = newDefaults(),
		Button = newDefaults(),
		DropShadow = newDefaults(),
		Image = newDefaults(),

		LoadingBar = newDefaults(),
		LoadingIndicator = newDefaults(),
		LinkText = newDefaults(),

		RadioButton = newDefaults(),
		RadioButtonList = newDefaults(),
		RangeSlider = newDefaults(),
		RoundBox = newDefaults(),
		ScrollingFrame = newDefaults(),
		Separator = newDefaults(),

		TextLabel = newDefaults(),
		ToggleButton = newDefaults(),
		TextInput = newDefaults(),

		-- StudioUI Styles
		SearchBar = newDefaults(),
		StyledDialog = newDefaults(),
	}
end

return FrameworkStyles
