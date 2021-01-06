--[[
	Component that renders a group of (mutually exclusive) selectable buttons
	for changing the AlignmentMode setting.

	Required Props:
		string Value: The initially selected mode.
		callback OnValueChanged: Called when setting value changes.

	Optional Props:
		number LayoutOrder: The layout order of the component.
]]

local Plugin = script.Parent.Parent.Parent

local FitFrameOnAxis = require(Plugin.Packages.FitFrame).FitFrameOnAxis
local Roact = require(Plugin.Packages.Roact)
local ContextServices = require(Plugin.Packages.Framework.ContextServices)

local UI = require(Plugin.Packages.Framework.UI)
local Button = UI.Button
local Image = UI.Decoration.Image
local Tooltip = UI.Tooltip

local Util = require(Plugin.Packages.Framework.Util)
local StyleModifier = Util.StyleModifier
local LayoutOrderIterator = Util.LayoutOrderIterator

local AlignmentMode = require(Plugin.Src.Utility.AlignmentMode)

local ModeSetting = Roact.PureComponent:extend("ModeSetting")

local ModeButtonDefinitions = {
	[1] = {
		Image = "rbxasset://textures/AlignTool/button_min_24.png",
		Mode = AlignmentMode.Min,
	},
	[2] = {
		Image = "rbxasset://textures/AlignTool/button_center_24.png",
		Mode = AlignmentMode.Center,
	},
	[3] = {
		Image = "rbxasset://textures/AlignTool/button_max_24.png",
		Mode = AlignmentMode.Max,
	},
}

ModeSetting.defaultProps = {
	LayoutOrder = 1,
	Value = AlignmentMode.Center,
	OnValueChanged = function() end,
}

function ModeSetting:init(initialProps)
	assert(type(initialProps.Value) == "string", "Missing required property Value.")
	assert(type(initialProps.OnValueChanged) == "function", "Missing required property OnValueChanged.")
end

function ModeSetting:render()
	local props = self.props

	local localization = props.Localization
	local theme = props.Theme:get("Plugin")

	local layoutOrderIterator = LayoutOrderIterator.new()

	local function renderButton(mode, image)
		local isSelected = mode == props.Value

		return Roact.createElement(Button, {
			LayoutOrder = layoutOrderIterator:getNextOrder(),
			Size = UDim2.fromOffset(32, 32),
			StyleModifier = isSelected and StyleModifier.Selected or nil,
			Style = "Selectable",
			OnClick = function() props.OnValueChanged(mode) end,
		}, {
			Image = Roact.createElement(Image, {
				Style = {
					AnchorPoint = Vector2.new(0.5, 0.5),
					Image = image,
					Position = UDim2.new(0.5, 0, 0.5, 0),
					Size = UDim2.fromOffset(24, 24),
				},
			}),

			Tooltip = Roact.createElement(Tooltip, {
				Text = localization:getText("ModeSection", mode),
			}),
		})
	end

	local modeButtons = {}
	for _, button in ipairs(ModeButtonDefinitions) do
		local mode = button.Mode
		local image = button.Image
		modeButtons[tostring(mode)] = renderButton(mode, image)
	end

	return Roact.createElement(FitFrameOnAxis, {
		axis = FitFrameOnAxis.Axis.Both,
		contentPadding = UDim.new(0, 2), -- Add 2px spacing for button borders
		BackgroundTransparency = 1,
		FillDirection = Enum.FillDirection.Horizontal,
		LayoutOrder = props.LayoutOrder,
	}, modeButtons)
end

ContextServices.mapToProps(ModeSetting, {
	Localization = ContextServices.Localization,
	Theme = ContextServices.Theme,
})

return ModeSetting
