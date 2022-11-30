--!nonstrict
-- Based on: src/internal/LuaApp/Modules/LuaApp/Components/Generic/CarouselWidget.lua
local SocialTab = script:FindFirstAncestor("SocialTab")
local dependencies = require(SocialTab.dependencies)
local t = dependencies.t

local Text = dependencies.Text
local memoize = dependencies.memoize

local calculateTextSizeInterface = t.interface({
	text = t.string,
	font = t.interface({
		Font = t.Font,
		RelativeSize = t.number,
	}),
	baseSize = t.number,
})

return function()
	return memoize(function(text, font, baseSize)
		assert(calculateTextSizeInterface({
			text = text,
			font = font,
			baseSize = baseSize,
		}))

		local textSize = font.RelativeSize * baseSize

		return Text.GetTextBounds(text, font.Font, textSize, Vector2.new(10000, 10000))
	end)
end
