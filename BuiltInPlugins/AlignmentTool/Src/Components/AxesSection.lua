--[[
	Alignment axes section.

	Displays checkboxes for choosing which world axes to align to. Currently
	world space is the only option, but we will want to support using the local
	space of the active object.
]]

local Plugin = script.Parent.Parent.Parent

local getFFlagAlignInLocalSpace = require(Plugin.Src.Flags.getFFlagAlignInLocalSpace)

local Cryo = require(Plugin.Packages.Cryo)
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local ContextServices = require(Plugin.Packages.Framework.ContextServices)

local UI = require(Plugin.Packages.Framework.UI)
local Container = UI.Container
local TextLabel = UI.Decoration.TextLabel

local Util = require(Plugin.Packages.Framework.Util)
local LayoutOrderIterator = Util.LayoutOrderIterator
local Style = Util.Style

local SetAlignmentSpace = require(Plugin.Src.Actions.SetAlignmentSpace)
local SetEnabledAxes = require(Plugin.Src.Actions.SetEnabledAxes)
local AxesSettingsFragment = require(Plugin.Src.Components.AxesSettingsFragment)
local Checkbox = require(Plugin.Src.Components.Checkbox)
local UpdateAlignEnabled = require(Plugin.Src.Thunks.UpdateAlignEnabled)

local AxesSection = Roact.PureComponent:extend("AxesSection")

if not getFFlagAlignInLocalSpace() then
	function AxesSection:init()
		self.toggleAxis = function(id)
			local props = self.props
			local enabledAxes = Cryo.Dictionary.join(props.enabledAxes, {
				[id] = not props.enabledAxes[id],
			})
			props.setEnabledAxes(enabledAxes)
		end
	end
end

function AxesSection:render()
	local props = self.props

	local layoutOrder = props.LayoutOrder
	local localization = props.Localization
	local theme = props.Theme:get("Plugin")

	local layoutOrderIterator = LayoutOrderIterator.new()

	if getFFlagAlignInLocalSpace() then
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
	else
		local function makeCheckbox(id)
			local isSelected = props.enabledAxes and props.enabledAxes[id] or false
			local text = localization:getText("AxesSection", id)

			return Roact.createElement(Checkbox, {
				Id = id,
				Disabled = false,
				Selected = isSelected,
				Text = text,
				OnClick = self.toggleAxis,
				LayoutOrder = layoutOrderIterator:getNextOrder(),
			})
		end

		return Roact.createElement(Container, {
			LayoutOrder = layoutOrder,
			Size = theme.AxesSection.Size,
		}, {
			Layout = Roact.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Horizontal,
				Padding = UDim.new(0, theme.AxesSection.ListItemPadding),
				SortOrder = Enum.SortOrder.LayoutOrder,
			}),

			Label = Roact.createElement(TextLabel, {
				LayoutOrder = layoutOrderIterator:getNextOrder(),
				Size = theme.SectionLabelSize,
				Text = localization:getText("AxesSection", "Title"),
				TextXAlignment = Enum.TextXAlignment.Left,
			}),

			WorldXCheckbox = makeCheckbox("WorldX"),
			WorldYCheckbox = makeCheckbox("WorldY"),
			WorldZCheckbox = makeCheckbox("WorldZ"),
		})
	end
end

ContextServices.mapToProps(AxesSection, {
	Localization = ContextServices.Localization,
	Theme = ContextServices.Theme,
})

local function mapStateToProps(state, props)
	return {
		alignmentSpace = getFFlagAlignInLocalSpace() and state.alignmentSpace or nil,
		enabledAxes = state.enabledAxes,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		setAlignmentSpace = getFFlagAlignInLocalSpace() and function(alignmentSpace)
			dispatch(SetAlignmentSpace(alignmentSpace))
		end or nil,
		setEnabledAxes = function(axes)
			dispatch(SetEnabledAxes(axes))
			dispatch(UpdateAlignEnabled())
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(AxesSection)
