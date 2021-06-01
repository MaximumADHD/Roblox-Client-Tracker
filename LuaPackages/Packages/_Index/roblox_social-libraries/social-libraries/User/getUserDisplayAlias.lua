local SocialLibraries = script:FindFirstAncestor("social-libraries")
local formatAlias = require(SocialLibraries.Utils.formatAlias)

return function(state, user)
	local aliasesReducer = state.ChatAppReducer.Aliases
	if aliasesReducer then
		local alias = state.ChatAppReducer.Aliases.byUserId[user.id]
		if alias then
			return formatAlias(alias)
		end
	end

	return nil
end
