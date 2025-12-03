--!nonstrict
local CorePackages = game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")
local CoreGuiService = game:GetService("CoreGui")
local RobloxGui = CoreGuiService.RobloxGui
local CoreGuiModules = RobloxGui.Modules
local CoreGuiCommon = require(CorePackages.Workspace.Packages.CoreGuiCommon)
local InspectAndBuyModules = CoreGuiModules.InspectAndBuy
local Roact = require(CorePackages.Packages.Roact)
local InspectAndBuy = require(InspectAndBuyModules.Components.InspectAndBuy)
local InspectAndBuyInstanceHandle = nil

local renderWithCoreScriptsStyleProvider = require(RobloxGui.Modules.Common.renderWithCoreScriptsStyleProvider)
local FFlagAXEnableNewInspectAndBuyContainer =
	require(InspectAndBuyModules.Flags.FFlagAXEnableNewInspectAndBuyContainer)

local TopBar = require(RobloxGui.Modules.TopBar)

local FFlagTopBarSignalizeMenuOpen = CoreGuiCommon.Flags.FFlagTopBarSignalizeMenuOpen
local FFlagInspectAndBuyFixStyleLink = game:DefineFastFlag("InspectAndBuyFixStyleLink", false)

local isInExperienceUIVREnabled =
	require(CorePackages.Workspace.Packages.SharedExperimentDefinition).isInExperienceUIVREnabled

local isSpatial
local UIManager
local PanelType
if isInExperienceUIVREnabled then
	isSpatial = require(CorePackages.Workspace.Packages.AppCommonLib).isSpatial

	local VrSpatialUi = require(CorePackages.Workspace.Packages.VrSpatialUi)
	UIManager = VrSpatialUi.UIManager
	PanelType = VrSpatialUi.Constants.PanelType
end

local INSPECT_MENU_KEY = "InspectMenu"

local function mount(humanoidDescription, playerName, userId, ctx)
	if InspectAndBuyInstanceHandle then
		Roact.unmount(InspectAndBuyInstanceHandle)
		InspectAndBuyInstanceHandle = nil
	end

	local inspectAndBuy = renderWithCoreScriptsStyleProvider({
		inspectAndBuy = Roact.createElement(InspectAndBuy, {
			humanoidDescription = humanoidDescription,
			playerName = playerName,
			playerId = userId,
			ctx = ctx,
		}),
	})

	if FFlagAXEnableNewInspectAndBuyContainer then
		inspectAndBuy = Roact.createElement(InspectAndBuy, {
			humanoidDescription = humanoidDescription,
			playerName = playerName,
			playerId = userId,
			ctx = ctx,
		})
	end

	if FFlagInspectAndBuyFixStyleLink then
		inspectAndBuy = Roact.createElement("Folder", nil, inspectAndBuy)
	end

	if isInExperienceUIVREnabled and isSpatial() then
		local panelObject = UIManager.getInstance():getPanelObject(PanelType.MoreMenu)
		InspectAndBuyInstanceHandle = Roact.mount(inspectAndBuy, panelObject, "InspectAndBuy")
	else
		InspectAndBuyInstanceHandle = Roact.mount(inspectAndBuy, RobloxGui, "InspectAndBuy")
	end
	GuiService:SetMenuIsOpen(true, INSPECT_MENU_KEY)

	if FFlagTopBarSignalizeMenuOpen then
		local getInspectAndBuyStore = CoreGuiCommon.Stores.GetInspectAndBuyStore
		getInspectAndBuyStore(false).setInspectAndBuyOpen(true)
	else
		TopBar:setInspectMenuOpen(true)
	end
end

local function unmountInspectAndBuy()
	if InspectAndBuyInstanceHandle then
		Roact.unmount(InspectAndBuyInstanceHandle)
		InspectAndBuyInstanceHandle = nil
		GuiService:SetMenuIsOpen(false, INSPECT_MENU_KEY)

		if FFlagTopBarSignalizeMenuOpen then
			local getInspectAndBuyStore = CoreGuiCommon.Stores.GetInspectAndBuyStore
			getInspectAndBuyStore(false).setInspectAndBuyOpen(false)
		else
			TopBar:setInspectMenuOpen(false)
		end
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
