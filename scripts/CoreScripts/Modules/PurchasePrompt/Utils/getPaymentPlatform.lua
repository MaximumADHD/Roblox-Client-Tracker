local Root = script.Parent.Parent

local getPaymentFromPlatform = require(Root.Utils.getPaymentFromPlatform)
local getHasAmazonUserAgent = require(Root.Utils.getHasAmazonUserAgent)
local GetFFlagEnableLuobuInGameUpsell = require(Root.Flags.GetFFlagEnableLuobuInGameUpsell)

return function(platform)
    local isAmazon = getHasAmazonUserAgent()
    local isLuobu = GetFFlagEnableLuobuInGameUpsell()
    return getPaymentFromPlatform(platform, isLuobu, isAmazon)
end
