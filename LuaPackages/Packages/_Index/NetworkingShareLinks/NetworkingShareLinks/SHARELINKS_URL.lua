--!strict
local buildApiSiteUrl = require(script.Parent.buildApiSiteUrl)

--! TODO(kkoa): verify that this is the right URL when public endpoint is ready
return buildApiSiteUrl("sharelinks")
