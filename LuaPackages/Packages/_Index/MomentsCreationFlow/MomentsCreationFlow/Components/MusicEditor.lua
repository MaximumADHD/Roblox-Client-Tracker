local MomentsCreationFlow = script:FindFirstAncestor("MomentsCreationFlow")
local Packages = MomentsCreationFlow.Parent

local Foundation = require(Packages.Foundation)
local MomentsCommon = require(Packages.MomentsCommon)
local React = require(Packages.React)

local Button = Foundation.Button
local Loading = Foundation.Loading
local View = Foundation.View

local GradientBackdrop = MomentsCommon.GradientBackdrop
local MusicPreviewItem = require(MomentsCreationFlow.Components.MusicPreviewItem)
local Waveform = require(MomentsCreationFlow.Components.Waveform)

local useCallback = React.useCallback
local useDeviceInsets = MomentsCommon.Hooks.useDeviceInsets
local useMusicEditorController = require(MomentsCreationFlow.Hooks.useMusicEditorController)
local useToggleState = MomentsCommon.Hooks.useToggleState
local useTokens = Foundation.Hooks.useTokens

local CreationFlowContext = require(MomentsCreationFlow.Context.CreationFlowContext)

local Constants = require(MomentsCreationFlow.Constants)
local CreationFlowLocalization = require(MomentsCreationFlow.Enums.CreationFlowLocalization)

type MusicEdit = MomentsCommon.MusicEdit
type UnifiedPlaybackController = MomentsCommon.UnifiedPlaybackController

type Props = {
	musicEdit: MusicEdit,
	onBack: () -> (),
	onDone: () -> (),
	onStartTimeChanged: (startTime: number) -> (),
	playbackController: UnifiedPlaybackController,
}

local SEGMENT_WIDTH = Constants.AudioWaveform.SegmentSelectorWidth
local LEFT_GRADIENT_ROTATION = 0
local RIGHT_GRADIENT_ROTATION = 180
local GRADIENT_SIZE = UDim2.new(0, 48, 1, 0)

