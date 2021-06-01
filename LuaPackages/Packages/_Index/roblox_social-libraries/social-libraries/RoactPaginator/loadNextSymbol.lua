local SocialLibraries = script:FindFirstAncestor("social-libraries")
local dependencies = require(SocialLibraries.dependencies)
local Symbol = dependencies.Symbol

return Symbol.named("loadNext")
