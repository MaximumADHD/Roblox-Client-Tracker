local function AvatarPolicies(policy)
	return {
		getAvatarHeaderIcon = function()
			return policy.AvatarHeaderIcon or "LuaApp/icons/ic-back"
		end,
		getAvatarEditorShowBuyRobuxOnTopBar = function()
			return policy.AvatarEditorShowBuyRobuxOnTopBar or false
		end,
		getCustomCostumeNames = function()
			if policy.CustomCostumeNames ~= nil then
				return policy.CustomCostumeNames
			else
				return true
			end
		end,
	}
end

export type Type = typeof(AvatarPolicies(...))

return AvatarPolicies
