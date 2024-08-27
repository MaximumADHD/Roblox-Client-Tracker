--!nonstrict
local Root = script
local CorePackages = game:GetService("CorePackages")
local PurchasePromptDeps = require(CorePackages.PurchasePromptDeps)
local CoreGui = game:GetService("CoreGui")
local RunService = game:GetService("RunService")

local Roact = PurchasePromptDeps.Roact
local Rodux = PurchasePromptDeps.Rodux

local PurchasePromptApp = require(script.Components.PurchasePromptApp)
local Reducer = require(Root.Reducers.Reducer)
local ABTest = require(Root.Services.ABTest)
local Network = require(Root.Services.Network)
local Analytics = require(Root.Services.Analytics)
local PlatformInterface = require(Root.Services.PlatformInterface)
local ExternalSettings = require(Root.Services.ExternalSettings)
local Thunk = require(Root.Thunk)
local initiateAvatarCreationFeePurchaseThunk = require(Root.Thunks.initiateAvatarCreationFeePurchase)
local GetFFlagEnableAvatarCreationFeePurchase = require(Root.Flags.GetFFlagEnableAvatarCreationFeePurchase)
local WindowState = require(Root.Enums.WindowState)
local PromptState = require(Root.Enums.PromptState)

local handle
local store

local purchasePromptClosedBindable = Instance.new("BindableEvent")
local promptStateSetToNoneBindable = Instance.new("BindableEvent")

-- Create the store outside of the PurchasePromptApp so
-- we can utilize the store in APIs that can be accessed
-- by other modules
local function createStore()
	local abTest = ABTest.new()
	local network = Network.new()
	local analytics = Analytics.new()
	local platformInterface = PlatformInterface.new()
	local externalSettings = ExternalSettings.new()

	store = Rodux.Store.new(Reducer, {}, {
		Thunk.middleware({
			[ABTest] = abTest,
			[Network] = network,
			[Analytics] = analytics,
			[PlatformInterface] = platformInterface,
			[ExternalSettings] = externalSettings,
		}),
	})

	store.changed:connect(function(currentState, previousState)
		-- Check if the prompt has been closed
		if previousState.windowState ~= currentState.windowState and currentState.windowState == WindowState.Hidden then
			purchasePromptClosedBindable:Fire({
				hasCompletedPurchase = currentState.hasCompletedPurchase,
			})
		end
		if previousState.promptState ~= currentState.promptState and currentState.promptState == PromptState.None then
			promptStateSetToNoneBindable:Fire()
		end
	end)
end

local mountPurchasePrompt

if GetFFlagEnableAvatarCreationFeePurchase() then
	mountPurchasePrompt = function()
		if RunService:IsStudio() and RunService:IsEdit() or handle then
			return nil
		end

		createStore()
		local purchasePromptElement = Roact.createElement(PurchasePromptApp, {
			store = store
		})

		handle = Roact.mount(purchasePromptElement, CoreGui, "PurchasePromptApp")

		return handle
	end
else
	mountPurchasePrompt = function()
		if RunService:IsStudio() and RunService:IsEdit() then
			return nil
		end

		local handle = Roact.mount(Roact.createElement(PurchasePromptApp), CoreGui, "PurchasePromptApp")

		return handle
	end
end

-- API for other modules to be able to initiate the purchase
-- of an avatar creation fee. Currently utilized by the
-- AvatarCreationService:PromptCreateAvatarAsync API flow
local function initiateAvatarCreationFeePurchase(avatarPublishMetadata, guid, serializedModel, priceInRobux)
	if not store then
		error("initiateAvatarCreationFeePurchase cannot be called when the PurchasePrompt has not been mounted")
	end

	store:dispatch(initiateAvatarCreationFeePurchaseThunk(avatarPublishMetadata, guid, serializedModel, priceInRobux))
end

return {
	mountPurchasePrompt = mountPurchasePrompt,
	initiateAvatarCreationFeePurchase = if GetFFlagEnableAvatarCreationFeePurchase() then initiateAvatarCreationFeePurchase else nil,
	-- This event fires when the prompt closes and returns hasCompletedPurchase
	purchasePromptClosedEvent = if GetFFlagEnableAvatarCreationFeePurchase() then purchasePromptClosedBindable.Event else nil,
	-- This event fires when the prompt state is set to PromptState.None
	promptStateSetToNoneEvent = if GetFFlagEnableAvatarCreationFeePurchase() then promptStateSetToNoneBindable.Event else nil,
}
