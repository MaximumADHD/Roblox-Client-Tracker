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
local Roact = require(Main.Packages.Roact)

local Framework = require(Main.Packages.Framework)
local ContextServices = Framework.ContextServices

local PanelEntry = require(Main.Src.Components.PanelEntry)
local FrameworkStyle = require(Main.Packages.Framework).Style
local getRawComponentStyle = FrameworkStyle.getRawComponentStyle


local StylesList = Roact.PureComponent:extend("StylesList")

local SUMMARY = [[In addition to Default, these Styles are defined for this component in StudioFrameworkStyles:]]
local NOSTYLES = [[Only the Default style is defined for this component in StudioFrameworkStyles.]]

function StylesList:render()
	local props = self.props
	local style = props.Stylizer
	local text = style.Text
	local header = props.Header
	local layoutOrder = props.LayoutOrder

	local stylesList = {}
	local componentName = props.ComponentName
	local componentStyle = getRawComponentStyle(componentName)
	if componentStyle then
		for name,_ in pairs(componentStyle) do
			if typeof(name) == "string" and name:sub(1, 1) == "&" then
				local nameWithoutAmpersand = name:sub(2)
				table.insert(stylesList, nameWithoutAmpersand)
			end
		end
	end

	local stylesString = table.concat(stylesList, ", ")
	local headerString = next(stylesList) and SUMMARY or NOSTYLES

	return Roact.createElement(PanelEntry, {
		Header = header,
		Description = headerString,
		LayoutOrder = layoutOrder,
	}, {
		Styles = Roact.createElement("TextLabel", {
			AutomaticSize = Enum.AutomaticSize.XY,
			Text = stylesString,
			Font = Enum.Font.SourceSans,
			TextSize = text.Type.Size,
			TextColor3 = text.Header.Color,
			BackgroundTransparency = 1,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextWrapped = true,
		}),
	})
end

ContextServices.mapToProps(StylesList, {
	Stylizer = ContextServices.Stylizer,
})

return StylesList
