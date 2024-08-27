local PremiumUpsellRoot = script.Parent
local IAPExperienceRoot = PremiumUpsellRoot.Parent
local Packages = IAPExperienceRoot.Parent

local Roact = require(Packages.Roact)
local t = require(Packages.t)

local RoactFitComponents = require(Packages.RoactFitComponents)
local FitFrameVertical = RoactFitComponents.FitFrameVertical

local UIBlox = require(Packages.UIBlox)
local PartialPageModal = UIBlox.App.Dialog.Modal.PartialPageModal
local getPartialPageModalMiddleContentWidth = UIBlox.App.Dialog.Modal.getPartialPageModalMiddleContentWidth
local ButtonType = UIBlox.App.Button.Enum.ButtonType
local Images = UIBlox.App.ImageSet.Images
local ImageSetLabel = UIBlox.Core.ImageSet.ImageSetLabel
local withStyle = UIBlox.Style.withStyle

local MultiTextLocalizer = require(IAPExperienceRoot.Locale.MultiTextLocalizer)

local BulletPoint = require(PremiumUpsellRoot.BulletPoint)

local PremiumUpsellPrompt = Roact.Component:extend(script.Name)

local PREMIUM_ICON = "icons/graphic/premium_large"
local PREMIUM_MODAL_LOC_KEY = "IAPExperience.PremiumUpsell.%s"

local UIBloxUseSeparatedCalcFunctionIAP = require(IAPExperienceRoot.Flags.getFFlagUIBloxUseSeparatedCalcFunctionIAP)

local MARGIN = 24
local CONTENT_PADDING = 24
local CONDENSED_CONTENT_PADDING = 12
local ICON_SIZE = 80
local UPDATED_ICON_SIZE = 96 -- matches the subscriptions UI image size
local CONDENSED_ICON_SIZE = 48
local CONDENSE_THRESHOLD = 450 -- Chosen based on tested screen sizes and errors occuring on landscape phone screen sizes, which are consistently smaller than 450 pixels vertically

type Props = {
	isCatalog: bool,

	screenSize: Vector,
	currencySymbol: string,
	robuxPrice: number,
	robuxAmount: number,

	acceptControllerIcon: { [string]: any? },

	purchasePremiumActivated: () -> any,
	cancelPurchaseActivated: () -> any,
}

function PremiumUpsellPrompt:init()
	self.isCondensed = false
	self.contentSize = Vector2.new(0, 0)

	self.state = {
		padding = UDim.new(0, CONTENT_PADDING),
		iconSize = UDim2.new(1, 0, 0, ICON_SIZE),
	}

	self.updateContentSizes = function(screenSize: Vector2?, contentSize: Vector2?)
		if contentSize.X < 200 or contentSize.Y > 1000 then
			return
		end

		-- need to update contentSize when this is called
		local oldcontentSize = self.contentSize
		self.contentSize = contentSize

		if contentSize.X == 0 and contentSize.Y == 0 then
			return
		end

		if screenSize.X == 0 and screenSize.Y == 0 then
			return
		end

		if contentSize == oldcontentSize and screenSize == self.props.screenSize then
			return
		end

		local isCondensed = self.isCondensed
		-- 120 is the height of the components of the modal not including the customized content
		if isCondensed then
			isCondensed = screenSize.Y
				< contentSize.Y
					+ 120
					+ ICON_SIZE
					- CONDENSED_ICON_SIZE
					+ (CONTENT_PADDING - CONDENSED_CONTENT_PADDING) * 2
		else
			isCondensed = screenSize.Y < contentSize.Y + 120
		end
		self.isCondensed = isCondensed

		self:setState({
			padding = UDim.new(0, isCondensed and CONDENSED_CONTENT_PADDING or CONTENT_PADDING),
			iconSize = UDim2.new(1, 0, 0, isCondensed and CONDENSED_ICON_SIZE or ICON_SIZE),
		})
	end
