local CorePackages = game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")
local Players = game:GetService("Players")
local CoreGuiService = game:GetService("CoreGui")
local RobloxGui = CoreGuiService:WaitForChild("RobloxGui")
local CoreGuiModules = RobloxGui:WaitForChild("Modules")
local InspectAndBuyModules = CoreGuiModules:WaitForChild("InspectAndBuy")
local Roact = require(CorePackages.Roact)
local InspectAndBuy = require(InspectAndBuyModules.Components.InspectAndBuy)
local InspectAndBuyInstanceHandle = nil

local INSPECT_MENU_KEY = "InspectMenu"

local FFlagFixInspectAndBuyMountError = settings():GetFFlag("FixInspectAndBuyMountError")
local FFlagInspectMenuProgressiveLoading = settings():GetFFlag("InspectMenuProgressiveLoading")

local function mount(humanoidDescription, playerName, userId, ctx)
	if InspectAndBuyInstanceHandle then
		Roact.unmount(InspectAndBuyInstanceHandle)
		if FFlagFixInspectAndBuyMountError then
			InspectAndBuyInstanceHandle = nil
		end
	end

	local localPlayerModel
	if not FFlagInspectMenuProgressiveLoading then
		localPlayerModel = Players:CreateHumanoidModelFromUserId(Players.LocalPlayer.UserId)
	end
	if FFlagFixInspectAndBuyMountError and InspectAndBuyInstanceHandle then
		Roact.unmount(InspectAndBuyInstanceHandle)
		InspectAndBuyInstanceHandle = nil
	end

	-- When FFlagInspectMenuProgressiveLoading is removed, FFlagFixInspectAndBuyMountError can
	-- also be removed because there is no more yield since we unmounted.
	local inspectAndBuy = Roact.createElement(InspectAndBuy, {
		humanoidDescription = humanoidDescription,
		playerName = playerName,
		playerId = userId,
		localPlayerModel = localPlayerModel,
		ctx = ctx,
	})
	InspectAndBuyInstanceHandle = Roact.mount(inspectAndBuy, RobloxGui, "InspectAndBuy")
	GuiService:SetMenuIsOpen(true, INSPECT_MENU_KEY)
end

local function unmountInspectAndBuy()
	if InspectAndBuyInstanceHandle then
		Roact.unmount(InspectAndBuyInstanceHandle)
		InspectAndBuyInstanceHandle = nil
		GuiService:SetMenuIsOpen(false, INSPECT_MENU_KEY)
	end
end

local function mountInspectAndBuyFromHumanoidDescription(humanoidDescription, playerName, ctx)
	mount(humanoidDescription, playerName, nil, ctx)
end

local function mountInspectAndBuyFromUserId(userId, ctx)
	if FFlagInspectMenuProgressiveLoading then
		mount(nil, nil, userId, ctx)
	else
		local name = Players:GetNameFromUserIdAsync(userId)
		local inspectingModel = Players:CreateHumanoidModelFromUserId(userId)
		local humanoidDescription = inspectingModel.Humanoid.HumanoidDescription
		mount(humanoidDescription, name, userId, ctx)
	end
end

GuiService.InspectPlayerFromHumanoidDescriptionRequest:Connect(function(humanoidDescription, playerName)
	mountInspectAndBuyFromHumanoidDescription(humanoidDescription, playerName, "developerThroughHumanoidDescription")
end)

GuiService.InspectPlayerFromUserIdRequest:Connect(function(userId)
	mountInspectAndBuyFromUserId(userId, "developerThroughUserId")
end)

GuiService.InspectPlayerFromUserIdWithCtxRequest:Connect(function(userId, ctx)
	mountInspectAndBuyFromUserId(userId, ctx)
end)

GuiService.CloseInspectMenuRequest:Connect(function()
	if InspectAndBuyInstanceHandle then
		unmountInspectAndBuy()
	end
end)

GuiService.InspectMenuEnabledChangedSignal:Connect(function(enabled)
	if not enabled and InspectAndBuyInstanceHandle then
		unmountInspectAndBuy()
	end
end)
