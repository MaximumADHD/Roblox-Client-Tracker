local MomentsCreationFlow = script:FindFirstAncestor("MomentsCreationFlow")
local Packages = MomentsCreationFlow.Parent

local VideoService = game:GetService("VideoService")

local BuilderIcons = require(Packages.BuilderIcons)
local Foundation = require(Packages.Foundation)
local MomentsCommon = require(Packages.MomentsCommon)
local React = require(Packages.React)

local Button = Foundation.Button
local IconButton = Foundation.IconButton
local Text = Foundation.Text
local View = Foundation.View

local Play = BuilderIcons.Icon.PlayLarge
local Pause = BuilderIcons.Icon.PauseLarge
local Speaker = BuilderIcons.Icon.Speaker
local SpeakerSlash = BuilderIcons.Icon.SpeakerSlash

local DragHandle = require(MomentsCreationFlow.Components.DragHandle)
local TrimTooltip = require(MomentsCreationFlow.Components.TrimTooltip)

local useCallback = React.useCallback
local useDeviceInsets = MomentsCommon.Hooks.useDeviceInsets
local useTokens = Foundation.Hooks.useTokens
local useTrimDragController = require(MomentsCreationFlow.Hooks.useTrimDragController)

local CreationFlowContext = require(MomentsCreationFlow.Context.CreationFlowContext)
local getContentFromCapture = require(MomentsCreationFlow.Utils.getContentFromCapture)

local DragHandleEnum = require(MomentsCreationFlow.Enums.DragHandle)
type DragHandle = DragHandleEnum.DragHandle

local CreationFlowLocalization = require(MomentsCreationFlow.Enums.CreationFlowLocalization)

type TrimEdit = MomentsCommon.TrimEdit
type PlaybackController = MomentsCommon.PlaybackController

type Props = {
	layoutOrder: number?,
	onTrimDiscard: () -> (),
	onTrimSave: () -> (),
	onTrimUpdate: (trimEdit: TrimEdit) -> (),
	playbackController: PlaybackController,
	selectedCapture: Capture,
	trimEdit: TrimEdit,
}

