local SocialLibraries = script:FindFirstAncestor("SocialLibraries")
local dependencies = require(SocialLibraries.dependencies)
local Symbol = dependencies.Symbol

return Symbol.named("loadPrevious")
