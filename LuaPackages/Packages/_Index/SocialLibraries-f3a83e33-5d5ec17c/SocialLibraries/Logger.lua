local SocialLibraries = script:FindFirstAncestor("SocialLibraries")
local Logger = require(SocialLibraries.dependencies).Lumberyak.Logger

local logger = Logger.new(nil, script:GetFullName() .. ":SocialLibraries")

return logger
