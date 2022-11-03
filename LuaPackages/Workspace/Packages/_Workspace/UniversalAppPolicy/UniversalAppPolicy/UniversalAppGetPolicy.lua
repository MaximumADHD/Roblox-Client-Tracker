local Root = script.Parent
local Packages = Root.Parent
local PolicyProvider = require(Packages.PolicyProvider)

local readMemStorageForAppLaunch = PolicyProvider.GetPolicyImplementations.MemStorageService("app-policy")
return readMemStorageForAppLaunch
