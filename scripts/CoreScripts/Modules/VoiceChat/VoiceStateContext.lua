--[[
	An lighter-weight alternative to using Redux for voice enabled state

	The provider will initalize VoiceChatServiceManager and listen to state changes

	Provider setup

		VoiceStateContextProvider = Roact.createElement(VoiceStateContext.Provider, {}, {
			App = Roact.createElement(App),
		})

	Consumer setup
		With hooks:

			local voiceContext = React.useContext(VoiceStateContext.Context)
			if voiceContext.voiceEnabled then
				return React.createElement(VoiceIcon, {})
			else
				return nil
			end

		withVoiceState:

			return VoiceStateContext.withVoiceState(function(voiceContext)
				if voiceContext.voiceEnabled then
					return React.createElement(VoiceIcon, {})
				else
					return nil
				end
			end)
--]]

local DEFAULT_STATE = game:GetEngineFeature("VoiceChatSupported") and (Enum :: any).VoiceChatState.Ended or nil

-- Shape of context value
local DEFAULT_VALUE = {
	voiceEnabled = false,
	voiceState = DEFAULT_STATE,
}

local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local React = require(CorePackages.Packages.React)
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local VoiceChatServiceManager = require(RobloxGui.Modules.VoiceChat.VoiceChatServiceManager).default

local VoiceStateContext = React.createContext(DEFAULT_VALUE)

local VoiceStateProvider = function(props)
	local contextValue, setContextValue = React.useState(DEFAULT_VALUE)

	local function updateVoiceState(_, voiceState)
		if voiceState ~= contextValue.voiceState then
			local voiceEnabled = voiceState ~= (Enum :: any).VoiceChatState.Ended
			setContextValue({
				voiceEnabled = voiceEnabled,
				voiceState = voiceState,
			})
		end
	end

	React.useEffect(function()
		local active = true
		local conn = nil
		if game:GetEngineFeature("VoiceChatSupported") then
			VoiceChatServiceManager:asyncInit()
				:andThen(function()
					if active then
						VoiceChatServiceManager:SetupParticipantListeners()
						local voiceService = VoiceChatServiceManager:getService()
						if voiceService then
							updateVoiceState(nil, voiceService.VoiceChatState)
							conn = voiceService.StateChanged:Connect(updateVoiceState)
						end
					end
				end)
				:catch(function()
					updateVoiceState(nil, DEFAULT_STATE)
				end)
		end

		return function()
			active = false
			if conn then
				conn:Disconnect()
				conn = nil
			end
		end
	end, {})

	return React.createElement(VoiceStateContext.Provider, {
		value = contextValue,
	}, props.children)
end

return {
	Provider = VoiceStateProvider,
	Consumer = VoiceStateContext.Consumer,
	Context = VoiceStateContext,
	withVoiceState = function(render)
		return React.createElement(VoiceStateContext.Consumer, {
			render = render,
		})
	end,
}
