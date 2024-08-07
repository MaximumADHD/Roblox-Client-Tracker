local ProductPurchaseRoot = script.Parent
local IAPExperienceRoot = ProductPurchaseRoot.Parent
local Packages = IAPExperienceRoot.Parent

local Roact = require(Packages.Roact)
local t = require(Packages.t)

local RoactFitComponents = require(Packages.RoactFitComponents)
local FitFrameVertical = RoactFitComponents.FitFrameVertical
local FitTextLabel = RoactFitComponents.FitTextLabel

local UIBlox = require(Packages.UIBlox)
local InteractiveAlert = UIBlox.App.Dialog.Alert.InteractiveAlert
local ButtonType = UIBlox.App.Button.Enum.ButtonType
local Images = UIBlox.App.ImageSet.Images
local ImageSetLabel = UIBlox.Core.ImageSet.ImageSetLabel
local UIBloxIconSize = UIBlox.App.Constant.IconSize
local withStyle = UIBlox.Core.Style.withStyle

local MultiTextLocalizer = require(IAPExperienceRoot.Locale.MultiTextLocalizer)

local ProductDetails = require(ProductPurchaseRoot.ProductDetails)

local LOC_KEY = "IAPExperience.RobuxUpsell.%s"

local ROBUX_ICON = Images["icons/common/robux"]

local DELAYED_INPUT_ANIM_SEC = 3

local ProductPurchaseRobuxUpsell = Roact.Component:extend(script.Name)

ProductPurchaseRobuxUpsell.validateProps = t.strictInterface({
	anchorPoint = t.optional(t.Vector2),
	position = t.optional(t.UDim2),
	screenSize = t.Vector2,

	isLoading = t.optional(t.boolean),
	isDisabled = t.optional(t.boolean),
	isDelayedInput = t.optional(t.boolean),
	enableInputDelayed = t.optional(t.boolean),

	model = t.optional(t.table),
	itemIcon = t.table,
	itemName = t.string,
	itemRobuxCost = t.number,
	robuxPurchaseAmount = t.number,
	balanceAmount = t.number,

	buyItemControllerIcon = t.optional(t.table),
	cancelControllerIcon = t.optional(t.table),

	buyItemActivated = t.callback,
	cancelPurchaseActivated = t.callback,

	isLuobu = t.optional(t.boolean),
	isVng = t.optional(t.boolean),
})

ProductPurchaseRobuxUpsell.defaultProps = {
	anchorPoint = Vector2.new(0.5, 0.5),
	position = UDim2.new(0.5, 0, 0.5, 0),
	isLoading = false,
	isDisabled = false,
	isDelayedInput = false,
	enableInputDelayed = false,
	isLuobu = false,
}

function ProductPurchaseRobuxUpsell:init()
	self.contentRef = Roact.createRef()
	self.footerRef = Roact.createRef()
	self.state = {
		contentSize = Vector2.new(0, 0),
		footerSize = Vector2.new(0, 0),
	}

	self.changeContentSize = function(rbx)
		if self.state.contentSize ~= rbx.AbsoluteSize then
			self:setState({
				contentSize = rbx.AbsoluteSize,
			})
		end
	end

	self.changeFooterSize = function(rbx)
		if self.state.footerSize ~= rbx.AbsoluteSize then
			self:setState({
				footerSize = rbx.AbsoluteSize,
			})
		end
	end
end

function ProductPurchaseRobuxUpsell:render()
	local buyRobuxQuestionText = self.props.isLuobu and "Text.BuyRobuxQuestionWithWarning" or "Text.BuyRobuxQuestion"
	local disclosureTermsText = if self.props.isVng then "Text.VNGDisclosureTerms" else "Text.DisclosureTerms"

	return Roact.createElement(MultiTextLocalizer, {
		keys = {
			InsufficientFundsTitle = {
				key = LOC_KEY:format("Title.InsufficientFunds"),
			},
			BuyRobuxQuestion = {
				key = LOC_KEY:format(buyRobuxQuestionText),
			},
			DisclosurePayment = {
				key = LOC_KEY:format("Text.DisclosurePayment"),
			},
			DisclosureTerms = {
				key = LOC_KEY:format(disclosureTermsText),
			},
			RemainingBalance = {
				key = LOC_KEY:format("Text.RemainingBalance"),
			},
			BuyRobuxButton = {
				key = LOC_KEY:format("Action.BuyRobux"),
			},
			ButtonCancel = {
				key = LOC_KEY:format("Action.Cancel"),
			},
			LoadingText = {
				key = LOC_KEY:format("Text.Loading"),
			},
		},
		render = function(locMap)
			return self:renderAlert(locMap)
		end,
	})
