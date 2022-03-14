local Chat = game:GetService("Chat")
local GuiService = game:GetService("GuiService")
local VRService = game:GetService("VRService")

local ProjectRoot = script:FindFirstAncestor("ExperienceChat").Parent
local Roact = require(ProjectRoot.Roact)
local RoactRodux = require(ProjectRoot.RoactRodux)

local AppContainer = require(script.Parent.AppContainer)
local createStore = require(script.Parent.createStore)

local App = Roact.Component:extend("App")

local store = createStore()

App.defaultProps = {
	messages = {},
	messageHistory = {},
	targetChannelDisplayName = nil,
	store = store,
}

App.DispatchBindableEvent = require(script.Parent.createDispatchBindableEvent)(App.defaultProps.store)

function App:isChatEnabled()
	if self.props.isDefaultChatEnabled ~= nil then
		return self.props.isDefaultChatEnabled
	end

	if Chat.LoadDefaultChat and not GuiService.IsTenFootInterface and not VRService.Enabled then
		return true
	end

	return false
end

function App:isChatInputBarVisible()
	if self.props.isChatInputBarVisible ~= nil then
		return self.props.isChatInputBarVisible
	end

	-- @TODO clean up pcall https://jira.rbx.com/browse/EXPCHAT-91
	pcall(function()
		local TextChatService = game:GetService("TextChatService")

		if TextChatService:FindFirstChild("ChatInputBarConfiguration") then
			return TextChatService.ChatInputBarConfiguration.Enabled
		end
	end)

	return true
end

function App:isChatWindowVisible()
	if self.props.isChatWindowVisible ~= nil then
		return self.props.isChatWindowVisible
	end

	-- @TODO clean up pcall https://jira.rbx.com/browse/EXPCHAT-91
	pcall(function()
		local TextChatService = game:GetService("TextChatService")

		if TextChatService:FindFirstChild("ChatWindowConfiguration") then
			return TextChatService.ChatWindowConfiguration.Enabled
		end
	end)

	return true
end

function App:render()
	return self:isChatEnabled()
		and Roact.createElement(RoactRodux.StoreProvider, {
			store = self.props.store,
		}, {
			container = Roact.createElement(AppContainer, {
				messages = self.props.messages,
				messageHistory = self.props.messageHistory,
				isChatInputBarVisible = self:isChatInputBarVisible(),
				isChatWindowVisible = self:isChatWindowVisible(),
				targetChannelDisplayName = self.props.targetChannelDisplayName,
			}),
		})
end

return App
