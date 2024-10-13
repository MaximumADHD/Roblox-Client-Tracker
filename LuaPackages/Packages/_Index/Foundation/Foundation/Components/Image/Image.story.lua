local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)
local Image = require(Foundation.Components.Image)
local View = require(Foundation.Components.View)
local Text = require(Foundation.Components.Text)

local ControlState = require(Foundation.Enums.ControlState)
type ControlState = ControlState.ControlState

local function Story(props)
	return React.createElement(Image, {
		Image = "icons/graphic/success_xlarge",
		tag = "size-2800",
	})
end

local function AssetStory(props)
	return React.createElement(
		View,
		{
			backgroundStyle = {
				Transparency = 0.5,
			},
			tag = "col gap-large auto-xy padding-small",
		},
		React.createElement(Image, {
			Image = "rbxassetid://7229442422",
			backgroundStyle = {
				Transparency = 0,
				Color3 = Color3.fromRGB(255, 255, 255),
			},
			tag = "size-2800",
		}),
		React.createElement(
			Image,
			{
				Image = "component_assets/circle_22_stroke_3",
				slice = {
					center = Rect.new(11, 11, 12, 12),
				},
				backgroundStyle = {
					Transparency = 1,
					Color3 = Color3.fromRGB(255, 255, 255),
				},
				tag = "size-2800-800 col align-x-center align-y-center",
			},
			React.createElement(Text, {
				Text = "Slice Center",
				AutomaticSize = Enum.AutomaticSize.XY,
				textStyle = {
					Color3 = Color3.fromRGB(255, 255, 255),
				},
			})
		)
	)
end

local function StoryGuiState(props)
	local guiState, setGuiState = React.useBinding(ControlState.Initialize :: ControlState)

	local function onStateChanged(new: ControlState)
		setGuiState(new)
	end

	return React.createElement(Image, {
		Image = guiState:map(function(state)
			if state == ControlState.Default then
				return "rbxthumb://type=Asset&id=23155839&w=420&h=420"
			elseif state == ControlState.Hover then
				return "rbxthumb://type=Asset&id=23155842&w=420&h=420"
			elseif state == ControlState.Pressed then
				return "rbxthumb://type=Asset&id=23155847&w=420&h=420"
			end
			return "rbxthumb://type=Asset&id=23155833&w=420&h=420"
		end),
		backgroundStyle = {
			Transparency = 0,
			Color3 = Color3.fromRGB(120, 0, 180),
		},
		tag = "col align-x-center align-y-center size-2800",
		onStateChanged = onStateChanged,
	})
end

return {
	summary = "Image",
	stories = {
		{
			name = "Basic Image",
			story = Story :: any,
		},
		{
			name = "Basic Asset Use",
			story = AssetStory,
		},
		{
			name = "GUI State Use",
			story = StoryGuiState,
		},
	},
}
