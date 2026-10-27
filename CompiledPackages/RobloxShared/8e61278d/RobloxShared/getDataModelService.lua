-- checks that the service exists and is accessible before returning it, otherwise returns nil
return function(service: string)
	local success, result = pcall(function()
		local service = game:GetService(service)
		local _ = service.Name
		return service
	end)

	return success and result or nil
end
