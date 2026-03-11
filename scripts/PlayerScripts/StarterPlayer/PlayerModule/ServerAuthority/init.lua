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
local FFlagUserDisableForceLocalHumanoidPrediction = FlagUtil.getUserFlag("UserDisableForceLocalHumanoidPrediction")

function ServerAuthority.new()
	local self = setmetatable({}, ServerAuthority)
	return self
end

function ServerAuthority:PredictLocalHumanoid()
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

function ServerAuthority:Initialize()
	if not FFlagUserDisableForceLocalHumanoidPrediction then
		if RunService:IsClient() then
			self:PredictLocalHumanoid()
		end
	end
	ControlModule:InitializeServerAuthority()
end

return ServerAuthority.new()
