local ProductPurchaseRobuxUpsell = script.Parent
local IAPExperienceRoot = ProductPurchaseRobuxUpsell.Parent
local Packages = IAPExperienceRoot.Parent

local Roact = require(Packages.Roact)

local RoactFitComponents = require(Packages.RoactFitComponents)
local FitFrameVertical = RoactFitComponents.FitFrameVertical

local UIBlox = require(Packages.UIBlox)
local InteractiveAlert = UIBlox.App.Dialog.Alert.InteractiveAlert
local ButtonType = UIBlox.App.Button.Enum.ButtonType
local withStyle = UIBlox.Core.Style.withStyle

local MultiTextLocalizer = require(IAPExperienceRoot.Locale.MultiTextLocalizer)

local ProductDetails = require(ProductPurchaseRobuxUpsell.ProductDetails)

local Constants = require(IAPExperienceRoot.Generic.Constants)
local getEnableCondenseRobuxUpsell = require(IAPExperienceRoot.Flags.getEnableCondenseRobuxUpsell)

local LOC_KEY = "IAPExperience.RobuxUpsell.%s"

local DELAYED_INPUT_ANIM_SEC = 3

local RobuxUpsellPrompt = Roact.Component:extend(script.Name)

type Props = {
	anchorPoint: Vector2?,
	position: UDim2?,
	screenSize: Vector2,

	isLoading: boolean?,
	isDisabled: boolean?,
	isDelayedInput: boolean?,
	enableInputDelayed: boolean?,
	inputDelaySec: number?,
	isQuest: boolean?,
	isVng: boolean?,

	model: any?,
	itemIcon: any?,
	itemName: string,
	itemRobuxCost: number,
	robuxPurchaseAmount: number,
	robuxCostStr: string?,
	balanceAmount: number,

	acceptControllerIcon: { [string]: any? },
	cancelControllerIcon: { [string]: any? },

	buyItemActivated: () -> any?,
	cancelPurchaseActivated: () -> any?,
	termsOfUseActivated: () -> any?,
}

RobuxUpsellPrompt.defaultProps = {
	anchorPoint = Vector2.new(0.5, 0.5),
	position = UDim2.new(0.5, 0, 0.5, 0),

	isLoading = false,
	isDisabled = false,
	isDelayedInput = false,
	isQuest = false,
	enableInputDelayed = false,
	inputDelaySec = DELAYED_INPUT_ANIM_SEC,
	isVng = false,
}

type State = {
	contentSize: Vector2,
	footerSize: Vector2,
	isCondensed: boolean,
}

function RobuxUpsellPrompt:init()
	self.contentRef = Roact.createRef()
	self.state = {
		contentSize = Vector2.new(0, 0),
		footerSize = Vector2.new(0, 0),
		isCondensed = false,
	}

	self.validateCondensedCondition = function(rbx)
		if not getEnableCondenseRobuxUpsell() then
			return
		end

		local currentPromptRenderedHeight = rbx.AbsoluteSize.Y
			+ Constants.MODAL_HEIGHT_WITHOUT_CONTENT
			+ Constants.MODAL_NORMAL_SECTION_PADDING * 2 -- default padding between sections introduced from alert layout
			+ Constants.MODAL_NORMAL_BUTTON_HEIGHT * 2 -- button height

		if self.state.isCondensed then
			-- if condensed, check if the full rendering could be inside the screen
			self:setState({
				isCondensed = self.props.screenSize.Y
					< currentPromptRenderedHeight
						+ (Constants.MODAL_NORMAL_CONTENT_PADDING - Constants.MODAL_CONDENSED_CONTENT_PADDING) * 6 -- middle content padding
						+ (Constants.MODAL_NORMAL_BUTTON_MARGIN - Constants.MODAL_CONDENSED_BUTTON_MARGIN) -- button stack padding
						+ (Constants.NORMAL_ICON_SIZE - Constants.CONDENSED_ICON_SIZE), -- icon size
			})
		else
			-- if not condensed, check if the current full rendering is outside the screen
			self:setState({
				isCondensed = self.props.screenSize.Y < currentPromptRenderedHeight + Constants.MODAL_NORMAL_BUTTON_MARGIN, -- button padding
			})
		end
	end

	self.changeContentSize = function(rbx)
		self.validateCondensedCondition(rbx)
		if self.state.contentSize ~= rbx.AbsoluteSize then
			self:setState({
				contentSize = rbx.AbsoluteSize,
			})
		end
	end
end

