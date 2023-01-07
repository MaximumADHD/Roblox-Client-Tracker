local FriendsCarousel = script.Parent.Parent.Parent
local ModelTypes = require(FriendsCarousel.Common.ModelTypes)
local dependencies = require(FriendsCarousel.dependencies)
local SocialLibraries = dependencies.SocialLibraries
local getDeepValue = SocialLibraries.Dictionary.getDeepValue

return function(state, keyPath: string, props: any?)
	return function(userId: string): ModelTypes.User?
		local user = getDeepValue(state, string.format("%s.Users.byUserId.%s", keyPath, userId))

		if not user then
			return nil
		end

		return user
	end
end
