local SocialTab = script:FindFirstAncestor("SocialTab")
local dependencies = require(SocialTab.dependencies)
local Roact = dependencies.Roact

local SocialTabContext = Roact.createContext(nil)

return SocialTabContext
