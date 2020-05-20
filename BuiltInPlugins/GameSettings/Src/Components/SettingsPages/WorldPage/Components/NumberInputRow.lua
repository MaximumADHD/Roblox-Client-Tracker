--[[
	Creates a titled frame for editing a specific number-type value. Optionally has a label that shows the
	value in metric form.

	Props:
		Title (string) - Localized title of the Titled frame
		Label (string) - Localized label for the number-type value
		Value (number) - Current value
		OnUpdate (function) - Invoked with the new value whenever the user modifies it in the NumberInputRow
			(including as they're typing). This value can exceed min/max, but is clamped as soon as the
			 textbox loses focus.
	Optional Props:
		LayoutOrder (number)
		unitsFormatFunction (function) - Invoked with the value converted to metric form. Expects the callback
			to return a localized string of the metric value (e.g. "x meters/second^2"). If not supplied, the
			metric label is not displayed
		MinValue (number) - Minimum value the user can select
		MaxValue (number) - Maxmimum value the user can select
]]

local Page = script.Parent.Parent
local Plugin = script.Parent.Parent.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local ContextServices = require(Plugin.Framework.ContextServices)

local WorldRootPhysics = require(Page.ContextServices.WorldRootPhysics)

local formatNumberForDisplay = require(Page.Util.formatNumberForDisplay)

local RoactStudioWidgets = Plugin.RoactStudioWidgets
local StudioWidgetTitledFrame = require(RoactStudioWidgets.TitledFrame)
local StudioWidgetRoundTextBox = require(RoactStudioWidgets.RoundTextBox)
local StudioWidgetText = require(RoactStudioWidgets.Text)

local INPUT_BOX_OFFSET = 160
local METRIC_LABEL_OFFSET = 170
local ROW_HEIGHT = 35

local NumberInputRow = Roact.PureComponent:extend("NumberInputRow")

function NumberInputRow:render()
	local props = self.props
	local layoutOrder = props.LayoutOrder
	local title = props.Title
	local label = props.Label
	local value = props.Value
	local minValue = props.MinValue or -math.huge
	local maxValue = props.MaxValue or math.huge
	local onUpdate = props.OnUpdate
	local unitsFormatFunction = props.UnitsFormatFunction

	local mouse = props.Mouse:get()
	local worldRootPhysicsController = props.WorldRootPhysics:get()

	return Roact.createElement(StudioWidgetTitledFrame, {
		Title = title,
		MaxHeight = ROW_HEIGHT,
		LayoutOrder = layoutOrder,
		TitleTextYAlignment = Enum.TextYAlignment.Center
	}, {
		Label = Roact.createElement(StudioWidgetText, {
			Enabled = true,
			Size = UDim2.new(1, 0, 0, ROW_HEIGHT),
			Position = UDim2.new(0, 0, 0.5, 0),
			AnchorPoint = Vector2.new(0, 0.5),
			Text = label,
		}),

		InputBox = Roact.createElement(StudioWidgetRoundTextBox, {
			Enabled = true,
			ShowToolTip = false,
			Text = formatNumberForDisplay(value),
			MaxLength = 100,
			Position = UDim2.new(0, INPUT_BOX_OFFSET, 0.5, 0),
			AnchorPoint = Vector2.new(0, 0.5),
			Width = 150,
			Height = ROW_HEIGHT,
			PaddingBottom = UDim.new(0, 0),
			PaddingTop = UDim.new(0, 0),
			Mouse = mouse,

			FocusChanged = function(focused)
				if not focused then
					local newValue = math.clamp(value, minValue, maxValue)
					onUpdate(newValue)
				end
			end,

			SetText = function(newValue)
				newValue = tonumber(newValue) or minValue
				onUpdate(newValue)
			end,
		}),

		MetricLabel = unitsFormatFunction and Roact.createElement(StudioWidgetText, {
			Enabled = true,
			Size = UDim2.new(1, 0, 0, ROW_HEIGHT),
			Position = UDim2.new(0, INPUT_BOX_OFFSET+METRIC_LABEL_OFFSET, 0.5, 0),
			AnchorPoint = Vector2.new(0, 0.5),
			Text = unitsFormatFunction(worldRootPhysicsController.convertStudsToMeters(value)),
		}),
	})
end

ContextServices.mapToProps(NumberInputRow, {
	Mouse = ContextServices.Mouse,
	WorldRootPhysics = WorldRootPhysics,
})

return NumberInputRow