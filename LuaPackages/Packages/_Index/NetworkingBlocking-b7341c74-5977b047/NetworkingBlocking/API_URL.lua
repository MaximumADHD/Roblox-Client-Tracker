local Packages = script:FindFirstAncestor("NetworkingBlocking").Parent
local buildApiSiteUrl = require(Packages.buildApiSiteUrl)

return buildApiSiteUrl("api")
