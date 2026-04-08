local MomentsCreationFlow = script:FindFirstAncestor("MomentsCreationFlow")
local Packages = MomentsCreationFlow.Parent

local BuilderIcons = require(Packages.BuilderIcons)
local Dash = require(Packages.Dash)
local Foundation = require(Packages.Foundation)
local MomentsCommon = require(Packages.MomentsCommon)
local React = require(Packages.React)

local Icon = Foundation.Icon
local ScrollBarVisibility = Foundation.Enums.ScrollBarVisibility
local ScrollView = Foundation.ScrollView
local Text = Foundation.Text
local TextInput = Foundation.TextInput
local View = Foundation.View

local MagnifyingGlass = BuilderIcons.Icon.MagnifyingGlass

local MusicEditor = require(MomentsCreationFlow.Components.MusicEditor)
local MusicPreviewItem = require(MomentsCreationFlow.Components.MusicPreviewItem)

local SearchMusic = require(MomentsCreationFlow.Thunks.SearchMusic)

local useAudioPlayback = MomentsCommon.Hooks.useAudioPlayback
local useCallback = React.useCallback
local useDeviceInsets = MomentsCommon.Hooks.useDeviceInsets
local useDispatch = MomentsCommon.Hooks.useDispatch
local useEffect = React.useEffect
local useMemo = React.useMemo
local useSelector = MomentsCommon.Hooks.useSelector
local useTokens = Foundation.Hooks.useTokens

local CreationFlowContext = require(MomentsCreationFlow.Context.CreationFlowContext)

local Constants = require(MomentsCreationFlow.Constants)
local CreationFlowLocalization = require(MomentsCreationFlow.Enums.CreationFlowLocalization)

local EventNames = require(MomentsCreationFlow.Analytics.EventNames)

type MusicEdit = MomentsCommon.MusicEdit
type UnifiedPlaybackController = MomentsCommon.UnifiedPlaybackController

export type Props = {
	musicEdit: MusicEdit?,
	playbackController: UnifiedPlaybackController,
	onMusicDiscard: () -> (),
	onMusicSave: () -> (),
	onMusicUpdate: (musicEdit: MusicEdit?) -> (),
}

local OVERLAY_HEIGHT_RATIO = 2 / 3

