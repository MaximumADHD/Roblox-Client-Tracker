local Plugin = script.Parent.Parent.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

local FFlagTerrainToolsFixPlanePositionErrorMessage = game:GetFastFlag("TerrainToolsFixPlanePositionErrorMessage")

local Theme = require(Plugin.Src.ContextServices.Theming)
local withTheme = Theme.withTheme

local ToolParts = script.Parent.Parent
local NumberTextInput = require(ToolParts.NumberTextInput)
local LabeledElementPair = require(ToolParts.LabeledElementPair)
local PickerButton = require(ToolParts.ToggleButtons).PickerButton

local HeightSelectionToggle = Roact.PureComponent:extend("HeightSelectionToggle")

function HeightSelectionToggle:init(props)
	self.onFocusLost = function(_, _, text, isValid)
		if isValid then
			self.props.setPlanePositionY(text)
		end
	end

	self.onValueChanged = function(_, text, isValid)
		if isValid then
			self.props.setPlanePositionY(text)
		end
	end
end

function HeightSelectionToggle:render()
	return withTheme(function(theme)
		local props = self.props
		local label = props.Label
		local layoutOrder = props.LayoutOrder
		local planePositionY = props.planePositionY
		local heightPicker = props.heightPicker
		local setHeightPicker = props.setHeightPicker

		return (FFlagTerrainToolsFixPlanePositionErrorMessage
		and Roact.createElement(LabeledElementPair, {
			LayoutOrder = layoutOrder,
			Size = UDim2.new(1, 0, 0, 22),
			Text = label,
			Padding = UDim.new(0, 4),
			SizeToContent = true,
			ContentDirection = Enum.FillDirection.Horizontal,
		}, {
			Input = Roact.createElement(NumberTextInput, {
				LayoutOrder = 1,
				Width = UDim.new(0, 116),
				Key = "Y",
				Label = "Y",
				Value = planePositionY,
				Precision = 3,
				OnFocusLost = self.onFocusLost,
				OnValueChanged = self.onValueChanged,
			}),

			-- Wrap the HeightPicker so that we can control its Y position instead of the UIListLayout
			HeightPickerContainer = Roact.createElement("Frame", {
				LayoutOrder = 2,
				BackgroundTransparency = 1,
				Size = UDim2.new(0, 18, 0, 18 + 3),
			}, {
				HeightPicker = Roact.createElement(PickerButton, {
					Position = UDim2.new(0, 0, 0, 3),
					IsOn = heightPicker,
					SetIsOn = setHeightPicker,
				}),
			}),

		}) or Roact.createElement(LabeledElementPair, {
			LayoutOrder = layoutOrder,
			Text = label,
			Size = UDim2.new(1, 0, 0, 22),
			Padding = UDim.new(0, 4),
			SizeToContent = true,
		}, {
			HeightPicker = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, 22),
				BackgroundTransparency = 1,
			}, {
				Input = Roact.createElement(NumberTextInput, {
					LayoutOrder = 1,
					Width = UDim.new(0, 116),
					Key = "Y",
					Label = "Y",
					Value = planePositionY,
					Precision = 3,
					OnFocusLost = self.onFocusLost,
					OnValueChanged = self.onValueChanged,
				}),

				HeightPicker = Roact.createElement(PickerButton, {
					LayoutOrder = 2,
					Position = UDim2.new(0, 116 + 3, 0, 3),
					IsOn = heightPicker,
					SetIsOn = setHeightPicker,
				}),
			})
		}))
	end)
end

return HeightSelectionToggle