local TrimmingView = function(props: Props)
	local insets = useDeviceInsets()
	local tokens = useTokens()
	local creationFlowContext = React.useContext(CreationFlowContext)

	local wasPlayingRef = React.useRef(false)
	local wasMutedRef = React.useRef(false)
	local currentDragHandle, setCurrentDragHandle = React.useState(nil)

	local videoSamplerRef = React.useRef(nil)
	local content = getContentFromCapture(props.selectedCapture)

	local sampleFrames, setSampleFrames = React.useState({})
	React.useEffect(function()
		task.spawn(function()
			local success, fail = pcall(function()
				videoSamplerRef.current = VideoService:CreateVideoSamplerAsync(content)
			end)

			if success then
				local frameTimes = {}
				for i = 0, math.floor(props.playbackController.timeline.timeLength) - 1 do
					table.insert(frameTimes, i)
				end

				setSampleFrames(videoSamplerRef.current:GetSamplesAtTimesAsync(frameTimes))
			else
				warn("Failed to create VideoSampler:", fail)
			end
		end)
	end, { props.selectedCapture })

	local onDragStart = useCallback(function(dragHandle: DragHandle)
		wasPlayingRef.current = props.playbackController.playback.isPlaying
		wasMutedRef.current = props.playbackController.volume.isMuted
		props.playbackController.volume.mute()
		props.playbackController.playback.pause()
		setCurrentDragHandle(dragHandle)
	end, { props.playbackController.playback.isPlaying, props.playbackController.volume.isMuted })

	local onDragEnd = useCallback(function()
		if wasPlayingRef.current then
			props.playbackController.playback.play()
		end
		if not wasMutedRef.current then
			props.playbackController.volume.unmute()
		end
		wasPlayingRef.current = false
		wasMutedRef.current = false
		setCurrentDragHandle(nil)
	end, {})

	local onRangeUpdated = useCallback(function(startTime: number?, endTime: number?)
		local newStartTime = if startTime then startTime else props.trimEdit and props.trimEdit.startTime or 0
		local newEndTime = if endTime
			then endTime
			else props.trimEdit and props.trimEdit.endTime or props.playbackController.timeline.timeLength

		local minTime = math.clamp(newStartTime, 0, props.playbackController.timeline.timeLength)
		local maxTime = math.clamp(newEndTime, 0, props.playbackController.timeline.timeLength)

		props.onTrimUpdate({
			startTime = minTime,
			endTime = maxTime,
		})

		props.playbackController.timeline.seek(0)
	end, {
		props.onTrimUpdate,
		props.trimEdit,
		props.playbackController.timeline.timeLength,
	})

	local onScrubberDragged = useCallback(function(progress: number)
		props.playbackController.timeline.seek(progress * props.playbackController.timeline.duration)
	end, { props.playbackController.timeline.seek, props.playbackController.timeline.duration })

	local trimDragController = useTrimDragController(
		true,
		onDragEnd,
		onDragStart,
		onRangeUpdated,
		onScrubberDragged,
		props.trimEdit,
		props.playbackController.timeline.timeLength
	)

	local dragContainerRef = trimDragController.dragContainerRef
	local leftHandleRef = trimDragController.leftHandleRef
	local rightHandleRef = trimDragController.rightHandleRef
	local scrubberDisplayRef = trimDragController.scrubberDisplayRef
	local scrubberRef = trimDragController.scrubberRef
	local segmentRef = trimDragController.segmentRef
	local leftHandlePosition = trimDragController.leftHandlePosition
	local rightHandlePosition = trimDragController.rightHandlePosition

	local onBack = useCallback(function()
		if props.onTrimDiscard then
			props.onTrimDiscard()
		end
	end, { props.onTrimDiscard })

	local onDone = useCallback(function()
		if props.onTrimSave then
			props.onTrimSave()
		end
	end, { props.onTrimSave })

	local onPlaybackToggle = useCallback(function()
		props.playbackController.playback.toggle()
	end, { props.playbackController })

	local onMuteToggle = useCallback(function()
		props.playbackController.volume.toggle()
	end, { props.playbackController })

	local previewFrames = React.useMemo(function()
		local frames = {}
		for i = 1, math.floor(props.playbackController.timeline.timeLength) do
			frames[i] = React.createElement(View, {
				tag = "size-full-full bg-system-neutral shrink",
			}, {
				content = React.createElement("ImageLabel", {
					BackgroundTransparency = 1,
					Size = UDim2.fromScale(1, 1),
					ImageContent = sampleFrames[i] and sampleFrames[i].Image,
					ScaleType = Enum.ScaleType.Crop,
				}),
			})
		end
		return frames
	end, { props.playbackController.timeline.timeLength, sampleFrames })

	return React.createElement(View, {
		LayoutOrder = props.layoutOrder,
		tag = "align-x-center auto-y align-y-bottom anchor-bottom-center col gap-large position-bottom-center size-full-0",
	}, {
		Padding = React.createElement("UIPadding", {
			PaddingTop = UDim.new(0, tokens.Padding.Small),
			PaddingBottom = UDim.new(0, math.max(insets.bottom, tokens.Padding.Small)),
			PaddingLeft = UDim.new(0, math.max(insets.left, tokens.Padding.XLarge)),
			PaddingRight = UDim.new(0, math.max(insets.right, tokens.Padding.XLarge)),
		}),

		Nav = React.createElement(View, {
			LayoutOrder = 1,
			tag = "align-x-center align-y-center auto-y gap-small row size-full-0 flex-x-between",
		}, {
			BackButton = React.createElement(Button, {
				fillBehavior = Foundation.Enums.FillBehavior.Fit,
				LayoutOrder = 1,
				text = creationFlowContext.getLocalization(CreationFlowLocalization.GeneralCtaBack),
				variant = Foundation.Enums.ButtonVariant.Text,
				onActivated = onBack,
				size = Foundation.Enums.InputSize.Medium,
			}),

			DoneButton = React.createElement(Button, {
				fillBehavior = Foundation.Enums.FillBehavior.Fit,
				LayoutOrder = 2,
				text = creationFlowContext.getLocalization(CreationFlowLocalization.GeneralCtaDone),
				variant = Foundation.Enums.ButtonVariant.Text,
				onActivated = onDone,
				size = Foundation.Enums.InputSize.Medium,
			}),
		}),

		Trimmer = React.createElement(View, {
			LayoutOrder = 2,
			tag = "padding-x-small size-full-1000",
			ZIndex = 2,
		}, {
			PaddedContainer = React.createElement(View, {
				ref = dragContainerRef,
				tag = "padding-x-medium size-full-full",
				ZIndex = 2,
			}, {
				TrimmerBar = React.createElement(View, {
					tag = "size-full",
				}, {
					TrimTooltip = React.createElement(TrimTooltip, {
						activeHandle = currentDragHandle,
						leftHandlePosition = leftHandlePosition,
						rightHandlePosition = rightHandlePosition,
						timeLength = props.playbackController.timeline.timeLength,
					}),

					LeftHandle = React.createElement(DragHandle, {
						anchorPoint = Vector2.new(1, 0.5),
						position = leftHandlePosition:map(function(position)
							return UDim2.fromScale(position, 0.5)
						end),
						dragDetectorRef = leftHandleRef,
					}),

					RightHandle = React.createElement(DragHandle, {
						anchorPoint = Vector2.new(0, 0.5),
						isFlipped = true,
						position = rightHandlePosition:map(function(position)
							return UDim2.fromScale(position, 0.5)
						end),
						dragDetectorRef = rightHandleRef,
					}),

					Outline = React.createElement(View, {
						Position = leftHandlePosition:map(function(position)
							return UDim2.fromScale(position, 0.5)
						end),
						Size = React.joinBindings({
							leftHandlePosition = leftHandlePosition,
							rightHandlePosition = rightHandlePosition,
						}):map(function(values)
							local leftHandlePositionValue = values.leftHandlePosition
							local rightHandlePositionValue = values.rightHandlePosition
							return UDim2.fromScale(rightHandlePositionValue - leftHandlePositionValue, 1)
						end),
						tag = "anchor-center-left",
						ZIndex = 2,
					}, {
						OutlineStroke = React.createElement("UIStroke", {
							ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
							Color = tokens.Color.System.Contrast.Color3,
							Transparency = tokens.Color.System.Contrast.Transparency,
							Thickness = tokens.Stroke.Thicker,
						}),

						Scrubber = if not currentDragHandle or currentDragHandle == DragHandleEnum.Scrubber
							then React.createElement(View, {
								ref = scrubberDisplayRef,
								tag = "anchor-center-center bg-system-contrast size-100-1400 radius-circle",
								Position = UDim2.fromScale(
									props.playbackController.timeline.elapsed
										/ props.playbackController.timeline.duration,
									0.5
								),
							}, {
								DragDetector = React.createElement("UIDragDetector", {
									DragStyle = Enum.UIDragDetectorDragStyle.TranslateLine,
									ref = scrubberRef,
									ResponseStyle = Enum.UIDragDetectorResponseStyle.CustomScale,
								}),
							})
							else nil,

						DragDetector = React.createElement("UIDragDetector", {
							DragStyle = Enum.UIDragDetectorDragStyle.TranslateLine,
							ref = segmentRef,
							ResponseStyle = Enum.UIDragDetectorResponseStyle.CustomScale,
						}),
					}),

					ShadowBlockLeft = React.createElement(View, {
						backgroundStyle = tokens.Color.Extended.Black.Black_50,
						Size = leftHandlePosition:map(function(position)
							return UDim2.fromScale(position, 1)
						end),
						tag = "anchor-center-left position-center-left",
						ZIndex = 0,
					}),

					ShadowBlockRight = React.createElement(View, {
						backgroundStyle = tokens.Color.Extended.Black.Black_50,
						Size = rightHandlePosition:map(function(position)
							return UDim2.fromScale(1 - position, 1)
						end),
						tag = "anchor-center-right position-center-right",
						ZIndex = 0,
					}),
				}),
			}),

			Timeline = React.createElement(View, {
				tag = "bg-surface-100 radius-medium size-full-full",
				ZIndex = 1,
			}, {
				OutlineStroke = React.createElement("UIStroke", {
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
					Color = tokens.Color.Surface.Surface_100.Color3,
					Transparency = tokens.Color.Surface.Surface_100.Transparency,
					Thickness = tokens.Stroke.Thicker,
				}),

				TimelineBar = React.createElement(View, {
					layout = {
						Padding = UDim.new(0, tokens.Size.Size_50),
					},
					tag = "padding-x-medium size-full-full row",
				}, previewFrames),
			}),
		}),

		VideoControls = React.createElement(View, {
			LayoutOrder = 3,
			tag = "align-x-center align-y-center auto-y gap-small row size-full-0 flex-x-between",
		}, {
			PlaybackToggle = React.createElement(IconButton, {
				LayoutOrder = 1,
				icon = props.playbackController.playback.isPlaying and Pause or Play,
				onActivated = onPlaybackToggle,
				size = Foundation.Enums.InputSize.Medium,
			}),

			DurationDisplay = React.createElement(Text, {
				LayoutOrder = 2,
				tag = "auto-xy text-label-medium content-default",
				Text = `{string.format("%.1f", math.max(0, props.playbackController.timeline.elapsed))} / {string.format(
					"%.1f",
					props.playbackController.timeline.duration
				)}`,
			}),

			MuteToggle = React.createElement(IconButton, {
				LayoutOrder = 3,
				icon = props.playbackController.volume.isMuted and SpeakerSlash or Speaker,
				onActivated = onMuteToggle,
				size = Foundation.Enums.InputSize.Medium,
			}),
		}),
	})
end

return TrimmingView
