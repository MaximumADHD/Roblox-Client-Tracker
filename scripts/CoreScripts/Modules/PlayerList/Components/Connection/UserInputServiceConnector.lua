local CorePackages = game:GetService("CorePackages")
local UserInputService = game:GetService("UserInputService")
local CoreGui = game:GetService("CoreGui")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)

local Components = script.Parent.Parent
local PlayerList = Components.Parent

local ClosePlayerDropDown = require(PlayerList.Actions.ClosePlayerDropDown)
local SetIsUsingGamepad = require(PlayerList.Actions.SetIsUsingGamepad)

local EventConnection = require(script.Parent.EventConnection)

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local FFlagPlayerListPerformanceImprovements = require(RobloxGui.Modules.Flags.FFlagPlayerListPerformanceImprovements)

local UserInputServiceConnector
if FFlagPlayerListPerformanceImprovements then
	UserInputServiceConnector = Roact.PureComponent:extend("UserInputServiceConnector")
	function UserInputServiceConnector:render()
		return Roact.createFragment({
			InputBeganConnection = Roact.createElement(EventConnection, {
				event = UserInputService.InputBegan,
				callback = function(inputObject, isProcessed)
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
					self.props.setIsUsingGamepad(isGamepad ~= nil)
				end,
			})
		})
	end
else
	function UserInputServiceConnector(props)
		-- TODO: Clean this up when Fragments are released.
		return Roact.createElement("Folder", {}, {
			InputBeganConnection = Roact.createElement(EventConnection, {
				event = UserInputService.InputBegan,
				callback = function(inputObject, isProcessed)
					if isProcessed then
						return
					end
					local inputType = inputObject.UserInputType
					if inputType == Enum.UserInputType.Touch or inputType == Enum.UserInputType.MouseButton1 then
						props.closePlayerDropDown()
					end
				end,
			}),

			LastInputTypeChangedConnection = Roact.createElement(EventConnection, {
				event = UserInputService.LastInputTypeChanged,
				callback = function(inputType)
					local isGamepad = inputType.Name:find("Gamepad")
					props.setIsUsingGamepad(isGamepad ~= nil)
				end,
			})
		})
	end
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

return RoactRodux.UNSTABLE_connect2(nil, mapDispatchToProps)(UserInputServiceConnector)