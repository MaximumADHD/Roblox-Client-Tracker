local Framework = script:FindFirstAncestor("UI").Parent

local StyleKey = require(Framework.Style.StyleKey)

local Util = require(Framework.Util)
local StyleModifier = require(Framework.Util.StyleModifier)
local Cryo = require(Framework.Parent.Cryo)
local deepCopy = Util.deepCopy

local Box = require(Framework.UI.Components.Box)
local RoundBox = require(Framework.UI.Components.RoundBox)
local Image = require(Framework.UI.Components.Image)

local UIFolderData = require(Framework.UI.Components.UIFolderData)
local BoxStyle = require(UIFolderData.Box.style)
local RoundBoxStyle = require(UIFolderData.RoundBox.style)

local StatelessAudioPlayer = require(UIFolderData.StatelessAudioPlayer.style)
local StatelessVideoPlayer = require(UIFolderData.StatelessVideoPlayer.style)

--[[
	Reduce the width of the controls so that the TreeView button has space to display on the right
]]
local function shrinkMediaPlayerControlsWidth(mediaPlayerStyle)
	local mediaPlayerStyleClone = deepCopy(mediaPlayerStyle)

	mediaPlayerStyleClone.MediaPlayerControls.Controls.Size = mediaPlayerStyleClone.MediaPlayerControls.Controls.Size
		- UDim2.new(0, 32, 0, 0)

	return mediaPlayerStyleClone
end

local DEFAULT_HEIGHT = 242

local box = deepCopy(BoxStyle)
local roundBox = deepCopy(RoundBoxStyle)
local audioPlayerStyle = deepCopy(StatelessAudioPlayer)
local videoPlayerStyle = deepCopy(StatelessVideoPlayer)

local treeViewButtonBackgroundStyle = Cryo.Dictionary.join(roundBox, {
	Color = StyleKey.ImageButtonBackground,
	Transparency = 0,
})

return {
	Background = Box,
	BackgroundStyle = Cryo.Dictionary.join(box, {
		Color = StyleKey.SubBackground,
	}),

	RenderView = {

		FontRenderView = {
			Padding = {
				Bottom = 32,
				Left = 32,
				Right = 32,
				Top = 32,
			},
			FontRenderViewBackgroundColor = StyleKey.MainBackground,
			Text = "The quick brown fox jumps over the lazy dog",
		},

		Size = UDim2.new(1, 0, 0, DEFAULT_HEIGHT),

		TreeViewButton = {
			Size = UDim2.fromOffset(28, 28),
			Background = RoundBox,
			BackgroundStyle = treeViewButtonBackgroundStyle,

			[StyleModifier.Hover] = {
				BackgroundStyle = Cryo.Dictionary.join(treeViewButtonBackgroundStyle, {
					Transparency = 0.3,
				}),
			},

			Foreground = Image,
			ForegroundStyle = {
				AnchorPoint = Vector2.new(0.5, 0.5),
				Image = "rbxasset://textures/DeveloperFramework/AssetRender/hierarchy.png",
				Position = UDim2.new(0.5, 0, 0.5, 0),
				Size = UDim2.fromOffset(16, 16),
				ScaleType = Enum.ScaleType.Stretch,
			},
		},
	},

	ImageCarousel = {
		PaneStyle = "Box",
	},

	Thumbnail = { Size = 420 },

	TreeView = {
		Size = UDim2.new(1, 0, 0, 120),
		HorizontalSize = UDim2.new(0.4, 0, 0, DEFAULT_HEIGHT),
	},

	AudioPlayer = audioPlayerStyle,
	AudioPlayerWithTreeViewButton = shrinkMediaPlayerControlsWidth(audioPlayerStyle),

	VideoPlayer = videoPlayerStyle,
	VideoPlayerWithTreeViewButton = shrinkMediaPlayerControlsWidth(videoPlayerStyle),
}
