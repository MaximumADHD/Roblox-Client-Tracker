local SocialTab = script:FindFirstAncestor("SocialTab")
local rootLogger = require(SocialTab.Logger)

local logger = rootLogger:new("SocialTab Analytics")

return logger
