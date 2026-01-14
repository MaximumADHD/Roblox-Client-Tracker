local Foundation = script:FindFirstAncestor("Foundation")

local Tokens = require(Foundation.Providers.Style.Tokens)
local Types = require(Foundation.Components.Types)
type Tokens = Tokens.Tokens
type StateLayer = Types.StateLayer

local ColorMode = require(Foundation.Enums.ColorMode)
type ColorMode = ColorMode.ColorMode
local StateLayerMode = require(Foundation.Enums.StateLayerMode)
type StateLayerMode = StateLayerMode.StateLayerMode
local ControlState = require(Foundation.Enums.ControlState)
type ControlState = ControlState.ControlState

function guiStateToStateLayer(guiState: ControlState): "Idle" | "Press" | "Hover"
	if guiState == ControlState.Pressed then
		return "Press"
	elseif guiState == ControlState.SelectedPressed then
		return "Press"
	elseif guiState == ControlState.Hover then
		return "Hover"
	end

	return "Idle"
end

function stateLayerModeToTokenNamespace(mode: StateLayerMode?)
	if mode == StateLayerMode.Default then
		return ColorMode.Color
	elseif mode == StateLayerMode.Inverse then
		return ColorMode.Inverse
	elseif mode == StateLayerMode.Light then
		return ColorMode.LightMode
	elseif mode == StateLayerMode.Dark then
		return ColorMode.DarkMode
	end
	-- Default to Color
	return ColorMode.Color
end

local function getStateLayerStyle(
	tokens: Tokens,
	stateLayer: StateLayer?,
	guiState: ControlState
): { Color3: Color3, Transparency: number }
	local colorNamespace = stateLayerModeToTokenNamespace(stateLayer and stateLayer.mode)
	local stateLayerState = guiStateToStateLayer(guiState)

	local stateLayerStyle = (tokens[colorNamespace] :: typeof(tokens.Color)).State[stateLayerState]

	return stateLayerStyle
end

return getStateLayerStyle
