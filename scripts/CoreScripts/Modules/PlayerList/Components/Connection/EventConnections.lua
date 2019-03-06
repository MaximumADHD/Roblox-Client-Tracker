--[[
	Connects relevant Roblox engine events to the rodux store
]]
local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Roact)

local PlayerServiceConnector = require(script.Parent.PlayerServiceConnector)
local TeamServiceConnector = require(script.Parent.TeamServiceConnector)
local LeaderstatsConnector = require(script.Parent.LeaderstatsConnector)
local CoreGuiConnector = require(script.Parent.CoreGuiConnector)
local SocialConnector = require(script.Parent.SocialConnector)

local function EventConnections()
	-- TODO: Clean this up when Fragments are released.
	return Roact.createElement("Folder", {}, {
		PlayerServiceConnector = Roact.createElement(PlayerServiceConnector),
		TeamServiceConnector = Roact.createElement(TeamServiceConnector),
		LeaderstatsConnector = Roact.createElement(LeaderstatsConnector),
		CoreGuiConnector = Roact.createElement(CoreGuiConnector),
		SocialConnector = Roact.createElement(SocialConnector),
	})
end

return EventConnections