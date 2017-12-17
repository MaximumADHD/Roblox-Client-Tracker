--[[
			// UserData.lua
			// API for all user related data

			// TODO:
				Eventually all of this will move into Rodux
]]
local IsUsingLocalPlayerForUserInfo = settings():GetFFlag("XboxBetterInitializeLocalPlayer")

local CoreGui = game:GetService("CoreGui")
local GuiRoot = CoreGui:FindFirstChild("RobloxGui")
local Modules = GuiRoot:FindFirstChild("Modules")
local ShellModules = Modules:FindFirstChild("Shell")
local Players = game:GetService('Players')
local HttpService = game:GetService('HttpService')
local PlatformService = nil
pcall(function() PlatformService = game:GetService('PlatformService') end)
local ThirdPartyUserService = nil
pcall(function() ThirdPartyUserService = game:GetService("ThirdPartyUserService") end)

local AccountManager = require(ShellModules:FindFirstChild('AccountManager'))
local Http = require(ShellModules:FindFirstChild('Http'))
local Utility = require(ShellModules:FindFirstChild('Utility'))

local BaseUrl = Http.BaseUrl

local UserData = {}

local currentUserData = nil

local CONSTANT_RETRY_TIME = 30

-- Account Age Settings for family safety feature
local AgeBracket =
{
	Over13 = 0;
	Under13 = 1;
}

UserData.AccountAgeResult =
{
	Over13 = 0;
	Under13 = 1;
	Unknown = 2;
}

local function getLocalPlayer()
	local plr = Players.LocalPlayer
	if not plr then
		while not plr do
			wait()
			plr = Players.LocalPlayer
		end
	end
	return plr
end

local function setVoteCountAsync()
	local voteResult = Http.GetVoteCountAsync()
	currentUserData["VoteCount"] = voteResult and voteResult['VoteCount'] or 0
end

local function verifyHasLinkedAccountAsync()
	local result = AccountManager:HasLinkedAccountAsync()

	while result ~= AccountManager.AuthResults.Success and result ~= AccountManager.AuthResults.AccountUnlinked do
		result = AccountManager:HasLinkedAccountAsync()
		wait(CONSTANT_RETRY_TIME)
	end

	currentUserData["LinkedAccountResult"] = result
end

local function verifyHasRobloxCredentialsAsync()
	local result = AccountManager:HasRobloxCredentialsAsync()

	while result ~= AccountManager.AuthResults.Success and result ~= AccountManager.AuthResults.UsernamePasswordNotSet do
		result = AccountManager:HasRobloxCredentialsAsync()
		wait(CONSTANT_RETRY_TIME)
	end

	currentUserData["RobloxCredentialsResult"] = result
end

function UserData:Initialize()
	if currentUserData then
		Utility.DebugLog("Trying to initialize UserData when we already have valid data.")
	end

	currentUserData = {}

	if IsUsingLocalPlayerForUserInfo then
		local localplayer = getLocalPlayer()
		currentUserData["RobloxName"] = localplayer.Name
		currentUserData["RbxUid"] = localplayer.UserId

		if UserSettings().GameSettings:InStudioMode() then
			currentUserData["Gamertag"] = "InStudioNoGamertag"
		else
			if ThirdPartyUserService then
				currentUserData["Gamertag"] = ThirdPartyUserService:GetUserDisplayName()
			end

			spawn(setVoteCountAsync)
			-- TODO: When all accounts that are linked but have no credentials are cleaned up, we can remove these checks
			spawn(verifyHasLinkedAccountAsync)
			spawn(verifyHasRobloxCredentialsAsync)
		end
	else
		if UserSettings().GameSettings:InStudioMode() or game:GetService('UserInputService'):GetPlatform() == Enum.Platform.Windows then
			local localPlayer = getLocalPlayer()
			currentUserData["Gamertag"] = "InStudioNoGamertag"
			currentUserData["RbxUid"] = localPlayer.userId
			currentUserData["RobloxName"] = localPlayer.Name
			spawn(function()
				setVoteCountAsync()
			end)
		elseif PlatformService then
			local userInfo = PlatformService:GetPlatformUserInfo()
			if userInfo then
				currentUserData["Gamertag"] = userInfo["Gamertag"]
				currentUserData["RbxUid"] = userInfo["RobloxUserId"]
			else
				currentUserData["Gamertag"] = Players.LocalPlayer.Name
			end
	
			spawn(setVoteCountAsync)
			-- TODO: When all accounts that are linked but have no credentials are cleaned up, we can remove these checks
			spawn(verifyHasLinkedAccountAsync)
			spawn(verifyHasRobloxCredentialsAsync)
			spawn(function()
				currentUserData["RobloxName"] = Players:GetNameFromUserIdAsync(currentUserData["RbxUid"])
			end)
		end
	end
