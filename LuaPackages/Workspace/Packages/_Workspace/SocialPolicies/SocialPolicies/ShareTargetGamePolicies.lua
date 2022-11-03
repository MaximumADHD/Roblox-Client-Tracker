local function ShareTargetGamePolicies(policy)
	return {
		shouldShowCreatorName = function()
			local shouldShowCreatorName = policy.ShowShareTargetGameCreator
			if shouldShowCreatorName ~= nil then
				return shouldShowCreatorName
			end

			return false
		end,
	}
end

export type Type = typeof(ShareTargetGamePolicies(...))

return ShareTargetGamePolicies
