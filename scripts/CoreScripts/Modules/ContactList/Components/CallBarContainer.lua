--!strict
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")

local React = require(CorePackages.Packages.React)
local Cryo = require(CorePackages.Packages.Cryo)
local CallProtocol = require(CorePackages.Workspace.Packages.CallProtocol)

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local ContactList = RobloxGui.Modules.ContactList
local dependencies = require(ContactList.dependencies)
local RoduxCall = dependencies.RoduxCall
local useSelector = dependencies.Hooks.useSelector
local useDispatch = dependencies.Hooks.useDispatch

local Components = script.Parent
local CallBar = require(Components.CallBar)

export type Props = {
	callProtocol: CallProtocol.CallProtocolModule | nil,
}

local defaultProps = {
	callProtocol = CallProtocol.CallProtocol.default,
}

local function CallBarContainer(passedProps: Props)
	local props = Cryo.Dictionary.join(defaultProps, passedProps)

	local dispatch = useDispatch()

	local selectCurrentCall = React.useCallback(function(state: any)
		return state.Call.currentCall
	end)
	local currentCall = useSelector(selectCurrentCall)

	React.useEffect(function()
		local connectingCallConn = props.callProtocol:listenToHandleConnectingCall(function(params)
			dispatch(RoduxCall.Actions.ConnectingCall(params))
		end)

		local activeCallConn = props.callProtocol:listenToHandleActiveCall(function(params)
			dispatch(RoduxCall.Actions.StartCall(params))
		end)

		props.callProtocol:getCallState():andThen(function(params)
			dispatch(RoduxCall.Actions.UpdateCall(params))
		end)

		return function()
			connectingCallConn:Disconnect()
			activeCallConn:Disconnect()
		end
	end, { props.callProtocol })

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
			CallBar = React.createElement(CallBar),
		})
		else nil
end

return CallBarContainer