end

function PremiumUpsellPrompt:willUpdate(newProps)
	if self.props.screenSize ~= newProps.screenSize then
		self.updateContentSizes(newProps.screenSize, self.contentSize)
	end
end

function PremiumUpsellPrompt:render()
	local props: Props = self.props

	return Roact.createElement(MultiTextLocalizer, {
		keys = {
			titleLocalizedText = {
				key = "IAPExperience.SubscriptionPurchasePrompt.Label.GetSubscription",
			},
			monthlyLocalizedText = {
				key = PREMIUM_MODAL_LOC_KEY:format("Action.Subscribe"),
			},
			descLocalizedText = {
				key = PREMIUM_MODAL_LOC_KEY:format("Label.PremiumBenefitListDesc"),
			},
			bulletPoint1Text = {
				key = PREMIUM_MODAL_LOC_KEY:format("Label.RobuxPerMonth"),
				params = {
					robux = utf8.char(0xE002) .. tostring(props.robuxAmount),
				},
			},
			bulletPoint2Text = {
				key = PREMIUM_MODAL_LOC_KEY:format("Label.PremiumOnlyBenefits"),
			},
			bulletPoint3Text = if props.isCatalog
				then {
					key = PREMIUM_MODAL_LOC_KEY:format("Label.AvatarShopBenefits"),
				}
				else {
					key = PREMIUM_MODAL_LOC_KEY:format("Body.RobuxDiscount"),
				},
			disclosure = {
				key = PREMIUM_MODAL_LOC_KEY:format("Label.Disclosure"),
				params = {
					currencySymbol = props.currencySymbol,
					price = tostring(props.robuxPrice),
				},
			},
			shortDisclosure = {
				key = PREMIUM_MODAL_LOC_KEY:format("Label.ShortDisclosure"),
			},
			priceLocalizedText = {
				key = PREMIUM_MODAL_LOC_KEY:format("Label.PremiumPrice"),
				params = {
					currencySymbol = props.currencySymbol,
					price = tostring(props.robuxPrice),
				},
			},
			headerLocalizedText = {
				key = PREMIUM_MODAL_LOC_KEY:format("Label.RobloxPremium"),
			},
			policyLocalizedText = {
				key = PREMIUM_MODAL_LOC_KEY:format("Label.PremiumPolicy"),
			},
		},
		render = function(locMap)
			return self:renderPrompt(locMap)
		end,
	})
end

