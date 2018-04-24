--[[
			// AccountManager.lua

			// Handles all account related functions
]]
local IsNewUsernameCheckEnabled = settings():GetFFlag("XboxUseNewValidUsernameCheck2")

local CoreGui = game:GetService("CoreGui")
local GuiRoot = CoreGui:FindFirstChild("RobloxGui")
local Modules = GuiRoot:FindFirstChild("Modules")
local ShellModules = Modules:FindFirstChild("Shell")

local PlatformService = nil
pcall(function() PlatformService = game:GetService('PlatformService') end)
local UserInputService = game:GetService('UserInputService')
local AnalyticsService = game:GetService("AnalyticsService")

local Http = require(ShellModules:FindFirstChild('Http'))

local Utility = require(ShellModules:FindFirstChild('Utility'))

local AccountManager = {}

AccountManager.AuthResults = {
	Error = -1;
	Success = 0;
	InProgress = 1;
	AccountUnlinked = 2;
	MissingGamePad = 3;
	NoUserDetected = 4;
	HttpErrorDetected = 5;
	SignUpDisabled = 6;
	Flooded = 7;
	LeaseLocked = 8;
	AccountLinkingDisabled = 9;
	InvalidRobloxUser = 10;
	RobloxUserAlreadyLinked = 11;
	XboxUserAlreadyLinked = 12;
	IllgealChildAccountLinking = 13;
	InvalidPassword = 14;
	UsernamePasswordNotSet = 15;
	UsernameAlreadyTaken = 16;
}

AccountManager.InvalidUsernameReasons = {
	Valid = "Valid";
	InvalidUsername = "Invalid Username";
	AlreadyTaken = "Already Taken";
	InvalidCharactersUsed = "Invalid Characters Used";
	UsernameCannotContainSpaces = "Username Cannot Contain Spaces";
}

--[[ Authentication ]]--
local function authenticateStudio()
	return AccountManager.AuthResults.Success
end

--[[ Signup/Login ]]--
function AccountManager:LoginAsync()
	if UserSettings().GameSettings:InStudioMode() or UserInputService:GetPlatform() == Enum.Platform.Windows then
		return authenticateStudio()
	end

	local success, result = pcall(function()
		return PlatformService:BeginPlatformLogin()
	end)
	-- catch pcall failure, something went wrong with API call
	if not success then
		return self.AuthResults.Error
	end

	return result
end

function AccountManager:SignupAsync(username, password)
	local success, result = pcall(function()
		return PlatformService:BeginPlatformSignup(username, password)
	end)

	-- catch pcall failure, something went wrong with the API call
	if not success then
		result = self.AuthResults.Error
	end

	if result == self.AuthResults.Success then
		AnalyticsService:ReportCounter("Xbox_SignUp_New_Account_Success")
		AnalyticsService:ReportCounter("Xbox_SignUp_Success")
	end

	return result
end

--[[ Account Linking ]]--
-- called at sign in
function AccountManager:LinkAccountAsync(accountName, password)
	local success, result = pcall(function()
		-- PlatformService may not exist on studio platform
		return PlatformService:BeginAccountLink(accountName, password)
	end)
	if not success then
		Utility.DebugLog("AccountManager:LinkAccountAsync() failed because", result)
		result = AccountManager.AuthResults.Error
	end

	if result == self.AuthResults.Success then
		AnalyticsService:ReportCounter("Xbox_SignUp_Account_Link_Success")
		AnalyticsService:ReportCounter("Xbox_SignUp_Success")
	end

	return result
end

-- used when setting credentials for a generated account
function AccountManager:SetRobloxCredentialsAsync(accountName, password)
	local success, result = pcall(function()
		-- PlatformService may not exist on studio platform
		return PlatformService:BeginSetRobloxCredentials(accountName, password)
	end)
	if not success then
		Utility.DebugLog("AccountManager:SetRobloxCredentialsAsync() failed because", result)
		result = AccountManager.AuthResults.Error
	end

	return result
end

-- called when user has roblox credentials
function AccountManager:UnlinkAccountAsync()
	local success, result = pcall(function()
		-- PlatformService may not exist on studio platform
		return PlatformService:BeginUnlinkAccount()
	end)
	if not success then
		Utility.DebugLog("AccountManager:UnlinkAccountAsync() failed because", result)
		result = AccountManager.AuthResults.Error
	end

	return result
end

function AccountManager:HasLinkedAccountAsync()
	if UserSettings().GameSettings:InStudioMode() or UserInputService:GetPlatform() == Enum.Platform.Windows then
		return AccountManager.AuthResults.Success
	end

	local success, result = pcall(function()
		-- PlatformService may not exist on studio platform
		return PlatformService:BeginHasLinkedAccount()
	end)
	if not success then
		Utility.DebugLog("AccountManager:HasLinkedAccountAsync() failed because", result)
		result = AccountManager.AuthResults.Error
	end

	return result
end

function AccountManager:HasRobloxCredentialsAsync()
	if UserSettings().GameSettings:InStudioMode() or UserInputService:GetPlatform() == Enum.Platform.Windows then
		return AccountManager.AuthResults.Success
	end

	local success, result = pcall(function()
		-- PlatformService may not exist on studio platform
		return PlatformService:BeginHasRobloxCredentials()
	end)
	if not success then
		Utility.DebugLog("AccountManager:HasRobloxCredentialsAsync() failed because", result)
		result = AccountManager.AuthResults.Error
	end

	return result
end

function AccountManager:IsValidUsernameAsync(username)
	local result = Http.IsValidUsername(username)
	if not result then
		-- return false
		return nil
	end

	-- there are two endpoints being used based on flag, they return different casing, check for both
	-- old returns IsValid and ErrorMessage
	-- new returns isValid and errorMessage
	if IsNewUsernameCheckEnabled then
		return result["isValid"], result["errorMessage"]
	else
		return result["IsValid"], result["ErrorMessage"]
	end

	return nil
end

function AccountManager:IsValidPasswordAsync(username, password)
	local result = Http.IsValidPassword(username, password)
	if not result then
		-- return false
		return nil
	end

	return result["IsValid"], result["ErrorMessage"]
end

return AccountManager
