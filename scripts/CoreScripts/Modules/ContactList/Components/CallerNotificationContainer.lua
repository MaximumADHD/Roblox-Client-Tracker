--!strict
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")

local React = require(CorePackages.Packages.React)

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local ContactList = RobloxGui.Modules.ContactList
local dependencies = require(ContactList.dependencies)
local useSelector = dependencies.Hooks.useSelector

local Components = script.Parent
local CallerNotification = require(Components.CallerNotification)

export type Props = {}

local function CallerNotificationContainer(props: Props)
	local selectCurrentCall = React.useCallback(function(state: any)
		return state.CurrentCall
	end)
	local currentCall = useSelector(selectCurrentCall)

	return if currentCall
		then React.createElement("Frame", {
			Size = UDim2.fromScale(1, 1),
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
		}, {
			UIPadding = React.createElement("UIPadding", {
				PaddingLeft = UDim.new(0, 16),
				PaddingTop = UDim.new(0, 16),
				PaddingRight = UDim.new(0, 16),
			}),
			CallerNotification = React.createElement(CallerNotification, {
				caller = {
					userId = currentCall.userId,
					username = currentCall.username,
					state = currentCall.state.rawValue(),
				},
			}),
		})
		else nil
end

return CallerNotificationContainer
