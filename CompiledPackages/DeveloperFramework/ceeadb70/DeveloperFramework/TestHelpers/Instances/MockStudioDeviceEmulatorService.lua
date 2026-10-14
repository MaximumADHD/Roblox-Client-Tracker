local MockStudioDeviceEmulatorService = {}
MockStudioDeviceEmulatorService.__index = MockStudioDeviceEmulatorService

function MockStudioDeviceEmulatorService.new()
	local self = setmetatable({}, MockStudioDeviceEmulatorService)
	return self
end

function MockStudioDeviceEmulatorService:Destroy() end

function MockStudioDeviceEmulatorService:GetMaxNumTouches()
	return 1
end

return MockStudioDeviceEmulatorService
