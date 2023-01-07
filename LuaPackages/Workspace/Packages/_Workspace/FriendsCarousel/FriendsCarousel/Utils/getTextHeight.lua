local FriendsCarousel = script:FindFirstAncestor("FriendsCarousel")
local dependencies = require(FriendsCarousel.dependencies)
local Text = dependencies.Text

local getTextHeight = function(text: string, fontType: Enum.Font, fontSize: number): number
	return Text.GetTextHeight(text or "", fontType, fontSize)
end

return getTextHeight
