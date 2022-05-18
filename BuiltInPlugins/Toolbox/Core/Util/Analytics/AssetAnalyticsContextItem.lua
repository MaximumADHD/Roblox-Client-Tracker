--[[
	A ContextItem that supplies an AssetAnalytics tracker using ContextServices.provide.
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Packages = Plugin.Packages

local Framework = require(Packages.Framework)
local ContextItem = Framework.ContextServices.ContextItem

local AssetAnalytics = require(Plugin.Core.Util.Analytics.AssetAnalytics)
local AssetAnalyticsContextItem = ContextItem:extend("AssetAnalytics")

function AssetAnalyticsContextItem.new(assetAnalytics)
	local self = {
		assetAnalytics = assetAnalytics or AssetAnalytics.new(),
	}
	setmetatable(self, AssetAnalyticsContextItem)
	return self
end

function AssetAnalyticsContextItem:get()
	return self.assetAnalytics
end

return AssetAnalyticsContextItem
