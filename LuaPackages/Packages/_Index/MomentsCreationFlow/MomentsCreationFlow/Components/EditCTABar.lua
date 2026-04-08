local MomentsCreationFlow = script:FindFirstAncestor("MomentsCreationFlow")
local Packages = MomentsCreationFlow.Parent

local BuilderIcons = require(Packages.BuilderIcons)
local Foundation = require(Packages.Foundation)
local MomentsCommon = require(Packages.MomentsCommon)
local React = require(Packages.React)

local Icon = Foundation.Icon
local Text = Foundation.Text
local View = Foundation.View

local TextUppercaseALowercaseA = BuilderIcons.Icon.TextUppercaseALowercaseA
local ThreeBarsVerticalTrianglesHorizontal = BuilderIcons.Icon.ThreeBarsVerticalTrianglesHorizontal
local MusicNote = BuilderIcons.Icon.MusicNote

local GradientBackdrop = MomentsCommon.GradientBackdrop

local CreationFlowStateUpdated = require(MomentsCreationFlow.Actions.CreationFlowStateUpdated)

local useDeviceInsets = MomentsCommon.Hooks.useDeviceInsets
local useDispatch = MomentsCommon.Hooks.useDispatch
local useTokens = Foundation.Hooks.useTokens

local CreationFlowContext = require(MomentsCreationFlow.Context.CreationFlowContext)

local CreationFlowState = require(MomentsCreationFlow.Enums.CreationFlowState)

local CreationFlowLocalization = require(MomentsCreationFlow.Enums.CreationFlowLocalization)
local EventNames = require(MomentsCreationFlow.Analytics.EventNames)

local GRADIENT_ROTATION = 180

type Props = {
	captureType: Enum.CaptureType?,
	showText: boolean,
	zIndex: number,
}

local EditCTABar = function(props: Props): any
	local insets = useDeviceInsets()
	local tokens = useTokens()
	local creationFlowContext = React.useContext(CreationFlowContext)

	local dispatch = useDispatch()
	local gradientSizeBinding, setGradientSize = React.useBinding(UDim2.fromScale(1, 0))

	local onEditBarSizeChanged = React.useCallback(function(object: GuiObject)
		setGradientSize(UDim2.new(0, 1.5 * object.AbsoluteSize.X, 1, 0))
	end, {})

	local onOpenTrim = React.useCallback(function()
		dispatch(CreationFlowStateUpdated(CreationFlowState.Trimming))
		creationFlowContext.fireEvent(EventNames.EditingFlowTrimButtonPressed)
	end)

	local onOpenMusic = React.useCallback(function()
		dispatch(CreationFlowStateUpdated(CreationFlowState.Music))
		creationFlowContext.fireEvent(EventNames.EditingFlowMusicButtonPressed)
	end)

	local onOpenTextOverlay = React.useCallback(function()
		dispatch(CreationFlowStateUpdated(CreationFlowState.TextOverlay))
		creationFlowContext.fireEvent(EventNames.EditingFlowTextOverlayButtonPressed)
	end)

	return React.createElement(View, {
		tag = "auto-x anchor-center-right position-center-right size-0-full",
		ZIndex = props.zIndex,
	}, {
		GradientBackdrop = React.createElement(GradientBackdrop, {
			color3 = tokens.Color.Common.Scrim.Color3,
			rotation = GRADIENT_ROTATION,
			size = gradientSizeBinding,
		}),

		EditCTABar = React.createElement(View, {
			tag = "align-x-right align-y-center anchor-center-right auto-x col gap-small position-center-right size-0-full",
			onAbsoluteSizeChanged = onEditBarSizeChanged,
		}, {
			Padding = React.createElement("UIPadding", {
				PaddingLeft = UDim.new(0, tokens.Padding.Large),
				PaddingRight = UDim.new(0, insets.right + tokens.Padding.Large),
			}),

			TrimCTAButton = if props.captureType == Enum.CaptureType.Video
				then React.createElement(View, {
					LayoutOrder = 1,
					onActivated = onOpenTrim,
					tag = "align-x-right align-y-center auto-xy row gap-medium padding-xsmall radius-medium",
				}, {
					Icon = React.createElement(Icon, {
						name = ThreeBarsVerticalTrianglesHorizontal,
						LayoutOrder = 2,
						size = Foundation.Enums.IconSize.Large,
					}),

					Text = if props.showText
						then React.createElement(Text, {
							LayoutOrder = 1,
							tag = "auto-xy text-label-medium content-emphasis",
							Text = creationFlowContext.getLocalization(CreationFlowLocalization.EditingCtaTrimming),
						})
						else nil,
				})
				else nil,

			MusicCTAButton = if props.captureType == Enum.CaptureType.Video
					or props.captureType == Enum.CaptureType.Screenshot
				then React.createElement(View, {
					LayoutOrder = 2,
					onActivated = onOpenMusic,
					tag = "align-x-right align-y-center auto-xy row gap-medium padding-xsmall radius-medium",
				}, {
					Icon = React.createElement(Icon, {
						name = MusicNote,
						LayoutOrder = 2,
						size = Foundation.Enums.IconSize.Large,
					}),

					Text = if props.showText
						then React.createElement(Text, {
							LayoutOrder = 1,
							tag = "auto-xy text-label-medium content-emphasis",
							Text = creationFlowContext.getLocalization(CreationFlowLocalization.EditingCtaMusic),
						})
						else nil,
				})
				else nil,

			TextOverlayCTAButton = if props.captureType == Enum.CaptureType.Video
				then React.createElement(View, {
					LayoutOrder = 3,
					onActivated = onOpenTextOverlay,
					tag = "align-x-right align-y-center auto-xy row gap-medium padding-xsmall radius-medium",
				}, {
					Icon = React.createElement(Icon, {
						name = TextUppercaseALowercaseA,
						LayoutOrder = 2,
						size = Foundation.Enums.IconSize.Large,
					}),

					Text = if props.showText
						then React.createElement(Text, {
							LayoutOrder = 1,
							tag = "auto-xy text-label-medium content-emphasis",
							Text = creationFlowContext.getLocalization(CreationFlowLocalization.EditingCtaTextOverlay),
						})
						else nil,
				})
				else nil,
		}),
	})
end

return EditCTABar