local MusicOverlay = function(props: Props): React.ReactElement
	local insets = useDeviceInsets()
	local dispatch = useDispatch()
	local tokens = useTokens()
	local text, setText = React.useState("")
	local isInEditor, setIsInEditor = React.useState(false)
	local previewingMusic, setPreviewingMusic = React.useState(nil)
	local creationFlowContext = React.useContext(CreationFlowContext)

	local musicList = useSelector(function(state)
		return state[Constants.RoduxKey].CreationFlow.musicList
	end)

	local audioAssetId = useMemo(function()
		if previewingMusic then
			return tostring(previewingMusic)
		end

		return nil
	end, { previewingMusic })

	local audioPlayback = useAudioPlayback(previewingMusic ~= nil, audioAssetId, {
		autoplay = true,
		looping = false,
	})

	useEffect(function()
		props.playbackController.playback.pause()
		dispatch(SearchMusic("", props.playbackController.timeline.timeLength))
	end, { props.playbackController.timeline.timeLength })

	useEffect(function()
		if not audioPlayback.playback.isPlaying then
			setPreviewingMusic(nil)
		end
	end, { audioPlayback.playback.isPlaying })

	local onMusicSelected = useCallback(function(musicAssetId: number)
		props.onMusicUpdate({ assetId = musicAssetId, startTime = 0 })
		props.playbackController.timeline.seek(0)
		setPreviewingMusic(nil)
		setIsInEditor(true)

		creationFlowContext.fireEvent(EventNames.EditingFlowMusicSelected, {
			musicAssetId = tostring(musicAssetId),
		})
	end, { props.onMusicUpdate })

	local onOverlayClose = useCallback(function()
		props.onMusicDiscard()
		props.playbackController.playback.play()
		props.playbackController.volume.unmute()
	end, { props.onMusicDiscard })

	local onBack = useCallback(function()
		props.onMusicUpdate(nil)
		setIsInEditor(false)
		props.playbackController.playback.pause()
	end, { props.onMusicUpdate })

	local onDone = useCallback(function()
		props.onMusicSave()
		setIsInEditor(false)
		props.playbackController.playback.play()
		props.playbackController.volume.unmute()
	end, { props.onMusicSave })

	local togglePreviewMusic = useCallback(function(musicAssetId: number)
		if previewingMusic and previewingMusic == musicAssetId then
			setPreviewingMusic(nil)
		else
			setPreviewingMusic(musicAssetId)
			audioPlayback.playback.play()
		end
	end, { previewingMusic })

	local onSearch = useCallback(function()
		if previewingMusic then
			setPreviewingMusic(nil)
		end
		dispatch(SearchMusic(text, props.playbackController.timeline.timeLength))
	end, { previewingMusic, text, props.playbackController.timeline.timeLength })

	local onStartTimeChanged = useCallback(function(startTime: number)
		if not props.musicEdit then
			return
		end

		props.onMusicUpdate({ assetId = props.musicEdit.assetId, startTime = startTime })
	end, { props.musicEdit, props.onMusicUpdate })

	if isInEditor then
		return React.createElement(MusicEditor, {
			playbackController = props.playbackController,
			musicEdit = props.musicEdit,
			onBack = onBack,
			onStartTimeChanged = onStartTimeChanged,
			onDone = onDone,
		})
	end

	return React.createElement(View, {
		onActivated = function() end,
		Size = UDim2.fromScale(1, OVERLAY_HEIGHT_RATIO),
		stateLayer = { affordance = Foundation.Enums.StateLayerAffordance.None },
		tag = "align-x-center align-y-top anchor-bottom-center bg-surface-100 col gap-small position-bottom-center radius-medium size-full-0",
		ZIndex = 5,
	}, {
		Padding = React.createElement("UIPadding", {
			PaddingTop = UDim.new(0, tokens.Padding.Medium),
			PaddingLeft = UDim.new(0, math.max(insets.left, tokens.Padding.XLarge)),
			PaddingRight = UDim.new(0, math.max(insets.right, tokens.Padding.XLarge)),
		}),

		ModalHeaderBar = React.createElement(View, {
			LayoutOrder = 1,
			tag = "align-x-center align-y-center auto-y flex-between row size-full-0",
		}, {
			InspectTitle = React.createElement(Text, {
				LayoutOrder = 1,
				tag = "text-heading-small content-action-emphasis text-truncate-end text-align-x-left text-align-y-top auto-xy",
				Text = creationFlowContext.getLocalization(CreationFlowLocalization.EditingCtaMusic),
			}),

			CloseButton = React.createElement(View, {
				AnchorPoint = Vector2.new(0.5, 0.5),
				onActivated = onOverlayClose,
				Position = UDim2.fromScale(0.5, 0.5),
				tag = "auto-xy padding-medium radius-medium",
				LayoutOrder = 2,
			}, {
				CloseIcon = React.createElement(Icon, {
					AnchorPoint = Vector2.new(0.5, 0.5),
					name = "icons/navigation/close",
					Position = UDim2.fromScale(0.5, 0.5),
					style = tokens.Color.ActionEmphasis.Foreground,
					ZIndex = 2,
				}),
			}),
		}),

		SearchBar = React.createElement(View, {
			LayoutOrder = 2,
			tag = "align-x-center align-y-center col gap-small size-full-0 auto-y",
		}, {
			Input = React.createElement(TextInput, {
				iconLeading = MagnifyingGlass,
				text = text,
				placeholder = creationFlowContext.getLocalization(CreationFlowLocalization.GeneralSearchPlaceholder),
				label = "",
				onChanged = setText,
				onReturnPressed = onSearch,
				onFocusLost = onSearch,
				LayoutOrder = 1,
				width = UDim.new(1, 0),
			}),
		}),

		ScrollView = React.createElement(
			ScrollView,
			{
				flexItem = {
					FlexMode = Enum.UIFlexMode.Shrink,
				},
				layout = {
					FillDirection = Enum.FillDirection.Vertical,
					VerticalAlignment = Enum.VerticalAlignment.Top,
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
					Padding = UDim.new(0, tokens.Gap.Small),
				},
				LayoutOrder = 3,
				scroll = {
					AutomaticCanvasSize = Enum.AutomaticSize.Y,
					scrollBarVisibility = ScrollBarVisibility.None,
					ScrollingDirection = Enum.ScrollingDirection.Y,
				},
				tag = "align-x-left align-y-top col size-full",
			},
			if musicList and #musicList > 0
				then Dash.map(musicList, function(assetId, index)
					return React.createElement(MusicPreviewItem, {
						key = assetId,
						layoutOrder = index,
						musicAssetId = assetId,
						onMusicSelected = onMusicSelected,
						togglePreviewMusic = togglePreviewMusic,
						progress = if previewingMusic == assetId
							then audioPlayback.timeline.elapsed / audioPlayback.timeline.duration
							else nil,
						isPreviewing = previewingMusic == assetId,
					})
				end)
				else {
					NoResults = React.createElement(Text, {
						Text = creationFlowContext.getLocalization(CreationFlowLocalization.MusicNoResults),
						tag = "text-body-medium content-action-emphasis text-align-x-center",
					}),
				}
		),
	})
end

return MusicOverlay
