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

local LOC_KEY = "IAPExperience.PurchasePrompt.%s"

local ROBUX_ICON_SMALL = Images["icons/common/robux_small"]
local ROBUX_ICON = Images["icons/common/robux"]

local DELAYED_INPUT_ANIM_SEC = 3

local ProductPurchasePrompt = Roact.Component:extend(script.Name)

ProductPurchasePrompt.validateProps = t.strictInterface({
	anchorPoint = t.optional(t.Vector2),
	position = t.optional(t.UDim2),
	screenSize = t.Vector2,

	isLoading = t.optional(t.boolean),
	isDisabled = t.optional(t.boolean),
	isDelayedInput = t.optional(t.boolean),
	enableInputDelayed = t.optional(t.boolean),

	itemIcon = t.table,
	itemName = t.string,
	itemRobuxCost = t.number,
	currentBalance = t.number,
	isGamePass = t.optional(t.boolean),

	testPurchase = t.optional(t.boolean),

	buyItemControllerIcon = t.optional(t.table),
	cancelControllerIcon = t.optional(t.table),

	buyItemActivated = t.callback,
	cancelPurchaseActivated = t.callback,

	isLuobu = t.optional(t.boolean),
})

ProductPurchasePrompt.defaultProps = {
	anchorPoint = Vector2.new(0.5, 0.5),
	position = UDim2.new(0.5, 0, 0.5, 0),
	isLoading = false,
	isDisabled = false,
	testPurchase = false,
	isDelayedInput = false,
	enableInputDelayed = false,
	isLuobu = false,
	isGamePass = false,
}

function ProductPurchasePrompt:init()
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

function ProductPurchasePrompt:render()
	local buyItemQuestionText = self.props.isLuobu and "Text.BuyItemQuestionWithWarning" or "Text.BuyItemQuestion"
	local useGamepassTitle = self.props.isGamePass

	return Roact.createElement(MultiTextLocalizer, {
		keys = {
			BuyItemTitle = {
				key = useGamepassTitle and LOC_KEY:format("Title.BuyGamepass") or LOC_KEY:format("Title.BuyItem"),
			},
			BuyItemQuestion = {
				key = LOC_KEY:format(buyItemQuestionText),
				params = {
					name = self.props.itemName,
				},
			},
			RemainingBalance = {
				key = LOC_KEY:format("Text.RemainingBalance"),
			},
			TestPurchaseText = {
				key = LOC_KEY:format("Text.TestPurchase"),
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

function ProductPurchasePrompt:renderAlert(locMap)
	return withStyle(function(stylePalette)
		local theme = stylePalette.Theme
		local fonts = stylePalette.Font
		return Roact.createElement(InteractiveAlert, {
			screenSize = self.props.screenSize,
			position = self.props.position,
			anchorPoint = self.props.anchorPoint,
			title = locMap.BuyItemTitle,
			middleContent = function()
				return Roact.createElement(FitFrameVertical, {
					BackgroundTransparency = 1,
					width = UDim.new(1, 0),
					FillDirection = Enum.FillDirection.Vertical,
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
					VerticalAlignment = Enum.VerticalAlignment.Center,
					contentPadding = UDim.new(0, 24),

					[Roact.Ref] = self.contentRef,
					[Roact.Change.AbsoluteSize] = self.changeContentSize,
				}, {
					ItemIcon = Roact.createElement(ImageSetLabel, {
						LayoutOrder = 1,
						BackgroundTransparency = 1,

						Position = UDim2.new(0, 5, 0, 5),
						Size = UDim2.new(0, 85, 0, 85),
						ScaleType = Enum.ScaleType.Stretch,
						Image = self.props.itemIcon,
						ImageTransparency = 0,
					}),
					ItemName = Roact.createElement(FitTextLabel, {
						LayoutOrder = 2,
						BackgroundTransparency = 1,

						TextWrapped = true,
						width = FitTextLabel.Width.FitToText,
						maximumWidth = self.state.contentSize.X,

						Font = fonts.Footer.Font,
						Text = locMap.BuyItemQuestion,
						TextSize = fonts.BaseSize * fonts.Body.RelativeSize,
						TextColor3 = theme.TextDefault.Color,
					}),
				})
			end,
			buttonStackInfo = {
				buttons = {
					{
						props = {
							isDisabled = self.props.isDisabled or self.props.isLoading,
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
							icon = ROBUX_ICON,
							text = tostring(self.props.itemRobuxCost),
							inputIcon = self.props.buyItemControllerIcon,
						},
					},
				},
			},
			footerContent = function()
				if not self.props.testPurchase then
					return Roact.createElement(FitFrameVertical, {
						BackgroundTransparency = 1,
						width = UDim.new(1, 0),
						FillDirection = Enum.FillDirection.Horizontal,
						HorizontalAlignment = Enum.HorizontalAlignment.Center,
						VerticalAlignment = Enum.VerticalAlignment.Center,
						contentPadding = UDim.new(0, 2),

						[Roact.Ref] = self.footerRef,
						[Roact.Change.AbsoluteSize] = self.changeFooterSize,
					}, {
						RemainingBalanceText = Roact.createElement(FitTextLabel, {
							LayoutOrder = 1,
							BackgroundTransparency = 1,

							width = FitTextLabel.Width.FitToText,

							Font = fonts.Footer.Font,
							Text = locMap.RemainingBalance,
							TextSize = fonts.BaseSize * fonts.Footer.RelativeSize,
							TextColor3 = theme.TextDefault.Color,
						}),
						RobuxIcon = Roact.createElement(ImageSetLabel, {
							LayoutOrder = 2,
							BackgroundTransparency = 1,

							Position = UDim2.new(0, 5, 0, 5),
							Size = UDim2.new(0, UIBloxIconSize.Small, 0, UIBloxIconSize.Small),
							ScaleType = Enum.ScaleType.Stretch,
							Image = ROBUX_ICON_SMALL,
							ImageColor3 = theme.IconEmphasis.Color,
							ImageTransparency = theme.IconEmphasis.Transparency,
						}),
						BalanceAmount = Roact.createElement(FitTextLabel, {
							LayoutOrder = 3,
							BackgroundTransparency = 1,

							width = FitTextLabel.Width.FitToText,

							Font = fonts.Footer.Font,
							Text = tostring(self.props.currentBalance - self.props.itemRobuxCost),
							TextSize = fonts.BaseSize * fonts.Footer.RelativeSize,
							TextColor3 = theme.TextDefault.Color,
						}),
					})
				else
					return Roact.createElement(FitFrameVertical, {
						BackgroundTransparency = 1,
						width = UDim.new(1, 0),
						FillDirection = Enum.FillDirection.Horizontal,
						HorizontalAlignment = Enum.HorizontalAlignment.Center,
						VerticalAlignment = Enum.VerticalAlignment.Center,
						contentPadding = UDim.new(0, 2),

						[Roact.Ref] = self.footerRef,
						[Roact.Change.AbsoluteSize] = self.changeFooterSize,
					}, {
						TestPurchaseTest = Roact.createElement(FitTextLabel, {
							LayoutOrder = 1,
							BackgroundTransparency = 1,

							width = FitTextLabel.Width.FitToText,

							Font = fonts.Footer.Font,
							Text = locMap.TestPurchaseText,
							TextSize = fonts.BaseSize * fonts.Footer.RelativeSize,
							TextColor3 = theme.TextDefault.Color,
						}),
					})
				end
			end,
		})
	end)
end

return ProductPurchasePrompt
