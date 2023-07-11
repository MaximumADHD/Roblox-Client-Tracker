--!strict
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local Players = game:GetService("Players")
local RobloxReplicatedStorage = game:GetService("RobloxReplicatedStorage")
local StarterGui = game:GetService("StarterGui")

local React = require(CorePackages.Packages.React)
local Cryo = require(CorePackages.Packages.Cryo)
local CallProtocol = require(CorePackages.Workspace.Packages.CallProtocol)

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local ContactList = RobloxGui.Modules.ContactList

local dependencies = require(ContactList.dependencies)
local RoduxCall = dependencies.RoduxCall

local isCurrentServer = require(ContactList.isCurrentServer)

local ContactListContainer = require(ContactList.Components.ContactListContainer)
local CallBarContainer = require(ContactList.Components.CallBarContainer)

export type Props = {
	callProtocol: CallProtocol.CallProtocolModule | nil,
}

local defaultProps = {
	callProtocol = CallProtocol.CallProtocol.default,
}

return function(passedProps: Props)
	local props = Cryo.Dictionary.join(defaultProps, passedProps)

	React.useEffect(function()
		local callMessageConn = props.callProtocol:listenToHandleCallMessage(function(params)
			if params.messageType == CallProtocol.Enums.MessageType.CallError.rawValue() then
				StarterGui:SetCore("SendNotification", {
					Title = "Call Failed",
					Text = string.match(params.errorData :: string, "%(.-%)") or params.errorData,
					Duration = 5,
					Button1 = "Okay",
				})
			end
		end)

		local teleportingCallConn = props.callProtocol:listenToHandleTeleportingCall(function(params)
			if
				params.status == RoduxCall.Enums.Status.Teleporting.rawValue()
				and Players.LocalPlayer
				and params.callerId == Players.LocalPlayer.UserId
			then
				coroutine.wrap(function()
					if isCurrentServer(params.instanceId, false) then
						-- In the correct server, consider the teleport a
						-- "success" to make call active.
						props.callProtocol:teleportSuccessCall(params.callId)
					else
						-- Not the current server. Teleport to the correct one.
						local irisInviteTeleportRemoteEvent = RobloxReplicatedStorage:WaitForChild(
							"ContactListIrisInviteTeleport",
							math.huge
						) :: RemoteEvent
						irisInviteTeleportRemoteEvent:FireServer(
							params.placeId,
							params.instanceId,
							params.reservedServerAccessCode
						)
					end
				end)()
			end
		end)

		props.callProtocol:getCallState():andThen(function(params)
			if
				params.status == RoduxCall.Enums.Status.Teleporting.rawValue()
				and Players.LocalPlayer
				and params.callerId == Players.LocalPlayer.UserId
			then
				if isCurrentServer(params.instanceId, true) then
					props.callProtocol:teleportSuccessCall(params.callId)
				else
					-- Caller has joined teleported to another server. End the call.
					props.callProtocol:finishCall(params.callId)
				end
			elseif
				params.status == RoduxCall.Enums.Status.Accepting.rawValue()
				and Players.LocalPlayer
				and params.calleeId == Players.LocalPlayer.UserId
			then
				if isCurrentServer(params.instanceId, true) then
					props.callProtocol:answerSuccessCall(params.callId)
				else
					-- Callee has joined another server. Reject the call.
					props.callProtocol:rejectCall(params.callId)
				end
			end
		end)

		return function()
			callMessageConn:Disconnect()
			teleportingCallConn:Disconnect()
		end
	end, { props.callProtocol })

	return React.createElement("Folder", {}, {
		ContactListContainer = React.createElement(ContactListContainer),
		CallBarContainer = React.createElement(CallBarContainer),
	})
end
