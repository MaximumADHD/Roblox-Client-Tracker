local CorePackages = game:GetService("CorePackages")
local ContextActionService = game:GetService("ContextActionService")
local GuiService = game:GetService("GuiService")

local Roact = require(CorePackages.Packages.Roact)
local React = require(CorePackages.Packages.React)
local RoactRodux = require(CorePackages.Packages.RoactRodux)
local PlayerListPackage = require(CorePackages.Workspace.Packages.PlayerList)

local Components = script.Parent.Parent
local PlayerList = Components.Parent

local TOGGLE_CONTEXT_ACTION_NAME = "RbxPlayerListToggle"
local GAMEPAD_CLOSE_CONTEXT_ACTION_NAME = "RbxPlayerListGamepadClose"
local GAMEPAD_STOP_MOVEMENT_ACTION_NAME = "RbxPlayerListStopMovement"

local SetPlayerListVisibility = require(PlayerList.Actions.SetPlayerListVisibility)
local ClosePlayerDropDown = require(PlayerList.Actions.ClosePlayerDropDown)

local FFlagPlayerListReduceRerenders = require(PlayerList.Flags.FFlagPlayerListReduceRerenders)
local FFlagAddNewPlayerListMobileFocusNav = PlayerListPackage.Flags.FFlagAddNewPlayerListMobileFocusNav
local FFlagPlayerListUseMobileOnSmallDisplay = PlayerListPackage.Flags.FFlagPlayerListUseMobileOnSmallDisplay

local ContextActionsBinder = Roact.PureComponent:extend("ContextActionsBinder")

local GAMEPADS = {
	Enum.UserInputType.Gamepad1,
	Enum.UserInputType.Gamepad2,
	Enum.UserInputType.Gamepad3,
	Enum.UserInputType.Gamepad4,
	Enum.UserInputType.Gamepad5,
	Enum.UserInputType.Gamepad6,
	Enum.UserInputType.Gamepad7,
	Enum.UserInputType.Gamepad8,
}

function ContextActionsBinder:init()
	self.boundPlayerListActions = false
end

function ContextActionsBinder:bindActions()
	ContextActionService:BindCoreAction(TOGGLE_CONTEXT_ACTION_NAME, function(actionName, inputState, inputObject)
		if FFlagPlayerListUseMobileOnSmallDisplay then
			if self.props.displayOptions.isSmallTouchDevice then
				return Enum.ContextActionResult.Pass
			end
		end

		if GuiService.MenuIsOpen then
			return Enum.ContextActionResult.Pass
		end

		if inputState ~= Enum.UserInputState.Begin then
			return Enum.ContextActionResult.Pass
		end
		self.props.setVisibility(not self.props.displayOptions.isVisible)
		return Enum.ContextActionResult.Sink
	end, false, Enum.KeyCode.Tab)
	ContextActionService:BindCoreAction(GAMEPAD_STOP_MOVEMENT_ACTION_NAME, function(actionName, inputState, inputObject)
		-- TODO: Remove, this core action is no longer needed, we disable dev ui with GuiService:SetMenuIsOpen
		if self.props.displayOptions.isVisible and self.props.displayOptions.isTenFootInterface then
			return Enum.ContextActionResult.Sink
		end
		return Enum.ContextActionResult.Pass
	end, false, unpack(GAMEPADS))
	ContextActionService:BindCoreAction(GAMEPAD_CLOSE_CONTEXT_ACTION_NAME, function(actionName, inputState, inputObject)
		if inputState ~= Enum.UserInputState.Begin then
			return Enum.ContextActionResult.Pass
		end

		-- Pass input if focus nav is not supported
		if not (self.props.displayOptions.isTenFootInterface or (FFlagAddNewPlayerListMobileFocusNav and self.props.displayOptions.isSmallTouchDevice)) then
			return Enum.ContextActionResult.Pass
		end

		if FFlagAddNewPlayerListMobileFocusNav then
			if self.props.playerDropDown.isVisible then
				self.props.closePlayerDropDown()
				return Enum.ContextActionResult.Sink
			end
		end

		if FFlagAddNewPlayerListMobileFocusNav then
			if self.props.displayOptions.isVisible then
				self.props.setVisibility(false)
				return Enum.ContextActionResult.Sink
			end
		else
			if self.props.displayOptions.isVisible and self.props.displayOptions.isTenFootInterface then
				self.props.setVisibility(false)
				return Enum.ContextActionResult.Sink
			end
		end

		return Enum.ContextActionResult.Pass
		-- TODO: Remove Enum.KeyCode.ButtonStart and duplicate Enum.KeyCode.ButtonB when FFlagAddNewPlayerListMobileFocusNav is enabled
	end, false, Enum.KeyCode.ButtonB, if FFlagAddNewPlayerListMobileFocusNav then Enum.KeyCode.ButtonB else Enum.KeyCode.ButtonStart)
	self.boundPlayerListActions = true
end

function ContextActionsBinder:unbindActions()
	ContextActionService:UnbindCoreAction(TOGGLE_CONTEXT_ACTION_NAME)
	ContextActionService:UnbindCoreAction(GAMEPAD_STOP_MOVEMENT_ACTION_NAME)
	ContextActionService:UnbindCoreAction(GAMEPAD_CLOSE_CONTEXT_ACTION_NAME)
	self.boundPlayerListActions = false
end

function ContextActionsBinder:didMount()
	self:bindActions()
end

function ContextActionsBinder:render()
	return nil
end

function ContextActionsBinder:willUnmount()
	if self.boundPlayerListActions then
		self:unbindActions()
	end
end

local function mapStateToProps(state)
	return {
		displayOptions = state.displayOptions,
		playerDropDown = if FFlagAddNewPlayerListMobileFocusNav then state.playerDropDown else nil,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		setVisibility = function(value)
			return dispatch(SetPlayerListVisibility(value))
		end,
		closePlayerDropDown = if FFlagAddNewPlayerListMobileFocusNav 
			then function()
				return dispatch(ClosePlayerDropDown())
			end 
			else nil,
	}
end

if FFlagPlayerListReduceRerenders then
	return React.memo(RoactRodux.connect(mapStateToProps, mapDispatchToProps)(ContextActionsBinder))
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(ContextActionsBinder)
