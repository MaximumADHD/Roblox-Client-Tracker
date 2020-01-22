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

function PremiumModal:init()
	self.modalSize = nil
	self.state = {
		contentSize = Vector2.new(0, 0),
	}

	self.screenRef = Roact.createRef()

	self.changeContentSize = function(rbx)
		if self.state.contentSize ~= rbx.AbsoluteSize then
			self:setState({
				contentSize = rbx.AbsoluteSize,
			})
		end
	end

	self.purchasePremium = function()
		self.props.purchasePremium()
	end
end

function PremiumModal:didUpdate(oldProps)
	if self.props.screenSize ~= oldProps.screenSize or self.state.shouldCondense == nil then
		if self.state.shouldCondense then
			self:setState({ shouldCondense = self.props.screenSize.Y < self.state.contentSize.Y + 120 + 32 + 36 })
		else
			self:setState({ shouldCondense = self.props.screenSize.Y < self.state.contentSize.Y + 120 })
		end
	end
end

function PremiumModal:render()
	local promptState = self.props.promptState
	local premiumProductInfo = self.props.premiumProductInfo
	local screenSize = self.props.screenSize
	local shouldCondense = self.state.shouldCondense

	-- Used to toggle between showing on a limited high landscape screen and normal version
	local layout = {
		PremiumIconHeight = shouldCondense and 48 or 80,
		ListPadding = shouldCondense and 12 or 24,
	}

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
				key = PREMIUM_MODAL_LOC_KEY:format("Body.RobuxMonthly"),
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
					[Roact.Change.AbsoluteSize] = self.changeContentSize,
				}, {
					Icon = Roact.createElement("ImageLabel", Cryo.Dictionary.join(Images[PREMIUM_ICON], {
						AnchorPoint = Vector2.new(0.5, 0.5),
						Size = UDim2.new(1, 0, 0, layout.PremiumIconHeight),
						ScaleType = Enum.ScaleType.Fit,
						BackgroundTransparency = 1,
						LayoutOrder = 1,
					})),
						Roact.createElement(AutoSizedText, {
							text = locTextMap.descLocalizedText,
							width = self.state.contentSize.X,
							layoutOrder = 2,
						}),
						Roact.createElement(FitFrameVertical, {
							BackgroundTransparency = 1,
							LayoutOrder = 3,
							width = UDim.new(1, 0),
							contentPadding = UDim.new(0, layout.ListPadding),
						}, {
							Bullet1 = Roact.createElement(BulletPoint, {
								text = locTextMap.bulletPoint1Text,
								width = self.state.contentSize.X,
								layoutOrder = 1,
							}),
							Bullet2 = Roact.createElement(BulletPoint, {
								text = locTextMap.bulletPoint2Text,
								width = self.state.contentSize.X,
								layoutOrder = 2,
							}),
							Bullet3 = Roact.createElement(BulletPoint, {
								text = locTextMap.bulletPoint3Text,
								width = self.state.contentSize.X,
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