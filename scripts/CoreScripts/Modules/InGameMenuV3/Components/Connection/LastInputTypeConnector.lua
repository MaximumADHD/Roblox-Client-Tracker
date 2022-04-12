local CorePackages = game:GetService("CorePackages")
local UserInputService = game:GetService("UserInputService")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux

local InGameMenu = script.Parent.Parent.Parent

local SetInputType = require(InGameMenu.Actions.SetInputType)
local ExternalEventConnection = require(InGameMenu.Utility.ExternalEventConnection)
local Constants = require(InGameMenu.Resources.Constants)

local InputTypeMap = Constants.InputTypeMap

local LastInputTypeConnector = Roact.PureComponent:extend("LastInputTypeConnector")

function LastInputTypeConnector:init()
	local initalInputType = InputTypeMap[UserInputService:GetLastInputType()]
	if initalInputType then
		self.props.setInputType(initalInputType)
	end
end

function LastInputTypeConnector:render()
	return Roact.createElement(ExternalEventConnection, {
		event = UserInputService.LastInputTypeChanged,
		callback = function(lastInputType)
			local inputType = InputTypeMap[lastInputType]
			if inputType then
				self.props.setInputType(inputType)
			end
		end,
	})
end


return RoactRodux.UNSTABLE_connect2(nil, function(dispatch)
	return {
		setInputType = function(inputType)
			return dispatch(SetInputType(inputType))
		end,
	}
end)(LastInputTypeConnector)
