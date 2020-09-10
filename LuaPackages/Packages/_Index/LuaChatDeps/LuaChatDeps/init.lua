local LuaChatDeps = script.Parent

-- initialize UIBlox once here, there should be no other
-- consumers of this instance of UIBlox
local UIBloxConfig = require(script.config.UIBlox)
local UIBlox = require(LuaChatDeps.UIBlox)
UIBlox.init(UIBloxConfig)

return {
	InfiniteScroll = require(LuaChatDeps.InfiniteScroller),
	RoduxNetworking = require(LuaChatDeps.RoduxNetworking),
	UIBlox = UIBlox,
	AssetCard = require(LuaChatDeps.AssetCard),
}
