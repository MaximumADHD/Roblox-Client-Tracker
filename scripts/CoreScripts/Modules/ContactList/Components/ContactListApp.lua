--!strict
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local React = require(CorePackages.Packages.React)
local Cryo = require(CorePackages.Packages.Cryo)
local CallProtocol = require(CorePackages.Workspace.Packages.CallProtocol)
local SoundManager = require(CorePackages.Workspace.Packages.SoundManager).SoundManager
local SoundGroups = require(CorePackages.Workspace.Packages.SoundManager).SoundGroups
local GetFFlagCorescriptsSoundManagerEnabled =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagCorescriptsSoundManagerEnabled

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local ContactList = RobloxGui.Modules.ContactList

local ContactListContainer = require(ContactList.Components.ContactListContainer)
local CallBarContainer = require(ContactList.Components.CallBarContainer)
local CallDialogContainer = require(ContactList.Components.CallDialogContainer)
local PlayerMenuContainer = require(ContactList.Components.PlayerMenuContainer)

export type Props = {
	callProtocol: CallProtocol.CallProtocolModule | nil,
}

local defaultProps = {
	callProtocol = CallProtocol.CallProtocol.default,
}

local function createBindableEvent(name: string): BindableEvent
	local bindableEvent = ReplicatedStorage:FindFirstChild(name)
	if bindableEvent then
		return bindableEvent :: BindableEvent
	else
		local updatedBindableEvent = Instance.new("BindableEvent") :: BindableEvent
		updatedBindableEvent.Name = name
		updatedBindableEvent.Parent = ReplicatedStorage
		return updatedBindableEvent
	end
end

return function(passedProps: Props)
	local props = Cryo.Dictionary.join(defaultProps, passedProps)

	-- TODO: Remove this when the API is available.
	React.useEffect(function()
		local initCallEvent: BindableEvent = createBindableEvent("initCallBindableEvent")
		local connectingCallEvent: BindableEvent = createBindableEvent("ConnectingCallBindableEvent")
		local teleportingCallEvent: BindableEvent = createBindableEvent("TeleportingCallBindableEvent")
		local endCallEvent: BindableEvent = createBindableEvent("EndCallBindableEvent")

		local initCallConn = props.callProtocol:listenToHandleInitCall(function(params)
			initCallEvent:Fire()
		end)

		local connectingCallConn = props.callProtocol:listenToHandleConnectingCall(function(params)
			connectingCallEvent:Fire()
		end)

		local teleportingCallConn = props.callProtocol:listenToHandleTeleportingCall(function(params)
			teleportingCallEvent:Fire()
		end)

		local endCallConn = props.callProtocol:listenToHandleEndCall(function(params)
			endCallEvent:Fire()
		end)

		return function()
			initCallConn:Disconnect()
			connectingCallConn:Disconnect()
			teleportingCallConn:Disconnect()
			endCallConn:Disconnect()
		end
	end, { props.callProtocol })

	React.useEffect(function()
		if GetFFlagCorescriptsSoundManagerEnabled() then
			SoundManager:CreateSoundGroup(SoundGroups.Iris.Name)
		end
	end, {})

	return React.createElement("Folder", {}, {
		CallDialogContainer = React.createElement(CallDialogContainer),
		ContactListContainer = React.createElement(ContactListContainer),
		PlayerMenuContainer = React.createElement(PlayerMenuContainer),
		CallBarContainer = React.createElement(CallBarContainer),
	})
end
