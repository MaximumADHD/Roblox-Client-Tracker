-- Written by Kip Turner, Copyright Roblox 2015

-- Herostats Manager

local PlatformService = nil
pcall(function() PlatformService = game:GetService('PlatformService') end)

local CoreGui = Game:GetService("CoreGui")
local GuiRoot = CoreGui:FindFirstChild("RobloxGui")
local Modules = GuiRoot:FindFirstChild("Modules")
local ShellModules = Modules:FindFirstChild("Shell")


local EventHub = require(ShellModules:FindFirstChild('EventHub'))
local Http = require(ShellModules:FindFirstChild('Http'))
local UserData = require(ShellModules:FindFirstChild('UserData'))
local PlatformInterface = require(ShellModules:FindFirstChild('PlatformInterface'))
local Utility = require(ShellModules:FindFirstChild('Utility'))


local VIEW_GAMETYPE_ENUM =
{
	AppShell = 0;
	Game = 1;
}


local HeroStatsManager = {}



function HeroStatsManager:SendHeroStatsEventAsync(heroStatName, setValue)
	Utility.DebugLog("HeroStatsManager - event name:" , heroStatName , "event value:" , setValue)
	local heroStatStatus = nil
	local success, msg = pcall(function()
		-- NOTE: Yielding function
		if PlatformService and not UserSettings().GameSettings:InStudioMode() or game:GetService('UserInputService'):GetPlatform() == Enum.Platform.Windows then
			heroStatStatus = PlatformService:BeginHeroStat(heroStatName, setValue)
		end
	end)
	if not success then
		-- NOTE: very likely this function ever throws an error but returns error codes
		Utility.DebugLog("HeroStatsManager - event name:" , heroStatName , "value" , setValue , "for reason:" , msg)
	end

	Utility.DebugLog("HeroStatsManager - event name:" , heroStatName , "event status:" , heroStatStatus)
end






local function UpdateEquippedPackagesAsync()
	local myUserId = UserData:GetRbxUserId()
	local packages = myUserId and Http.GetUserOwnedPackagesAsync(myUserId)
	local data = packages and packages['IsValid'] and packages['Data']
	local items = data and data['Items']

	-- local Utility = require(ShellModules:FindFirstChild('Utility'))
	if items then
		local numberOwnedPackages = #items
		HeroStatsManager:SendHeroStatsEventAsync("AvatarsEquipped", numberOwnedPackages)
	end
end

local joinDebounce = false
local function OnJoinedGameAsync()
	if joinDebounce then return end
	joinDebounce = true
	HeroStatsManager:SendHeroStatsEventAsync("GamesCount")
	joinDebounce = false
end


EventHub:addEventListener(EventHub.Notifications["DonnedDifferentPackage"], "HeroStatsManager",
	function(packageId)
		spawn(UpdateEquippedPackagesAsync)
	end)

EventHub:addEventListener(EventHub.Notifications["AvatarEquipSuccess"], "HeroStatsManager",
	function(packageId)
		spawn(UpdateEquippedPackagesAsync)
	end)

EventHub:addEventListener(EventHub.Notifications["AuthenticationSuccess"], "HeroStatsManager",
	function()
		spawn(UpdateEquippedPackagesAsync)
	end)

if PlatformService then
	PlatformService.ViewChanged:connect(function(newView)
		if newView == VIEW_GAMETYPE_ENUM['Game'] then
			spawn(OnJoinedGameAsync)
		end
	end)
end

spawn(function()
	if UserSettings().GameSettings:InStudioMode() or game:GetService('UserInputService'):GetPlatform() == Enum.Platform.Windows then return end

	local last = nil

	while true do
		local partyMembers = PlatformInterface:GetPartyMembersAsync()
		local inParty = PlatformInterface:IsInAParty(partyMembers)

		local current = tick()
		if inParty then
			if last then
				if current - last > 60 then
					HeroStatsManager:SendHeroStatsEventAsync("PartyCount")
					last = last + 60
				end
			else
				last = current
			end
		else
			last = nil
		end

		wait(60)
	end
end)



return HeroStatsManager
