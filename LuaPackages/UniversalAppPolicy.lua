local CorePackages = game:GetService("CorePackages")
local PolicyProvider = require(CorePackages.PolicyProvider)
local GetFFlagMoveLoggerToRoactAppPolicy = require(CorePackages.AppTempCommon.LuaApp.Flags.GetFFlagMoveLoggerToRoactAppPolicy)

-- NOTE: without src/internal/LuaApp/Modules/LuaApp/RoactAppPolicy.lua PolicyProviders logging will be disconnected.
-- TODO find a way to remove this hidden reliance or make it more explicit.

if not GetFFlagMoveLoggerToRoactAppPolicy() then
	local Modules = game:GetService("CoreGui").RobloxGui.Modules

	local Logger = require(Modules.LuaApp.Logger)

	PolicyProvider.Logger:setParent(Logger)
end

local readMemStorageForAppLaunch = PolicyProvider.GetPolicyImplementations.MemStorageService("app-policy")
local UniversalAppPolicyProvider = PolicyProvider.withGetPolicyImplementation(readMemStorageForAppLaunch)

return UniversalAppPolicyProvider
