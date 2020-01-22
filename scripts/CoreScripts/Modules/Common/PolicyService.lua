--[[
	Filename: PolicyService.lua
	Written by: ben
	Description: Handles all policy service calls in lua for core scripts
--]]

local PlayersService = game:GetService('Players')

local FFlagUsePolicyServiceForCoreScripts = settings():GetFFlag("UsePolicyServiceForCoreScripts2")

local isSubjectToChinaPolicies = true
local policyTable
local initialized = false
local initAsyncCalledOnce = false

local initializedEvent = Instance.new("BindableEvent")

--[[ Classes ]]--
local PolicyService = {}

--todo: remove with FFlagUsePolicyServiceForCoreScripts
function PolicyService:IsEnabled()
	return FFlagUsePolicyServiceForCoreScripts
end

function PolicyService:InitAsync()
	if initialized then return end
	if initAsyncCalledOnce then
		initializedEvent.Event:Wait()
		return
	end
	initAsyncCalledOnce = true

	local localPlayer = PlayersService.LocalPlayer
	while not localPlayer do
		PlayersService.PlayerAdded:wait()
		localPlayer = PlayersService.LocalPlayer
	end

	if self:IsEnabled() then
		pcall(function() policyTable = game:GetService("PolicyService"):GetPolicyInfoForPlayerAsync(localPlayer) end)
		if policyTable then
			isSubjectToChinaPolicies = policyTable["IsSubjectToChinaPolicies"]
		end
	end

	initialized = true
	initializedEvent:Fire()
end

function PolicyService:IsSubjectToChinaPolicies()
	if not self:IsEnabled() then
		return false
	end
	self:InitAsync()

	return isSubjectToChinaPolicies
end


return PolicyService