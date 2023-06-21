--!strict
local CoreGui = game:GetService("CoreGui")
local StarterGui = game:GetService("StarterGui")
local CorePackages = game:GetService("CorePackages")

local React = require(CorePackages.Packages.React)
local Cryo = require(CorePackages.Packages.Cryo)
local CallProtocol = require(CorePackages.Workspace.Packages.CallProtocol)

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local ContactList = RobloxGui.Modules.ContactList

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
					Text = string.match(params.errorData :: string, "%(.-%)") or params.errorMessage,
					Duration = 5,
					Button1 = "Okay",
				})
			end
		end)

		return function()
			callMessageConn:Disconnect()
		end
	end, { props.callProtocol })

	return React.createElement("Folder", {}, {
		ContactListContainer = React.createElement(ContactListContainer),
		CallBarContainer = React.createElement(CallBarContainer),
	})
end
