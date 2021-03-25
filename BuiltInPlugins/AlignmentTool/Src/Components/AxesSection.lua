--[[
	Alignment axes section.

	Displays checkboxes for choosing which world axes to align to. Currently
	world space is the only option, but we will want to support using the local
	space of the active object.
]]

local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local ContextServices = require(Plugin.Packages.Framework.ContextServices)

local UI = require(Plugin.Packages.Framework.UI)
local Container = UI.Container
local TextLabel = UI.Decoration.TextLabel

local Util = require(Plugin.Packages.Framework.Util)
local LayoutOrderIterator = Util.LayoutOrderIterator

local SetAlignmentSpace = require(Plugin.Src.Actions.SetAlignmentSpace)
local SetEnabledAxes = require(Plugin.Src.Actions.SetEnabledAxes)
local AxesSettingsFragment = require(Plugin.Src.Components.AxesSettingsFragment)
local UpdateAlignEnabled = require(Plugin.Src.Thunks.UpdateAlignEnabled)

local AxesSection = Roact.PureComponent:extend("AxesSection")

function AxesSection:render()
	local props = self.props

	local layoutOrder = props.LayoutOrder
	local localization = props.Localization
	local theme = props.Theme:get("Plugin")

	local layoutOrderIterator = LayoutOrderIterator.new()

	return Roact.createElement(Container, {
		LayoutOrder = layoutOrder,
		Size = UDim2.new(1, 0, 0, theme.AxesSection.Height),
	}, {
		Layout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal,
			Padding = UDim.new(0, theme.AxesSection.ListItemPadding),
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),

		Label = Roact.createElement(TextLabel, {
			LayoutOrder = layoutOrderIterator:getNextOrder(),
			Size = UDim2.new(0, theme.LabelColumnWidth, 1, 0),
			Text = localization:getText("AxesSection", "Title"),
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Top,
		}),

		Content = Roact.createElement(Container, {
			LayoutOrder = layoutOrderIterator:getNextOrder(),
			Size = UDim2.new(1, -theme.LabelColumnWidth, 1, 0),
		}, {
			AxesSettingsFragment = Roact.createElement(AxesSettingsFragment, {
				AlignmentSpace = props.alignmentSpace,
				EnabledAxes = props.enabledAxes,
				OnAlignmentSpaceChanged = props.setAlignmentSpace,
				OnEnabledAxesChanged = props.setEnabledAxes,
			})
		})
	})
end

ContextServices.mapToProps(AxesSection, {
	Localization = ContextServices.Localization,
	Theme = ContextServices.Theme,
})

local function mapStateToProps(state, props)
	return {
		alignmentSpace = state.alignmentSpace,
		enabledAxes = state.enabledAxes,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		setAlignmentSpace = function(alignmentSpace)
			dispatch(SetAlignmentSpace(alignmentSpace))
		end,
		setEnabledAxes = function(axes)
			dispatch(SetEnabledAxes(axes))
			dispatch(UpdateAlignEnabled())
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(AxesSection)
