local CorePackages = game:GetService("CorePackages")
local ContextActionService = game:GetService("ContextActionService")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)

local Components = script.Parent.Parent
local PlayerList = Components.Parent

local CONTEXT_ACTION_NAME = "RbxPlayerListToggle"

local SetPlayerListVisibility = require(PlayerList.Actions.SetPlayerListVisibility)

local ContextActionsBinder = Roact.PureComponent:extend("ContextActionsBinder")

function ContextActionsBinder:init()
	self.boundOpenListAction = false
end

function ContextActionsBinder:didMount()
	if self.props.displayOptions.playerlistCoreGuiEnabled then
		ContextActionService:BindCoreAction(
			CONTEXT_ACTION_NAME,
			function(actionName, inputState, inputObject)
				if inputState ~= Enum.UserInputState.Begin then
					return
				end
				self.props.setVisibility(not self.props.displayOptions.isVisible)
			end,
			false,
			Enum.KeyCode.Tab
		)
		self.boundOpenListAction = true
	end
end

function ContextActionsBinder:didUpdate()
	if self.props.displayOptions.playerlistCoreGuiEnabled and not self.boundOpenListAction then
		ContextActionService:BindCoreAction(
			CONTEXT_ACTION_NAME,
			function(actionName, inputState, inputObject)
				if inputState ~= Enum.UserInputState.Begin then
					return
				end
				self.props.setVisibility(not self.props.displayOptions.isVisible)
			end,
			false,
			Enum.KeyCode.Tab
		)
		self.boundOpenListAction = true
	elseif not self.props.displayOptions.playerlistCoreGuiEnabled and self.boundOpenListAction then
		ContextActionService:UnbindCoreAction(CONTEXT_ACTION_NAME)
		self.boundOpenListAction = false
	end
end

function ContextActionsBinder:render()
	return nil
end

function ContextActionsBinder:willUnmount()
	if self.boundOpenListAction then
		ContextActionService:UnbindCoreAction(CONTEXT_ACTION_NAME)
		self.boundOpenListAction = false
	end
end

local function mapStateToProps(state)
	return {
		displayOptions = state.displayOptions,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		setVisibility = function(value)
			return dispatch(SetPlayerListVisibility(value))
		end,
	}
end

return RoactRodux.UNSTABLE_connect2(mapStateToProps, mapDispatchToProps)(ContextActionsBinder)