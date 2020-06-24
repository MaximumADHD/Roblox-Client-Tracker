local VirtualInputManager = game:GetService("VirtualInputManager")

return function (parameters)
	-- TODO: Do some sort of JSON Validation pre-sending on Detail
	-- sworzalla 4/24/20
	VirtualInputManager:sendRobloxEvent(parameters.Namespace, parameters.Detail, parameters.DetailType)
end