function PremiumUpsellPrompt:renderCondensedPremiumInfo(locMap: { [string]: string })
	local props: Props = self.props

	return withStyle(function(stylePalette)
		local theme = stylePalette.Theme
		local fonts = stylePalette.Font

		return Roact.createElement("Frame", {
			LayoutOrder = 1,
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 0, 0),
			AutomaticSize = Enum.AutomaticSize.Y,
		}, {
			Padding = Roact.createElement("UIPadding", {
				PaddingTop = UDim.new(0, CONDENSED_CONTENT_PADDING),
				PaddingBottom = UDim.new(0, CONDENSED_CONTENT_PADDING),
			}),
			Layout = Roact.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Horizontal,
				SortOrder = Enum.SortOrder.LayoutOrder,
			}),
			IconContainer = Roact.createElement("Frame", {
				LayoutOrder = 1,
				BackgroundTransparency = 1,
				Size = UDim2.new(0, UPDATED_ICON_SIZE, 0, UPDATED_ICON_SIZE),
				AutomaticSize = Enum.AutomaticSize.Y,
				AnchorPoint = Vector2.new(0, 0),
				Position = UDim2.new(0, 0, 0, 0),
			}, {
				Padding = Roact.createElement("UIPadding", {
					PaddingRight = UDim.new(0, CONDENSED_CONTENT_PADDING),
				}),
				Icon = Roact.createElement(ImageSetLabel, {
					BackgroundTransparency = 1,
					Size = UDim2.new(1, 0, 1, 0),
					ScaleType = Enum.ScaleType.Fit,
					Image = Images[PREMIUM_ICON],
				}),
			}),
			PremiumInfoContainer = Roact.createElement("Frame", {
				LayoutOrder = 2,
				BackgroundTransparency = 1,
				Size = UDim2.new(1, -ICON_SIZE, 0, 0),
				AutomaticSize = Enum.AutomaticSize.Y,
			}, {
				Padding = Roact.createElement("UIPadding", {
					PaddingTop = UDim.new(0, CONDENSED_CONTENT_PADDING / 2),
				}),
				ListLayout = Roact.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Vertical,
					SortOrder = Enum.SortOrder.LayoutOrder,
					Padding = UDim.new(0, CONDENSED_CONTENT_PADDING),
				}),
				PremiumHeader = Roact.createElement("TextLabel", {
					LayoutOrder = 1,
					BackgroundTransparency = 1,
					Size = UDim2.new(1, 0, 0, 0),
					AutomaticSize = Enum.AutomaticSize.Y,
					TextXAlignment = Enum.TextXAlignment.Left,
					TextWrapped = true,
					Font = fonts.Header2.Font,
					RichText = true,
					Text = locMap.headerLocalizedText,
					TextSize = fonts.BaseSize * fonts.Header2.RelativeSize,
					TextColor3 = theme.TextEmphasis.Color,
					TextTransparency = theme.TextDefault.Transparency,
				}),
				CostPerMonth = Roact.createElement("TextLabel", {
					LayoutOrder = 2,
					BackgroundTransparency = 1,
					Size = UDim2.new(1, 0, 0, 0),
					AutomaticSize = Enum.AutomaticSize.Y,
					TextXAlignment = Enum.TextXAlignment.Left,
					TextWrapped = true,
					Font = fonts.Body.Font,
					RichText = true,
					Text = locMap.priceLocalizedText,
					TextSize = fonts.BaseSize,
					TextColor3 = theme.TextEmphasis.Color,
					TextTransparency = theme.TextDefault.Transparency,
				}),
				RenewAndCancelText = Roact.createElement("TextLabel", {
					LayoutOrder = 3,
					BackgroundTransparency = 1,
					Size = UDim2.new(1, 0, 0, 0),
					AutomaticSize = Enum.AutomaticSize.Y,
					TextXAlignment = Enum.TextXAlignment.Left,
					TextWrapped = true,
					Font = fonts.Body.Font,
					Text = locMap.policyLocalizedText,
					TextSize = fonts.BaseSize,
					TextColor3 = theme.TextDefault.Color,
					TextTransparency = theme.TextDefault.Transparency,
				}),
			}),
		})
	end)
end

