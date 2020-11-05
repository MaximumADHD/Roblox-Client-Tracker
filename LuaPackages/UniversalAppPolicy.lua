local Modules = game:GetService("CoreGui").RobloxGui.Modules
local CorePackages = game:GetService("CorePackages")
local PolicyProvider = require(CorePackages.PolicyProvider)

local Logger = require(Modules.LuaApp.Logger)
PolicyProvider.Logger:setParent(Logger)

local readMemStorageForAppLaunch = PolicyProvider.GetPolicyImplementations.MemStorageService("app-policy")
local UniversalAppPolicyProvider = PolicyProvider.withGetPolicyImplementation(readMemStorageForAppLaunch)

return UniversalAppPolicyProvider
