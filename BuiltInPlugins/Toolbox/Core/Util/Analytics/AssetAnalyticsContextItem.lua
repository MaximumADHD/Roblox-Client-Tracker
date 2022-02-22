--[[
	A ContextItem that supplies an AssetAnalytics tracker using ContextServices.provide.
]]

local Plugin = script.Parent.Parent.Parent.Parent

local Packages = Plugin.Packages
local Roact = require(Packages.Roact)

local Framework = require(Packages.Framework)
local ContextItem = Framework.ContextServices.ContextItem
-- TODO: When FFlagDevFrameworkUseCreateContext is retired remove this require
local Provider = Framework.ContextServices.Provider

local FFlagDevFrameworkUseCreateContext = game:GetFastFlag("DevFrameworkUseCreateContext")

local AssetAnalytics = require(Plugin.Core.Util.Analytics.AssetAnalytics)
local AssetAnalyticsContextItem = ContextItem:extend("AssetAnalytics")

function AssetAnalyticsContextItem.new(assetAnalytics)
	local self = {
		assetAnalytics = assetAnalytics or AssetAnalytics.new(),
	}
	setmetatable(self, AssetAnalyticsContextItem)
	return self
end

if not FFlagDevFrameworkUseCreateContext then
	function AssetAnalyticsContextItem:createProvider(root)
		return Roact.createElement(Provider, {
			ContextItem = self,
		}, { root })
	end
end

function AssetAnalyticsContextItem:get()
	return self.assetAnalytics
end

return AssetAnalyticsContextItem
