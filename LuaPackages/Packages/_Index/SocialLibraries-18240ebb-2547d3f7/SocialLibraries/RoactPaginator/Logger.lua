local SocialLibraries = script:FindFirstAncestor("SocialLibraries")
local rootLogger = require(SocialLibraries.Logger)

local logger = rootLogger:new(script:GetFullName() .. ":RoactPaginator")

return logger
