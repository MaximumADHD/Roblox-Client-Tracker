local HttpService = game:GetService("HttpService")

local PublicRoot = script.Parent
local StoryRoot = PublicRoot.Parent
local IAPExperienceRoot = StoryRoot.Parent
local Packages = IAPExperienceRoot.Parent

local Roact = require(Packages.Roact)
local IAPExperience = require(Packages.IAPExperience)
local UIBlox = require(Packages.UIBlox)
local Images = UIBlox.App.ImageSet.Images

local PREMIUM_ICON_LARGE = Images["icons/graphic/premium_xlarge"]
local XBOX_A_ICON = Images["icons/controls/keys/xboxA"]
local XBOX_B_ICON = Images["icons/controls/keys/xboxB"]

local RobuxUpsellFlow = IAPExperience.PurchaseFlow.RobuxUpsellFlow
local U13ConfirmType = IAPExperience.PurchaseFlow.U13ConfirmType
local RobuxUpsellFlowState = IAPExperience.PurchaseFlow.RobuxUpsellFlowState
local PurchaseErrorType = IAPExperience.PurchaseFlow.PurchaseErrorType

local RobuxUpsellFlowContainer = Roact.PureComponent:extend("RobuxUpsellFlowContainer")

function RobuxUpsellFlowContainer:init()
	self.screenRef = Roact.createRef()
	self.state = {
		screenSize = Vector2.new(0, 0),
		purchaseState = RobuxUpsellFlowState.PurchaseModal,
		errorType = nil,
		u13ConfirmType = nil,
	}

	self.changeScreenSize = function(rbx)
		if self.state.screenSize ~= rbx.AbsoluteSize then
			self:setState({
				screenSize = rbx.AbsoluteSize
			})
		end
	end

	self.delayChange = function(newState: any?, callback: (any?)->any?)
		delay(self.props.controls.networkDelay, function()
			if self.props.controls.failNextNetworkCall then
				self:setState({
					purchaseState = RobuxUpsellFlowState.Error,
					errorType = PurchaseErrorType.Unknown,
				})
			else
				if newState then
					self:setState({
						purchaseState = newState
					})
				end
				if callback then
					callback()
				end
			end
		end)
	end

	self.purchaseRobux = function()
		if self.props.controls.u13 ~= U13ConfirmType.None then
			self.showPurchaseWarning()
		else
			self.robuxPurchase()
		end
	end

	self.showPurchaseWarning = function()
		self.delayChange(RobuxUpsellFlowState.PurchaseWarning)
		self:setState({
			purchaseState = RobuxUpsellFlowState.Loading
		})
	end

	self.robuxPurchase = function()
		self.delayChange(nil, function()
			self.itemPurchase()
		end)
		self:setState({
			purchaseState = RobuxUpsellFlowState.RobuxPurchasePending
		})
	end

	self.itemPurchase = function()
		self.delayChange(nil, function()
			if self.props.controls.twoStep then
				self:setState({
					purchaseState = RobuxUpsellFlowState.TwoStepRequired
				})
			else
				self:setState({
					purchaseState = RobuxUpsellFlowState.Success
				})
			end
		end)
		self:setState({
			purchaseState = RobuxUpsellFlowState.ItemPurchasePending
		})
	end

	self.acceptPurchaseWarning = function()
		self.robuxPurchase()
	end

	self.cancelPurchase = function()
		self.flowComplete()
	end

	self.showTermsOfUse = function()
		print("Show Terms of Service")
	end

	self.openSecuritySettings = function()
		print("Show Security Settings")
	end

	self.flowComplete = function()
		self.delayChange(RobuxUpsellFlowState.PurchaseModal)
		self:setState({
			purchaseState = RobuxUpsellFlowState.None
		})
	end
end

function RobuxUpsellFlowContainer:render()
	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		[Roact.Ref] = self.screenRef,
		[Roact.Change.AbsoluteSize] = self.changeScreenSize,
	}, {
		RobuxUpsellFlow = Roact.createElement(RobuxUpsellFlow, {
			screenSize = self.state.screenSize,

			itemIcon = self.props.controls.icon and PREMIUM_ICON_LARGE or nil,
			itemName = "Premium Coins + Speed up Bonus",
			itemRobuxCost = 9000,
			iapRobuxAmount = 10000,
			beforeRobuxBalance = 50,
			
			purchaseState = self.state.purchaseState,
			errorType = self.state.errorType,
			u13ConfirmType = self.props.controls.u13,

			acceptControllerIcon = self.props.controls.controller and XBOX_A_ICON or nil,
			cancelControllerIcon =  self.props.controls.controller and XBOX_B_ICON or nil,

			purchaseRobux = self.purchaseRobux,
			acceptPurchaseWarning = self.acceptPurchaseWarning,
			cancelPurchase = self.cancelPurchase,
			equipItem = self.props.controls.isCatalogShop and self.flowComplete or nil,
			showTermsOfUse = self.props.controls.tosLink and self.showTermsOfUse or nil,
			openSecuritySettings = self.props.controls.twoStepLink and self.openSecuritySettings or nil,
			flowComplete = self.flowComplete,

			onAnalyticEvent = function(name: string, data: table)
				print("Analytic Event: "..name.."\n"..HttpService:JSONEncode(data))
			end,
			eventPrefix = "Test"
		})
	})
end

return {
	controls = {
		controller = true,
		u13 = {
			U13ConfirmType.U13PaymentModal,
			U13ConfirmType.U13MonthlyThreshold1Modal,
			U13ConfirmType.U13MonthlyThreshold2Modal,
			U13ConfirmType.None,
		},
		twoStep = true,
		twoStepLink = true,
		tosLink = true,
		icon = false,
		failNextNetworkCall = false,
		networkDelay = 1,
		isCatalogShop = false,
	},
	story = RobuxUpsellFlowContainer
}
