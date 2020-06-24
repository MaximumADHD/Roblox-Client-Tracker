--[[
	Alignment "relative to" UI section.

	Displays radio buttons for choosing whether to align objects relative to the
	selection bounds, or to the active object.
]]

local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local ContextServices = require(Plugin.Packages.Framework.ContextServices)

local UI = require(Plugin.Packages.Framework.UI)
local Container = UI.Container
local Image = UI.Decoration.Image
local RadioButton = UI.RadioButton
local RadioButtonList = UI.RadioButtonList
local TextLabel = UI.Decoration.TextLabel
local Tooltip = UI.Tooltip

local Util = require(Plugin.Packages.Framework.Util)
local LayoutOrderIterator = Util.LayoutOrderIterator
local StyleModifier = Util.StyleModifier

local getEngineFeatureActiveInstanceHighlight = require(Plugin.Src.Flags.getEngineFeatureActiveInstanceHighlight)

local SetRelativeTo = require(Plugin.Src.Actions.SetRelativeTo)
local UpdateActiveInstanceHighlight = require(Plugin.Src.Thunks.UpdateActiveInstanceHighlight)
local UpdateAlignEnabled = require(Plugin.Src.Thunks.UpdateAlignEnabled)
local RelativeTo = require(Plugin.Src.Utility.RelativeTo)

local RelativeToSection = Roact.PureComponent:extend("RelativeToSection")

function RelativeToSection:render()
	local props = self.props

	local layoutOrder = props.LayoutOrder
	local localization = props.Localization
	local theme = props.Theme:get("Plugin")
	local supportsActiveObject = getEngineFeatureActiveInstanceHighlight()

	local layoutOrderIterator = LayoutOrderIterator.new()

	local function makeRadioButton(target)
		local disabled = target == RelativeTo.Active and not supportsActiveObject
		local selected = target == props.relativeTo
		local text = localization:getText("RelativeToSection", target)

		return Roact.createElement(RadioButton, {
			Disabled = disabled,
			Key = target,
			LayoutOrder = layoutOrderIterator:getNextOrder(),
			OnClick = props.setRelativeTo,
			Selected = selected,
			Text = text,
		})
	end

	local styleModifier = nil
	if not supportsActiveObject then
		styleModifier = StyleModifier.Disabled
	end

	return Roact.createElement(Container, {
		LayoutOrder = layoutOrder,
		Size = theme.RelativeToSection.Size,
	}, {
		Layout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal,
			Padding = UDim.new(0, theme.RelativeToSection.ListItemPadding),
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),

		Label = Roact.createElement(TextLabel, {
			LayoutOrder = layoutOrderIterator:getNextOrder(),
			Size = theme.SectionLabelSize,
			Text = localization:getText("RelativeToSection", "Title"),
			TextXAlignment = Enum.TextXAlignment.Left,
		}),

		SelectionRadioButton = makeRadioButton(RelativeTo.Selection),
		ActiveRadioButton = makeRadioButton(RelativeTo.Active),

		HelpIcon = Roact.createElement(Container, {
			LayoutOrder = layoutOrderIterator:getNextOrder(),
			Size = UDim2.new(0, 22, 1, 0),
		}, {
			Icon = Roact.createElement(Image, {
				Style = "HelpIcon",
				StyleModifier = styleModifier,
			}),

			Tooltip = supportsActiveObject and Roact.createElement(Tooltip, {
				Text = localization:getText("RelativeToSection", "ActiveObjectTooltip"),
			})
		}),
	})
end

ContextServices.mapToProps(RelativeToSection, {
	Localization = ContextServices.Localization,
	Theme = ContextServices.Theme,
})

local function mapStateToProps(state, _)
	return {
		relativeTo = state.relativeTo,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		setRelativeTo = function(target)
			dispatch(SetRelativeTo(target))
			dispatch(UpdateAlignEnabled())
			if getEngineFeatureActiveInstanceHighlight() then
				dispatch(UpdateActiveInstanceHighlight())
			end
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(RelativeToSection)
