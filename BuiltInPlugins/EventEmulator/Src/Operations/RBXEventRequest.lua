local VirtualInputManager = game:GetService("VirtualInputManager")
local HttpService = game:GetService("HttpService")

return function (parameters)
	-- TODO: Do some sort of JSON Validation pre-sending on Detail
	-- TODO: Modify this to be able to send an arbitrary sendRobloxEvent
	-- sworzalla 4/24/20
	VirtualInputManager:sendRobloxEvent(parameters.Namespace, parameters.Detail, parameters.DetailType)
end