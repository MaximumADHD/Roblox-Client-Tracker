--[[
	An entry in an InfoPanel that shows a list of props.

	Required Props:
		string Header: The header text of this component.
		table Props: A list of prop documentation tables, which contain
			prop name, type, and description.

	Optional Props:
		number LayoutOrder: The sort order of this component.
		string Description: Description text for this component.
]]

local Main = script.Parent.Parent.Parent
local Roact = require(Main.Packages.Roact)

local Framework = require(Main.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local UI = Framework.UI
local Pane = UI.Pane

local PanelEntry = require(Main.Src.Components.PanelEntry)
local Types = require(Main.Src.Types)

local PropsList = Roact.PureComponent:extend("PropsList")

function formatCustomType(propName)
	return propName:gsub("^%l", string.upper)
end

local arrayFormat = "Array<%s>"
function PropsList:renderPropType(
	propName: string,
	propType: string | Types.PropType,
	layoutOrder: number,
	textStyle: any
)
	local text = ""
	if typeof(propType) == "string" then
		text = propType
	else
		-- If the type is not a string, this is a complex prop type so we make a custom type name.
		-- In the future we should support showing the full details of the complex prop type.
		-- https://roblox.atlassian.net/browse/STUDIOPLAT-31697
		local customType = formatCustomType(propName)
		text = if propType.Qualifier == Types.PropTypeQualifiers.Array
			then string.format(arrayFormat, customType)
			else customType
	end

	return Roact.createElement("TextLabel", {
		AutomaticSize = Enum.AutomaticSize.XY,
		Text = text,
		Font = textStyle.Mono.Font,
		TextSize = textStyle.Mono.Size,
		TextColor3 = textStyle.Type.Color,
		BackgroundTransparency = 1,
		LayoutOrder = layoutOrder,
	})
end

function PropsList:renderProp(
	propName: string,
	propType: string | Types.PropType,
	isOptional: boolean?,
	default: any?,
	comment: string?,
	index: number
)
	local props = self.props
	local style = props.Stylizer
	local sizes = style.Sizes
	local text = style.Text
	return Roact.createElement(Pane, {
		Style = "BorderBox",
		AutomaticSize = Enum.AutomaticSize.Y,
		Size = UDim2.fromScale(1, 0),
		Padding = sizes.InnerPadding,
		Spacing = sizes.InnerPadding,
		LayoutOrder = index,
		Layout = Enum.FillDirection.Vertical,
		HorizontalAlignment = Enum.HorizontalAlignment.Left,
	}, {
		Top = Roact.createElement(Pane, {
			Layout = Enum.FillDirection.Horizontal,
			Spacing = sizes.InnerPadding,
			AutomaticSize = Enum.AutomaticSize.XY,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
		}, {
			Name = Roact.createElement("TextLabel", {
				AutomaticSize = Enum.AutomaticSize.XY,
				Text = propName .. if isOptional then "?" else "",
				Font = Enum.Font.SourceSans,
				TextSize = text.Type.Size,
				TextColor3 = text.Header.Color,
				BackgroundTransparency = 1,
				LayoutOrder = 1,
			}),
			Type = self:renderPropType(propName, propType, 2, text),
			Default = default and Roact.createElement("TextLabel", {
				AutomaticSize = Enum.AutomaticSize.XY,
				Text = string.format(
					'(default: <font face="%s" weight="%s" size="%s">%s</font>)',
					text.Mono.Font.Name,
					text.Default.Weight.Name,
					tostring(text.Mono.Size),
					tostring(default)
				),
				Font = Enum.Font.SourceSans,
				TextSize = text.Type.Size,
				TextColor3 = text.Default.Color,
				BackgroundTransparency = 1,
				RichText = true,
				LayoutOrder = 3,
			}),
		}),
		Comment = comment and Roact.createElement("TextLabel", {
			AutomaticSize = Enum.AutomaticSize.XY,
			Text = comment,
			Font = Enum.Font.SourceSans,
			TextSize = text.Body.Size,
			TextColor3 = text.Body.Color,
			BackgroundTransparency = 1,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextWrapped = true,
			LayoutOrder = 3,
		}),
	})
end

function PropsList:render()
	local props = self.props
	local Props = props.Props
	local layoutOrder = props.LayoutOrder
	local header = props.Header
	local description = props.Description

	local children = {}
	for index, prop in ipairs(Props) do
		children[prop.Name] = self:renderProp(prop.Name, prop.Type, prop.IsOptional, prop.Default, prop.Comment, index)
	end

	return Roact.createElement(PanelEntry, {
		Header = header,
		Description = description,
		LayoutOrder = layoutOrder,
	}, children)
end

PropsList = withContext({
	Stylizer = ContextServices.Stylizer,
})(PropsList)

return PropsList
