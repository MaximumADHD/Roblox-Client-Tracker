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
					if params.instanceId == game.JobId then
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