end

function ProductPurchaseRobuxUpsell:renderAlert(locMap)
	return withStyle(function(stylePalette)
		local theme = stylePalette.Theme
		local fonts = stylePalette.Font

		local remainingRobux = self.props.balanceAmount + self.props.robuxPurchaseAmount - self.props.itemRobuxCost

		return Roact.createElement(InteractiveAlert, {
			screenSize = self.props.screenSize,
			position = self.props.position,
			anchorPoint = self.props.anchorPoint,
			title = locMap.InsufficientFundsTitle,
			middleContent = function()
				return Roact.createElement(FitFrameVertical, {
					BackgroundTransparency = 1,
					width = UDim.new(1, 0),
					FillDirection = Enum.FillDirection.Vertical,
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
					VerticalAlignment = Enum.VerticalAlignment.Center,
					contentPadding = UDim.new(0, 15),

					[Roact.Ref] = self.contentRef,
					[Roact.Change.AbsoluteSize] = self.changeContentSize,
				}, {
					ItemDetails = Roact.createElement(ProductDetails, {
						layoutOrder = 1,
						model = self.props.model,
						itemIcon = self.props.itemIcon,
						itemName = self.props.itemName,
						itemRobuxCost = self.props.itemRobuxCost,
					}),
					Underline = Roact.createElement("Frame", {
						LayoutOrder = 2,
						BorderSizePixel = 0,
						BackgroundColor3 = theme.Divider.Color,
						BackgroundTransparency = theme.Divider.Transparency,
						Size = UDim2.new(1, 0, 0, 1),
					}),
					ConfirmationFrame = Roact.createElement(FitFrameVertical, {
						LayoutOrder = 3,
						BackgroundTransparency = 1,
						width = UDim.new(1, 0),
						FillDirection = Enum.FillDirection.Horizontal,
						HorizontalAlignment = Enum.HorizontalAlignment.Center,
						VerticalAlignment = Enum.VerticalAlignment.Center,
						contentPadding = UDim.new(0, 1),
					}, {
						WouldYouLikeText = Roact.createElement(FitTextLabel, {
							LayoutOrder = 1,
							BackgroundTransparency = 1,

							width = FitTextLabel.Width.FitToText,
							TextWrapped = true,
							maximumWidth = self.state.contentSize.X * 0.8,

							Font = fonts.Body.Font,
							Text = locMap.BuyRobuxQuestion,
							TextSize = fonts.BaseSize * fonts.Body.RelativeSize,
							TextColor3 = theme.TextDefault.Color,
						}),
						RobuxIcon = Roact.createElement(ImageSetLabel, {
							LayoutOrder = 2,
							BackgroundTransparency = 1,

							Position = UDim2.new(0, 5, 0, 5),
							Size = UDim2.new(0, 24, 0, 24),
							ScaleType = Enum.ScaleType.Stretch,
							Image = ROBUX_ICON,
							ImageColor3 = theme.IconEmphasis.Color,
							ImageTransparency = theme.IconEmphasis.Transparency,
						}),
						RemainingRobux = Roact.createElement(FitTextLabel, {
							LayoutOrder = 3,
							BackgroundTransparency = 1,

							width = FitTextLabel.Width.FitToText,

							Font = fonts.Body.Font,
							Text = tostring(self.props.robuxPurchaseAmount),
							TextSize = fonts.BaseSize * fonts.Body.RelativeSize,
							TextColor3 = theme.TextEmphasis.Color,
						}),
					}),
					DisclosureFrame = Roact.createElement(FitFrameVertical, {
						LayoutOrder = 4,
						BackgroundTransparency = 1,
						width = UDim.new(1, 0),
						FillDirection = Enum.FillDirection.Vertical,
						HorizontalAlignment = Enum.HorizontalAlignment.Center,
						VerticalAlignment = Enum.VerticalAlignment.Center,
						contentPadding = UDim.new(0, 1),
					}, {
						DisclosurePayment = Roact.createElement(FitTextLabel, {
							LayoutOrder = 1,
							BackgroundTransparency = 1,

							width = FitTextLabel.Width.FitToText,

							Font = fonts.Footer.Font,
							Text = locMap.DisclosurePayment,
							TextSize = fonts.BaseSize * fonts.Footer.RelativeSize,
							TextColor3 = theme.TextDefault.Color,
						}),
						DisclosureTerms = Roact.createElement(FitTextLabel, {
							LayoutOrder = 2,
							BackgroundTransparency = 1,

							width = FitTextLabel.Width.FitToText,

							Font = fonts.Footer.Font,
							Text = locMap.DisclosureTerms,
							TextSize = fonts.BaseSize * fonts.Footer.RelativeSize,
							TextColor3 = theme.TextDefault.Color,
						}),
					}),
				})
			end,
			buttonStackInfo = {
				buttons = {
					{
						props = {
							isDisabled = self.props.isDisabled,
							onActivated = self.props.cancelPurchaseActivated,
							text = locMap.ButtonCancel,
							inputIcon = self.props.cancelControllerIcon,
						},
					},
					{
						buttonType = ButtonType.PrimarySystem,
						props = {
							isLoading = self.props.isLoading,
							isDisabled = self.props.isDisabled,
							isDelayedInput = self.props.isDelayedInput,
							enableInputDelayed = self.props.enableInputDelayed,
							delayInputSeconds = DELAYED_INPUT_ANIM_SEC,
							onActivated = self.props.buyItemActivated,
							text = locMap.BuyRobuxButton,
							inputIcon = self.props.buyItemControllerIcon,
						},
					},
				},
			},
			footerContent = function()
				local splitText = string.split(locMap.RemainingBalance, " {robux} ")
				local beforeText = splitText[1]
				local afterText = splitText[2]
				return Roact.createElement(FitFrameVertical, {
					BackgroundTransparency = 1,
					width = UDim.new(1, 0),
					FillDirection = Enum.FillDirection.Horizontal,
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
					VerticalAlignment = Enum.VerticalAlignment.Center,
					contentPadding = UDim.new(0, 1),

					[Roact.Ref] = self.footerRef,
					[Roact.Change.AbsoluteSize] = self.changeFooterSize,
				}, {
					RemainingBalanceBefore = Roact.createElement(FitTextLabel, {
						LayoutOrder = 1,
						BackgroundTransparency = 1,

						width = FitTextLabel.Width.FitToText,

						Font = fonts.Footer.Font,
						Text = beforeText,
						TextSize = fonts.BaseSize * fonts.Footer.RelativeSize,
						TextColor3 = theme.TextDefault.Color,
					}),
					RobuxIcon = Roact.createElement(ImageSetLabel, {
						LayoutOrder = 2,
						BackgroundTransparency = 1,

						Position = UDim2.new(0, 5, 0, 5),
						Size = UDim2.new(0, UIBloxIconSize.Small, 0, UIBloxIconSize.Small),
						ScaleType = Enum.ScaleType.Stretch,
						Image = ROBUX_ICON,
						ImageColor3 = theme.IconEmphasis.Color,
						ImageTransparency = theme.IconEmphasis.Transparency,
					}),
					RemainingRobux = Roact.createElement(FitTextLabel, {
						LayoutOrder = 3,
						BackgroundTransparency = 1,

						width = FitTextLabel.Width.FitToText,

						Font = fonts.Footer.Font,
						Text = remainingRobux,
						TextSize = fonts.BaseSize * fonts.Footer.RelativeSize,
						TextColor3 = theme.TextDefault.Color,
					}),
					RemainingBalanceAfter = Roact.createElement(FitTextLabel, {
						LayoutOrder = 4,
						BackgroundTransparency = 1,

						width = FitTextLabel.Width.FitToText,

						Font = fonts.Footer.Font,
						Text = afterText,
						TextSize = fonts.BaseSize * fonts.Footer.RelativeSize,
						TextColor3 = theme.TextDefault.Color,
					}),
				})
			end,
		})
	end)
end

return ProductPurchaseRobuxUpsell
