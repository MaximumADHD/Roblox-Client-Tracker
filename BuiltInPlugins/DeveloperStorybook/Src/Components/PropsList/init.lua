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
local React = require(Main.Packages.React)

local Framework = require(Main.Packages.Framework)
local UI = Framework.UI
local Pane = UI.Pane
local TextLabel = UI.TextLabel

local PanelEntry = require(Main.Src.Components.PanelEntry)
local Types = require(Main.Src.Types)

local PropsList = React.PureComponent:extend("PropsList")

function formatCustomType(propName)
	return propName:gsub("^%l", string.upper)
end

local arrayFormat = "Array<%s>"
function PropsList:renderPropType(propName: string, propType: string | Types.PropType, layoutOrder: number)
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

	return React.createElement(TextLabel, {
		Text = text,
		[React.Tag] = "Monospace X-Fit",
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
	return React.createElement(Pane, {
		LayoutOrder = index,
		[React.Tag] = "Main Border X-Pad X-ColumnM X-FitY",
	}, {
		Top = React.createElement(Pane, {
			[React.Tag] = "Main Border X-RowM X-FitY X-Middle",
		}, {
			Name = React.createElement(TextLabel, {
				Text = propName .. if isOptional then "?" else "",
				LayoutOrder = 1,
				[React.Tag] = "Semibold X-Fit",
			}),
			Type = self:renderPropType(propName, propType, 2),
			Default = if default
				then React.createElement(TextLabel, {
					Text = `(default: <font face="RobotoMono" size="14">{tostring(default)}</font>`,
					LayoutOrder = 3,
					RichText = true,
					[React.Tag] = "X-Fit",
				})
				else nil,
		}),
		Comment = comment and React.createElement(TextLabel, {
			LayoutOrder = 3,
			Text = comment,
			[React.Tag] = "Label Wrap X-Fit",
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

	return React.createElement(PanelEntry, {
		Header = header,
		Description = description,
		LayoutOrder = layoutOrder,
	}, children)
end

return PropsList
