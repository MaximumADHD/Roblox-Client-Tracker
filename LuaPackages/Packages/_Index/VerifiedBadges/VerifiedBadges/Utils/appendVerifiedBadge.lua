local IXPService = game:GetService("IXPService")

local appendVerifiedBadgeImpl = require(script.Parent["appendVerifiedBadge.impl"])

return appendVerifiedBadgeImpl(IXPService)
