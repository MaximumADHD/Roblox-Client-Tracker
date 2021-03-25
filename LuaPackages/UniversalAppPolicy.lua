local CorePackages = game:GetService("CorePackages")
local PolicyProvider = require(CorePackages.PolicyProvider)

-- NOTE: without src/internal/LuaApp/Modules/LuaApp/RoactAppPolicy.lua PolicyProviders logging will be disconnected.
-- TODO find a way to remove this hidden reliance or make it more explicit.

local readMemStorageForAppLaunch = PolicyProvider.GetPolicyImplementations.MemStorageService("app-policy")
local UniversalAppPolicyProvider = PolicyProvider.withGetPolicyImplementation(readMemStorageForAppLaunch)

return UniversalAppPolicyProvider
