return function()
	local Modules = game:GetService("CoreGui"):FindFirstChild("RobloxGui").Modules
	local SetDeviceOrientation = require(Modules.LuaApp.Actions.SetDeviceOrientation)
	local DeviceOrientationMode = require(Modules.LuaApp.DeviceOrientationMode)

	-- When removing FFlag LayoutClipRectStopUsingCamera, DeviceOrientationFlagOff related
	-- tests should be removed, and DeviceOrientationFlagOn related tests should be
	-- using DeviceOrientation instead.
	-- This is to enable unit testing to cover all the cases with or without the
	-- flag set.
	local DeviceOrientationFlagOff = require(Modules.LuaApp.Reducers.DeviceOrientationFlagOff)
	local DeviceOrientationFlagOn = require(Modules.LuaApp.Reducers.DeviceOrientationFlagOn)

	describe("DeviceOrientationFlagOff", function()
		it("should be invalid by default", function()
			local state = DeviceOrientationFlagOff(nil, {})

			expect(state).to.equal(DeviceOrientationMode.Invalid)
		end)

		it("should be unmodified by other actions", function()
			local oldState = DeviceOrientationFlagOff(nil, {})
			local newState = DeviceOrientationFlagOff(oldState, { type = "not a real action" })

			expect(oldState).to.equal(newState)
		end)

		it("should be changed using SetDeviceOrientation", function()
			local state = DeviceOrientationFlagOff(nil, {})

			state = DeviceOrientationFlagOff(state, SetDeviceOrientation(DeviceOrientationMode.Invalid))
			expect(state).to.equal(DeviceOrientationMode.Invalid)

			state = DeviceOrientationFlagOff(state, SetDeviceOrientation(DeviceOrientationMode.Landscape))
			expect(state).to.equal(DeviceOrientationMode.Landscape)

			state = DeviceOrientationFlagOff(state, SetDeviceOrientation(DeviceOrientationMode.Portrait))
			expect(state).to.equal(DeviceOrientationMode.Portrait)
		end)

	end)

	describe("DeviceOrientationFlagOn", function()
		it("should be portrait by default", function()
			local state = DeviceOrientationFlagOn(nil, {})

			expect(state).to.equal(DeviceOrientationMode.Portrait)
		end)

		it("should be unmodified by other actions", function()
			local oldState = DeviceOrientationFlagOn(nil, {})
			local newState = DeviceOrientationFlagOn(oldState, { type = "not a real action" })

			expect(oldState).to.equal(newState)
		end)

		it("should be changed using SetDeviceOrientation", function()
			local state = DeviceOrientationFlagOn(nil, {})

			state = DeviceOrientationFlagOn(state, SetDeviceOrientation(DeviceOrientationMode.Landscape))
			expect(state).to.equal(DeviceOrientationMode.Landscape)

			state = DeviceOrientationFlagOn(state, SetDeviceOrientation(DeviceOrientationMode.Portrait))
			expect(state).to.equal(DeviceOrientationMode.Portrait)
		end)
	end)


end