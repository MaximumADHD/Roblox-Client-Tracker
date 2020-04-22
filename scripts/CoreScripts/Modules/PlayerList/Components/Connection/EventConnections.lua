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
local GuiServiceConnector = require(script.Parent.GuiServiceConnector)
local UserInputServiceConnector = require(script.Parent.UserInputServiceConnector)
local ScreenSizeConnector = require(script.Parent.ScreenSizeConnector)

local EventConnections = Roact.PureComponent:extend("EventConnections")

function EventConnections:render()
	return Roact.createFragment({
		PlayerServiceConnector = Roact.createElement(PlayerServiceConnector),
		TeamServiceConnector = Roact.createElement(TeamServiceConnector),
		LeaderstatsConnector = Roact.createElement(LeaderstatsConnector),
		CoreGuiConnector = Roact.createElement(CoreGuiConnector),
		SocialConnector = Roact.createElement(SocialConnector),
		GuiServiceConnector = Roact.createElement(GuiServiceConnector),
		UserInputServiceConnector = Roact.createElement(UserInputServiceConnector),
		ScreenSizeConnector = Roact.createElement(ScreenSizeConnector),
	})
end

return EventConnections