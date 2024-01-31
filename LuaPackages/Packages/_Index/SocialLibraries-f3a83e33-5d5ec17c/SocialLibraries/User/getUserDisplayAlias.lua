local SocialLibraries = script:FindFirstAncestor("SocialLibraries")
local formatAlias = require(SocialLibraries.Utils.formatAlias)
local getFFlagDeprecateChatAppReducerAliases = require(SocialLibraries.Flags.getFFlagDeprecateChatAppReducerAliases)

return function(state, user)
	assert(not getFFlagDeprecateChatAppReducerAliases(), "getUserDisplayAlias in SocialLibraries is deprecated")
	local aliasesReducer = state.ChatAppReducer.Aliases
	if aliasesReducer then
		local alias = state.ChatAppReducer.Aliases.byUserId[user.id]
		if alias then
			return formatAlias(alias)
		end
	end

	return nil
end
