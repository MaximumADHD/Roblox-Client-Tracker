local MockVRService = {}
MockVRService.__index = MockVRService

function MockVRService:GetPropertyChangedSignal(property)
	if property == "VRDeviceAvailable" then
		return self._vrDeviceAvailableChanged.Event
	end
	error(("%s is not a valid property name"):format(tostring(property)))
end

function MockVRService:toggleHeadsetConnectionState()
	local newState = not self.VRDeviceAvailable
	self.VRDeviceAvailable = newState

	self._vrDeviceAvailableChanged:Fire(newState)
end

function MockVRService.new()
	local self = {
		VRDeviceAvailable = true,
		_vrDeviceAvailableChanged = Instance.new("BindableEvent"),
	}
	setmetatable(self, {
		__index = MockVRService,
	})
	return self
end

return MockVRService
