--[[
	Filename: PolicyService.lua
	Written by: ben
	Description: Handles all policy service calls in lua for core scripts
--]]

local PlayersService = game:GetService('Players')

local FFlagUsePolicyServiceForCoreScripts = settings():GetFFlag("UsePolicyServiceForCoreScripts")

local isSubjectToChinaPolicies = true
local policyTable
local initialized = false

--[[ Classes ]]--
local PolicyService = {}

--todo: remove with FFlagUsePolicyServiceForCoreScripts
function PolicyService:IsEnabled()
	return FFlagUsePolicyServiceForCoreScripts
end

function PolicyService:InitAsync()
	if initialized then return end
	initialized = true

	local localPlayer = PlayersService.LocalPlayer
	while not localPlayer do
		PlayersService.PlayerAdded:wait()
		localPlayer = PlayersService.LocalPlayer
	end

	if self:IsEnabled() then
		policyTable = game:GetService("PolicyService"):GetPolicyInfoForPlayerAsync(localPlayer)
		if policyTable then
			isSubjectToChinaPolicies = policyTable["IsSubjectToChinaPolicies"]
		end
	end
end
			
function PolicyService:IsSubjectToChinaPolicies()
	if not self:IsEnabled() then
		return false
	end
	self:InitAsync()

	return isSubjectToChinaPolicies
end


return PolicyService