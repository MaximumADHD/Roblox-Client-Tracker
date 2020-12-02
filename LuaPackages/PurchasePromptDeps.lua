
--[[
	Proxy package for dependencies for SocialLibraries.
]]

local CorePackages = game:GetService("CorePackages")

local initify = require(CorePackages.initify)

initify(CorePackages.Packages)

return require(CorePackages.Packages.PurchasePromptDeps)
