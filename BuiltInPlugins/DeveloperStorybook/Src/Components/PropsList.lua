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

local Foundation = require(Main.Packages.Foundation)
local View = Foundation.View
local Text = Foundation.Text

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

	return React.createElement(Text, {
		Text = text,
		tag = "Monospace auto-xy text-align-x-left",
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
	return React.createElement(View, {
		LayoutOrder = index,
		tag = "col gap-medium size-full-0 auto-y padding-medium",
	}, {
		Top = React.createElement(View, {
			tag = "row align-y-center gap-medium size-full-0 auto-y",
		}, {
			Name = React.createElement(Text, {
				Text = propName .. if isOptional then "?" else "",
				LayoutOrder = 1,
				tag = "auto-xy text-title-large text-align-x-left",
			}),
			Type = self:renderPropType(propName, propType, 2),
			Default = if default
				then React.createElement(Text, {
					Text = `(default: <font face="RobotoMono" size="14">{tostring(default)}</font>)`,
					LayoutOrder = 3,
					RichText = true,
					tag = "auto-xy text-body-medium text-align-x-left",
				})
				else nil,
		}),
		Comment = comment and React.createElement(Text, {
			LayoutOrder = 3,
			Text = comment,
			tag = "auto-xy text-body-medium text-wrap text-align-x-left",
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
