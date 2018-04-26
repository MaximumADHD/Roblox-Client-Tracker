local Modules = game:GetService("CoreGui").RobloxGui.Modules
local ShellModules = Modules:FindFirstChild("Shell")
local MakeSafeAsyncRodux = require(ShellModules:FindFirstChild('SafeAsyncRodux'))
local PlatformService = nil
pcall(function() PlatformService = game:GetService('PlatformService') end)
local FetchPrivilegeSettings = require(ShellModules.Actions.FetchPrivilegeSettings)
local SetPrivilegeSettings = require(ShellModules.Actions.SetPrivilegeSettings)

local Privileges =
{
	USER_CREATED_CONTENT = 247,
	MULTIPLAYER_SESSIONS = 254
}

local GetCrossplayEnabledStatusAsync = MakeSafeAsyncRodux({
	asyncFunc = function(store)
		local newPrivilegeSettings = {}

		local success = pcall(function()
			local multiplayerSettings = PlatformService:BeginCheckXboxPrivilege(Privileges.MULTIPLAYER_SESSIONS)
			local sharedContentSettings = PlatformService:BeginCheckXboxPrivilege(Privileges.USER_CREATED_CONTENT)
			newPrivilegeSettings.Multiplayer =
			{
				hasPrivilege = multiplayerSettings.CanJoinGame,
				status = multiplayerSettings.PrivilegeCheckResult,
			}
			newPrivilegeSettings.SharedContent =
			{
				hasPrivilege = sharedContentSettings.CanJoinGame,
				status = sharedContentSettings.PrivilegeCheckResult,
			}
		end)
		if not success then
			newPrivilegeSettings.Multiplayer = { hasPrivilege = false, status = "Error"}
			newPrivilegeSettings.SharedContent = { hasPrivilege = false, status = "Error"}
		end
		return newPrivilegeSettings
	end,
	callback = function(store, newPrivilegeSettings)
        store:Dispatch(SetPrivilegeSettings(newPrivilegeSettings))
	end,
	userRelated = true
})


return function()
    return function(store)
        --Note: we don't check isRequesting state for privilege settings update,
        --as we always want to fetch the latest privilege settings
        store:Dispatch(FetchPrivilegeSettings())
        GetCrossplayEnabledStatusAsync(store)
    end
end