
--[[
	Proxy package for dependencies for PremiumUpsellDeps.
]]

local CorePackages = game:GetService("CorePackages")

local initify = require(CorePackages.initify)

initify(CorePackages.Packages)

return require(CorePackages.Packages.PremiumUpsellDeps)
