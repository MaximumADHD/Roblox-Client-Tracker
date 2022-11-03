local Root = script.Parent
local Packages = Root.Parent
local PolicyProvider = require(Packages.PolicyProvider)

local UniversalAppGetPolicy = require(script.Parent.UniversalAppGetPolicy)

local UniversalAppPolicyProvider = PolicyProvider.withGetPolicyImplementation(UniversalAppGetPolicy)

return UniversalAppPolicyProvider
