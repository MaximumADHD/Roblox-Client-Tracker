--[[
	Filename: PolicyService.lua
	Written by: ben
	Description: Handles all policy service calls in lua for core scripts
--]]

local PlayersService = game:GetService('Players')

local isSubjectToChinaPolicies = true
local policyTable
local initialized = false
local initAsyncCalledOnce = false

local initializedEvent = Instance.new("BindableEvent")

--[[ Classes ]]--
local PolicyService = {}

function PolicyService:InitAsync()
	if _G.__TESTEZ_RUNNING_TEST__ then
		-- Return here in the case of unit tests
		return
	end

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

	pcall(function() policyTable = game:GetService("PolicyService"):GetPolicyInfoForPlayerAsync(localPlayer) end)
	if policyTable then
		isSubjectToChinaPolicies = policyTable["IsSubjectToChinaPolicies"]
	end

	initialized = true
	initializedEvent:Fire()
end

function PolicyService:IsSubjectToChinaPolicies()
	self:InitAsync()

	return isSubjectToChinaPolicies
end


return PolicyService