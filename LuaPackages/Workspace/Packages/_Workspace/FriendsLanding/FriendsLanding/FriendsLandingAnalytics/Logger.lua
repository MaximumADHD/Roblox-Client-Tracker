local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local rootLogger = require(FriendsLanding.Logger)

local logger = rootLogger:new("FriendsLanding Analytics")

return logger
