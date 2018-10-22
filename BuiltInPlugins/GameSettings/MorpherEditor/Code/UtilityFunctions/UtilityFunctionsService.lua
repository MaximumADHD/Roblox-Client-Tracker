-- singleton

local Service = {}

local function waitforService(serviceName)
	local service = game:GetService(serviceName)
	while nil == service do
		wait()
   		service = game:GetService(serviceName)
	end
	return service
end

function Service.waitForInsertService()
	return waitforService('InsertService')
end

function Service.waitForCorePackages()
	return waitforService('CorePackages')
end

return Service