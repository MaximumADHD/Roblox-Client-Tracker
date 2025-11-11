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

function ServerAuthority.new()
	local self = setmetatable({}, ServerAuthority)
	return self
end

function ServerAuthority:IsServerAuthorityEnabled():boolean
	local success, result = pcall(function()
		return workspace.AuthorityMode == Enum.AuthorityMode.Server
	end)
	return success and result
end

function ServerAuthority:PredictLocalHumanoid()
	local predictHumanoidRootPart = function(character:Model)
		local rootPart = character:WaitForChild("HumanoidRootPart")
		rootPart:SetPredictionMode(Enum.PredictionMode.On)
	end
	if Players.LocalPlayer.Character then
		predictHumanoidRootPart(Players.LocalPlayer.Character)
	else
		Players.LocalPlayer.CharacterAdded:Connect(predictHumanoidRootPart)
	end
end

function ServerAuthority:Initialize()
	if not self:IsServerAuthorityEnabled() then
		return
	end
	
	if RunService:IsClient() then
		self:PredictLocalHumanoid()
	end
	ControlModule:InitializeServerAuthority()
end

return ServerAuthority.new()
