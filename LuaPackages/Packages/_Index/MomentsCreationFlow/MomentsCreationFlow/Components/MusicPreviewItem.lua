local MomentsCreationFlow = script:FindFirstAncestor("MomentsCreationFlow")
local Packages = MomentsCreationFlow.Parent

local BuilderIcons = require(Packages.BuilderIcons)
local Foundation = require(Packages.Foundation)
local MomentsCommon = require(Packages.MomentsCommon)
local React = require(Packages.React)

local IconButton = Foundation.IconButton
local Skeleton = Foundation.Skeleton
local Text = Foundation.Text
local View = Foundation.View

local Play = BuilderIcons.Icon.PlayLarge
local Pause = BuilderIcons.Icon.PauseLarge

local MusicThumbnailIcon = MomentsCommon.MusicThumbnailIcon
local RadialProgressBar = require(MomentsCreationFlow.Components.RadialProgressBar)

local useBinding = React.useBinding
local useEffect = React.useEffect
local useMusicInfo = require(MomentsCreationFlow.Hooks.useMusicInfo)

local MusicThumbnailIconSize = MomentsCommon.Enums.MusicThumbnailIconSize
type MusicThumbnailIconSize = MomentsCommon.MusicThumbnailIconSize

type Props = {
	layoutOrder: number,
	musicAssetId: number,
	onMusicSelected: (musicAssetId: number) -> ()?,
	togglePreviewMusic: (musicAssetId: number) -> ()?,
	isPreviewing: boolean,
	progress: number?,
}

local MusicPreviewItem = function(props: Props): React.ReactElement
	local musicInfo = useMusicInfo(props.musicAssetId)
	local progress, setProgress = useBinding(props.progress or 0)

	useEffect(function()
		setProgress(props.progress or 0)
	end, { props.progress })

	local onMusicSelected = React.useCallback(function()
		if props.onMusicSelected then
			props.onMusicSelected(props.musicAssetId)
		end
	end, { props.onMusicSelected, props.musicAssetId })

	local onPlaybackActivated = React.useCallback(function()
		if props.togglePreviewMusic then
			props.togglePreviewMusic(props.musicAssetId)
		end
	end, { props.togglePreviewMusic, props.musicAssetId })

	if not musicInfo then
		return React.createElement(Skeleton, {
			Size = UDim2.new(1, 0, 0, 64),
		})
	end

	return React.createElement(View, {
		LayoutOrder = props.layoutOrder,
		onActivated = if props.onMusicSelected then onMusicSelected else nil,
		tag = "align-x-left align-y-center auto-y row gap-medium padding-x-xsmall padding-y-small radius-medium",
		Size = UDim2.fromScale(1, 0),
	}, {
		MusicThumbnail = React.createElement(MusicThumbnailIcon, {
			assetId = musicInfo.AssetId,
			size = MusicThumbnailIconSize.Large,
		}),

		MusicInfo = React.createElement(View, {
			LayoutOrder = 2,
			tag = "auto-y col gap-xsmall size-full-0 shrink",
		}, {
			Title = React.createElement(Text, {
				Text = musicInfo.Title,
				tag = "auto-xy text-body-medium content-emphasis text-truncate-end text-align-x-left text-align-y-top",
			}),

			Artist = React.createElement(Text, {
				Text = musicInfo.Artist,
				tag = "auto-xy text-body-small content-neutral text-truncate-end text-align-x-left text-align-y-top",
			}),
		}),

		PlaybackButton = if props.togglePreviewMusic
			then React.createElement(View, {
				LayoutOrder = 3,
				tag = "anchor-center-center clip position-center-center radius-circle size-900-900 padding-xxsmall",
			}, {
				PlaybackIndicator = React.createElement(IconButton, {
					icon = if props.isPreviewing then Pause else Play,
					isCircular = true,
					onActivated = onPlaybackActivated,
					size = Foundation.Enums.IconSize.Small,
					variant = Foundation.Enums.ButtonVariant.Standard,
				}),

				ProgressBar = if props.progress
					then React.createElement(RadialProgressBar, {
						progress = progress,
					})
					else nil,
			})
			else nil,
	})
end

return MusicPreviewItem