local function MusicEditor(props: Props): React.ReactElement
	local tokens = useTokens()
	local insets = useDeviceInsets()
	local creationFlowContext = React.useContext(CreationFlowContext)

	local isWaveformReady = useToggleState(false)
	local isDragging = useToggleState(false)

	local onDragStart = useCallback(function()
		props.playbackController.volume.mute()
		props.playbackController.timeline.seek(0)
		props.playbackController.playback.pause()
		isDragging.enable()
	end, { props.playbackController.timeline.seek })

	local onDragEnd = useCallback(function()
		props.playbackController.volume.unmute()
		props.playbackController.playback.play()
		isDragging.disable()
	end, {})

	local onWaveformReady = useCallback(function()
		props.playbackController.volume.unmute()
		props.playbackController.playback.play()
		isWaveformReady.enable()
	end, {})

	React.useEffect(function()
		isWaveformReady.disable()
	end, { props.musicEdit.assetId })

	local musicEditorController = useMusicEditorController(
		isWaveformReady.enabled,
		onDragEnd,
		onDragStart,
		props.onStartTimeChanged,
		props.musicEdit,
		props.playbackController.audio.timeLength
	)

	local waveformRef = musicEditorController.waveformRef
	local waveformPosition = musicEditorController.waveformPosition
	local waveformDisplayRef = musicEditorController.waveformDisplayRef

	return React.createElement(View, {
		tag = "auto-y align-x-center align-y-top anchor-bottom-center bg-surface-100 col gap-large position-bottom-center radius-medium size-full-0",
		ZIndex = 5,
	}, {
		Padding = React.createElement("UIPadding", {
			PaddingTop = UDim.new(0, tokens.Padding.Small),
			PaddingBottom = UDim.new(0, math.max(insets.bottom, tokens.Padding.Small)),
			PaddingLeft = UDim.new(0, math.max(insets.left, tokens.Padding.Large)),
			PaddingRight = UDim.new(0, math.max(insets.right, tokens.Padding.Large)),
		}),

		Nav = React.createElement(View, {
			LayoutOrder = 1,
			tag = "align-x-center align-y-center auto-y gap-small row size-full-0 flex-x-between",
		}, {
			BackButton = React.createElement(Button, {
				ZIndex = 6,
				fillBehavior = Foundation.Enums.FillBehavior.Fit,
				LayoutOrder = 1,
				text = creationFlowContext.getLocalization(CreationFlowLocalization.GeneralCtaBack),
				variant = Foundation.Enums.ButtonVariant.Text,
				onActivated = props.onBack,
				size = Foundation.Enums.InputSize.Medium,
			}),

			DoneButton = React.createElement(Button, {
				ZIndex = 6,
				fillBehavior = Foundation.Enums.FillBehavior.Fit,
				LayoutOrder = 2,
				text = creationFlowContext.getLocalization(CreationFlowLocalization.GeneralCtaDone),
				variant = Foundation.Enums.ButtonVariant.Text,
				onActivated = props.onDone,
				size = Foundation.Enums.InputSize.Medium,
			}),
		}),

		SegmentSelector = React.createElement(View, {
			LayoutOrder = 2,
			tag = "size-full-1600",
		}, {
			Timeline = React.createElement(View, {
				tag = "clip size-full-full",
				ZIndex = 1,
			}, {
				DragDetector = React.createElement("UIDragDetector", {
					DragStyle = Enum.UIDragDetectorDragStyle.TranslateLine,
					ref = waveformRef,
					ResponseStyle = Enum.UIDragDetectorResponseStyle.CustomOffset,
				}),

				LeftGradientBackdrop = React.createElement(GradientBackdrop, {
					color3 = tokens.Color.Surface.Surface_100.Color3,
					rotation = LEFT_GRADIENT_ROTATION,
					size = GRADIENT_SIZE,
					startingTransparency = 0,
					zIndex = 2,
				}),

				RightGradientBackdrop = React.createElement(GradientBackdrop, {
					anchorPoint = Vector2.new(1, 0),
					color3 = tokens.Color.Surface.Surface_100.Color3,
					position = UDim2.fromScale(1, 0),
					rotation = RIGHT_GRADIENT_ROTATION,
					size = GRADIENT_SIZE,
					startingTransparency = 0,
					zIndex = 2,
				}),

				WaveformContainer = React.createElement(View, {
					tag = "anchor-center-center position-center-center radius-medium",
					Size = UDim2.new(0, SEGMENT_WIDTH, 1, 0),
				}, {
					WaveformDisplay = React.createElement(Waveform, {
						audioAssetId = props.musicEdit.assetId,
						position = waveformPosition:map(function(position)
							return UDim2.fromScale(position, 0.5)
						end),
						onWaveformReady = onWaveformReady,
						ref = waveformDisplayRef,
						videoDuration = props.playbackController.timeline.duration,
						zIndex = 1,
					}),
				}),
			}),

			SegmentOutline = React.createElement(View, {
				tag = "anchor-center-center position-center-center radius-medium",
				Size = UDim2.new(0, SEGMENT_WIDTH, 1, -tokens.Size.Size_100),
				ZIndex = 2,
			}, {
				Scrubber = if isWaveformReady.enabled and not isDragging.enabled
					then React.createElement(View, {
						tag = "anchor-center-center bg-system-contrast size-100-1900 radius-circle",
						Position = UDim2.fromScale(
							props.playbackController.timeline.elapsed / props.playbackController.timeline.duration,
							0.5
						),
					})
					else nil,

				LoadingIndicator = if not isWaveformReady.enabled
					then React.createElement(Loading, {
						AnchorPoint = Vector2.new(0.5, 0.5),
						Position = UDim2.fromScale(0.5, 0.5),
						size = Foundation.Enums.IconSize.Medium,
					})
					else nil,

				OutlineStroke = React.createElement("UIStroke", {
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
					Color = tokens.Color.System.Contrast.Color3,
					Transparency = tokens.Color.System.Contrast.Transparency,
					Thickness = tokens.Stroke.Thick,
				}),
			}),
		}),

		MusicPreviewItemWrapper = React.createElement(View, {
			tag = "auto-y size-full-0",
			LayoutOrder = 3,
		}, {
			MusicPreviewItem = React.createElement(MusicPreviewItem, {
				musicAssetId = props.musicEdit.assetId,
			}),
		}),
	})
end

return MusicEditor
