--[[
	Creates a default theme with given props.
]]

local Framework = script.Parent.Parent
local Style = Framework.Style

local BaseTheme = require(Style.Themes.BaseTheme)
local Stylizer = require(Framework.UI.ContextServices.Stylizer)

return function(themeProps: { themesList: { [string]: any }, getThemeName: () -> string })
	local style = Stylizer.new(themeProps.themesList[themeProps.getThemeName()], themeProps)
	return style:extend(BaseTheme)
end
