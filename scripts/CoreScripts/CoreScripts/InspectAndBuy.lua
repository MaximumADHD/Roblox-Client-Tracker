--!nonstrict
local CorePackages = game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")
local CoreGuiService = game:GetService("CoreGui")
local RobloxGui = CoreGuiService:WaitForChild("RobloxGui")
local UIBlox = require(CorePackages.UIBlox)
local CoreGuiModules = RobloxGui:WaitForChild("Modules")
local InspectAndBuyModules = CoreGuiModules:WaitForChild("InspectAndBuy")
local Roact = require(CorePackages.Roact)
local InspectAndBuy = require(InspectAndBuyModules.Components.InspectAndBuy)
local InspectAndBuyInstanceHandle = nil

local GetFFlagUseInspectAndBuyControllerBar = require(InspectAndBuyModules.Flags.GetFFlagUseInspectAndBuyControllerBar)

local AppDarkTheme = require(CorePackages.Workspace.Packages.Style).Themes.DarkTheme
local AppFont = require(CorePackages.Workspace.Packages.Style).Fonts.Gotham

local TopBar = require(RobloxGui.Modules.TopBar)

local INSPECT_MENU_KEY = "InspectMenu"

local function mount(humanoidDescription, playerName, userId, ctx)
	if InspectAndBuyInstanceHandle then
		Roact.unmount(InspectAndBuyInstanceHandle)
		InspectAndBuyInstanceHandle = nil
	end

	local appStyle = {
		Theme = AppDarkTheme,
		Font = AppFont,
	}

	local inspectAndBuy
	if GetFFlagUseInspectAndBuyControllerBar() then
		inspectAndBuy = Roact.createElement(UIBlox.Core.Style.Provider, {
			style = appStyle
		}, {
			inspectAndBuy = Roact.createElement(InspectAndBuy, {
				humanoidDescription = humanoidDescription,
				playerName = playerName,
				playerId = userId,
				ctx = ctx,
			})
		})
	else
		inspectAndBuy = Roact.createElement(InspectAndBuy, {
			humanoidDescription = humanoidDescription,
			playerName = playerName,
			playerId = userId,
			ctx = ctx,
		})
	end


	InspectAndBuyInstanceHandle = Roact.mount(inspectAndBuy, RobloxGui, "InspectAndBuy")
	GuiService:SetMenuIsOpen(true, INSPECT_MENU_KEY)

	TopBar:setInspectMenuOpen(true)
end

local function unmountInspectAndBuy()
	if InspectAndBuyInstanceHandle then
		Roact.unmount(InspectAndBuyInstanceHandle)
		InspectAndBuyInstanceHandle = nil
		GuiService:SetMenuIsOpen(false, INSPECT_MENU_KEY)

		TopBar:setInspectMenuOpen(false)
	end
end

local function mountInspectAndBuyFromHumanoidDescription(humanoidDescription, playerName, ctx)
	mount(humanoidDescription, playerName, nil, ctx)
end

local function mountInspectAndBuyFromUserId(userId, ctx)
	mount(nil, nil, userId, ctx)
end

GuiService.InspectPlayerFromHumanoidDescriptionRequest:Connect(function(humanoidDescription, playerName)
	mountInspectAndBuyFromHumanoidDescription(humanoidDescription, playerName, "developerThroughHumanoidDescription")
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
