local FoundationImages = script.Parent
local Flags = require(FoundationImages.Flags)

local WHITELIST = string.split(Flags.FoundationImagesWhitelistedIconAssets, ",")
local WHITELISTED_ASSETS = {}
for _, asset in WHITELIST do
	WHITELISTED_ASSETS[asset] = true
end

return WHITELISTED_ASSETS
