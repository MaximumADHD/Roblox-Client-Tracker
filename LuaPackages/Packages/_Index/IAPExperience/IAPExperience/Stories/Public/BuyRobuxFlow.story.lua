local HttpService = game:GetService("HttpService")

local PrivateRoot = script.Parent
local StoryRoot = PrivateRoot.Parent
local IAPExperienceRoot = StoryRoot.Parent
local Packages = IAPExperienceRoot.Parent

local Roact = require(Packages.Roact)
local IAPExperience = require(Packages.IAPExperience)
local BuyRobuxFlow = IAPExperience.PurchaseFlow.BuyRobuxFlow
local U13ConfirmType = IAPExperience.PurchaseFlow.U13ConfirmType
local BuyRobuxFlowState = IAPExperience.PurchaseFlow.BuyRobuxFlowState
local PurchaseErrorType = IAPExperience.PurchaseFlow.PurchaseErrorType

local BuyRobuxFlowContainer = Roact.PureComponent:extend("BuyRobuxFlowContainer")

function BuyRobuxFlowContainer:init()
	self.screenRef = Roact.createRef()
	self.state = {
		screenSize = Vector2.new(0, 0),
		purchaseState = BuyRobuxFlowState.BuyRobux,
		errorType = nil,
		u13ConfirmType = nil,
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
			if newState then
				self:setState({
					purchaseState = newState,
				})
			end
			if callback then
				callback()
			end
		end)
	end

	self.purchaseRobux = function(packageId: string)
		if self.props.controls.u13 ~= U13ConfirmType.None then
			self.showPurchaseWarning()
		else
			self.robuxPurchase()
		end
	end

	self.showPurchaseWarning = function()
		self.delayChange(BuyRobuxFlowState.PurchaseWarning)
		self:setState({
			purchaseState = BuyRobuxFlowState.Loading,
		})
	end

	self.robuxPurchase = function()
		self.delayChange(nil, function()
			self:setState({
				purchaseState = BuyRobuxFlowState.BuyRobux,
			})
		end)
		self:setState({
			purchaseState = BuyRobuxFlowState.RobuxPurchasePending,
		})
	end

	self.acceptPurchaseWarning = function()
		self.robuxPurchase()
	end

	self.cancelPurchase = function()
		self.flowComplete()
	end

	self.flowComplete = function()
		self:setState({
			purchaseState = BuyRobuxFlowState.BuyRobux,
		})
	end
end

function BuyRobuxFlowContainer:render()
	local props = self.props

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		[Roact.Ref] = self.screenRef,
		[Roact.Change.AbsoluteSize] = self.changeScreenSize,
	}, {
		BuyRobuxFlow = Roact.createElement(BuyRobuxFlow, {
			screenSize = self.state.screenSize,
			shouldAnimate = self.props.controls.shouldAnimate,
			isConsoleSize = self.props.controls.isConsoleSize,

			robuxBalance = self.props.controls.robuxBalance,
			robuxPackages = not self.props.controls.loading and {
				{
					packageId = "1",
					robuxAmount = 400,
					currencyAmountStr = "$9.99",
					robuxMoreAmount = nil,
				},
				{
					packageId = "2",
					robuxAmount = 800,
					currencyAmountStr = "$9.99",
					robuxMoreAmount = nil,
				},
				{
					packageId = "3",
					robuxAmount = 1700,
					currencyAmountStr = "$9.99",
					robuxMoreAmount = 100,
				},
				{
					packageId = "4",
					robuxAmount = 4500,
					currencyAmountStr = "$9.99",
					robuxMoreAmount = 500,
				},
				{
					packageId = "5",
					robuxAmount = 10000,
					currencyAmountStr = "$100.99",
					robuxMoreAmount = 2000,
				},
				{
					packageId = "6",
					robuxAmount = 22500,
					currencyAmountStr = "$199.99",
					robuxMoreAmount = 5000,
				},
			} or nil,

			purchaseState = self.state.purchaseState,
			errorType = self.state.errorType,
			u13ConfirmType = self.props.controls.u13,

			purchaseRobux = self.purchaseRobux,
			acceptPurchaseWarning = self.acceptPurchaseWarning,
			cancelPurchase = self.cancelPurchase,

			onAnalyticEvent = function(name: string, data: table)
				print("Analytic Event: " .. name .. "\n" .. HttpService:JSONEncode(data))
			end,
			eventPrefix = "Test",
		}),
	})
end

return {
	controls = {
		isConsoleSize = true,
		networkDelay = 1,
		shouldAnimate = false,
		loading = false,
		robuxBalance = 9999,
		u13 = {
			U13ConfirmType.U13PaymentModal,
			U13ConfirmType.U13MonthlyThreshold1Modal,
			U13ConfirmType.U13MonthlyThreshold2Modal,
			U13ConfirmType.None,
		},
	},
	story = BuyRobuxFlowContainer,
}
