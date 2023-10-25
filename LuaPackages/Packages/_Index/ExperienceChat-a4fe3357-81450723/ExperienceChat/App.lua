local ProjectRoot = script:FindFirstAncestor("ExperienceChat").Parent
local Roact = require(ProjectRoot.Roact)
local RoactRodux = require(ProjectRoot.RoactRodux)

local Localization = require(script.Parent.Localization)
local AppContainer = require(script.Parent.AppContainer)
local createStore = require(script.Parent.createStore)

local App = Roact.Component:extend("App")

local store = createStore()

App.defaultProps = {
	isChatWindowVisible = true,
	isChatInputBarVisible = true,
	isDefaultChatEnabled = true,

	store = store,
	translator = {
		FormatByKey = function(_, key)
			return tostring(key)
		end,
	},
}
function App:render()
	return self.props.isDefaultChatEnabled
		and Roact.createElement(RoactRodux.StoreProvider, {
			store = self.props.store,
		}, {
			localization = Roact.createElement(Localization.Provider, {
				value = self.props.translator,
			}, {
				container = Roact.createElement(AppContainer, {
					isChatInputBarVisible = self.props.isChatInputBarVisible,
					isChatWindowVisible = self.props.isChatWindowVisible,
					getIconVoiceIndicator = self.props.getIconVoiceIndicator,
					onClickedVoiceIndicator = self.props.onClickedVoiceIndicator,
					onClickedCameraIndicator = self.props.onClickedCameraIndicator,
					selfViewListenerChanged = self.props.selfViewListenerChanged,
					getPermissions = self.props.getPermissions,
					displayCameraDeniedToast = self.props.displayCameraDeniedToast,
					isCamEnabledForUserAndPlace = self.props.isCamEnabledForUserAndPlace,
				}),
			}),
		})
end

return App
