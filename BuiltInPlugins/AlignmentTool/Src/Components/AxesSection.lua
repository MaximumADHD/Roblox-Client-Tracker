--[[
	Alignment axes section.

	Displays checkboxes for choosing which world axes to align to. Currently
	world space is the only option, but we will want to support using the local
	space of the active object.
]]

local Plugin = script.Parent.Parent.Parent

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

local SetEnabledAxes = require(Plugin.Src.Actions.SetEnabledAxes)
local Checkbox = require(Plugin.Src.Components.Checkbox)

local AxesSection = Roact.PureComponent:extend("AxesSection")

function AxesSection:init()
	self.toggleAxis = function(id)
		local props = self.props
		local enabledAxes = Cryo.Dictionary.join(props.enabledAxes, {
			[id] = not props.enabledAxes[id],
		})
		props.setEnabledAxes(enabledAxes)
	end
end

function AxesSection:render()
	local props = self.props

	local layoutOrder = props.LayoutOrder
	local localization = props.Localization
	local theme = props.Theme:get("Plugin")

	local layoutOrderIterator = LayoutOrderIterator.new()

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
		}),

		WorldXCheckbox = makeCheckbox("WorldX"),
		WorldYCheckbox = makeCheckbox("WorldY"),
		WorldZCheckbox = makeCheckbox("WorldZ"),
	})
end

ContextServices.mapToProps(AxesSection, {
	Localization = ContextServices.Localization,
	Theme = ContextServices.Theme,
})

local function mapStateToProps(state, props)
	return {
		enabledAxes = state.enabledAxes,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		setEnabledAxes = function(axes)
			dispatch(SetEnabledAxes(axes))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(AxesSection)
