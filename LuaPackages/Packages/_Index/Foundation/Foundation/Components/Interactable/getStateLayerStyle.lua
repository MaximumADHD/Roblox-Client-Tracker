local Foundation = script:FindFirstAncestor("Foundation")

local Types = require(Foundation.Components.Types)
local Tokens = require(Foundation.Providers.Style.Tokens)
type Tokens = Tokens.Tokens
type StateLayer = Types.StateLayer

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
		return "Color"
	elseif mode == StateLayerMode.Inverse then
		return "Inverse"
	elseif mode == StateLayerMode.Light then
		return "LightMode"
	elseif mode == StateLayerMode.Dark then
		return "DarkMode"
	end
	-- Default to Color
	return "Color"
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
