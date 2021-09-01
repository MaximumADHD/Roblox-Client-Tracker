local Plugin = script.Parent.Parent.Parent

local Types = require(Plugin.Src.Types)

local Roact = require(Plugin.Packages.Roact)

local Framework = require(Plugin.Packages.Framework)

local Cryo = require(Plugin.Packages.Cryo)

local ContextServices = Framework.ContextServices
local Localization = ContextServices.Localization
local Stylizer = Framework.Style.Stylizer

local UI = Framework.UI
local Pane = UI.Pane
local TextLabel = UI.Decoration.TextLabel
local ExpandablePane = UI.ExpandablePane
local Button = UI.Button

local PropertyView = require(script.Parent.PropertyView)

local PropertyListView = Roact.PureComponent:extend("PropertyListView")

local getPropertiesForInstance = require(Plugin.Src.Utility.getPropertiesForInstance)

function PropertyListView:init()
	self:setState({
		expanded = {},
	})
end

function PropertyListView:render()
	local props = self.props
	if not props.Instance then
		return nil
	end

	local sections = {}
	for sectionIndex, sectionMetadata: Types.Section in pairs(getPropertiesForInstance(props.Instance)) do
		local sectionProperties = {}
		for propertyIndex, propertyMetadata: Types.PropDescriptor in pairs(sectionMetadata.Properties) do
			sectionProperties[propertyIndex] = Roact.createElement(PropertyView, {
				Instance = props.Instance,
				PropertyName = propertyMetadata.Name,
				Editable = propertyMetadata.Editable,
				SetProperty = props.SetProperty,
				LayoutOrder = propertyIndex,
			})
		end

		sections[sectionIndex] = Roact.createElement(ExpandablePane, {
			Expanded = self.state.expanded[sectionMetadata.Section],
			OnExpandedChanged = function()
				self:setState({
					expanded = Cryo.Dictionary.join(self.state.expanded, {
						[sectionMetadata.Section] = not self.state.expanded[sectionMetadata.Section],
					})
				})
			end,
			Layout = Enum.FillDirection.Vertical,
			LayoutOrder = sectionIndex,
			Text = sectionMetadata.Section,
		}, sectionProperties)
	end


	return Roact.createElement(Pane, {
		LayoutOrder = props.LayoutOrder,
		AutomaticSize = Enum.AutomaticSize.Y,
		Size = UDim2.fromScale(1, 0),
		Layout = Enum.FillDirection.Vertical,
		Spacing = 4,
	}, sections)
end

return PropertyListView
