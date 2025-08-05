local Root = script.Parent.Parent

local getPaymentFromPlatform = require(Root.Utils.getPaymentFromPlatform)
local getPaymentFromPlatformLegacy = require(Root.Utils.getPaymentFromPlatformLegacy)
local getHasAmazonUserAgent = require(Root.Utils.getHasAmazonUserAgent)
local getHasQuestUserAgent = require(Root.Utils.getHasQuestUserAgent)
local GetFFlagEnableLuobuInGameUpsell = require(Root.Flags.GetFFlagEnableLuobuInGameUpsell)

return function(platform)
	local isAmazon = getHasAmazonUserAgent()
	local isLuobu = GetFFlagEnableLuobuInGameUpsell()
	local isQuest = getHasQuestUserAgent()
	return getPaymentFromPlatform(platform, isLuobu, isAmazon, isQuest)
end
