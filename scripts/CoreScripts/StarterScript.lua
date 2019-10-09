-- Creates all neccessary scripts for the gui on initial load, everything except build tools
-- Created by Ben T. 10/29/10
-- Please note that these are loaded in a specific order to diminish errors/perceived load time by user

local CorePackages = game:GetService("CorePackages")
local ScriptContext = game:GetService("ScriptContext")
local UserInputService = game:GetService("UserInputService")
local GuiService = game:GetService("GuiService")
local VRService = game:GetService("VRService")

local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local CoreGuiModules = RobloxGui:WaitForChild("Modules")
local FlagSettings = require(CoreGuiModules.FlagSettings)

local PolicyService = require(CoreGuiModules:WaitForChild("Common"):WaitForChild("PolicyService"))

local FFlagConnectionScriptEnabled = settings():GetFFlag("ConnectionScriptEnabled")
local FFlagLuaInviteModalEnabled = settings():GetFFlag("LuaInviteModalEnabledV384")
local FFlagChinaLicensingApp = settings():GetFFlag("ChinaLicensingApp") --todo: remove with FFlagUsePolicyServiceForCoreScripts

local FFlagUseRoactPlayerList = settings():GetFFlag("UseRoactPlayerList")
local FFlagEmotesMenuEnabled2 = settings():GetFFlag("CoreScriptEmotesMenuEnabled2")

local FFlagEnableNetworkPauseGui = game:DefineFastFlag("EnableNetworkPauseGui", false)

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

if FFlagConnectionScriptEnabled and not GuiService:IsTenFootInterface() then
	ScriptContext:AddCoreScriptLocal("Connection", RobloxGui)
end

-- TopBar
ScriptContext:AddCoreScriptLocal("CoreScripts/Topbar", RobloxGui)

-- MainBotChatScript (the Lua part of Dialogs)
ScriptContext:AddCoreScriptLocal("CoreScripts/MainBotChatScript2", RobloxGui)

if PolicyService:IsEnabled() then
	coroutine.wrap(function() -- this is the first place we call, which can yield so wrap in coroutine
		if PolicyService:IsSubjectToChinaPolicies() then
			ScriptContext:AddCoreScriptLocal("CoreScripts/AntiAddictionPrompt", RobloxGui)
		end
	end)()
else
	--Anti Addiction
	if FFlagChinaLicensingApp then
		ScriptContext:AddCoreScriptLocal("CoreScripts/AntiAddictionPrompt", RobloxGui)
	end
end

-- In-game notifications script
ScriptContext:AddCoreScriptLocal("CoreScripts/NotificationScript2", RobloxGui)

-- Performance Stats Management
ScriptContext:AddCoreScriptLocal("CoreScripts/PerformanceStatsManagerScript", RobloxGui)

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
ScriptContext:AddCoreScriptLocal("CoreScripts/GamepadMenu", RobloxGui)

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

if FlagSettings.IsInspectAndBuyEnabled() then
	ScriptContext:AddCoreScriptLocal("CoreScripts/InspectAndBuy", RobloxGui)
end

coroutine.wrap(function()
	if not VRService.VREnabled then
		VRService:GetPropertyChangedSignal("VREnabled"):Wait()
	end
	safeRequire(RobloxGui.Modules.VR.VirtualKeyboard)
	safeRequire(RobloxGui.Modules.VR.UserGui)
end)()

if FFlagEnableNetworkPauseGui then
	ScriptContext:AddCoreScriptLocal("CoreScripts/NetworkPause", RobloxGui)
end