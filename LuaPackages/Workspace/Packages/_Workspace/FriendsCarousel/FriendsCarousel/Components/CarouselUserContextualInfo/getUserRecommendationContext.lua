local FriendsCarousel = script.Parent.Parent.Parent
local LocalTypes = require(FriendsCarousel.Common.LocalTypes)

local dependencies = require(FriendsCarousel.dependencies)
local RecommendationContextType = dependencies.RoduxFriends.Enums.RecommendationContextType
local TextKeys = require(FriendsCarousel.Common.TextKeys)

type Label = {
	textKey: string?,
	font: dependencies.UIBloxFontType?,
	text: string?,
	formatter: ((string) -> string)?,
	colorStyle: dependencies.UIBloxThemeItem?,
}

type Icon = {
	path: string?,
	color: Color3?,
	transparency: number?,
	size: UDim2?,
}

return function(recommendation: LocalTypes.Recommendation): (Icon, Label)
	local icon = nil
	local textKey = nil
	local contextText = nil
	local formatter = nil
	-- TODO: localize when string format is fixed SOCCONN-1617
	local mutualFriendsCount = recommendation.mutualFriendsList and #recommendation.mutualFriendsList or 0
	if recommendation.contextType == RecommendationContextType.MutualFriends and mutualFriendsCount > 0 then
		formatter = function(key)
			return tostring(mutualFriendsCount) .. " " .. key
		end

		if mutualFriendsCount == 1 then
			textKey = TextKeys.SingularMutualFriend
		else
			textKey = TextKeys.MutualFriends
		end

		icon = {
			path = "icons/status/player/friend",
		}
	elseif recommendation.contextType == RecommendationContextType.Frequents then
		textKey = TextKeys.PlayedTogether
	else
		contextText = ""
	end

	local label = {
		formatter = formatter,
		text = contextText,
		textKey = textKey,
	}
	return icon, label
end
