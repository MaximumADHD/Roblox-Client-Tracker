local Root = script.Parent.Parent.Parent
local LuaPackages = Root.Parent

local Roact = require(LuaPackages.Roact)
local Cryo = require(LuaPackages.Cryo)
local FitFrame = require(LuaPackages.FitFrame)
local FitFrameVertical = FitFrame.FitFrameVertical
local UIBlox = require(LuaPackages.UIBlox)
local PartialPageModal = UIBlox.App.Dialog.Modal.PartialPageModal
local ButtonType = UIBlox.App.Button.Enum.ButtonType
local Images = UIBlox.App.ImageSet.Images

local PromptState = require(Root.Enums.PromptState)
local launchPremiumUpsell = require(Root.Thunks.launchPremiumUpsell)
local hideWindow = require(Root.Thunks.hideWindow)
local connectToStore = require(Root.connectToStore)

local MultiTextLocalizer = require(script.Parent.Parent.Connection.MultiTextLocalizer)

local AutoSizedText = require(script.Parent.AutoSizedText)
local BulletPoint = require(script.Parent.BulletPoint)

local PREMIUM_ICON = "icons/graphic/premium_large"

local PremiumModal = Roact.Component:extend(script.Name)

local PREMIUM_MODAL_LOC_KEY = "CoreScripts.PremiumModal.%s"

local CONTENT_PADDING = 24
local CONDENSED_CONTENT_PADDING = 12
local ICON_SIZE = 80
local CONDENSED_ICON_SIZE = 48

-- TODO(esauer):
-- Make the 120 calculation come directly from UIBlox Modal
-- self.updateContentSizes should automatically know how to make the calculation

function PremiumModal:init()
	self.isCondensed = false
	-- Hack :( The modal should tell you what the width is, this just prevents having to render
	-- 540 (Max modal width) - 24 * 2 (Side paddings)
	self.contentSize = Vector2.new(self.props.screenSize.X > 492 and 492 or self.props.screenSize.X, 0)
	self.contentSizes, self.changeContentSizes = Roact.createBinding({
		padding = UDim.new(0, CONTENT_PADDING),
		iconSize = UDim2.new(1, 0, 0, ICON_SIZE)
	})

	self.purchasePremium = function()
		self.props.purchasePremium()
	end

	self.updateContentSizes = function()
		-- 120 is the height of the components of the modal not including the customized content
		if self.isCondensed then
			self.isCondensed  = self.props.screenSize.Y < self.contentSize.Y + 120
				+ ICON_SIZE - CONDENSED_ICON_SIZE
				+ (CONTENT_PADDING - CONDENSED_CONTENT_PADDING) * 2
		else
			self.isCondensed  = self.props.screenSize.Y <= self.contentSize.Y + 120
		end

		self.changeContentSizes({
			padding = UDim.new(0, self.isCondensed and CONDENSED_CONTENT_PADDING or CONTENT_PADDING),
			iconSize = UDim2.new(1, 0, 0, self.isCondensed and CONDENSED_ICON_SIZE or ICON_SIZE)
		})
	end
end

function PremiumModal:didUpdate(prevProps)
	if self.props.screenSize ~= prevProps.screenSize then
		self.updateContentSizes()
	end
end

function PremiumModal:render()
	local promptState = self.props.promptState
	local premiumProductInfo = self.props.premiumProductInfo
	local screenSize = self.props.screenSize

	return Roact.createElement(MultiTextLocalizer, {
		keys = {
			titleLocalizedText = {
				key = PREMIUM_MODAL_LOC_KEY:format("Title.PremiumRequired"),
			},
			monthlyLocalizedText = {
				key = PREMIUM_MODAL_LOC_KEY:format("Action.PricePerMonth"),
				params = {
					price = premiumProductInfo.currencySymbol..tostring(premiumProductInfo.price)
				},
			},
			descLocalizedText = {
				key = PREMIUM_MODAL_LOC_KEY:format("Body.Description"),
			},
			bulletPoint1Text = {
				key = PREMIUM_MODAL_LOC_KEY:format("Body.RobuxMonthlyV2"),
				params = {
					robux = premiumProductInfo.robuxAmount
				},
			},
			bulletPoint2Text = {
				key = PREMIUM_MODAL_LOC_KEY:format("Body.PremiumOnlyAreas"),
			},
			bulletPoint3Text = {
				key = PREMIUM_MODAL_LOC_KEY:format("Body.RobuxDiscount"),
			},
		},
		render = function(locTextMap)
			return Roact.createElement(PartialPageModal, {
				title = locTextMap.titleLocalizedText,
				screenSize = screenSize,
				buttonStackProps = {
					buttons = {
						{
							buttonType = ButtonType.PrimarySystem,
							props = {
								isDisabled = promptState ~= PromptState.PremiumUpsell,
								onActivated = self.purchasePremium,
								text = locTextMap.monthlyLocalizedText,
							},
						},
					},
					buttonHeight = 48,
				},
				onCloseClicked = self.props.setHideWindow
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
						self.contentSize = rbx.AbsoluteSize
						self.updateContentSizes()
					end
				}, {
					Icon = Roact.createElement("ImageLabel", Cryo.Dictionary.join(Images[PREMIUM_ICON], {
						AnchorPoint = Vector2.new(0.5, 0.5),
						Size = self.contentSizes:map(function(values)
							return values.iconSize
						end),
						ScaleType = Enum.ScaleType.Fit,
						BackgroundTransparency = 1,
						LayoutOrder = 1,
					})),
					Roact.createElement(AutoSizedText, {
						text = locTextMap.descLocalizedText,
						width = self.contentSize.X,
						layoutOrder = 2,
					}),
					Roact.createElement(FitFrameVertical, {
						BackgroundTransparency = 1,
						LayoutOrder = 3,
						width = UDim.new(1, 0),
						contentPadding = self.contentSizes:map(function(values)
							return values.padding
						end),
					}, {
						Bullet1 = Roact.createElement(BulletPoint, {
							text = locTextMap.bulletPoint1Text,
							width = self.contentSize.X,
							layoutOrder = 1,
						}),
						Bullet2 = Roact.createElement(BulletPoint, {
							text = locTextMap.bulletPoint2Text,
							width = self.contentSize.X,
							layoutOrder = 2,
						}),
						Bullet3 = Roact.createElement(BulletPoint, {
							text = locTextMap.bulletPoint3Text,
							width = self.contentSize.X,
							layoutOrder = 3,
						})
					}),
				})
			})
		end
	})
end

local function mapStateToProps(state)
	return {
		premiumProductInfo = state.premiumProductInfo,
		promptState = state.promptState,
		requestType = state.promptRequest.requestType,
		purchaseError = state.purchaseError,
		windowState = state.windowState,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		purchasePremium = function()
			dispatch(launchPremiumUpsell())
		end,
		setHideWindow = function()
			dispatch(hideWindow())
		end,
	}
end

PremiumModal = connectToStore(
	mapStateToProps,
	mapDispatchToProps
)(PremiumModal)

return PremiumModal