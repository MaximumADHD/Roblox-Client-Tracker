--[[
	Component that displays a pair of radio buttons for the RelativeTo setting.

	The radio button for RelativeTo.Active is followed by a status icon, which
	shows a Tooltip explaining how to use the active selected instance.

	Required Props:
		string Value: The initially selected target.
		callback OnValueChanged: Called when setting value changes.

	Optional Props:
		number LayoutOrder: The layout order of the component.
]]

local Plugin = script.Parent.Parent.Parent

local getEngineFeatureActiveInstanceHighlight = require(Plugin.Src.Flags.getEngineFeatureActiveInstanceHighlight)

local FitFrameOnAxis = require(Plugin.Packages.FitFrame).FitFrameOnAxis
local Roact = require(Plugin.Packages.Roact)
local ContextServices = require(Plugin.Packages.Framework.ContextServices)

local UI = require(Plugin.Packages.Framework.UI)
local Container = UI.Container
local Image = UI.Decoration.Image
local RadioButton = UI.RadioButton
local Tooltip = UI.Tooltip

local Util = require(Plugin.Packages.Framework.Util)
local LayoutOrderIterator = Util.LayoutOrderIterator
local StyleModifier = Util.StyleModifier

local RelativeTo = require(Plugin.Src.Utility.RelativeTo)

local RelativeToSetting = Roact.PureComponent:extend("RelativeToSetting")

RelativeToSetting.defaultProps = {
	LayoutOrder = 1,
	Value = RelativeTo.Selection,
	OnValueChanged = function() end,
}

function RelativeToSetting:init(initialProps)
	assert(type(initialProps.Value) == "string", "Missing required property Value.")
	assert(type(initialProps.OnValueChanged) == "function", "Missing required property OnValueChanged.")
end

function RelativeToSetting:render()
	local props = self.props

	local layoutOrder = props.LayoutOrder
	local localization = props.Localization
	local theme = props.Theme:get("Plugin")
	local supportsActiveInstanceHighlight = getEngineFeatureActiveInstanceHighlight()

	local layoutOrderIterator = LayoutOrderIterator.new()

	local function renderRadioButton(target, layoutOrder)
		local disabled = target == RelativeTo.Active and not supportsActiveInstanceHighlight
		local isSelected = target == props.Value

		return Roact.createElement(RadioButton, {
			Disabled = disabled,
			Key = target,
			LayoutOrder = layoutOrder,
			Selected = isSelected,
			Text = localization:getText("RelativeToSection", target),
			OnClick = props.OnValueChanged,
		})
	end

	local helpIconStyleModifier = nil
	if not supportsActiveInstanceHighlight then
		helpIconStyleModifier = StyleModifier.Disabled
	end

	return Roact.createElement(FitFrameOnAxis, {
		axis = FitFrameOnAxis.Axis.Both,
		contentPadding = theme.SectionContentPaddingCompact,
		BackgroundTransparency = 1,
		FillDirection = Enum.FillDirection.Vertical,
	}, {
		SelectionRadioButton = renderRadioButton(RelativeTo.Selection, 1),

		ActiveRadioButton = Roact.createElement(FitFrameOnAxis, {
			axis = FitFrameOnAxis.Axis.Both,
			contentPadding = theme.RelativeToSetting.HelpIconPadding,
			BackgroundTransparency = 1,
			FillDirection = Enum.FillDirection.Horizontal,
			LayoutOrder = 2,
		}, {
			RadioButton = renderRadioButton(RelativeTo.Active, 1),

			HelpIcon = Roact.createElement(Container, {
				LayoutOrder = 2,
				Size = UDim2.new(0, 22, 1, 0),
			}, {
				Icon = Roact.createElement(Image, {
					Style = "HelpIcon",
					StyleModifier = helpIconStyleModifier,
				}),

				Tooltip = supportsActiveInstanceHighlight and Roact.createElement(Tooltip, {
					Text = localization:getText("RelativeToSection", "ActiveObjectTooltip"),
				})
			})
		})
	})
end

ContextServices.mapToProps(RelativeToSetting, {
	Localization = ContextServices.Localization,
	Theme = ContextServices.Theme,
})

return RelativeToSetting
