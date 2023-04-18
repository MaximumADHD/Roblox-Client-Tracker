local HttpService = game:GetService("HttpService")

local PublicRoot = script.Parent
local StoryRoot = PublicRoot.Parent
local IAPExperienceRoot = StoryRoot.Parent
local Packages = IAPExperienceRoot.Parent

local Roact = require(Packages.Roact)
local IAPExperience = require(Packages.IAPExperience)
local UIBlox = require(Packages.UIBlox)
local Images = UIBlox.App.ImageSet.Images
local withStyle = UIBlox.Core.Style.withStyle

local PREMIUM_ICON_LARGE = Images["icons/graphic/premium_xlarge"]
local XBOX_A_ICON = Images["icons/controls/keys/xboxA"]
local XBOX_B_ICON = Images["icons/controls/keys/xboxB"]

local PremiumUpsellFlow = IAPExperience.PurchaseFlow.PremiumUpsellFlow
local PremiumUpsellFlowState = IAPExperience.PurchaseFlow.PremiumUpsellFlowState
local PurchaseErrorType = IAPExperience.PurchaseFlow.PurchaseErrorType

local PremiumUpsellFlowContainer = Roact.PureComponent:extend("PremiumUpsellFlowContainer")

function PremiumUpsellFlowContainer:init()
	self.screenRef = Roact.createRef()
	self.state = {
		screenSize = Vector2.new(0, 0),
		purchaseState = PremiumUpsellFlowState.PurchaseModal,
		errorType = nil,
	}

	self.changeScreenSize = function(rbx)
		if self.state.screenSize ~= rbx.AbsoluteSize then
			self:setState({
				screenSize = rbx.AbsoluteSize,
			})
		end
	end

	self.delayChange = function(newState: any?, callback: (any?) -> any?)
		delay(self.props.controls.networkDelay, function()
			if self.props.controls.fail then
				self:setState({
					purchaseState = PremiumUpsellFlowState.Error,
					errorType = PurchaseErrorType.Unknown,
				})
			else
				if newState then
					self:setState({
						purchaseState = newState,
					})
				end
				if callback then
					callback()
				end
			end
		end)
	end

	self.purchasePremium = function()
		self.delayChange(nil, function()
			self.flowComplete()
		end)
	end

	self.cancelPurchase = function()
		self.flowComplete()
	end

	self.flowComplete = function()
		self:setState({
			purchaseState = PremiumUpsellFlowState.PurchaseModal,
		})
	end
end

function PremiumUpsellFlowContainer:render()
	return withStyle(function(stylePalette)
		local theme = stylePalette.Theme
		local fonts = stylePalette.Font

		local bgText = "BG "
		for i = 10, 1, -1 do
			bgText = bgText .. bgText
		end

		return Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
			[Roact.Ref] = self.screenRef,
			[Roact.Change.AbsoluteSize] = self.changeScreenSize,
		}, {
			BG = Roact.createElement("TextLabel", {
				BackgroundTransparency = 1,

				AutomaticSize = Enum.AutomaticSize.XY,
				TextWrapped = true,

				Font = fonts.Title.Font,
				TextSize = fonts.BaseSize * fonts.Title.RelativeSize,
				Text = bgText,
				TextColor3 = theme.TextDefault.Color,
				TextTransparency = theme.TextDefault.Transparency,
			}),
			PremiumUpsellFlow = Roact.createElement(PremiumUpsellFlow, {
				screenSize = self.state.screenSize,

				isCatalog = false,

				currencySymbol = "$",
				robuxPrice = 4.99,
				robuxAmount = 450,

				purchaseState = self.state.purchaseState,
				errorType = self.state.errorType,

				acceptControllerIcon = self.props.controls.controller and XBOX_A_ICON or nil,

				purchasePremium = self.purchasePremium,
				cancelPurchase = self.cancelPurchase,
				flowComplete = self.flowComplete,

				onAnalyticEvent = function(name: string, data: table)
					print("Analytic Event: " .. name .. "\n" .. HttpService:JSONEncode(data))
				end,
				eventPrefix = "Test",
			}),
		})
	end)
end

return {
	controls = {
		controller = true,
		fail = false,
	},
	story = PremiumUpsellFlowContainer,
}
