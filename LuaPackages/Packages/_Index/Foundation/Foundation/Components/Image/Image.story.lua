local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)
local Dash = require(Packages.Dash)

local Image = require(Foundation.Components.Image)
local View = require(Foundation.Components.View)
local Text = require(Foundation.Components.Text)
local useTokens = require(Foundation.Providers.Style.useTokens)

local getRbxThumb = require(Foundation.Utility.getRbxThumb)
local ThumbnailType = require(Foundation.Enums.ThumbnailType)
local ThumbnailSize = require(Foundation.Enums.ThumbnailSize)
type ThumbnailSize = ThumbnailSize.ThumbnailSize
local ControlState = require(Foundation.Enums.ControlState)
type ControlState = ControlState.ControlState

local function AssetStory()
	local tokens = useTokens()
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
			backgroundStyle = tokens.Color.Extended.White.White_100,
			tag = "size-2800",
		}),
		React.createElement(
			Image,
			{
				Image = "component_assets/circle_22_stroke_3",
				slice = {
					center = Rect.new(11, 11, 12, 12),
				},
				backgroundStyle = tokens.Color.Extended.White.White_0,
				tag = "size-2800-800 col align-x-center align-y-center",
			},
			React.createElement(Text, {
				Text = "Slice Center",
				AutomaticSize = Enum.AutomaticSize.XY,
				textStyle = tokens.Color.Content.Emphasis,
			})
		)
	)
end

local function StoryGuiState()
	local guiState, setGuiState = React.useBinding(ControlState.Initialize :: ControlState)
	local tokens = useTokens()

	local function onStateChanged(new: ControlState)
		setGuiState(new)
	end

	return React.createElement(Image, {
		Image = guiState:map(function(state)
			if state == ControlState.Default then
				return getRbxThumb(ThumbnailType.Asset, 23155839, ThumbnailSize.Large)
			elseif state == ControlState.Hover then
				return getRbxThumb(ThumbnailType.Asset, 23155842, ThumbnailSize.Large)
			elseif state == ControlState.Pressed then
				return getRbxThumb(ThumbnailType.Asset, 23155847, ThumbnailSize.Large)
			end
			return getRbxThumb(ThumbnailType.Asset, 23155833, ThumbnailSize.Large)
		end),
		backgroundStyle = tokens.Color.Extended.Purple.Purple_500,
		tag = "col align-x-center align-y-center size-2800",
		onStateChanged = onStateChanged,
	})
end

return {
	summary = "Image",
	stories = {
		{
			name = "Basic Image",
			story = function()
				return React.createElement(Image, {
					Image = "icons/graphic/success_xlarge",
					tag = "size-2800",
				})
			end :: any,
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
	controls = {
		type = Dash.values(ThumbnailType),
		id = 1,
		size = { ThumbnailSize.Medium :: ThumbnailSize, ThumbnailSize.Large, ThumbnailSize.XLarge, ThumbnailSize.Small },
	},
}