function RobuxUpsellPrompt:render()
	local disclosureTermsURLText = if self.props.isVng then "Text.VNGDisclosureTermsURL" else "Text.DisclosureTermsURL"
	
	return Roact.createElement(MultiTextLocalizer, {
		keys = {
			InsufficientRobuxTitle = {
				key = LOC_KEY:format("Title.InsufficientRobux"),
			},
			AdditionalRobux = {
				key = LOC_KEY:format("Text.AdditionalRobux"),
			},
			WouldYouBuy = {
				key = LOC_KEY:format("Text.WouldYouBuy"),
			},
			DisclosurePayment = {
				key = LOC_KEY:format("Text.DisclosurePayment"),
			},
			DisclosureTermsURL = {
				key = LOC_KEY:format(disclosureTermsURLText),
			},
			TermsOfUse = {
				key = LOC_KEY:format("Text.TermsOfUse"),
			},
			BuyRobuxButton = {
				key = LOC_KEY:format("Action.BuyRobuxAndItem"),
			},
			ButtonCancel = {
				key = LOC_KEY:format("Action.Cancel"),
			},
			LoadingText = {
				key = LOC_KEY:format("Text.Loading"),
			},
			PurchaseNotAvialableForQuest = {
				key = LOC_KEY:format("Text.PurchaseNotAvailableOnHeadSet"),
			},
		},
		render = function(locMap: { [string]: string })
			return self:renderAlert(locMap)
		end,
	})
end

