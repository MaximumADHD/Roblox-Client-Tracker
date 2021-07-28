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
local FFlagDeveloperStorybookWithContext = game:GetFastFlag("DeveloperStorybookWithContext")

local Main = script.Parent.Parent.Parent
local Roact = require(Main.Packages.Roact)

local Framework = require(Main.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local UI = Framework.UI
local Pane = UI.Pane

local PanelEntry = require(Main.Src.Components.PanelEntry)

local PropsList = Roact.PureComponent:extend("PropsList")

function PropsList:renderProp(name: string, type: string, comment: string, index: number)
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
			Type = Roact.createElement("TextLabel", {
				AutomaticSize = Enum.AutomaticSize.XY,
				Text = type,
				Font = Enum.Font.SourceSans,
				TextSize = text.Type.Size,
				TextColor3 = text.Type.Color,
				BackgroundTransparency = 1,
				LayoutOrder = 1,
			}),
	
			Name = Roact.createElement("TextLabel", {
				AutomaticSize = Enum.AutomaticSize.XY,
				Text = name,
				Font = Enum.Font.SourceSans,
				TextSize = text.Type.Size,
				TextColor3 = text.Header.Color,
				BackgroundTransparency = 1,
				LayoutOrder = 2,
			}),
		}),
		Comment = Roact.createElement("TextLabel", {
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
		children[prop.Name] = self:renderProp(prop.Name, prop.Type, prop.Comment, index)
	end

	return Roact.createElement(PanelEntry, {
		Header = header,
		Description = description,
		LayoutOrder = layoutOrder,
	}, children)
end

if FFlagDeveloperStorybookWithContext then
	PropsList = withContext({
		Stylizer = ContextServices.Stylizer,
	})(PropsList)
else
	ContextServices.mapToProps(PropsList, {
		Stylizer = ContextServices.Stylizer,
	})
end


return PropsList
