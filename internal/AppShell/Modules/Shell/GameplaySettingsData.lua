local CoreGui = game:GetService("CoreGui")
local GuiRoot = CoreGui:FindFirstChild("RobloxGui")
local Modules = GuiRoot:FindFirstChild("Modules")
local ShellModules = Modules:FindFirstChild("Shell")
local Utility = require(ShellModules:FindFirstChild("Utility"))
local EventHub = require(ShellModules:FindFirstChild('EventHub'))
local MakeSafeAsync = require(ShellModules:FindFirstChild('SafeAsync'))

local Http = require(ShellModules:FindFirstChild("Http"))
local ThirdPartyUserService = nil
pcall(function()ThirdPartyUserService = game:GetService('ThirdPartyUserService') end)
local PlatformService = nil
pcall(function() PlatformService = game:GetService('PlatformService') end)

local GameplaySettingsData = {}
local CrossplayEnabled = nil
local PrivilegeSettings = nil
local UserChangedCount = 0
local Privileges =
{
	USER_CREATED_CONTENT = 247,
	MULTIPLAYER_SESSIONS = 254
}
local EnableCPPSettingFailure = Utility.IsFastFlagEnabled("XboxEnableCPPSettingFailure")

--CPP Settings
local function GetCrossplayEnabledStatusAsync()
	local startCount = UserChangedCount
	local waitDuration = 2
	while startCount == UserChangedCount do
		local jsonobject = Http.GetCrossplayEnabledStatusAsync()

		if startCount == UserChangedCount then
			if jsonobject ~= nil then
				CrossplayEnabled = jsonobject.isEnabled
				break
			else
				wait(waitDuration)
				waitDuration = waitDuration * 2
			end
		end
	end
end

function GameplaySettingsData.GetCrossplayEnabledStatusAsync(forceUpdate)
	local startCount = UserChangedCount
	if forceUpdate then
		GetCrossplayEnabledStatusAsync()
	else
		while CrossplayEnabled == nil and startCount == UserChangedCount do
			wait()
		end
	end
	if startCount == UserChangedCount then
		return CrossplayEnabled
	end
end

GameplaySettingsData.SetCrossplayEnabledStatusAsync = function(val)
	Http.PostCrossplayStatusAsync(val)
	CrossplayEnabled = val
end

local SetCrossplayEnabledStatusAsync = nil
if EnableCPPSettingFailure then
	GameplaySettingsData.SetCrossplayEnabledStatusAsync = function(val)
		if SetCrossplayEnabledStatusAsync then
			SetCrossplayEnabledStatusAsync(val)
		end
	end

	GameplaySettingsData.UpdateSetCrossplayEnabledStatusAsyncFunc = function(callback)
		SetCrossplayEnabledStatusAsync = MakeSafeAsync({
			asyncFunc = function(val)
				if Http.PostCrossplayStatusAsync(val) then
					CrossplayEnabled = val
					return val
				end
			end,
			callback = callback,
			userRelated = true
		})
	end
end

--PrivilegeSettings
local OnGetPrivilegeSettingsBegin = Utility.Signal()
local OnGetPrivilegeSettingsEnd = Utility.Signal()
GameplaySettingsData.OnGetPrivilegeSettingsBegin = OnGetPrivilegeSettingsBegin
GameplaySettingsData.OnGetPrivilegeSettingsEnd = OnGetPrivilegeSettingsEnd
GameplaySettingsData.GetPrivilegeSettingsAsync = MakeSafeAsync({
	asyncFunc = function()
		OnGetPrivilegeSettingsBegin:fire()
		local newPrivilegeSettings = {}

		local success = pcall(function()
			newPrivilegeSettings.Multiplayer = PlatformService:BeginCheckXboxPrivilege(Privileges.MULTIPLAYER_SESSIONS)
			newPrivilegeSettings.SharedContent = PlatformService:BeginCheckXboxPrivilege(Privileges.USER_CREATED_CONTENT)
		end)
		if not success then
			newPrivilegeSettings.Multiplayer = { CanJoinGame = false, LocalizedStringKey = "ErrorWord" , PrivilegeCheckResult = "Error", Success = false}
			newPrivilegeSettings.SharedContent = { CanJoinGame = false, LocalizedStringKey = "ErrorWord"  , PrivilegeCheckResult = "Error", Success = false}
		end
		return newPrivilegeSettings
	end,
	callback = function(newPrivilegeSettings)
		PrivilegeSettings = newPrivilegeSettings
		OnGetPrivilegeSettingsEnd:fire(PrivilegeSettings)
	end,
	userRelated = true
})

function GameplaySettingsData.GetPrivilegeSettings()
	return PrivilegeSettings
end

local function OnUserAccountChanged()
	CrossplayEnabled = nil
	PrivilegeSettings = nil
	if EnableCPPSettingFailure then
		SetCrossplayEnabledStatusAsync = nil
	end

	--Get CPP Settings
	spawn(GetCrossplayEnabledStatusAsync)

	--Get Privilege Settings
	spawn(function()
		GameplaySettingsData.GetPrivilegeSettingsAsync()
	end)
end

EventHub:addEventListener(EventHub.Notifications["AuthenticationSuccess"], "GameplaySettingsData", OnUserAccountChanged)

local function OnUserSignOut()
	UserChangedCount = UserChangedCount + 1
	CrossplayEnabled = nil
	PrivilegeSettings = nil
	OnGetPrivilegeSettingsEnd:fire()
	if EnableCPPSettingFailure and SetCrossplayEnabledStatusAsync then
		SetCrossplayEnabledStatusAsync:Cancel()
		SetCrossplayEnabledStatusAsync = nil
	end
end

if ThirdPartyUserService then
	ThirdPartyUserService.ActiveUserSignedOut:connect(OnUserSignOut)
end

if PlatformService then
	PlatformService.OnLeaveConstrained:connect(
	function()
		GameplaySettingsData.GetPrivilegeSettingsAsync()
	end)
end

return GameplaySettingsData
