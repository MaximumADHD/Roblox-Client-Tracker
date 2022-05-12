local CorePackages = game:GetService("CorePackages")
local PolicyProvider = require(CorePackages.PolicyProvider)

local readMemStorageForAppLaunch = PolicyProvider.GetPolicyImplementations.MemStorageService("app-policy")
return readMemStorageForAppLaunch
