local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local ProjectRoot = ExperienceChat.Parent
local Roact = require(ProjectRoot.Roact)
local RoactRodux = require(ProjectRoot.RoactRodux)

local createStore = require(ExperienceChat.createStore)
local store = createStore()

local AppContainer = require(script.Parent)

return {
	story = function(props)
		return Roact.createElement(RoactRodux.StoreProvider, {
			store = props.store or store,
		}, {
			container = Roact.createElement(AppContainer, {
				isChatInputBarVisible = props.isChatInputBarVisible,
				isChatWindowVisible = props.isChatWindowVisible,
				textTimer = props.textTimer,
			}),
		})
	end,
	controls = {},
	props = {
		isChatInputBarVisible = false,
		isChatWindowVisible = false,
		textTimer = nil,
	},
}
