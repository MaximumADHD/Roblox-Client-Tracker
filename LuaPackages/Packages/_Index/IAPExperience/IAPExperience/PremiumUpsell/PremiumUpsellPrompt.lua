local PremiumUpsellRoot = script.Parent
local IAPExperienceRoot = PremiumUpsellRoot.Parent
local Packages = IAPExperienceRoot.Parent

local Roact = require(Packages.Roact)
local t = require(Packages.t)

local RoactFitComponents = require(Packages.RoactFitComponents)
local FitFrameVertical = RoactFitComponents.FitFrameVertical

local UIBlox = require(Packages.UIBlox)
local PartialPageModal = UIBlox.App.Dialog.Modal.PartialPageModal
local ButtonType = UIBlox.App.Button.Enum.ButtonType
local Images = UIBlox.App.ImageSet.Images
local ImageSetLabel = UIBlox.Core.ImageSet.ImageSetLabel
local withStyle = UIBlox.Style.withStyle

local MultiTextLocalizer = require(IAPExperienceRoot.Locale.MultiTextLocalizer)

local BulletPoint = require(PremiumUpsellRoot.BulletPoint)

local PremiumUpsellPrompt = Roact.Component:extend(script.Name)

local PREMIUM_ICON = "icons/graphic/premium_large"
local PREMIUM_MODAL_LOC_KEY = "IAPExperience.PremiumUpsell.%s"

local CONTENT_PADDING = 24
local CONDENSED_CONTENT_PADDING = 12
local ICON_SIZE = 80
local CONDENSED_ICON_SIZE = 48

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
			titleLocalizedText = if props.isCatalog
				then {
					key = PREMIUM_MODAL_LOC_KEY:format("Title.GetPremium"),
				}
				else {
					key = PREMIUM_MODAL_LOC_KEY:format("Title.PremiumRequired"),
				},
			monthlyLocalizedText = {
				key = PREMIUM_MODAL_LOC_KEY:format("Action.Subscribe"),
			},
			descLocalizedText = {
				key = PREMIUM_MODAL_LOC_KEY:format("Label.PremiumBenefitListDesc"),
			},
			bulletPoint1Text = {
				key = PREMIUM_MODAL_LOC_KEY:format("Label.RobuxPerMonth"),
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
		},
		render = function(locMap)
			return self:renderPrompt(locMap)
		end,
	})
end

function PremiumUpsellPrompt:renderPrompt(locMap: { [string]: string })
	local props: Props = self.props

	return withStyle(function(stylePalette)
		local theme = stylePalette.Theme
		local fonts = stylePalette.Font

		-- Can also use self.contentSize.X
		local middleContentSize = PartialPageModal:getMiddleContentWidth(self.props.screenSize.X)

		local bulletPoint1Text =
			locMap.bulletPoint1Text:gsub("{robux}", utf8.char(0xE002) .. tostring(props.robuxAmount))

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
				contentPadding = UDim.new(0, 24),
				margin = {
					top = 24,
					bottom = 24,
				},
				[Roact.Change.AbsoluteSize] = function(rbx)
					-- I don't know why, but first time we reference rbx.AbsoluteSize, it is empty
					-- Do not remove this line
					local test = rbx.AbsoluteSize
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
				BulletListText = Roact.createElement("TextLabel", {
					LayoutOrder = 2,
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
					LayoutOrder = 3,
					BackgroundTransparency = 1,
					width = UDim.new(1, 0),
					contentPadding = self.state.padding,
				}, {
					BulletText1 = Roact.createElement(BulletPoint, {
						text = bulletPoint1Text,
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
				Disclosure = Roact.createElement("TextLabel", {
					LayoutOrder = 4,
					BackgroundTransparency = 1,
					AutomaticSize = Enum.AutomaticSize.XY,
					TextXAlignment = Enum.TextXAlignment.Left,
					RichText = true,
					TextWrapped = true,
					Font = fonts.Body.Font,
					Text = locMap.disclosure,
					TextSize = fonts.BaseSize * fonts.Body.RelativeSize,
					TextColor3 = theme.TextDefault.Color,
					TextTransparency = theme.TextDefault.Transparency,
				}),
			}),
		})
	end)
end

return PremiumUpsellPrompt
