--!strict
-- Utility module for handling User Fast Flags
export type FlagUtilType = {
    -- Gets the user fast flag value if it's available, otherwise returns false
	getUserFlag: (string) -> boolean,
}

local FlagUtil: FlagUtilType = {} :: FlagUtilType;

function FlagUtil.getUserFlag(flagName)
    local success, result = pcall(function()
		return UserSettings():IsUserFeatureEnabled(flagName)
	end)
	return success and result
end

return FlagUtil