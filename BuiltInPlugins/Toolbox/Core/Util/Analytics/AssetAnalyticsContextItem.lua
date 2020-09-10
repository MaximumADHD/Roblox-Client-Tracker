--[[
	A ContextItem that supplies an AssetAnalytics tracker using ContextServices.provide.
]]

local Plugin = script.Parent.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)

local Framework = require(Libs.Framework)
local ContextItem = Framework.ContextServices.ContextItem
local Provider = Framework.ContextServices.Provider

local AssetAnalytics = require(Plugin.Core.Util.Analytics.AssetAnalytics)
local AssetAnalyticsContextItem = ContextItem:extend("AssetAnalytics")

function AssetAnalyticsContextItem.new(assetAnalytics)
	local self = {
		assetAnalytics = assetAnalytics or AssetAnalytics.new(),
	}
	setmetatable(self, AssetAnalyticsContextItem)
	return self
end

function AssetAnalyticsContextItem:createProvider(root)
	return Roact.createElement(Provider, {
		ContextItem = self,
	}, {root})
end

function AssetAnalyticsContextItem:get()
	return self.assetAnalytics
end

return AssetAnalyticsContextItem
