-- Creates all neccessary scripts for the gui on initial load, everything except build tools
-- Created by Ben T. 10/29/10
-- Please note that these are loaded in a specific order to diminish errors/perceived load time by user

local CorePackages = game:GetService("CorePackages")
local ScriptContext = game:GetService("ScriptContext")
local UserInputService = game:GetService("UserInputService")
local GuiService = game:GetService("GuiService")
local VRService = game:GetService("VRService")

local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")

local FFlagConnectionScriptEnabled = settings():GetFFlag("ConnectionScriptEnabled")
local FFlagUseRoactPurchasePrompt372 = settings():GetFFlag("UseRoactPurchasePrompt372")
local FFlagIWillNotYield = settings():GetFFlag("IWillNotYield")
local FFlagLuaInviteModalEnabled = settings():GetFFlag("LuaInviteModalEnabled")

local soundFolder = Instance.new("Folder")
soundFolder.Name = "Sounds"
soundFolder.Parent = RobloxGui

-- This can be useful in cases where a flag configuration issue causes requiring a CoreScript to fail
local function safeRequire(moduleScript)
	local success, ret = pcall(require, moduleScript)
	if not success then
		warn("Failure to Start CoreScript module " .. moduleScript.Name .. ".\n" .. ret)
	end
	return ret
end

if FFlagConnectionScriptEnabled and not GuiService:IsTenFootInterface() then
	ScriptContext:AddCoreScriptLocal("Connection", RobloxGui)
end

-- TopBar
ScriptContext:AddCoreScriptLocal("CoreScripts/Topbar", RobloxGui)

-- MainBotChatScript (the Lua part of Dialogs)
ScriptContext:AddCoreScriptLocal("CoreScripts/MainBotChatScript2", RobloxGui)

-- In-game notifications script
ScriptContext:AddCoreScriptLocal("CoreScripts/NotificationScript2", RobloxGui)

-- Performance Stats Management
ScriptContext:AddCoreScriptLocal("CoreScripts/PerformanceStatsManagerScript", RobloxGui)

-- Chat script
if FFlagIWillNotYield then
	coroutine.wrap(safeRequire)(RobloxGui.Modules.ChatSelector)
	coroutine.wrap(safeRequire)(RobloxGui.Modules.PlayerlistModule)
else
	spawn(function() safeRequire(RobloxGui.Modules.ChatSelector) end)
	spawn(function() safeRequire(RobloxGui.Modules.PlayerlistModule) end)
end

-- Purchase Prompt Script
if FFlagUseRoactPurchasePrompt372 then
	if FFlagIWillNotYield then
		coroutine.wrap(safeRequire)(CorePackages.PurchasePrompt.Main)
	else
		spawn(function() safeRequire(CorePackages.PurchasePrompt.Main) end)
	end
else
	ScriptContext:AddCoreScriptLocal("CoreScripts/PurchasePromptScript2", RobloxGui)
end

-- Prompt Block Player Script
ScriptContext:AddCoreScriptLocal("CoreScripts/BlockPlayerPrompt", RobloxGui)
ScriptContext:AddCoreScriptLocal("CoreScripts/FriendPlayerPrompt", RobloxGui)

-- Avatar Context Menu
ScriptContext:AddCoreScriptLocal("CoreScripts/AvatarContextMenu", RobloxGui)

-- Backpack!
if FFlagIWillNotYield then
	coroutine.wrap(safeRequire)(RobloxGui.Modules.BackpackScript)
else
	spawn(function() safeRequire(RobloxGui.Modules.BackpackScript) end)
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

if FFlagIWillNotYield then
	coroutine.wrap(function()
		if not VRService.VREnabled then
			VRService:GetPropertyChangedSignal("VREnabled"):Wait()
		end
		safeRequire(RobloxGui.Modules.VR.VirtualKeyboard)
		safeRequire(RobloxGui.Modules.VR.UserGui)
	end)()
else
	spawn(function()
		local function onVREnabledChanged()
			if VRService.VREnabled then
				safeRequire(RobloxGui.Modules.VR.VirtualKeyboard)
				safeRequire(RobloxGui.Modules.VR.UserGui)
			end
		end
		onVREnabledChanged()
		VRService:GetPropertyChangedSignal("VREnabled"):Connect(onVREnabledChanged)
	end)
end