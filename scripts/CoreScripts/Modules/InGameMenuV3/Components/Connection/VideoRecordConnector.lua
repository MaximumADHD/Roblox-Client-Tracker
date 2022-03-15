--!nocheck

local CorePackages = game:GetService("CorePackages")
local GameSettings = settings():WaitForChild("Game Options") -- TODO: we should migrate the APIs from here to CoreGui

local InGameMenu = script.Parent.Parent.Parent
local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux

local SetVideoRecording = require(InGameMenu.Actions.SetVideoRecording)
local ExternalEventConnection = require(InGameMenu.Utility.ExternalEventConnection)

local VideoRecordConnector = Roact.PureComponent:extend("VideoRecordConnector")

function VideoRecordConnector:init()
	self.props.setVideoRecording(GameSettings.VideoRecording)
end

function VideoRecordConnector:render()
	return Roact.createElement(ExternalEventConnection, {
		event = GameSettings:GetPropertyChangedSignal("VideoRecording"),
        callback = function ()
			self.props.setVideoRecording(GameSettings.VideoRecording)
		end,
	})
end

return RoactRodux.UNSTABLE_connect2(nil, function (dispatch)
	return {
        setVideoRecording = function (state)
			return dispatch(SetVideoRecording(state))
		end,
	}
end)(VideoRecordConnector)