local FFlagTerrainToolsReplaceSrcTogglesOff = game:GetFastFlag("TerrainToolsReplaceSrcTogglesOff")

local Plugin = script.Parent.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

local ToolParts = script.Parent
local LabeledElementPair = require(ToolParts.LabeledElementPair)
local ToggleButton = require(ToolParts.ToggleButtons).ToggleButton

local function LabeledToggle(props)
	local layoutOrder = props.LayoutOrder
	local text = props.Text

	local isOn = props.IsOn
	local setIsOn = props.SetIsOn
	local disabled = FFlagTerrainToolsReplaceSrcTogglesOff and props.Disabled or nil

	return Roact.createElement(LabeledElementPair, {
		Size = UDim2.new(1, 0, 0, 18),
		Text = text,
		LayoutOrder = layoutOrder
	}, {
		ToggleButton = Roact.createElement(ToggleButton, {
			IsOn = isOn,
			SetIsOn = setIsOn,
			Disabled = disabled,
		}),
	})
end

return LabeledToggle