function PremiumUpsellPrompt:renderBulletInfo(locMap: { [string]: string })
	local props: Props = self.props

	return withStyle(function(stylePalette)
		local theme = stylePalette.Theme
		local fonts = stylePalette.Font

		-- Can also use self.contentSize.X
		local middleContentSize = if UIBloxUseSeparatedCalcFunctionIAP()
			then getPartialPageModalMiddleContentWidth(self.props.screenSize.X)
			else PartialPageModal:getMiddleContentWidth(self.props.screenSize.X)

		return Roact.createElement("Frame", {
			LayoutOrder = 2,
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 0, 0),
			AutomaticSize = Enum.AutomaticSize.Y,
		}, {
			Padding = Roact.createElement("UIPadding", {
				PaddingBottom = UDim.new(0, CONDENSED_CONTENT_PADDING),
			}),
			ListLayout = Roact.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical,
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = UDim.new(0, CONDENSED_CONTENT_PADDING),
			}),
			BulletListText = Roact.createElement("TextLabel", {
				LayoutOrder = 1,
				BackgroundTransparency = 1,
				Size = UDim2.new(0, middleContentSize, 0, 0),
				AutomaticSize = Enum.AutomaticSize.Y,
				TextXAlignment = Enum.TextXAlignment.Left,
				Font = fonts.Body.Font,
				Text = locMap.descLocalizedText,
				TextSize = fonts.BaseSize * fonts.Body.RelativeSize,
				TextColor3 = theme.TextDefault.Color,
				TextTransparency = theme.TextDefault.Transparency,
			}),
			BulletList = Roact.createElement(FitFrameVertical, {
				LayoutOrder = 2,
				BackgroundTransparency = 1,
				width = UDim.new(1, 0),
				contentPadding = UDim.new(0, CONDENSED_CONTENT_PADDING),
			}, {
				BulletText1 = Roact.createElement(BulletPoint, {
					text = locMap.bulletPoint1Text,
					width = middleContentSize,
					layoutOrder = 1,
				}),
				BulletText2 = Roact.createElement(BulletPoint, {
					text = locMap.bulletPoint2Text,
					width = middleContentSize,
					layoutOrder = 2,
				}),
				BulletText3 = Roact.createElement(BulletPoint, {
					text = locMap.bulletPoint3Text,
					width = middleContentSize,
					layoutOrder = 3,
				}),
			}),
		})
	end)
end

function PremiumUpsellPrompt:renderDisclosure(locMap: { [string]: string })
	local props: Props = self.props

	return withStyle(function(stylePalette)
		local theme = stylePalette.Theme
		local fonts = stylePalette.Font

		return Roact.createElement("Frame", {
			LayoutOrder = 5,
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 0, 0),
			AutomaticSize = Enum.AutomaticSize.Y,
		}, {
			Padding = Roact.createElement("UIPadding", {
				PaddingBottom = UDim.new(0, CONDENSED_CONTENT_PADDING),
			}),
			Disclosure = Roact.createElement("TextLabel", {
				LayoutOrder = 1,
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.XY,
				TextXAlignment = Enum.TextXAlignment.Left,
				RichText = true,
				TextWrapped = true,
				Font = fonts.Body.Font,
				Text = locMap.shortDisclosure,
				TextSize = fonts.BaseSize * fonts.Body.RelativeSize,
				TextColor3 = theme.TextDefault.Color,
				TextTransparency = theme.TextDefault.Transparency,
			}),
		})
	end)
end

function PremiumUpsellPrompt:renderLandscapePrompt(locMap: { [string]: string })
	local props: Props = self.props

	return withStyle(function(_stylePalette)
		return Roact.createElement(PartialPageModal, {
			title = locMap.titleLocalizedText,
			screenSize = props.screenSize,
			buttonStackProps = {
				buttons = {
					{
						buttonType = ButtonType.PrimarySystem,
						props = {
							onActivated = props.purchasePremiumActivated,
							text = locMap.monthlyLocalizedText,
							inputIcon = props.acceptControllerIcon,
						},
					},
				},
				buttonHeight = 48,
			},
			onCloseClicked = props.cancelPurchaseActivated,
		}, {
			Roact.createElement("ScrollingFrame", {
				LayoutOrder = 1,
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 0, props.screenSize.Y / 2),
				BorderSizePixel = 0,
				ZIndex = 2,
				ScrollingEnabled = true,
				ScrollBarThickness = 5,
				ScrollingDirection = Enum.ScrollingDirection.Y,
				Selectable = false,
				CanvasSize = UDim2.new(
					1,
					0,
					0,
					math.min(props.screenSize.Y / 2 + UPDATED_ICON_SIZE + CONDENSED_CONTENT_PADDING, CONDENSE_THRESHOLD)
				),
			}, {
				Layout = Roact.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Vertical,
					SortOrder = Enum.SortOrder.LayoutOrder,
				}),
				IconAndPremiumInfoContainer = self:renderCondensedPremiumInfo(locMap),
				BulletList = self:renderBulletInfo(locMap),
				Disclosure = self:renderDisclosure(locMap),
			}),
		})
	end)
