--!strict
local buildApiSiteUrl = require(script.Parent.buildApiSiteUrl)

return string.format("%s%s", buildApiSiteUrl("apis"), "sharelinks")
