local MomentsCreationFlow = script:FindFirstAncestor("MomentsCreationFlow")
local Packages = MomentsCreationFlow.Parent

local Foundation = require(Packages.Foundation)
local MomentsCommon = require(Packages.MomentsCommon)
local React = require(Packages.React)

local Checkbox = Foundation.Checkbox
local Text = Foundation.Text
local View = Foundation.View

local GradientBackdrop = MomentsCommon.GradientBackdrop

local getContentFromCapture = require(MomentsCreationFlow.Utils.getContentFromCapture)
local getFormatTime = MomentsCommon.Utils.getFormatTime

local useCallback = React.useCallback
local useTokens = Foundation.Hooks.useTokens

local GRADIENT_ROTATION = 270

export type Props = {
	capture: Capture,
	onActivated: (capture: Capture) -> (),
	selected: boolean?,
	zIndex: number?,
}

local CaptureItem = function(props: Props): React.ReactElement
	local tokens = useTokens()

	local onActivated = useCallback(function()
		props.onActivated(props.capture)
	end, { props.capture, props.onActivated })

	return React.createElement(View, {
		onActivated = onActivated,
		stateLayer = { affordance = Foundation.Enums.StateLayerAffordance.None },
		tag = "size-full",
		ZIndex = props.zIndex,
	}, {
		GradientBackdrop = React.createElement(GradientBackdrop, {
			anchorPoint = Vector2.new(0, 1),
			color3 = tokens.Color.Common.Scrim.Color3,
			position = UDim2.fromScale(0, 1),
			rotation = GRADIENT_ROTATION,
			size = UDim2.fromScale(1, 1),
			startingTransparency = 0.6,
			zIndex = 2,
		}),

		Overlay = React.createElement(View, {
			tag = "padding-medium size-full",
			ZIndex = 3,
		}, {
			SelectedIndicator = if props.selected
				then React.createElement(Checkbox, {
					AnchorPoint = Vector2.new(1, 0),
					isChecked = true,
					onActivated = onActivated,
					Position = UDim2.fromScale(1, 0),
					size = Foundation.Enums.InputSize.Small,
				})
				else nil,

			TimeLength = if props.capture.CaptureType == Enum.CaptureType.Video
				then React.createElement(Text, {
					tag = "anchor-bottom-right auto-xy content-emphasis position-bottom-right text-label-medium",
					Text = getFormatTime((props.capture :: VideoCapture).TimeLength),
				})
				else nil,
		}),

		CaptureThumbnail = React.createElement("ImageLabel", {
			BorderSizePixel = 0,
			ImageContent = getContentFromCapture(props.capture),
			ScaleType = Enum.ScaleType.Crop,
			Size = UDim2.fromScale(1, 1),
			ZIndex = 1,
		}),
	})
end

return CaptureItem
