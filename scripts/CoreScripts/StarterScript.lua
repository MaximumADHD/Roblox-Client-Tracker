-- Creates all neccessary scripts for the gui on initial load, everything except build tools
-- Created by Ben T. 10/29/10
-- Please note that these are loaded in a specific order to diminish errors/perceived load time by user

local scriptContext = game:GetService("ScriptContext")
local touchEnabled = game:GetService("UserInputService").TouchEnabled

local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")

local soundFolder = Instance.new("Folder")
soundFolder.Name = "Sounds"
soundFolder.Parent = RobloxGui

-- This can be useful in cases where a flag configuration issue causes requiring a CoreScript to fail
local function safeRequire(moduleScript)
	local moduleReturnValue = nil
	local success, err = pcall(function() moduleReturnValue = require(moduleScript) end)
	if not success then
		warn("Failure to Start CoreScript module" ..moduleScript.Name.. ".\n" ..err)
	end
	return moduleReturnValue
end

-- TopBar
scriptContext:AddCoreScriptLocal("CoreScripts/Topbar", RobloxGui)

-- MainBotChatScript (the Lua part of Dialogs)
scriptContext:AddCoreScriptLocal("CoreScripts/MainBotChatScript2", RobloxGui)

-- In-game notifications script
scriptContext:AddCoreScriptLocal("CoreScripts/NotificationScript2", RobloxGui)

-- Performance Stats Management
scriptContext:AddCoreScriptLocal("CoreScripts/PerformanceStatsManagerScript",
  RobloxGui)

-- Chat script
spawn(function() safeRequire(RobloxGui.Modules.ChatSelector) end)
spawn(function() safeRequire(RobloxGui.Modules.PlayerlistModule) end)

-- Purchase Prompt Script (run both versions, they will check the relevant flag)
scriptContext:AddCoreScriptLocal("CoreScripts/PurchasePromptScript2", RobloxGui)
scriptContext:AddCoreScriptLocal("CoreScripts/PurchasePromptScript3", RobloxGui)

-- Prompt Block Player Script
scriptContext:AddCoreScriptLocal("CoreScripts/BlockPlayerPrompt", RobloxGui)
scriptContext:AddCoreScriptLocal("CoreScripts/FriendPlayerPrompt", RobloxGui)

-- Backpack!
spawn(function() safeRequire(RobloxGui.Modules.BackpackScript) end)

scriptContext:AddCoreScriptLocal("CoreScripts/VehicleHud", RobloxGui)

scriptContext:AddCoreScriptLocal("CoreScripts/GamepadMenu", RobloxGui)

if touchEnabled then -- touch devices don't use same control frame
	-- only used for touch device button generation
	scriptContext:AddCoreScriptLocal("CoreScripts/ContextActionTouch", RobloxGui)

	RobloxGui:WaitForChild("ControlFrame")
	RobloxGui.ControlFrame:WaitForChild("BottomLeftControl")
	RobloxGui.ControlFrame.BottomLeftControl.Visible = false
end

do
	local UserInputService = game:GetService('UserInputService')
	local function tryRequireVRKeyboard()
		if UserInputService.VREnabled then
			return safeRequire(RobloxGui.Modules.VR.VirtualKeyboard)
		end
		return nil
	end
	if not tryRequireVRKeyboard() then
		UserInputService.Changed:connect(function(prop)
			if prop == "VREnabled" then
				tryRequireVRKeyboard()
			end
		end)
	end
end

-- Boot up the VR App Shell
if UserSettings().GameSettings:InStudioMode() then
	local UserInputService = game:GetService('UserInputService')
	local function onVREnabled(prop)
		if prop == "VREnabled" then
			if UserInputService.VREnabled then
				local shellInVRSuccess, shellInVRFlagValue = pcall(function() return settings():GetFFlag("EnabledAppShell3D") end)
				local shellInVR = (shellInVRSuccess and shellInVRFlagValue == true)
				local modulesFolder = RobloxGui.Modules
				local appHomeModule = modulesFolder:FindFirstChild('Shell') and modulesFolder:FindFirstChild('Shell'):FindFirstChild('AppHome')
				if shellInVR and appHomeModule then
					safeRequire(appHomeModule)
				end
			end
		end
	end

	spawn(function()
		if UserInputService.VREnabled then
			onVREnabled("VREnabled")
		end
		UserInputService.Changed:connect(onVREnabled)
	end)
end
