local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)
local Text = require(Foundation.Components.Text)
local useTokens = require(Foundation.Providers.Style.useTokens)
local ControlState = require(Foundation.Enums.ControlState)
type ControlState = ControlState.ControlState

local function Story(props)
	return React.createElement(Text, {
		Text = props.controls.text,
		fontStyle = {
			FontSize = props.controls.textSize,
		},
		tag = "auto-xy content-default",
	})
end

local function StoryGuiState()
	local guiState, setGuiState = React.useBinding(ControlState.Initialize :: ControlState)
	local tokens = useTokens()

	local function onStateChanged(new: ControlState)
		setGuiState(new)
	end

	return React.createElement(Text, {
		Text = guiState:map(function(state)
			return "State: " .. state :: string
		end) :: any,
		fontStyle = {
			FontSize = 20,
		},
		backgroundStyle = tokens.Color.Extended.Purple.Purple_500,
		tag = "col align-x-center align-y-center size-2800 content-default",
		onStateChanged = onStateChanged,
	})
end

return {
	summary = "Text",
	stories = {
		{
			name = "Basic Text",
			story = Story :: any,
		},
		{
			name = "GUI State Use",
			story = StoryGuiState,
		},
	},
	controls = {
		text = "Hello, world!",
		textSize = 24,
	},
}