end

function UserData:GetRbxUserId()
	if not currentUserData then
		Utility.DebugLog("Error: UserData:GetRbxUserId() - UserData has not been initialized. Don't do that!")
		return nil
	end
	return currentUserData["RbxUid"]
end

function UserData:GetDisplayName()
	if not currentUserData then
		Utility.DebugLog("Error: UserData:GetDisplayName() - UserData has not been initialized. Don't do that!")
		return nil
	end
	return currentUserData["Gamertag"]
end

function UserData:GetRobloxName()
	if not currentUserData then
		Utility.DebugLog("Error: UserData:GetRobloxName() - UserData has not been initialized. Don't do that!")
		return nil
	end
	return currentUserData["RobloxName"]
end

function UserData:GetAvatarUrl(width, height)
	-- TODO: Update when Thumbnail manager gets fixed
	if not currentUserData then
		Utility.DebugLog("Error: UserData:GetAvatarUrl() - UserData has not been initialized. Don't do that!")
		return nil
	end
	return Http.AssetGameBaseUrl..'Thumbs/Avatar.ashx?userid='..tostring(currentUserData.RbxUid)..
			'&width='..tostring(width)..'&height='..tostring(height)
end

function UserData:GetVoteCount()
	if not currentUserData then
		Utility.DebugLog("Error: UserData:GetVoteCount() - UserData has not been initialized. Don't do that!")
		return nil
	end
	return currentUserData["VoteCount"]
end

function UserData:IncrementVote()
	currentUserData["VoteCount"] = (currentUserData["VoteCount"] or 0) + 1
end

function UserData:DecrementVote()
	currentUserData["VoteCount"] = math.max((currentUserData["VoteCount"] or 0) - 1, 0)
end

-- returns true, false or nil in the case of error
function UserData:HasLinkedAccount()
	local result = currentUserData["LinkedAccountResult"]
	if result == AccountManager.AuthResults.Success then
		return true
	elseif result == AccountManager.AuthResults.AccountUnlinked then
		return false
	else
		return nil
	end
end

-- returns true, false or nil in the case of error
function UserData:HasRobloxCredentials()
	local result = currentUserData["RobloxCredentialsResult"]
	if result == AccountManager.AuthResults.Success then
		return true
	elseif result == AccountManager.AuthResults.UsernamePasswordNotSet then
		return false
	else
		return nil
	end
end

function UserData:SetHasRobloxCredentials(value)
	currentUserData["RobloxCredentialsResult"] = value
end

function UserData:Reset()
	currentUserData = nil
end

--[[ This should no longer be used ]]--
function UserData.GetLocalUserIdAsync()
	return UserData.GetLocalPlayerAsync().userId
end

function UserData.GetLocalPlayerAsync()
	local localPlayer = Players.LocalPlayer
	while not localPlayer do
		wait()
		localPlayer = Players.LocalPlayer
	end
	return localPlayer
end

function UserData.GetPlatformUserBalanceAsync()
	local result = Http.GetPlatformUserBalanceAsync()
	if not result then
		-- TODO: Error Code
		return nil
	end
	--

	return result["Robux"]
end

function UserData.GetTotalUserBalanceAsync()
	local result = Http.GetTotalUserBalanceAsync()
	if not result then
		return nil
	end

	return result["robux"]
end

return UserData
