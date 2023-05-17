--[[
	Type of usertiles rendered in ShowMoreWrappers in friends-landing
]]
export type ShowMoreSectionType = "Friends" | "FriendRequests" | "FriendRecommendations"

local ShowMoreSectionTypeEnum = {
	Friends = "Friends" :: "Friends",
	FriendRequests = "FriendRequests" :: "FriendRequests",
	FriendRecommendations = "FriendRecommendations" :: "FriendRecommendations",
}

return ShowMoreSectionTypeEnum