end

function PremiumUpsellPrompt:renderPortraitPrompt(locMap: { [string]: string })
	local props: Props = self.props

	return withStyle(function(_stylePalette)
		return Roact.createElement(PartialPageModal, {
			title = locMap.titleLocalizedText,
			screenSize = props.screenSize,
			buttonStackProps = {
				buttons = {
					{
						buttonType = ButtonType.PrimarySystem,
						props = {
							onActivated = props.purchasePremiumActivated,
							text = locMap.monthlyLocalizedText,
							inputIcon = props.acceptControllerIcon,
						},
					},
				},
				buttonHeight = 48,
			},
			onCloseClicked = props.cancelPurchaseActivated,
		}, {
			Roact.createElement("Frame", {
				LayoutOrder = 1,
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 0, 0),
				AutomaticSize = Enum.AutomaticSize.Y,
			}, {
				Layout = Roact.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Vertical,
					SortOrder = Enum.SortOrder.LayoutOrder,
				}),
				IconAndPremiumInfoContainer = self:renderCondensedPremiumInfo(locMap),
				BulletList = self:renderBulletInfo(locMap),
				Disclosure = self:renderDisclosure(locMap),
			}),
		})
	end)
end

function PremiumUpsellPrompt:renderUpdatedPrompt(locMap: { [string]: string })
	local props: Props = self.props

	return withStyle(function(stylePalette)
		local theme = stylePalette.Theme
		local fonts = stylePalette.Font

		-- Can also use self.contentSize.X
		local middleContentSize = if UIBloxUseSeparatedCalcFunctionIAP()
			then getPartialPageModalMiddleContentWidth(self.props.screenSize.X)
			else PartialPageModal:getMiddleContentWidth(self.props.screenSize.X)

		return Roact.createElement(PartialPageModal, {
			title = locMap.titleLocalizedText,
			screenSize = props.screenSize,
			buttonStackProps = {
				buttons = {
					{
						buttonType = ButtonType.PrimarySystem,
						props = {
							onActivated = props.purchasePremiumActivated,
							text = locMap.monthlyLocalizedText,
							inputIcon = props.acceptControllerIcon,
						},
					},
				},
				buttonHeight = 48,
			},
			onCloseClicked = props.cancelPurchaseActivated,
		}, {
			Roact.createElement(FitFrameVertical, {
				BackgroundTransparency = 1,
				width = UDim.new(1, 0),
				contentPadding = UDim.new(0, CONDENSED_CONTENT_PADDING),
				margin = {
					top = 12,
					bottom = 12,
				},
				[Roact.Change.AbsoluteSize] = function(rbx)
					if self.contentSize.X ~= rbx.AbsoluteSize.X or self.contentSize.Y ~= rbx.AbsoluteSize.Y then
						self.updateContentSizes(self.props.screenSize, rbx.AbsoluteSize)
					end
				end,
			}, {
				Icon = Roact.createElement(ImageSetLabel, {
					LayoutOrder = 1,
					BackgroundTransparency = 1,
					Size = self.state.iconSize,
					ScaleType = Enum.ScaleType.Fit,
					Image = Images[PREMIUM_ICON],
				}),
				PremiumInfoContainer = Roact.createElement("Frame", {
					LayoutOrder = 2,
					BackgroundTransparency = 1,
					Size = UDim2.new(1, 0, 0, 0),
					AutomaticSize = Enum.AutomaticSize.Y,
				}, {
					Padding = Roact.createElement("UIPadding", {
						PaddingBottom = UDim.new(0, CONDENSED_CONTENT_PADDING),
					}),
					ListLayout = Roact.createElement("UIListLayout", {
						FillDirection = Enum.FillDirection.Vertical,
						SortOrder = Enum.SortOrder.LayoutOrder,
						Padding = UDim.new(0, CONDENSED_CONTENT_PADDING),
					}),
					PremiumHeader = Roact.createElement("TextLabel", {
						LayoutOrder = 1,
						BackgroundTransparency = 1,
						Size = UDim2.new(1, 0, 0, 0),
						AutomaticSize = Enum.AutomaticSize.Y,
						TextXAlignment = Enum.TextXAlignment.Center,
						Font = fonts.Header2.Font,
						RichText = true,
						Text = locMap.headerLocalizedText,
						TextSize = fonts.BaseSize * fonts.Header2.RelativeSize,
						TextColor3 = theme.TextEmphasis.Color,
						TextTransparency = theme.TextDefault.Transparency,
					}),
					CostPerMonth = Roact.createElement("TextLabel", {
						LayoutOrder = 2,
						BackgroundTransparency = 1,
						Size = UDim2.new(1, 0, 0, 0),
						AutomaticSize = Enum.AutomaticSize.Y,
						TextXAlignment = Enum.TextXAlignment.Center,
						Font = fonts.Body.Font,
						RichText = true,
						Text = locMap.priceLocalizedText,
						TextSize = fonts.BaseSize,
						TextColor3 = theme.TextEmphasis.Color,
						TextTransparency = theme.TextDefault.Transparency,
					}),
					CancelText = Roact.createElement("TextLabel", {
						LayoutOrder = 3,
						BackgroundTransparency = 1,
						Size = UDim2.new(1, 0, 0, 0),
						AutomaticSize = Enum.AutomaticSize.Y,
						TextXAlignment = Enum.TextXAlignment.Center,
						Font = fonts.Body.Font,
						Text = locMap.policyLocalizedText,
						TextSize = fonts.BaseSize,
						TextColor3 = theme.TextDefault.Color,
						TextTransparency = theme.TextDefault.Transparency,
					}),
				}),
				BulletListText = Roact.createElement("TextLabel", {
					LayoutOrder = 3,
					BackgroundTransparency = 1,
					Size = UDim2.new(0, middleContentSize, 0, 0),
					AutomaticSize = Enum.AutomaticSize.Y,
					TextXAlignment = Enum.TextXAlignment.Left,
					Font = fonts.Body.Font,
					Text = locMap.descLocalizedText,
					TextSize = fonts.BaseSize * fonts.Body.RelativeSize,
					TextColor3 = theme.TextDefault.Color,
					TextTransparency = theme.TextDefault.Transparency,
				}),
				BulletList = Roact.createElement(FitFrameVertical, {
					LayoutOrder = 4,
					BackgroundTransparency = 1,
					width = UDim.new(1, 0),
					contentPadding = UDim.new(0, CONDENSED_CONTENT_PADDING),
				}, {
					BulletText1 = Roact.createElement(BulletPoint, {
						text = locMap.bulletPoint1Text,
						width = middleContentSize,
						layoutOrder = 1,
					}),
					BulletText2 = Roact.createElement(BulletPoint, {
						text = locMap.bulletPoint2Text,
						width = middleContentSize,
						layoutOrder = 2,
					}),
					BulletText3 = Roact.createElement(BulletPoint, {
						text = locMap.bulletPoint3Text,
						width = middleContentSize,
						layoutOrder = 3,
					}),
				}),
				Disclosure = self:renderDisclosure(locMap),
			}),
		})
	end)
end

function PremiumUpsellPrompt:renderPrompt(locMap: { [string]: string })
	local props: Props = self.props

	if props.screenSize.Y < CONDENSE_THRESHOLD then
		return self:renderLandscapePrompt(locMap)
	elseif props.screenSize.X < CONDENSE_THRESHOLD then
		return self:renderPortraitPrompt(locMap)
	else
		return self:renderUpdatedPrompt(locMap)
	end
end

return PremiumUpsellPrompt
