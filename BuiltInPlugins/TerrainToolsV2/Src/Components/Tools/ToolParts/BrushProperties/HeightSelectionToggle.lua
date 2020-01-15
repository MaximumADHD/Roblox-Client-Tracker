local Plugin = script.Parent.Parent.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

local FFlagTerrainToolsFixPlanePositionErrorMessage = game:GetFastFlag("TerrainToolsFixPlanePositionErrorMessage")

local Localizing = require(Plugin.Packages.UILibrary.Localizing)
local withLocalization = Localizing.withLocalization
local getLocalization = Localizing.getLocalization
local Theme = require(Plugin.Src.ContextServices.Theming)
local withTheme = Theme.withTheme

local MAX_GRAPHENES = 12

local ToolParts = script.Parent.Parent
local LabeledTextInput = require(ToolParts.LabeledTextInput)
local LabeledElementPair = require(ToolParts.LabeledElementPair)
local PickerButton = require(ToolParts.ToggleButtons).PickerButton

local HeightSelectionToggle = Roact.PureComponent:extend("HeightSelectionToggle")

function HeightSelectionToggle:init(props)
	self.setPlanePositionY = function(_, text)
		self.props.setPlanePositionY(text)
	end

	self.validateText = function(text)
		local number = tonumber(text)
		if number then
			return text
		else
			return text, getLocalization(self):getText("Warning", "InvalidNumber")
		end
	end
end

function HeightSelectionToggle:render()
	return withLocalization(function(localization)
		return withTheme(function(theme)
			local props = self.props
			local planePositionY = props.planePositionY
			local heightPicker = props.heightPicker
			local setHeightPicker = props.setHeightPicker

			return (FFlagTerrainToolsFixPlanePositionErrorMessage
			and Roact.createElement(LabeledElementPair, {
				Size = UDim2.new(1, 0, 0, 22),
				Text = localization:getText("BrushSettings", "PlanePosition"),
				Padding = UDim.new(0, 4),
				SizeToContent = true,
				LayoutOrder = 9,
				ContentDirection = Enum.FillDirection.Horizontal,
			}, {
				Input = Roact.createElement(LabeledTextInput, {
					LayoutOrder = 1,
					Size = UDim2.new(0, 116, 0, 22),
					Width = UDim.new(0, 116),
					Label = "Y",
					Text = planePositionY,
					MaxGraphenes = MAX_GRAPHENES,
					OnFocusLost = self.setPlanePositionY,
					ValidateText = self.validateText,
				}),

				HeightPicker = Roact.createElement(PickerButton, {
					LayoutOrder = 2,
					Position = UDim2.new(0, 116 + 3, 0, 3),
					IsOn = heightPicker,
					SetIsOn = setHeightPicker,
				}),

			}) or Roact.createElement(LabeledElementPair, {
				LayoutOrder = 9,
				Text = localization:getText("BrushSettings", "PlanePosition"),
				Size = UDim2.new(1, 0, 0, 22),
				Padding = UDim.new(0, 4),
				SizeToContent = true,
			}, {
				HeightPicker = Roact.createElement("Frame", {
					Size = UDim2.new(1, 0, 0, 22),
					BackgroundTransparency = 1,
				}, {
					Input = Roact.createElement(LabeledTextInput, {
						LayoutOrder = 1,
						Size = UDim2.new(0, 116, 0, 22),
						Width = UDim.new(0, 116),
						Label = "Y",
						Text = planePositionY,
						MaxGraphenes = MAX_GRAPHENES,
						OnFocusLost = self.setPlanePositionY,
						ValidateText = self.validateText,
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
	end)
end

return HeightSelectionToggle
