--!strict
--[[
	ServerAuthority - This ModuleScript exposes ServerAuthority related concepts
	and hooks into character movement via ControlModule.
]]--

local ServerAuthority = {}
ServerAuthority.__index = ServerAuthority 

local ControlModule = require(script.Parent:WaitForChild("ControlModule"))
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local CommonUtils = require(script.Parent:WaitForChild("CommonUtils"))
local FlagUtil = CommonUtils.get("FlagUtil")
local PlayerModuleEventBus = CommonUtils.get("PlayerModuleEventBus")
local FFlagUserDisableForceLocalHumanoidPrediction = FlagUtil.getUserFlag("UserDisableForceLocalHumanoidPrediction")

local CONNECTIONS = {
	SERVER_AUTHORITY_CHANGED = "SERVER_AUTHORITY_CHANGED",
	INPUTS_SETUP = "INPUTS_SETUP",
}

local isServerAuthority = false

function ServerAuthority.PredictLocalHumanoid()
	local predictHumanoidRootPart = function(character:Model)
		local rootPart = character:WaitForChild("HumanoidRootPart")
		RunService:SetPredictionMode(rootPart, Enum.PredictionMode.On)
	end
	if Players.LocalPlayer.Character then
		predictHumanoidRootPart(Players.LocalPlayer.Character)
	else
		Players.LocalPlayer.CharacterAdded:Connect(predictHumanoidRootPart)
	end
end

function ServerAuthority.initialize(data)
	data.isServerAuthority = isServerAuthority
end

function ServerAuthority.Initialize()
	if not FFlagUserDisableForceLocalHumanoidPrediction then
		if RunService:IsClient() then
			ServerAuthority.PredictLocalHumanoid()
		end
	end
	if not PlayerModuleEventBus.data.inputsSetupComplete then
		if RunService:IsServer() then 
			PlayerModuleEventBus:subscribe(CONNECTIONS.INPUTS_SETUP):Wait()
		end
	end
	ControlModule:InitializeServerAuthority()
	
	isServerAuthority = true
end

return ServerAuthority
