local Plugin = script.Parent.Parent.Parent

local Types = require(Plugin.Src.Types)

local Roact = require(Plugin.Packages.Roact)

local Framework = require(Plugin.Packages.Framework)

local Cryo = require(Plugin.Packages.Cryo)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Localization = ContextServices.Localization

local UI = Framework.UI
local Pane = UI.Pane
local ScrollingFrame = UI.ScrollingFrame
local ExpandablePane = UI.ExpandablePane

local PropertyView = require(script.Parent.PropertyView)

local PropertyListView = Roact.PureComponent:extend("PropertyListView")

local getPropertiesForInstance = require(Plugin.Src.Utility.getPropertiesForInstance)

local function getExpanded(expanded, section)
	return expanded[section] or expanded[section] == nil
end

function PropertyListView:init()
	self:setState({
		expanded = {},
	})
end

function PropertyListView:render()
	local props = self.props
	local localization = props.Localization
	if not props.Instance then
		return nil
	end

	local sections = {}
	for sectionIndex, sectionMetadata: Types.Section in pairs(getPropertiesForInstance(props.Instance)) do
		local sectionProperties = {}
		for propertyIndex, propertyMetadata: Types.PropDescriptor in pairs(sectionMetadata.Properties) do
			if not propertyMetadata.ShouldHide or not propertyMetadata.ShouldHide() then 
				sectionProperties[propertyIndex] = Roact.createElement(PropertyView, {
					Instance = props.Instance,
					PropertyName = propertyMetadata.Name,
					Editable = propertyMetadata.Editable,
					SetProperty = props.SetProperty,
					LayoutOrder = propertyIndex,
					Localization = localization,
					Dependencies = propertyMetadata.Dependencies,
				})
			end
		end

		-- Only create the section if it has a visible property
		if #sectionProperties > 0 then
			sections[sectionIndex] = Roact.createElement(ExpandablePane, {
				Expanded = getExpanded(self.state.expanded, sectionMetadata.Section),
				OnExpandedChanged = function()
					self:setState({
						expanded = Cryo.Dictionary.join(self.state.expanded, {
							[sectionMetadata.Section] = not self.state.expanded[sectionMetadata.Section],
						})
					})
				end,
				Layout = Enum.FillDirection.Vertical,
				LayoutOrder = sectionIndex,
				Text = localization:getText("Sections", sectionMetadata.Section),
			}, sectionProperties)
		end
	end


	return Roact.createElement(Pane, {
		Size = UDim2.fromScale(1, 1),
		Layout = Enum.FillDirection.Vertical,
	}, {
		ScrollingFrame = Roact.createElement(ScrollingFrame, {
			Size = UDim2.fromScale(1, 1),
			Position = UDim2.fromScale(0, 0),
			CanvasSize = UDim2.fromScale(0, 0),
			ScrollingDirection = Enum.ScrollingDirection.Y,
			AutomaticCanvasSize = Enum.AutomaticSize.XY,
			Layout = Enum.FillDirection.Vertical,
		}, {
			Pane = Roact.createElement(Pane, {
				Size = UDim2.new(1, -10, 1, 0),
				Layout = Enum.FillDirection.Vertical,
				VerticalAlignment = Enum.VerticalAlignment.Top,
				LayoutOrder = props.LayoutOrder,
			}, sections)
		})
	})
end

PropertyListView = withContext({
	Localization = Localization,
})(PropertyListView)

return PropertyListView