function RobuxUpsellPrompt:renderAlert(locMap: { [string]: string })
	local props: Props = self.props
	local state: State = self.state

	return withStyle(function(stylePalette)
		local theme = stylePalette.Theme
		local fonts = stylePalette.Font
		local textFontSize = fonts.BaseSize * fonts.Body.RelativeSize
		textFontSize = if getEnableCondenseRobuxUpsell()
			then (state.isCondensed and textFontSize * 0.9 or textFontSize)
			else textFontSize

		local additionalRobux = props.itemRobuxCost - props.balanceAmount
		local additionalText = locMap.AdditionalRobux:gsub("{robux}", utf8.char(0xE002) .. tostring(additionalRobux))

		local textEmphasisColor = Color3.new(
			math.round(theme.TextEmphasis.Color.R * 255),
			math.round(theme.TextEmphasis.Color.G * 255),
			math.round(theme.TextEmphasis.Color.B * 255)
		)
		local robuxText = string.format(
			'<font color="rgb(%s)">%s%s</font>',
			tostring(textEmphasisColor),
			utf8.char(0xE002),
			tostring(props.robuxPurchaseAmount)
		)
		local wouldYouBuyText = locMap.WouldYouBuy:gsub("{robux}", robuxText)

		local splitDisclosure = string.split(locMap.DisclosureTermsURL, "{termsofuse}")

		local tosLinkText = locMap.TermsOfUse
		if props.termsOfUseActivated then
			tosLinkText = "<u>" .. tosLinkText .. "</u>"
		end

		return Roact.createElement(InteractiveAlert, {
			screenSize = props.screenSize,
			position = props.position,
			anchorPoint = props.anchorPoint,
			title = locMap.InsufficientRobuxTitle,
			middleContent = function()
				return Roact.createElement(FitFrameVertical, {
					BackgroundTransparency = 1,
					width = UDim.new(1, 0),
					FillDirection = Enum.FillDirection.Vertical,
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
					VerticalAlignment = Enum.VerticalAlignment.Center,
					contentPadding = if getEnableCondenseRobuxUpsell()
						then UDim.new(0, state.isCondensed and Constants.MODAL_CONDENSED_CONTENT_PADDING or Constants.MODAL_NORMAL_CONTENT_PADDING)
						else UDim.new(0, Constants.MODAL_NORMAL_CONTENT_PADDING),
					[Roact.Ref] = self.contentRef,
					[Roact.Change.AbsoluteSize] = self.changeContentSize,
				}, {
					ProductDetails = Roact.createElement(ProductDetails, {
						layoutOrder = 1,
						model = props.model,
						itemIcon = props.itemIcon,
						itemName = props.itemName,
						itemRobuxCost = props.itemRobuxCost,
						itemIconWidth = if getEnableCondenseRobuxUpsell()
							then state.isCondensed and Constants.CONDENSED_ICON_SIZE or nil
							else nil,
						itemIconHeight = if getEnableCondenseRobuxUpsell()
							then state.isCondensed and Constants.CONDENSED_ICON_SIZE or nil
							else nil,
					}),
					Underline = Roact.createElement("Frame", {
						LayoutOrder = 2,
						BorderSizePixel = 0,
						BackgroundColor3 = theme.Divider.Color,
						BackgroundTransparency = theme.Divider.Transparency,
						Size = UDim2.new(1, 0, 0, 1),
					}),
					AdditionalBuyText = Roact.createElement("TextLabel", {
						LayoutOrder = 3,
						BackgroundTransparency = 1,
						Size = UDim2.new(0, self.state.contentSize.X, 0, 0),

						RichText = true,
						AutomaticSize = Enum.AutomaticSize.Y,
						TextWrapped = true,

						Font = fonts.Body.Font,
						Text = if self.props.isQuest then additionalText else additionalText .. " " .. wouldYouBuyText,
						TextSize = textFontSize,
						TextColor3 = theme.TextDefault.Color,
						TextTransparency = theme.TextDefault.Transparency,
					}),
					Underline2 = Roact.createElement("Frame", {
						LayoutOrder = 4,
						BorderSizePixel = 0,
						BackgroundColor3 = theme.Divider.Color,
						BackgroundTransparency = theme.Divider.Transparency,
						Size = UDim2.new(1, 0, 0, 1),
					}),
					DisclosureFrame = Roact.createElement(FitFrameVertical, {
						LayoutOrder = 5,
						BackgroundTransparency = 1,
						width = UDim.new(1, 0),
						FillDirection = Enum.FillDirection.Vertical,
						HorizontalAlignment = Enum.HorizontalAlignment.Center,
						VerticalAlignment = Enum.VerticalAlignment.Center,
						contentPadding = UDim.new(0, 1),
					}, {
						DisclosurePayment = Roact.createElement("TextLabel", {
							LayoutOrder = 1,
							BackgroundTransparency = 1,
							AutomaticSize = Enum.AutomaticSize.XY,
							Font = fonts.Body.Font,
							Text = if self.props.isQuest
								then locMap.PurchaseNotAvailableOnHeadSet
								else locMap.DisclosurePayment,
							TextSize = textFontSize,
							TextColor3 = theme.TextDefault.Color,
							TextTransparency = theme.TextDefault.Transparency,
						}),
						DisclosureTermsFrame = if self.props.isQuest
							then nil
							else Roact.createElement(FitFrameVertical, {
								LayoutOrder = 2,
								BackgroundTransparency = 1,
								width = UDim.new(1, 0),
								FillDirection = Enum.FillDirection.Horizontal,
								HorizontalAlignment = Enum.HorizontalAlignment.Center,
								VerticalAlignment = Enum.VerticalAlignment.Center,
								contentPadding = UDim.new(0, 1),
							}, {
								BeforeDisclosureText = Roact.createElement("TextLabel", {
									LayoutOrder = 0,
									BackgroundTransparency = 1,
									AutomaticSize = Enum.AutomaticSize.XY,
									Font = fonts.Body.Font,
									Text = splitDisclosure[1],
									TextSize = textFontSize,
									TextColor3 = theme.TextDefault.Color,
									TextTransparency = theme.TextDefault.Transparency,
								}),
								TermsOfUse = Roact.createElement("TextButton", {
									LayoutOrder = 1,
									BackgroundTransparency = 1,

									RichText = true,
									AutomaticSize = Enum.AutomaticSize.XY,
									Font = fonts.Body.Font,
									Text = tosLinkText,
									TextSize = textFontSize,
									TextColor3 = theme.TextDefault.Color,
									TextTransparency = theme.TextDefault.Transparency,
									Selectable = props.termsOfUseActivated ~= nil,

									[Roact.Event.Activated] = props.termsOfUseActivated,
								}),
								AfterDisclosureText = Roact.createElement("TextLabel", {
									LayoutOrder = 2,
									BackgroundTransparency = 1,
									AutomaticSize = Enum.AutomaticSize.XY,
									Font = fonts.Body.Font,
									Text = splitDisclosure[2],
									TextSize = textFontSize,
									TextColor3 = theme.TextDefault.Color,
									TextTransparency = theme.TextDefault.Transparency,
								}),
							}),
					}),
				})
			end,
			buttonStackInfo = {
				forcedFillDirection = Enum.FillDirection.Vertical,
				marginBetween = if getEnableCondenseRobuxUpsell()
					then state.isCondensed and Constants.MODAL_CONDENSED_BUTTON_MARGIN or Constants.MODAL_NORMAL_BUTTON_MARGIN
					else Constants.MODAL_NORMAL_BUTTON_MARGIN,
				buttons = if self.props.isQuest
					then {
						{
							props = {
								isDisabled = props.isDisabled,
								onActivated = props.cancelPurchaseActivated,
								text = locMap.ButtonCancel,
								inputIcon = props.cancelControllerIcon,
							},
						},
					}
					else {
						{
							props = {
								isDisabled = props.isDisabled,
								onActivated = props.cancelPurchaseActivated,
								text = locMap.ButtonCancel,
								inputIcon = props.cancelControllerIcon,
							},
						},
						{
							buttonType = ButtonType.PrimarySystem,
							props = {
								isLoading = props.isLoading,
								isDisabled = props.isDisabled,
								isDelayedInput = props.isDelayedInput,
								enableInputDelayed = props.enableInputDelayed,
								delayInputSeconds = props.inputDelaySec,
								onActivated = props.buyItemActivated,
								text = if props.enableInputDelayed
									then locMap.LoadingText
									else (if props.robuxCostStr ~= nil
										then props.robuxCostStr
										else locMap.BuyRobuxButton),
								inputIcon = props.buyItemControllerIcon,
							},
						},
					},
			},
		})
	end)
end

return RobuxUpsellPrompt
