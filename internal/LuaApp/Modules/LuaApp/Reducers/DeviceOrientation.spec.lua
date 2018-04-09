return function()
	local Modules = game:GetService("CoreGui"):FindFirstChild("RobloxGui").Modules
	local SetDeviceOrientation = require(Modules.LuaApp.Actions.SetDeviceOrientation)
	local DeviceOrientationMode = require(Modules.LuaApp.DeviceOrientationMode)

	local DeviceOrientation = require(script.Parent.DeviceOrientation)

	it("should be portrait by default", function()
		local state = DeviceOrientation(nil, {})

		expect(state).to.equal(DeviceOrientationMode.Invalid)
	end)

	it("should be unmodified by other actions", function()
		local oldState = DeviceOrientation(nil, {})
		local newState = DeviceOrientation(oldState, { type = "not a real action" })

		expect(oldState).to.equal(newState)
	end)

	it("should be changed using SetDeviceOrientation", function()
		local state = DeviceOrientation(nil, {})

		state = DeviceOrientation(state, SetDeviceOrientation(DeviceOrientationMode.Invalid))

		expect(state).to.equal(DeviceOrientationMode.Invalid)

		state = DeviceOrientation(state, SetDeviceOrientation(DeviceOrientationMode.Landscape))

		expect(state).to.equal(DeviceOrientationMode.Landscape)

		state = DeviceOrientation(state, SetDeviceOrientation(DeviceOrientationMode.Portrait))

		expect(state).to.equal(DeviceOrientationMode.Portrait)
	end)
end