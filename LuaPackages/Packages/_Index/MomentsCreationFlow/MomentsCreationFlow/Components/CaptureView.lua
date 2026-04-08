local MomentsCreationFlow = script:FindFirstAncestor("MomentsCreationFlow")
local Packages = MomentsCreationFlow.Parent

local BuilderIcons = require(Packages.BuilderIcons)
local Dash = require(Packages.Dash)
local Foundation = require(Packages.Foundation)
local MomentsCommon = require(Packages.MomentsCommon)
local React = require(Packages.React)

local Image = BuilderIcons.Icon.Image

local Icon = Foundation.Icon
local View = Foundation.View

local LoadableVideo = MomentsCommon.LoadableVideo

local useTokens = Foundation.Hooks.useTokens

type UnifiedPlaybackController = MomentsCommon.UnifiedPlaybackController

local FIT_MODE_X_PADDING = 0
local FIT_MODE_Y_PADDING = 0

export type Props = {
	capture: Capture?,
	children: React.ReactNode?,
	playbackController: UnifiedPlaybackController,
	onAbsoluteSizeChanged: (rbx: GuiObject) -> (),
	onRenderFailed: () -> (),
	onResolutionChanged: ((Vector2) -> ())?,
	scaleType: Enum.ScaleType,
}

local CaptureView = function(props: Props)
	local tokens = useTokens()

	if not props.capture then
		return React.createElement(View, {
			tag = "bg-shift-200 radius-large size-full",
		}, {
			EmptyState = React.createElement(Icon, {
				AnchorPoint = Vector2.new(0.5, 0.5),
				LayoutOrder = 2,
				name = Image,
				Position = UDim2.fromScale(0.5, 0.5),
				size = tokens.Size.Size_1200,
				style = tokens.Color.Shift.Shift_400,
			}),
		})
	end

	return React.createElement(View, {
		tag = "size-full",
	}, {
		UIPadding = if props.scaleType == Enum.ScaleType.Fit
			then React.createElement("UIPadding", {
				PaddingTop = UDim.new(0, FIT_MODE_Y_PADDING),
				PaddingBottom = UDim.new(0, FIT_MODE_Y_PADDING),
				PaddingLeft = UDim.new(0, FIT_MODE_X_PADDING),
				PaddingRight = UDim.new(0, FIT_MODE_X_PADDING),
			})
			else nil,

		Overlay = React.createElement(React.Fragment, {}, props.children),

		VideoPreview = if props.capture.CaptureType == Enum.CaptureType.Video
			then React.createElement(LoadableVideo, {
				cornerRadius = tokens.Radius.Large,
				Looped = false,
				onLoaded = Dash.noop,
				onAbsoluteSizeChanged = props.onAbsoluteSizeChanged,
				onResolutionChanged = props.onResolutionChanged,
				Playing = true,
				renderOnFailed = props.onRenderFailed,
				Size = UDim2.fromScale(1, 1),
				scaleType = props.scaleType,
				videoRef = props.playbackController.videoRef,
			})
			else nil,

		ImagePreview = if props.capture.CaptureType == Enum.CaptureType.Screenshot
			then React.createElement("ImageLabel", {
				BackgroundTransparency = 1,
				ref = props.playbackController.imageRef,
				ScaleType = props.scaleType,
				Size = UDim2.fromScale(1, 1),
				[React.Change.AbsoluteSize] = props.onAbsoluteSizeChanged,
			})
			else nil,
	})
end

return CaptureView
