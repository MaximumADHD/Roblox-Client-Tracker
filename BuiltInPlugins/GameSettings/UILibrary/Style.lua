--[[
	Provides style utility for the UILibrary.
	Default values for style can be defined here.
]]

local Style = {}

--Defines default entries for the Style table in createTheme.
--Default entries are only to provide compatibility, not actual theme info.
Style.Defaults = {
	font = Enum.Font.SourceSans,

	backgroundColor = Color3.new(),
	textColor = Color3.new(),
}

-- A function that checks to see if there are any missing or
-- extraneous keys in the given style. If a value is available
-- for all necessary entries, then the UILibrary will be able to run.
Style.isValid = function(style)
	local requiredStyle = Style.Defaults

	for key, _ in pairs(requiredStyle) do
		if not style[key] then
			return false
		end
	end

	for key, _ in pairs(style) do
		if not requiredStyle[key] then
			return false
		end
	end

	return true
end

return Style