local CorePackages = game:GetService("CorePackages")
local VRService = game:GetService("VRService")
local UserInputService = game:GetService("UserInputService")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux

local InGameMenu = script.Parent.Parent.Parent

local SetInputType = require(InGameMenu.Actions.SetInputType)
local ExternalEventConnection = require(InGameMenu.Utility.ExternalEventConnection)
local Constants = require(InGameMenu.Resources.Constants)

local InputTypeMap = Constants.InputTypeMap

local GetFFlagIGMDisableGamepadHighlightVR = require(InGameMenu.Parent.Flags.GetFFlagIGMDisableGamepadHighlightVR)

local LastInputTypeConnector = Roact.PureComponent:extend("LastInputTypeConnector")

function LastInputTypeConnector:updateInputType(inputType)
	if GetFFlagIGMDisableGamepadHighlightVR() then
		-- If we are using VR, we don't report our inputType as gamepad (even though this is how it appears)
		-- Instead, we report it as mouse and keyboard. This is because VR inputs are intended to simulate
		-- mouse and keyboard virtually using a laser pointer and onscreen keyboard. Thus, VR inputs should simply 
		-- be regarded as a mouse and keyboard for our purposes.
		if VRService.VREnabled then
			inputType = InputTypeMap[Enum.UserInputType.MouseMovement]
		end
	end
	if inputType then
		self.props.setInputType(inputType)
	end
end

function LastInputTypeConnector:init()
	local initalInputType = InputTypeMap[UserInputService:GetLastInputType()]
	self:updateInputType(initalInputType)
end


function LastInputTypeConnector:render()
	return Roact.createElement(ExternalEventConnection, {
		event = UserInputService.LastInputTypeChanged,
		callback = function(lastInputType)
			local inputType = InputTypeMap[lastInputType]
			self:updateInputType(inputType)
		end
	})
end

return RoactRodux.UNSTABLE_connect2(nil, function(dispatch)
	return {
		setInputType = function(inputType)
			return dispatch(SetInputType(inputType))
		end,
	}
end)(LastInputTypeConnector)
