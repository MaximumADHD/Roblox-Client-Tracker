--[[
	A hook used to consume the SocialTabContext.
]]

local SocialTab = script:FindFirstAncestor("SocialTab")
local dependencies = require(SocialTab.dependencies)
local SocialTabContext = require(SocialTab.SocialTabContext)
local React = dependencies.React

local function useSocialTabContext()
	return React.useContext(SocialTabContext.Context)
end

return useSocialTabContext
