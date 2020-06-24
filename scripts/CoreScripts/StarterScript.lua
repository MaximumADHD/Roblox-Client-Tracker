-- Creates all neccessary scripts for the gui on initial load, everything except build tools
-- Created by Ben T. 10/29/10
-- Please note that these are loaded in a specific order to diminish errors/perceived load time by user

local CorePackages = game:GetService("CorePackages")
local ScriptContext = game:GetService("ScriptContext")
local UserInputService = game:GetService("UserInputService")
local GuiService = game:GetService("GuiService")
local VRService = game:GetService("VRService")
local Players = game:GetService("Players")
local ABTestService = game:GetService("ABTestService")

local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local CoreGuiModules = RobloxGui:WaitForChild("Modules")

local PolicyService = require(CoreGuiModules:WaitForChild("Common"):WaitForChild("PolicyService"))
local initify = require(CorePackages.initify)

-- remove this when removing FFlagConnectErrorHandlerInLoadingScript
local FFlagConnectionScriptEnabled = settings():GetFFlag("ConnectionScriptEnabled")
local FFlagLuaInviteModalEnabled = settings():GetFFlag("LuaInviteModalEnabledV384")

local FFlagUseRoactPlayerList = settings():GetFFlag("UseRoactPlayerList3")
local FFlagEmotesMenuEnabled2 = settings():GetFFlag("CoreScriptEmotesMenuEnabled2")

local FFlagCoreScriptTopBarStartup = require(RobloxGui.Modules.Flags.FFlagCoreScriptTopBarStartup)
local FFlagConnectErrorHandlerInLoadingScript = require(RobloxGui.Modules.Flags.FFlagConnectErrorHandlerInLoadingScript)
local isNewTopBarEnabled = require(RobloxGui.Modules.TopBar.isNewTopBarEnabled)
local isNewInGameMenuEnabled = require(RobloxGui.Modules.isNewInGameMenuEnabled)
local GetFFlagEducationalPopupOnNativeClose = require(RobloxGui.Modules.Flags.GetFFlagEducationalPopupOnNativeClose)

local FFlagTopBarNewGamepadMenu = require(RobloxGui.Modules.Flags.FFlagTopBarNewGamepadMenu)

-- The Rotriever index, as well as the in-game menu code itself, relies on
-- the init.lua convention, so we have to run initify over the module.
-- We do this explicitly because the LocalPlayer hasn't been created at this
-- point, so we can't check enrollment status.
initify(CoreGuiModules.InGameMenu)

local UIBlox = require(CorePackages.UIBlox)
local uiBloxConfig = require(CoreGuiModules.UIBloxInGameConfig)
UIBlox.init(uiBloxConfig)

local RoactRodux = require(CorePackages.RoactRodux)
local FFlagCoreScriptsUseRoactRoduxNewConnectionOrder = require(
	RobloxGui.Modules.Flags.FFlagCoreScriptsUseRoactRoduxNewConnectionOrder)
RoactRodux.TEMP_CONFIG.newConnectionOrder = FFlagCoreScriptsUseRoactRoduxNewConnectionOrder

if FFlagCoreScriptTopBarStartup then
	local localPlayer = Players.LocalPlayer
	while not localPlayer do
		Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
		localPlayer = Players.LocalPlayer
	end

	ABTestService:InitializeForUserId(localPlayer.UserId)

	local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
	local InGameMenuUIBlox = InGameMenuDependencies.UIBlox
	if InGameMenuUIBlox ~= UIBlox then
		InGameMenuUIBlox.init(uiBloxConfig)
	end
end

local soundFolder = Instance.new("Folder")
soundFolder.Name = "Sounds"
soundFolder.Parent = RobloxGui

-- This can be useful in cases where a flag configuration issue causes requiring a CoreScript to fail
local function safeRequire(moduleScript)
	local success, ret = pcall(require, moduleScript)
	if success then
		return ret
	else
		warn("Failure to Start CoreScript module " .. moduleScript.Name .. ".\n" .. ret)
	end
end

if not FFlagConnectErrorHandlerInLoadingScript then
	if FFlagConnectionScriptEnabled and not GuiService:IsTenFootInterface() then
		ScriptContext:AddCoreScriptLocal("Connection", RobloxGui)
	end
end

-- TopBar
if isNewTopBarEnabled() then
	initify(CoreGuiModules.TopBar)
	coroutine.wrap(safeRequire)(CoreGuiModules.TopBar)
