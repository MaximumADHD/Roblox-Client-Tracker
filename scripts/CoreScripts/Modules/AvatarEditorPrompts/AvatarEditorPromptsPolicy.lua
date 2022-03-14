--[[
	Used to access GUAC policies that are relevant to the AvatarEditorPrompts
]]

local CorePackages = game:GetService("CorePackages")
local PolicyProvider = require(CorePackages.PolicyProvider)

local implementation = PolicyProvider.GetPolicyImplementations.MemStorageService("app-policy")
local AvatarEditorPromptPolicy = PolicyProvider.withGetPolicyImplementation(implementation)

AvatarEditorPromptPolicy.Mapper = function(policy)
	return {
		getCustomCostumeNames = function()
			if policy.CustomCostumeNames ~= nil then
				return policy.CustomCostumeNames
			else
				return true
			end
		end,
	}
end

return AvatarEditorPromptPolicy
