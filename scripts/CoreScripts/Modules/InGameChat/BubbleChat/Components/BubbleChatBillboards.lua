--[[
	Handles rendering of each BubbleChatBillboard depending on if a user has any
	messages.
]]

local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Packages.Roact)
local RoactRodux = require(CorePackages.Packages.RoactRodux)
local t = require(CorePackages.Packages.t)
local Cryo = require(CorePackages.Packages.Cryo)
local BubbleChatBillboard = require(script.Parent.BubbleChatBillboard)

local ChatBillboards = Roact.Component:extend("ChatBillboards")

ChatBillboards.validateProps = t.strictInterface({
	userMessages = t.map(t.string, t.array(t.string))
})

function ChatBillboards.getDerivedStateFromProps(nextProps, lastState)
	return {
		-- We need to keep in memory userMessages' keys to allow the fade out animations to play, otherwise the child
		-- billboards would be unmounted right away. It is their responsibility to clean up by triggering
		-- the function self.onBillboardFadeOut
		userMessages = Cryo.Dictionary.join(lastState.userMessages or {}, nextProps.userMessages)
	}
end

function ChatBillboards:init()
	self:setState({
		userMessages = {}
	})
	self.onBillboardFadeOut = function(userId)
		self:setState({
			userMessages = Cryo.Dictionary.join(self.state.userMessages, { [userId] = Cryo.None })
		})
	end
end

function ChatBillboards:render()
	local billboards = {}

	for userId, _ in pairs(self.state.userMessages) do
		billboards["BubbleChat_" .. userId] = Roact.createElement(BubbleChatBillboard, {
			userId = userId,
			onFadeOut = self.onBillboardFadeOut,
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
