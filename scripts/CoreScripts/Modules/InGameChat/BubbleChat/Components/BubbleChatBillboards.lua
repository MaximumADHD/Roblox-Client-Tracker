--[[
	Handles rendering of each BubbleChatBillboard depending on if a user has any
	messages.
]]

local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Packages.Roact)
local RoactRodux = require(CorePackages.Packages.RoactRodux)
local t = require(CorePackages.Packages.t)
local BubbleChatBillboard = require(script.Parent.BubbleChatBillboard)

local ChatBillboards = Roact.Component:extend("ChatBillboards")

ChatBillboards.validateProps = t.strictInterface({
	userMessages = t.map(t.string, t.array(t.string))
})

function ChatBillboards:render()
	local billboards = {}

	for userId, messageIds in pairs(self.props.userMessages) do
		billboards["BubbleChat_" .. userId] = Roact.createElement(BubbleChatBillboard, {
			userId = userId,
		})
	end

	-- Wrapped in a ScreenGui so all of the billboards don't clog up
	-- PlayerGui. Specifically need to use a ScreenGui so we can set
	-- ResetOnSpawn. Folders would be a better alternative, but those
	-- are always destroyed when respawning.
	return Roact.createElement("ScreenGui", {
		ResetOnSpawn = false,
	}, billboards)
end

local function mapStateToProps(state)
	return {
		userMessages = state.userMessages
	}
end

return RoactRodux.connect(mapStateToProps)(ChatBillboards)