else
	ScriptContext:AddCoreScriptLocal("CoreScripts/Topbar", RobloxGui)
end

-- MainBotChatScript (the Lua part of Dialogs)
ScriptContext:AddCoreScriptLocal("CoreScripts/MainBotChatScript2", RobloxGui)

coroutine.wrap(function() -- this is the first place we call, which can yield so wrap in coroutine
	if PolicyService:IsSubjectToChinaPolicies() then
		ScriptContext:AddCoreScriptLocal("CoreScripts/AntiAddictionPrompt", RobloxGui)
		ScriptContext:AddCoreScriptLocal("CoreScripts/ScreenTimeInGame", RobloxGui)
	end
end)()

-- In-game confirmation prompt for desktop window close script
coroutine.wrap(function()
	if GetFFlagEducationalPopupOnNativeClose() and isNewInGameMenuEnabled() then
		ScriptContext:AddCoreScriptLocal("CoreScripts/NativeClosePrompt", RobloxGui)
	end
end)()

-- In-game notifications script
ScriptContext:AddCoreScriptLocal("CoreScripts/NotificationScript2", RobloxGui)

-- Performance Stats Management
ScriptContext:AddCoreScriptLocal("CoreScripts/PerformanceStatsManagerScript", RobloxGui)

-- Default Alternate Death Ragdoll (China only for now)
local FFlagSupportDeathType = game:DefineFastFlag("SupportDeathTypeClient", false)
if FFlagSupportDeathType then
	ScriptContext:AddCoreScriptLocal("CoreScripts/PlayerRagdoll", RobloxGui)
end

-- Chat script
coroutine.wrap(safeRequire)(RobloxGui.Modules.ChatSelector)
if FFlagUseRoactPlayerList then
	coroutine.wrap(safeRequire)(RobloxGui.Modules.PlayerList.PlayerListManager)
else
	coroutine.wrap(safeRequire)(RobloxGui.Modules.PlayerlistModule)
end

-- Purchase Prompt Script
coroutine.wrap(function()
	local PurchasePrompt = safeRequire(CorePackages.PurchasePrompt)

	if PurchasePrompt then
		PurchasePrompt.mountPurchasePrompt()
	end
end)()

-- Prompt Block Player Script
ScriptContext:AddCoreScriptLocal("CoreScripts/BlockPlayerPrompt", RobloxGui)
ScriptContext:AddCoreScriptLocal("CoreScripts/FriendPlayerPrompt", RobloxGui)

-- Avatar Context Menu
ScriptContext:AddCoreScriptLocal("CoreScripts/AvatarContextMenu", RobloxGui)

-- Backpack!
coroutine.wrap(safeRequire)(RobloxGui.Modules.BackpackScript)

-- Emotes Menu
if FFlagEmotesMenuEnabled2 then
	coroutine.wrap(safeRequire)(RobloxGui.Modules.EmotesMenu.EmotesMenuMaster)
end

ScriptContext:AddCoreScriptLocal("CoreScripts/VehicleHud", RobloxGui)

if not FFlagTopBarNewGamepadMenu then
	ScriptContext:AddCoreScriptLocal("CoreScripts/GamepadMenu", RobloxGui)
end

if FFlagLuaInviteModalEnabled then
	ScriptContext:AddCoreScriptLocal("CoreScripts/InviteToGamePrompt", RobloxGui)
end

if UserInputService.TouchEnabled then -- touch devices don't use same control frame
	-- only used for touch device button generation
	ScriptContext:AddCoreScriptLocal("CoreScripts/ContextActionTouch", RobloxGui)

	RobloxGui:WaitForChild("ControlFrame")
	RobloxGui.ControlFrame:WaitForChild("BottomLeftControl")
	RobloxGui.ControlFrame.BottomLeftControl.Visible = false
end

ScriptContext:AddCoreScriptLocal("CoreScripts/InspectAndBuy", RobloxGui)

coroutine.wrap(function()
	if not VRService.VREnabled then
		VRService:GetPropertyChangedSignal("VREnabled"):Wait()
	end
	safeRequire(RobloxGui.Modules.VR.VirtualKeyboard)
	safeRequire(RobloxGui.Modules.VR.UserGui)
end)()

ScriptContext:AddCoreScriptLocal("CoreScripts/NetworkPause", RobloxGui)