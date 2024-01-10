--[[
	An entry in an InfoPanel that shows a list of styles.
	Currently just displays the styles as strings.

	Required Props:
		table Styles: The set of styles to display.
		string Header: The header text of this component.

	Optional Props:
		number LayoutOrder: The sort order of this component.
]]

local Main = script.Parent.Parent.Parent
local React = require(Main.Packages.React)

local Framework = require(Main.Packages.Framework)

local PanelEntry = require(Main.Src.Components.PanelEntry)
local FrameworkStyle = require(Main.Packages.Framework).Style
local getRawComponentStyle = FrameworkStyle.getRawComponentStyle

local UI = Framework.UI
local TextLabel = UI.TextLabel

local StylesList = React.PureComponent:extend("StylesList")

local SUMMARY = [[In addition to Default, these Styles are defined for this component:]]
local NOSTYLES = [[Only the Default style is defined for this component.]]

function StylesList:render()
	local props = self.props
	local header = props.Header
	local layoutOrder = props.LayoutOrder

	local stylesList = {}
	local componentName = props.ComponentName
	local componentStyle = getRawComponentStyle(componentName)
	if componentStyle then
		for name, _ in pairs(componentStyle) do
			if typeof(name) == "string" and name:sub(1, 1) == "&" then
				local nameWithoutAmpersand = name:sub(2)
				table.insert(stylesList, nameWithoutAmpersand)
			end
		end
	end

	local stylesString = table.concat(stylesList, ", ")
	local hasStyles = next(stylesList)
	local headerString = hasStyles and SUMMARY or NOSTYLES

	return React.createElement(PanelEntry, {
		Header = header,
		Description = headerString,
		LayoutOrder = layoutOrder,
	}, {
		Styles = hasStyles and React.createElement(TextLabel, {
			Text = stylesString,
			[React.Tag] = "Title Wrap",
		}),
	})
end

return StylesList
