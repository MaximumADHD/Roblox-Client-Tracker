local Packages = script:FindFirstAncestor("NetworkingCurrentlyWearing").Parent
local buildApiSiteUrl = require(Packages.buildApiSiteUrl)

return buildApiSiteUrl("catalog")
