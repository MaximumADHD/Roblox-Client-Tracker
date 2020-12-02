--[[
	Fragment containing alignment space and axes settings.

	Required Props:
		string AlignmentSpace: The space to align in, either "World" or "Local".
		table EnabledAxes: A map of string ("X", "Y", "Z") to boolean.
		callback OnAlignmentSpaceChanged: Called when the alignment space changes.
		callback OnEnabledAxesChanged: Called when an axis is enabled or disabled.
]]

local Plugin = script.Parent.Parent.Parent

local getFFlagAlignInLocalSpace = require(Plugin.Src.Flags.getFFlagAlignInLocalSpace)

local Cryo = require(Plugin.Packages.Cryo)
local Roact = require(Plugin.Packages.Roact)
local ContextServices = require(Plugin.Packages.Framework.ContextServices)

local UI = require(Plugin.Packages.Framework.UI)
local Container = UI.Container
local RadioButtonList = UI.RadioButtonList
local TextLabel = UI.Decoration.TextLabel

local Util = require(Plugin.Packages.Framework.Util)
local LayoutOrderIterator = Util.LayoutOrderIterator
local Style = Util.Style

local Checkbox = require(Plugin.Src.Components.Checkbox)
local AlignmentSpace = require(Plugin.Src.Utility.AlignmentSpace)

local AxesSettingsFragment = Roact.PureComponent:extend("AxesSettingsFragment")

function AxesSettingsFragment:init(initialProps)
	assert(getFFlagAlignInLocalSpace())

	assert(type(initialProps.AlignmentSpace) == "string", "Missing required property AlignmentSpace.")
	assert(type(initialProps.EnabledAxes) == "table", "Missing required property EnabledAxes.")
	assert(type(initialProps.OnAlignmentSpaceChanged) == "function", "Missing required property OnAlignmentSpaceChanged.")
	assert(type(initialProps.OnEnabledAxesChanged) == "function", "Missing required property OnEnabledAxesChanged.")

	self.setAlignmentSpace = function(alignmentSpace)
		local props = self.props
		if props.OnAlignmentSpaceChanged then
			props.OnAlignmentSpaceChanged(alignmentSpace)
		end
	end

	self.toggleAxis = function(axisId)
		local props = self.props
		if props.OnEnabledAxesChanged then
			local enabledAxes = Cryo.Dictionary.join(props.EnabledAxes, {
				[axisId] = not props.EnabledAxes[axisId],
			})
			props.OnEnabledAxesChanged(enabledAxes)
		end
	end
end

function AxesSettingsFragment:render()
	local props = self.props

	local enabledAxes = props.EnabledAxes
	local localization = props.Localization
	local theme = props.Theme:get("Plugin")

	local layoutOrderIterator = LayoutOrderIterator.new()

	local axesCheckboxComponents = {
		Layout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal,
			Padding = theme.AxesSettingsFragment.CheckboxListItemPadding,
			SortOrder = Enum.SortOrder.LayoutOrder,
		})
	}

	local axisIds = {"X", "Y", "Z"}
	for _, axisId in ipairs(axisIds) do
		local isSelected = enabledAxes and enabledAxes[axisId] or false
		local text = localization:getText("AxesSettingsFragment", axisId)

		axesCheckboxComponents[axisId] = Roact.createElement(Checkbox, {
			Id = axisId,
			Disabled = false,
			LayoutOrder = layoutOrderIterator:getNextOrder(),
			Selected = isSelected,
			Text = text,
			OnClick = self.toggleAxis,
		})
	end

	return Roact.createFragment({
		Layout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical,
			Padding = theme.ContentListItemPadding,
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),

		AlignmentSpaceButtons = Roact.createElement(RadioButtonList, {
			Buttons = {
				{
					Key = AlignmentSpace.World,
					Text = localization:getText("AxesSettingsFragment", AlignmentSpace.World)
				},
				{
					Key = AlignmentSpace.Local,
					Text = localization:getText("AxesSettingsFragment", AlignmentSpace.Local)
				},
			},
			FillDirection = Enum.FillDirection.Horizontal,
			LayoutOrder = 1,
			SelectedKey = props.AlignmentSpace,
			OnClick = self.setAlignmentSpace,
		}),

		AxisCheckboxes = Roact.createElement(Container, {
			LayoutOrder = 2,
		}, axesCheckboxComponents),
	})
end

ContextServices.mapToProps(AxesSettingsFragment, {
	Localization = ContextServices.Localization,
	Theme = ContextServices.Theme,
})

return AxesSettingsFragment
