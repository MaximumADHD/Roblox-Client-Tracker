local MomentsCreationFlow = script:FindFirstAncestor("MomentsCreationFlow")
local Packages = MomentsCreationFlow.Parent

local BuilderIcons = require(Packages.BuilderIcons)
local Foundation = require(Packages.Foundation)
local MomentsCommon = require(Packages.MomentsCommon)
local React = require(Packages.React)

local IconButton = Foundation.IconButton
local Slider = Foundation.Slider
local Text = Foundation.Text
local View = Foundation.View

local Play = BuilderIcons.Icon.PlayLarge
local Pause = BuilderIcons.Icon.PauseLarge
local Speaker = BuilderIcons.Icon.Speaker
local SpeakerSlash = BuilderIcons.Icon.SpeakerSlash
local TwoArrowsFromCenter = BuilderIcons.Icon.TwoArrowsFromCenter
local TwoArrowsToCenter = BuilderIcons.Icon.TwoArrowsToCenter

local GradientBackdrop = MomentsCommon.GradientBackdrop

local useCallback = React.useCallback
local useDeviceInsets = MomentsCommon.Hooks.useDeviceInsets
local useTokens = Foundation.Hooks.useTokens

local getFormatTime = MomentsCommon.Utils.getFormatTime

type PlaybackController = MomentsCommon.PlaybackController

local GRADIENT_ROTATION = 270

type Props = {
	layoutOrder: number,
	playbackController: PlaybackController,
	toggleFitMode: () -> (),
	isFitMode: boolean,
}

local function PlaybackControls(props: Props): React.ReactElement
	local insets = useDeviceInsets()
	local tokens = useTokens()

	local gradientSizeBinding, setGradientSize = React.useBinding(UDim2.fromScale(1, 0))
	local wasPlaying = React.useRef(false)

	local onSliderDragStarted = React.useCallback(function()
		if props.playbackController.playback.isPlaying then
			wasPlaying.current = true
		end
		props.playbackController.playback.pause()
	end, { props.playbackController.playback.isPlaying })

	local onSliderDragEnded = React.useCallback(function()
		if wasPlaying.current then
			props.playbackController.playback.play()
		end
		wasPlaying.current = false
	end, {})

	local onSliderValueChanged = React.useCallback(function(value: number)
		props.playbackController.timeline.seek(value * props.playbackController.timeline.duration)
	end, { props.playbackController.timeline.duration, props.playbackController.timeline.seek })

	local onOverlaySizeChanged = React.useCallback(function(object: GuiObject)
		setGradientSize(UDim2.new(0, object.AbsoluteSize.X, 1, 0))
	end, {})

	local onPlaybackToggle = useCallback(function()
		props.playbackController.playback.toggle()
	end, { props.playbackController })

	local onMuteToggle = useCallback(function()
		props.playbackController.volume.toggle()
	end, { props.playbackController })

	return React.createElement(View, {
		LayoutOrder = props.layoutOrder,
		tag = "auto-y size-full-0",
	}, {
		GradientBackdrop = React.createElement(GradientBackdrop, {
			color3 = tokens.Color.Common.Scrim.Color3,
			rotation = GRADIENT_ROTATION,
			size = gradientSizeBinding,
		}),

		Controls = React.createElement(View, {
			LayoutOrder = 1,
			onAbsoluteSizeChanged = onOverlaySizeChanged,
			tag = "auto-y col gap-xxsmall size-full-0",
		}, {
			Padding = React.createElement("UIPadding", {
				PaddingBottom = UDim.new(0, tokens.Padding.Medium),
				PaddingLeft = UDim.new(0, math.max(insets.left, tokens.Padding.Large)),
				PaddingRight = UDim.new(0, math.max(insets.right, tokens.Padding.Large)),
			}),

			Slider = React.createElement(Slider, {
				value = props.playbackController.timeline.elapsed / props.playbackController.timeline.duration,
				size = Foundation.Enums.InputSize.XSmall,
				knobVisibility = Foundation.Enums.Visibility.None,
				variant = Foundation.Enums.SliderVariant.Standard,
				onValueChanged = onSliderValueChanged,
				onDragStarted = onSliderDragStarted,
				onDragEnded = onSliderDragEnded,
				LayoutOrder = 1,
			}),

			ControlBar = React.createElement(View, {
				tag = "auto-y size-full-0",
				LayoutOrder = 2,
			}, {
				LeftControlButtons = React.createElement(View, {
					tag = "auto-xy row gap-xsmall anchor-top-left position-top-left",
					LayoutOrder = 1,
				}, {
					PlaybackToggle = React.createElement(IconButton, {
						icon = props.playbackController.playback.isPlaying and Pause or Play,
						onActivated = onPlaybackToggle,
						size = Foundation.Enums.InputSize.Small,
						LayoutOrder = 1,
					}),

					MuteToggle = React.createElement(IconButton, {
						icon = props.playbackController.volume.isMuted and SpeakerSlash or Speaker,
						onActivated = onMuteToggle,
						size = Foundation.Enums.InputSize.Small,
						LayoutOrder = 2,
					}),
				}),

				DurationDisplay = React.createElement(Text, {
					LayoutOrder = 2,
					tag = "auto-xy anchor-center-center position-center-center text-body-medium content-emphasis",
					Text = `{getFormatTime(props.playbackController.timeline.elapsed)} / {getFormatTime(
						props.playbackController.timeline.duration
					)}`,
				}),

				RightControlButtons = React.createElement(View, {
					tag = "auto-xy row gap-xsmall anchor-top-right position-top-right",
					LayoutOrder = 3,
				}, {
					FitModeToggle = React.createElement(IconButton, {
						icon = if props.isFitMode then TwoArrowsFromCenter else TwoArrowsToCenter,
						onActivated = props.toggleFitMode,
						size = Foundation.Enums.InputSize.Small,
						LayoutOrder = 1,
					}),
				}),
			}),
		}),
	})
end

return PlaybackControls
