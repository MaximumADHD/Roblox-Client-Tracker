--!strict
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")

local React = require(CorePackages.Packages.React)
local Cryo = require(CorePackages.Packages.Cryo)
local CallProtocol = require(CorePackages.Workspace.Packages.CallProtocol)
local Sounds = require(CorePackages.Workspace.Packages.SoundManager).Sounds
local SoundGroups = require(CorePackages.Workspace.Packages.SoundManager).SoundGroups
local SoundManager = require(CorePackages.Workspace.Packages.SoundManager).SoundManager
local GetFFlagCorescriptsSoundManagerEnabled =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagCorescriptsSoundManagerEnabled

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local ContactList = RobloxGui.Modules.ContactList
local dependencies = require(ContactList.dependencies)
local RoduxCall = dependencies.RoduxCall
local useSelector = dependencies.Hooks.useSelector
local useDispatch = dependencies.Hooks.useDispatch
local CallAction = RoduxCall.Enums.CallAction

local Components = script.Parent
local CallBar = require(Components.CallBar)

local CALL_BAR_SIZE = Vector2.new(200, 44)

export type Props = {
	callProtocol: CallProtocol.CallProtocolModule | nil,
}

local defaultProps = {
	callProtocol = CallProtocol.CallProtocol.default,
}

local function CallBarContainer(passedProps: Props)
	local props = Cryo.Dictionary.join(defaultProps, passedProps)

	local dispatch = useDispatch()
	local callBarRef = React.useRef(nil)

	local selectCurrentCall = React.useCallback(function(state: any)
		return state.Call.currentCall
	end)
	local currentCall = useSelector(selectCurrentCall)

	local currentCallStatus = nil

	if currentCall ~= nil then
		currentCallStatus = currentCall.status
	end

	React.useEffect(function()
		local initCallConn = props.callProtocol:listenToHandleInitCall(function(params)
			dispatch(RoduxCall.Actions.UpdateCall(params))
		end)

		local connectingCallConn = props.callProtocol:listenToHandleConnectingCall(function(params)
			if GetFFlagCorescriptsSoundManagerEnabled() then
				SoundManager:PlaySound(
					Sounds.Ringtone.Name,
					{ Volume = 0.5, Looped = true, SoundGroup = SoundGroups.Iris }
				)
			end
			dispatch(RoduxCall.Actions.ConnectingCall(params))
		end)

		local teleportingCallConn = props.callProtocol:listenToHandleTeleportingCall(function(params)
			if GetFFlagCorescriptsSoundManagerEnabled() then
				SoundManager:StopSound(Sounds.Ringtone.Name)
				SoundManager:PlaySound(Sounds.CallAccept.Name, { Volume = 0.5, SoundGroup = SoundGroups.Iris })
			end
			dispatch(RoduxCall.Actions.UpdateCall(params))
		end)

		local activeCallConn = props.callProtocol:listenToHandleActiveCall(function(params)
			dispatch(RoduxCall.Actions.StartCall(params))
		end)

		local endCallConn = props.callProtocol:listenToHandleEndCall(function(params)
			if params.callAction == CallAction.Cancel.rawValue() then
				if GetFFlagCorescriptsSoundManagerEnabled() then
					SoundManager:StopSound(Sounds.Ringtone.Name)
					SoundManager:PlaySound(Sounds.HangUp.Name, { Volume = 0.5, SoundGroup = SoundGroups.Iris })
				end
				dispatch(RoduxCall.Actions.FailedCall(params.lastCall))
			elseif params.callAction == CallAction.Decline.rawValue() then
				if GetFFlagCorescriptsSoundManagerEnabled() then
					SoundManager:StopSound(Sounds.Ringtone.Name)
					SoundManager:PlaySound(Sounds.CallDecline.Name, { Volume = 0.5, SoundGroup = SoundGroups.Iris })
				end
				dispatch(RoduxCall.Actions.FailedCall(params.lastCall))
			else
				if params.callAction == CallAction.Finish.rawValue() and GetFFlagCorescriptsSoundManagerEnabled() then
					SoundManager:PlaySound(Sounds.HangUp.Name, { Volume = 0.5, SoundGroup = SoundGroups.Iris })
				end
				pcall(function()
					if callBarRef and callBarRef.current then
						callBarRef.current:TweenPosition(
							UDim2.new(0.5, 0, 0, -CALL_BAR_SIZE.Y),
							Enum.EasingDirection.In,
							Enum.EasingStyle.Quad,
							0.3,
							true,
							function()
								dispatch(RoduxCall.Actions.EndCall())
							end
						)
					else
						dispatch(RoduxCall.Actions.EndCall())
					end
				end)
			end
		end)

		props.callProtocol:getCallState():andThen(function(params)
			dispatch(RoduxCall.Actions.UpdateCall(params))
		end)

		return function()
			initCallConn:Disconnect()
			connectingCallConn:Disconnect()
			teleportingCallConn:Disconnect()
			activeCallConn:Disconnect()
			endCallConn:Disconnect()
		end
	end, { props.callProtocol })

	React.useEffect(function()
		local taskThread: nil | thread

		if currentCallStatus then
			if currentCallStatus == RoduxCall.Enums.Status.Failed.rawValue() then
				taskThread = task.delay(0.5, function()
					pcall(function()
						if callBarRef and callBarRef.current then
							callBarRef.current:TweenPosition(
								UDim2.new(0.5, 0, 0, -CALL_BAR_SIZE.Y),
								Enum.EasingDirection.In,
								Enum.EasingStyle.Quad,
								0.3,
								true,
								function()
									dispatch(RoduxCall.Actions.EndCall())
								end
							)
						else
							dispatch(RoduxCall.Actions.EndCall())
						end
					end)
				end)
			else
				pcall(function()
					if callBarRef and callBarRef.current then
						callBarRef.current:TweenPosition(
							UDim2.new(0.5, 0, 0, 0),
							Enum.EasingDirection.Out,
							Enum.EasingStyle.Quad,
							0.3,
							true
						)
					end
				end)
			end
		end

		return function()
			if taskThread then
				task.cancel(taskThread)
				taskThread = nil
			end
		end
	end, { currentCallStatus })

	return if currentCall
		then React.createElement("Frame", {
			Size = UDim2.fromScale(1, 1),
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
		}, {
			UIPadding = React.createElement("UIPadding", {
				PaddingTop = UDim.new(0, 4),
			}),
			CallBar = React.createElement(CallBar, {
				size = CALL_BAR_SIZE,
				callBarRef = callBarRef,
			}),
		})
		else nil
end

return CallBarContainer
