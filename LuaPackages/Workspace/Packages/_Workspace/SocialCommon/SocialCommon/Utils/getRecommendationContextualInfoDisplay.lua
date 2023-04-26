--[[
	Contextual information (icon and localized text) for a recommendations 
	Use useRecommendationContextualInfoDisplay for new functional components,
	this file exists for legacy components that don't support hooks

	Intended to replace SocialLibraries getRecommendationDisplayContext.lua
]]
local SocialCommon = script:FindFirstAncestor("SocialCommon")
local Packages = SocialCommon.Parent

local getMutualFriendsText = require(SocialCommon.Utils.getMutualFriendsText)
local LuaSocialLibrariesDeps = require(Packages.Dev.LuaSocialLibrariesDeps)
local RoduxFriends = LuaSocialLibrariesDeps.RoduxFriends.config({ keyPath = "SocialCommon.Friends" })
local RecommendationContextType = RoduxFriends.Enums.RecommendationContextType

local UIBlox = require(Packages.UIBlox)
local Images = UIBlox.App.ImageSet.Images

type Recommendation = {
	contextType: {
		rawValue: () -> string,
	}?,
	mutualFriendsList: { [number]: any }?,
	mutualFriendsCount: number?,
	hasIncomingFriendRequest: boolean?,
	[string]: any?,
}

type RecommendationDisplayConfig = {
	recommendation: Recommendation,
	localized: { mutualFriends: string, singularMutualFriend: string, frequents: string, friendRequests: string },
}

type ContextualInfoDisplay = {
	text: string,
	icon: string?,
}

return function(config: RecommendationDisplayConfig): ContextualInfoDisplay
	local text, icon
	local recommendationContextType = config.recommendation.contextType and config.recommendation.contextType.rawValue()
	local mutualFriendsCount = config.recommendation.mutualFriendsCount or 0
	if recommendationContextType == RecommendationContextType.MutualFriends.rawValue() and mutualFriendsCount > 0 then
		text = getMutualFriendsText({
			mutualFriendsCount = mutualFriendsCount,
			localized = {
				mutualFriends = config.localized.mutualFriends,
				singularMutualFriend = config.localized.singularMutualFriend,
			},
		})
		icon = Images["icons/status/player/friend"]
	elseif recommendationContextType == RecommendationContextType.Frequents.rawValue() then
		text = config.localized.frequents
	end

	if config.recommendation.hasIncomingFriendRequest then
		text = config.localized.friendRequests
		icon = nil
	end
	return {
		text = text,
		icon = icon,
	}
end
