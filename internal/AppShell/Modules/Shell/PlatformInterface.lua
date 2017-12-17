-- Written by Kip Turner, Copyright Roblox 2015

local CoreGui = Game:GetService("CoreGui")
local RobloxGui = CoreGui:FindFirstChild("RobloxGui")
local Modules = RobloxGui:FindFirstChild("Modules")
local ShellModules = Modules:FindFirstChild("Shell")
local Utility = require(ShellModules:FindFirstChild('Utility'))

-- Platform Interface

local PlatformService = nil
pcall(function() PlatformService = game:GetService('PlatformService') end)


local PlatformInterface = {}


local gettingFriends = false
function PlatformInterface:GetPartyMembersAsync()
	while gettingFriends do wait() end
	gettingFriends = true

	local partyMembers;
	local success, msg = pcall(function()
		partyMembers = PlatformService:GetPlatformPartyMembers()
	end)
	if not success then
		Utility.DebugLog("HeroStatsManager - Error getting party members:" , msg)
	end

	gettingFriends = false
	return partyMembers
end



function PlatformInterface:IsInAParty(partyMembers)
	return (partyMembers and #partyMembers > 1)
end




return PlatformInterface
