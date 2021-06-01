local SocialLibraries = script:FindFirstAncestor("social-libraries")
local Logger = require(SocialLibraries.dependencies).Lumberyak.Logger

local logger = Logger.new(nil, script:GetFullName() .. ":SocialLibraries")

return logger
