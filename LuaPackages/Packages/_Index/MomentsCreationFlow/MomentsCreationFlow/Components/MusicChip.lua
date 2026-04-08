local MomentsCreationFlow = script:FindFirstAncestor("MomentsCreationFlow")
local Packages = MomentsCreationFlow.Parent

local BuilderIcons = require(Packages.BuilderIcons)
local Foundation = require(Packages.Foundation)
local React = require(Packages.React)

local Icon = Foundation.Icon
local Text = Foundation.Text
local View = Foundation.View

local MusicNote = BuilderIcons.Icon.MusicNote

local useMusicInfo = require(MomentsCreationFlow.Hooks.useMusicInfo)

type Props = {
	musicAssetId: number,
	onActivated: () -> (),
}

local MAX_MUSIC_TITLE_WIDTH = 100

local function MusicChip(props: Props)
	local musicInfo = useMusicInfo(props.musicAssetId)

	return React.createElement(View, {
		tag = "align-x-center align-y-center auto-x bg-over-media-0 gap-medium padding-x-medium padding-y-xsmall radius-circle row size-0-800",
		LayoutOrder = 1,
		onActivated = props.onActivated,
	}, {
		Icon = React.createElement(Icon, {
			name = MusicNote,
			LayoutOrder = 1,
			size = Foundation.Enums.IconSize.Small,
		}),

		MusicTitle = React.createElement(Text, {
			tag = "auto-xy content-action-standard text-align-x-left text-align-y-center text-caption-medium text-truncate-split",
			sizeConstraint = {
				MaxSize = Vector2.new(MAX_MUSIC_TITLE_WIDTH, math.huge),
			},
			LayoutOrder = 2,
			Text = musicInfo.Title,
		}),
	})
end

return MusicChip
