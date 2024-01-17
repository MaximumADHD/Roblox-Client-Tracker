local SubscriptionPurchasePromptRoot = script.Parent
local IAPExperienceRoot = SubscriptionPurchasePromptRoot.Parent
local Packages = IAPExperienceRoot.Parent

local TextService = game:GetService("TextService")

local React = require(Packages.React)

local UIBlox = require(Packages.UIBlox)
local PartialPageModal = UIBlox.App.Dialog.Modal.PartialPageModal
local ButtonType = UIBlox.App.Button.Enum.ButtonType
local Images = UIBlox.App.ImageSet.Images
local ImageSetLabel = UIBlox.Core.ImageSet.ImageSetLabel
local withStyle = UIBlox.Style.withStyle

local MultiTextLocalizer = require(IAPExperienceRoot.Locale.MultiTextLocalizer)
local SubscriptionTitle = require(IAPExperienceRoot.Subscription.SubscriptionTitle)

local CONTENT_PADDING = 24
local CONDENSED_CONTENT_PADDING = 12
local ICON_SIZE = 96
local CONDENSED_ICON_SIZE = 40
local BUTTON_HEIGHT = 48
local MARGIN = 240
local TITLE_CONTENT_HEIGHT = 92 -- title 20, place name 16, price 16, disclaimer 16, 3x padding of 8

type Props = {
	name: string,
	subscriptionProviderName: string,
	displayPrice: string,
	period: string,
	disclaimerText: string,
	description: string,
	itemIcon: any,

	isTestingMode: boolean,

	screenSize: Vector,
	purchaseSubscriptionActivated: () -> any,
	cancelPurchaseActivated: () -> any,
}

local function generateFooter(isTestingMode, footerText, fonts, theme, middleContentSize)
	if not isTestingMode then
		return nil
	end
	local footerTextHeight = TextService:GetTextSize(
		footerText,
		12,
		fonts.Footer.Font,
		Vector2.new(middleContentSize, math.huge)
	).Y + 2
	return React.createElement("Frame", {
		AnchorPoint = Vector2.new(0.5, 0.5),
		Position = UDim2.new(0.5, 0, 0, 16),
		BorderSizePixel = 0,
		BackgroundTransparency = 1,
		LayoutOrder = 2,
		Size = UDim2.new(1, -48, 0, 0),
		AutomaticSize = Enum.AutomaticSize.Y,
	}, {
		DisclaimerText = React.createElement("TextLabel", {
			LayoutOrder = 1,
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 0, footerTextHeight),
			Font = fonts.Footer.Font,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextWrapped = true,
			Text = footerText,
			TextSize = 12,
			TextColor3 = theme.TextDefault.Color,
		}),
	})
end

local function DEPRECATED_generatePromptText(props, fonts, theme, middleContentSize)
	return React.createElement("TextLabel", {
		LayoutOrder = 3,
		BackgroundTransparency = 1,
		Size = UDim2.new(0, middleContentSize, 0, 0),
		AutomaticSize = Enum.AutomaticSize.Y,
		TextXAlignment = Enum.TextXAlignment.Left,
		Font = fonts.Body.Font,
		Text = props.description,
		TextSize = 16,
		TextWrapped = true,
		TextColor3 = theme.TextDefault.Color,
		TextTransparency = theme.TextDefault.Transparency,
		RichText = true,
	})
end

local function generatePromptText(props, fonts, theme, middleContentSize, calculatePromptHeight)
	return React.createElement("TextLabel", {
		LayoutOrder = 2,
		BackgroundTransparency = 1,
		Size = UDim2.new(0, middleContentSize, 0, 0),
		AutomaticSize = Enum.AutomaticSize.Y,
		TextXAlignment = Enum.TextXAlignment.Left,
		Font = fonts.Body.Font,
		Text = props.description,
		TextSize = 16,
		TextWrapped = true,
		TextColor3 = theme.TextDefault.Color,
		TextTransparency = theme.TextDefault.Transparency,
		RichText = true,
		[React.Change.AbsoluteSize] = function(rbx)
			local textHeight =
				TextService:GetTextSize(rbx.Text, rbx.TextSize, rbx.Font, Vector2.new(rbx.AbsoluteSize.X, math.huge)).Y
			calculatePromptHeight(textHeight)
		end,
	})
