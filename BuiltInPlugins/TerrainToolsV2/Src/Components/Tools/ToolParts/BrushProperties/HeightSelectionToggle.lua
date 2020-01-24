local Plugin = script.Parent.Parent.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

local FFlagTerrainToolsFixPlanePositionErrorMessage = game:GetFastFlag("TerrainToolsFixPlanePositionErrorMessage")
local FFlagTerrainToolsFlattenUseBaseBrush = game:GetFastFlag("TerrainToolsFlattenUseBaseBrush")

local Theme = require(Plugin.Src.ContextServices.Theming)
local withTheme = Theme.withTheme

local ToolParts = script.Parent.Parent
local NumberTextInput = require(ToolParts.NumberTextInput)
local LabeledElementPair = require(ToolParts.LabeledElementPair)
local PickerButton = require(ToolParts.ToggleButtons).PickerButton

local HeightSelectionToggle = Roact.PureComponent:extend("HeightSelectionToggle")

function HeightSelectionToggle:init(props)
	self.onFocused = function()
		if self.props.setHeightPicker then
			self.props.setHeightPicker(false)
		end
	end

	self.onFocusLost = function(_, _, text, isValid)
		if FFlagTerrainToolsFlattenUseBaseBrush then
			if self.props.setHeightPicker then
				self.props.setHeightPicker(false)
			end

			local setPlanePositionY = self.props.setPlanePositionY
			if isValid and setPlanePositionY then
				-- When the height picker is on, it's possible that this call gets ignored
				-- And instead where ever the height picker was is used instead
				-- So delay this a frame to let the height picker finish
				spawn(function()
					setPlanePositionY(text)
				end)
			end
		else
			if isValid and self.props.setPlanePositionY then
				self.props.setPlanePositionY(text)
			end
		end
	end

	self.onValueChanged = function(_, text, isValid)
		if isValid and self.props.setPlanePositionY then
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
				OnFocused = FFlagTerrainToolsFlattenUseBaseBrush and self.onFocused,
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
					OnFocused = FFlagTerrainToolsFlattenUseBaseBrush and self.onFocused,
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
