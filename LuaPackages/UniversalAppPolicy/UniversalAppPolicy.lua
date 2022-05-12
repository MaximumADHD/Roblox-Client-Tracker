local CorePackages = game:GetService("CorePackages")
local PolicyProvider = require(CorePackages.PolicyProvider)

local UniversalAppGetPolicy = require(script.Parent.UniversalAppGetPolicy)

-- NOTE: without src/internal/LuaApp/Modules/LuaApp/RoactAppPolicy.lua PolicyProviders logging will be disconnected.
-- TODO find a way to remove this hidden reliance or make it more explicit.

local UniversalAppPolicyProvider = PolicyProvider.withGetPolicyImplementation(UniversalAppGetPolicy)

return UniversalAppPolicyProvider
