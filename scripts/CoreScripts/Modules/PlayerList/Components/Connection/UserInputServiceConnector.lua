local CorePackages = game:GetService("CorePackages")
local UserInputService = game:GetService("UserInputService")

local Roact = require(CorePackages.Packages.Roact)
local RoactRodux = require(CorePackages.Packages.RoactRodux)

local Components = script.Parent.Parent
local PlayerList = Components.Parent

local ClosePlayerDropDown = require(PlayerList.Actions.ClosePlayerDropDown)
local SetIsUsingGamepad = require(PlayerList.Actions.SetIsUsingGamepad)

local EventConnection = require(script.Parent.EventConnection)

local UserInputServiceConnector = Roact.PureComponent:extend("UserInputServiceConnector")

local FFlagPlayerListFilterInputServiceDispatches = game:DefineFastFlag("PlayerListFilterInputServiceDispatches", false)

function UserInputServiceConnector:render()
	return Roact.createFragment({
		InputBeganConnection = Roact.createElement(EventConnection, {
			event = UserInputService.InputBegan,
			callback = function(inputObject, isProcessed)
				if FFlagPlayerListFilterInputServiceDispatches then
					if not self.props.playerDropdownVisible then
						return
					end
				end
				if isProcessed then
					return
				end
				local inputType = inputObject.UserInputType
				if inputType == Enum.UserInputType.Touch or inputType == Enum.UserInputType.MouseButton1 then
					self.props.closePlayerDropDown()
				end
			end,
		}),

		LastInputTypeChangedConnection = Roact.createElement(EventConnection, {
			event = UserInputService.LastInputTypeChanged,
			callback = function(inputType)
				local isGamepad = inputType.Name:find("Gamepad")
				local isUsingGamepad = isGamepad ~= nil
				if FFlagPlayerListFilterInputServiceDispatches then
					if (isUsingGamepad == self.props.isUsingGamepad) then
						return
					end
				end
				self.props.setIsUsingGamepad(isUsingGamepad)
			end,
		}),
	})
end

local function mapStateToProps(state)
	return {
		playerDropdownVisible = state.playerDropDown.isVisible,
		isUsingGamepad = state.displayOptions.isUsingGamepad,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		closePlayerDropDown = function()
			return dispatch(ClosePlayerDropDown())
		end,

		setIsUsingGamepad = function(value)
			return dispatch(SetIsUsingGamepad(value))
		end,
	}
end

local flaggedMapStateToProps = FFlagPlayerListFilterInputServiceDispatches and mapStateToProps or nil

return RoactRodux.connect(flaggedMapStateToProps, mapDispatchToProps)(UserInputServiceConnector)
