local ProjectRoot = script:FindFirstAncestor("ExperienceChat").Parent
local Roact = require(ProjectRoot.Roact)
local RoactRodux = require(ProjectRoot.RoactRodux)

local Localization = require(script.Parent.Localization)
local AppContainer = require(script.Parent.AppContainer)
local createStore = require(script.Parent.createStore)

local App = Roact.Component:extend("App")

local store = createStore()

App.defaultProps = {
	store = store,
	translator = {
		FormatByKey = function(_, key)
			return tostring(key)
		end,
	},
}

function App:isChatEnabled()
	if self.props.isDefaultChatEnabled ~= nil then
		return self.props.isDefaultChatEnabled
	end

	return false
end

function App:isChatInputBarVisible()
	if self.props.isChatInputBarVisible ~= nil then
		return self.props.isChatInputBarVisible
	end

	return true
end

function App:isChatWindowVisible()
	if self.props.isChatWindowVisible ~= nil then
		return self.props.isChatWindowVisible
	end

	return true
end

function App:render()
	return self:isChatEnabled()
		and Roact.createElement(RoactRodux.StoreProvider, {
			store = self.props.store,
		}, {
			localization = Roact.createElement(Localization.Provider, {
				value = self.props.translator,
			}, {
				container = Roact.createElement(AppContainer, {
					isChatInputBarVisible = self:isChatInputBarVisible(),
					isChatWindowVisible = self:isChatWindowVisible(),
				}),
			}),
		})
end

return App
