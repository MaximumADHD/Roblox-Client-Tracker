local Root = script.Parent.Parent.Parent
local GuiService = game:GetService("GuiService")

local CorePackages = game:GetService("CorePackages")
local PurchasePromptDeps = require(CorePackages.PurchasePromptDeps)
local Roact = PurchasePromptDeps.Roact
local Otter = PurchasePromptDeps.Otter

local RequestType = require(Root.Enums.RequestType)
local PromptState = require(Root.Enums.PromptState)
local WindowState = require(Root.Enums.WindowState)
local hideWindow = require(Root.Thunks.hideWindow)
local completeRequest = require(Root.Thunks.completeRequest)
local connectToStore = require(Root.connectToStore)

local ExternalEventConnection = require(script.Parent.Parent.Connection.ExternalEventConnection)
local PromptContents = require(script.Parent.PromptContents)
local InProgressContents = require(script.Parent.InProgressContents)
local withLayoutValues = require(script.Parent.Parent.Connection.withLayoutValues)

local PurchasePrompt = Roact.Component:extend(script.Name)

local SPRING_CONFIG = {
	dampingRatio = 1,
	frequency = 1.6,
}

local function isRelevantRequestType(requestType)
	return requestType == RequestType.Asset
		or requestType == RequestType.Bundle
		or requestType == RequestType.GamePass
		or requestType == RequestType.Product
		or requestType == RequestType.Subscription
end

function PurchasePrompt:init()
	local animationProgress, setProgress = Roact.createBinding(0)

	self.motor = Otter.createSingleMotor(0)
	self.motor:start()

	self.motor:onStep(setProgress)
	self.animationProgress = animationProgress

	self.motor:onComplete(function()
		if self.props.windowState == WindowState.Hidden and isRelevantRequestType(self.props.requestType) then
			self.props.completeRequest()
		end
	end)

	self.onClose = function()
		self.props.hideWindow()
	end
end

function PurchasePrompt:didUpdate(prevProps, prevState)
	if prevProps.windowState ~= self.props.windowState then
		local goal = (self.props.windowState == WindowState.Hidden or not isRelevantRequestType(self.props.requestType)) and 0 or 1
		self.motor:setGoal(Otter.spring(goal, SPRING_CONFIG))
	end
end

function PurchasePrompt:render()
	return withLayoutValues(function(values)
		local promptState = self.props.promptState
		local requestType = self.props.requestType

		local contents
		if promptState == PromptState.None or not isRelevantRequestType(requestType) then
			--[[
				When the prompt is hidden, we'd rather not keep unused Roblox
				instances for it around, so we don't render them
			]]
			contents = nil
		elseif promptState == PromptState.PurchaseInProgress or promptState == PromptState.UpsellInProgress then
			contents = Roact.createElement(InProgressContents)
		else
			contents = Roact.createElement(PromptContents, {
				onClose = self.onClose,
			})
		end

		return Roact.createElement("Frame", {
			Size = values.Size.Dialog,
			BorderSizePixel = 0,
			BackgroundTransparency = 1,
			AnchorPoint = self.animationProgress:map(function(value)
				return Vector2.new(0.5, 1 - 0.5 * value)
			end),
			Position = self.animationProgress:map(function(value)
				return UDim2.new(0.5, 0, 0.5 * value, 0)
			end),
		}, {
			PromptContents = contents,
			OnCoreGuiMenuOpened = Roact.createElement(ExternalEventConnection, {
				event = GuiService.MenuOpened,
				callback = self.onClose,
			})
		})
	end)
end

local function mapStateToProps(state)
	return {
		promptState = state.promptState,
		requestType = state.promptRequest.requestType,
		windowState = state.windowState,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		hideWindow = function()
			dispatch(hideWindow())
		end,
		completeRequest = function()
			dispatch(completeRequest())
		end
	}
end

PurchasePrompt = connectToStore(
	mapStateToProps,
	mapDispatchToProps
)(PurchasePrompt)

return PurchasePrompt
