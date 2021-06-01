local SocialLibraries = script:FindFirstAncestor("social-libraries")
local rootLogger = require(SocialLibraries.Logger)

local logger = rootLogger:new(script:GetFullName() .. ":RoactPaginator")

return logger