end

local function SubscriptionPurchasePrompt(props)
	local promptHeight, setPromptHeight = React.useState(0)
	local isCondensed, setIsCondensed = React.useState(false)
	local function calculatePromptHeight(textHeight)
		setPromptHeight(
			CONTENT_PADDING
				+ SubscriptionTitle:getTitleHeight(props.screenSize.Y - MARGIN)
				+ CONTENT_PADDING
				+ textHeight
		)
	end

	return React.createElement(MultiTextLocalizer, {
		keys = {
			titleText = { key = "IAPExperience.SubscriptionPurchasePrompt.Label.GetSubscription" },
			subscribe = { key = "IAPExperience.PremiumUpsell.Action.Subscribe" },
			footerText = { key = "IAPExperience.SubscriptionPurchasePrompt.Label.TestFlowDisclaimer" },
		},
		render = function(locMap)
			return withStyle(function(stylePalette)
				local theme = stylePalette.Theme
				local fonts = stylePalette.Font
				local middleContentSize = PartialPageModal:getMiddleContentWidth(props.screenSize.X)
				return React.createElement(PartialPageModal, {
					title = locMap.titleText,
					screenSize = props.screenSize,
					contentPadding = UDim.new(0, CONTENT_PADDING),
					buttonStackProps = {
						buttons = {
							{
								buttonType = ButtonType.PrimarySystem,
								props = {
									onActivated = props.purchaseSubscriptionActivated,
									text = locMap.subscribe,
								},
							},
						},
						buttonHeight = BUTTON_HEIGHT,
					},
					onCloseClicked = props.cancelPurchaseActivated,
					footerContent = function()
						return generateFooter(
							props.isTestingMode,
							locMap.footerText,
							fonts,
							theme,
							middleContentSize
						)
					end,
				}, {
					React.createElement("Frame", {
						BackgroundTransparency = 1,
						Size = UDim2.new(1, 0, 0, 0),
						AutomaticSize = Enum.AutomaticSize.Y,
					}, {
						PromptScroll = React.createElement("ScrollingFrame", {
							BackgroundTransparency = 1,
							LayoutOrder = 3,
							Size = UDim2.new(1, 0, 0, math.min(promptHeight, props.screenSize.Y - MARGIN)),
							BorderSizePixel = 0,
							ZIndex = 2,
							ScrollingEnabled = promptHeight > (props.screenSize.Y - MARGIN),
							ScrollBarThickness = promptHeight > (props.screenSize.Y - MARGIN) and 5,
							ScrollingDirection = Enum.ScrollingDirection.Y,
							Selectable = false,
							CanvasSize = UDim2.new(1, 0, 0, promptHeight),
						}, {
							Padding = React.createElement("UIPadding", {
								PaddingTop = UDim.new(0, CONTENT_PADDING),
								PaddingBottom = UDim.new(0, CONTENT_PADDING),
							}),
							Layout = React.createElement("UIListLayout", {
								SortOrder = Enum.SortOrder.LayoutOrder,
								HorizontalAlignment = Enum.HorizontalAlignment.Center,
								Padding = UDim.new(0, 24),
							}),
							SubscriptionTitleSection = React.createElement(SubscriptionTitle, {
								subscriptionProviderName = props.subscriptionProviderName,
								name = props.name,
								displayPrice = props.displayPrice,
								period = props.period,
								disclaimerText = props.disclaimerText,
								layoutOrder = 2,
								contentHeight = props.screenSize.Y - MARGIN,
								itemIcon = props.itemIcon,
							}),
							generatePromptText(props, fonts, theme, middleContentSize, calculatePromptHeight),
						}),
					}),
				})
			end)
		end,
	})
end

return SubscriptionPurchasePrompt
