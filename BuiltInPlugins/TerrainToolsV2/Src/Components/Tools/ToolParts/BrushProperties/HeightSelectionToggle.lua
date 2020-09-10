local Plugin = script.Parent.Parent.Parent.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)

local ToolParts = script.Parent.Parent
local LabeledElementPair = require(ToolParts.LabeledElementPair)
local NumberTextInput = require(ToolParts.NumberTextInput)
local PickerButton = require(ToolParts.ToggleButtons).PickerButton

local HeightSelectionToggle = Roact.PureComponent:extend("HeightSelectionToggle")

function HeightSelectionToggle:init(props)
	self.onFocused = function()
		if self.props.setHeightPicker then
			self.props.setHeightPicker(false)
		end
	end

	self.onFocusLost = function(_, _, text, isValid)
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
	end

	self.onValueChanged = function(_, text, isValid)
		if isValid and self.props.setPlanePositionY then
			self.props.setPlanePositionY(text)
		end
	end
end

function HeightSelectionToggle:render()
	local props = self.props
	local label = props.Label
	local layoutOrder = props.LayoutOrder
	local planePositionY = props.planePositionY
	local heightPicker = props.heightPicker
	local setHeightPicker = props.setHeightPicker

	return Roact.createElement(LabeledElementPair, {
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
			OnFocused = self.onFocused,
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
	})
end

return HeightSelectionToggle
