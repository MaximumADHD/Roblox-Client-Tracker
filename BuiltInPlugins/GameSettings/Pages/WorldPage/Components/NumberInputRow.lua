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
local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

local Framework = require(Plugin.Packages.Framework)
local SharedFlags = Framework.SharedFlags
local FFlagRemoveUILibraryRoundTextBox = SharedFlags.getFFlagRemoveUILibraryRoundTextBox()

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local RoactStudioWidgets = Plugin.Packages.RoactStudioWidgets

local UI = Framework.UI
local TextInput2 = UI.TextInput2
local TitledFrame = UI.TitledFrame

local StudioWidgetRoundTextBox
if not FFlagRemoveUILibraryRoundTextBox then
	StudioWidgetRoundTextBox = require(RoactStudioWidgets.RoundTextBox)
end
local StudioWidgetText = require(RoactStudioWidgets.Text)

local WorldRootPhysics = require(Page.ContextServices.WorldRootPhysics)

local formatNumberForDisplay = require(Page.Util.formatNumberForDisplay)

local INPUT_BOX_OFFSET = 160
local METRIC_LABEL_OFFSET = 170
local ROW_HEIGHT = 35

local NumberInputRow = Roact.PureComponent:extend("NumberInputRow")

if FFlagRemoveUILibraryRoundTextBox then
	function NumberInputRow:init()
		self.onFocusLost = function()
			local props = self.props
			self:onTextChanged(props.Value)
		end
		self.onTextChanged = function(newValue: string)
			local props = self.props
			local minValue = props.MinValue or -math.huge
			local maxValue = props.MaxValue or math.huge
			local nextValue = math.clamp(props.Value, minValue, maxValue)
			self.props.OnUpdate(nextValue)
		end
		self.onValidateText = function(text: string)
			local isValid = text == "" or tonumber(text) ~= nil
			local errorText
			if not isValid then
				errorText = self.props.Localization:getText("General", "NumberError")
			end
			return isValid, errorText
		end
	end
end

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

	return Roact.createElement(TitledFrame, {
		LayoutOrder = layoutOrder,
		Title = title,
	}, {
		Label = Roact.createElement(StudioWidgetText, {
			Enabled = true,
			Size = UDim2.new(1, 0, 0, ROW_HEIGHT),
			Position = if FFlagRemoveUILibraryRoundTextBox then nil else UDim2.new(0, 0, 0.5, 0),
			AnchorPoint = if FFlagRemoveUILibraryRoundTextBox then nil else Vector2.new(0, 0.5),
			Text = label,
		}),

		InputBox = (if FFlagRemoveUILibraryRoundTextBox
			then Roact.createElement(TextInput2, {
				OnFocusLost = self.onFocusLost,
				OnTextChanged = self.onTextChanged,
				OnValidateText = self.onValidateText,
				Position = UDim2.new(0, INPUT_BOX_OFFSET, 0, 0),
				Width = 150,
				Text = formatNumberForDisplay(value),
			})
			else Roact.createElement(StudioWidgetRoundTextBox, {
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
			})),

		MetricLabel = unitsFormatFunction and Roact.createElement(StudioWidgetText, {
			Enabled = true,
			Size = UDim2.new(1, 0, 0, ROW_HEIGHT),
			Position = UDim2.new(0, INPUT_BOX_OFFSET + METRIC_LABEL_OFFSET, 0.5, 0),
			AnchorPoint = Vector2.new(0, 0.5),
			Text = unitsFormatFunction(worldRootPhysicsController.convertStudsToMeters(value)),
		}),
	})
end

NumberInputRow = withContext({
	Mouse = ContextServices.Mouse,
	Localization = if FFlagRemoveUILibraryRoundTextBox then ContextServices.Localization else nil,
	WorldRootPhysics = WorldRootPhysics,
})(NumberInputRow)

return NumberInputRow
