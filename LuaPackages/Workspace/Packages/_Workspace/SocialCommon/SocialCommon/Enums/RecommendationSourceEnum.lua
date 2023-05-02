--[[
	Source when fetching recommendations from backend
]]
export type RecommendationSource = "HomepageFriendsCarousel" | "HomepagePYMKCarousel" | "AddFriendsPage"

local RecommendationSourceEnum = {
	HomepageFriendsCarousel = "HomepageFriendsCarousel" :: "HomepageFriendsCarousel",
	HomepagePYMKCarousel = "HomepagePYMKCarousel" :: "HomepagePYMKCarousel",
	AddFriendsPage = "AddFriendsPage" :: "AddFriendsPage",
}

return RecommendationSourceEnum
