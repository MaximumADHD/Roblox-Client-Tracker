local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local Packages = ProfileQRCode.Parent

local React = require(Packages.React)
local RoactUtils = require(Packages.RoactUtils)
local UIBlox = require(Packages.UIBlox)

local StyledTextLabel = UIBlox.App.Text.StyledTextLabel

local ProfileQRCodeTopElements = require(ProfileQRCode.Components.ProfileQRCodeTopElements)
local QRCodeView = require(ProfileQRCode.Components.QRCodeView)
local TextKeys = require(ProfileQRCode.Common.TextKeys)
local SocialCommon = require(Packages.SocialCommon)
local useIsWideMode = SocialCommon.Hooks.useIsWideMode
local getFFlagProfileQRCodeEnabledShortMode = require(ProfileQRCode.Flags.getFFlagProfileQRCodeEnabledShortMode)

local useLocalization = RoactUtils.Hooks.useLocalization
local useStyle = UIBlox.Core.Style.useStyle

-- We have a hardcoded white here as for gradients to work, you need a full white background. This colour will not show.
local BACKGROUND_FOR_GRADIENT = Color3.new(1, 1, 1)
local GRADIENT_ROTATION = 90
local ROOT_PADDING = 24
local SMALL_SCREEN_PADDING = 12
local TOP_BAR_PADDING = -56
local COMPACT_VIEW_SCALE = 0.5
local WIDE_VIEW_WIDTH_SCALE = 0.6
local WIDE_VIEW_TRANSPARENCY = 0.7
local MINIMUM_HEIGHT = if getFFlagProfileQRCodeEnabledShortMode() then 420 else 450
local SMALL_SCREEN_VERTICAL_THRESHOLD = 450

export type Props = {
	onClose: () -> (),
	robloxEventReceiver: any,
	isProfile3DAvatarEnabled: boolean?,
}

local ProfileQRCodePage = function(props: Props)
	local localized = useLocalization({
		description = TextKeys.Description,
	})
	local isSmallScreen, setIsSmallScreen
	if getFFlagProfileQRCodeEnabledShortMode() then
		isSmallScreen, setIsSmallScreen = React.useState(false)
	end
	local isWideMode = useIsWideMode()
	local style = useStyle()

	return React.createElement("Frame", {
		Size = UDim2.fromScale(1, 1),
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
	}, {
		TopElements = React.createElement(ProfileQRCodeTopElements, {
			onClose = props.onClose,
			robloxEventReceiver = props.robloxEventReceiver,
			isProfile3DAvatarEnabled = props.isProfile3DAvatarEnabled,
		}),

		GradientBackground = React.createElement("Frame", {
			BackgroundColor3 = BACKGROUND_FOR_GRADIENT,
			BackgroundTransparency = if isWideMode then WIDE_VIEW_TRANSPARENCY else 1,
			Position = UDim2.fromScale(0, 0),
			Size = if isWideMode then UDim2.fromScale(WIDE_VIEW_WIDTH_SCALE, 1) else UDim2.fromScale(1, 1),
			BorderSizePixel = 0,
			[React.Change.AbsoluteSize] = React.useCallback(function(rbx)
				if getFFlagProfileQRCodeEnabledShortMode() then
					if rbx.AbsoluteSize.Y >= SMALL_SCREEN_VERTICAL_THRESHOLD then
						setIsSmallScreen(true)
					else
						setIsSmallScreen(false)
					end
				end
			end),
		}, {
			Layout = React.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical,
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				VerticalAlignment = Enum.VerticalAlignment.Bottom,
			}),

			Content = React.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = if isWideMode
					then UDim2.new(1, 0, 1, TOP_BAR_PADDING)
					else UDim2.new(1, 0, COMPACT_VIEW_SCALE, 0),
				BorderSizePixel = 0,
			}, {
				Layout = React.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Vertical,
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
					VerticalAlignment = Enum.VerticalAlignment.Center,
					SortOrder = Enum.SortOrder.LayoutOrder,
				}),
				Padding = React.createElement("UIPadding", {
					PaddingTop = UDim.new(0, ROOT_PADDING),
					PaddingRight = UDim.new(0, ROOT_PADDING),
					PaddingBottom = UDim.new(0, ROOT_PADDING),
					PaddingLeft = UDim.new(0, ROOT_PADDING),
				}),
				QRCodeView = React.createElement(QRCodeView, {
					layoutOrder = 1,
					isSmallScreen = isSmallScreen,
				}),
				Spacer1 = React.createElement("Frame", {
					BorderSizePixel = 0,
					BackgroundTransparency = 1,
					Size = if getFFlagProfileQRCodeEnabledShortMode()
						then UDim2.fromOffset(0, if isSmallScreen then SMALL_SCREEN_PADDING else ROOT_PADDING)
						else UDim2.fromOffset(0, ROOT_PADDING),
					LayoutOrder = 2,
				}),
				Description = React.createElement(StyledTextLabel, {
					layoutOrder = 3,
					text = localized.description,
					fontStyle = style.Font.CaptionBody,
					lineHeight = 1,
					colorStyle = style.Theme.TextDefault,
					size = UDim2.new(1, 0, 0, 0),
					automaticSize = Enum.AutomaticSize.Y,
					textXAlignment = Enum.TextXAlignment.Center,
					textYAlignment = Enum.TextYAlignment.Center,
					fluidSizing = false,
					richText = false,
				}),
				UISizeConstraint = React.createElement("UISizeConstraint", {
					MinSize = Vector2.new(0, MINIMUM_HEIGHT),
				}),
			}),

			Gradient = React.createElement("UIGradient", {
				Rotation = GRADIENT_ROTATION,
				Color = ColorSequence.new({
					ColorSequenceKeypoint.new(0, style.Theme.BackgroundContrast.Color),
					ColorSequenceKeypoint.new(1, style.Theme.BackgroundContrast.Color),
				}),
				Transparency = NumberSequence.new({
					NumberSequenceKeypoint.new(0, 0.4),
					NumberSequenceKeypoint.new(1, 0),
				}),
			}),
		}),
	})
end

return ProfileQRCodePage
