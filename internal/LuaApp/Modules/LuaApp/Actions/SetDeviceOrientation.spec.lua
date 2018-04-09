return function()
    local Modules = game:GetService("CoreGui"):FindFirstChild("RobloxGui").Modules
    local SetDeviceOrientation = require(Modules.LuaApp.Actions.SetDeviceOrientation)
    local DeviceOrientationMode = require(Modules.LuaApp.DeviceOrientationMode)

    describe("Action SetDeviceOrientation", function()
        it("should return a correct action name", function()
            expect(SetDeviceOrientation.name).to.equal("SetDeviceOrientation")
        end)
        it("should return a correct action type name", function()
            local action = SetDeviceOrientation(DeviceOrientationMode.Portrait)
            expect(action.type).to.equal(SetDeviceOrientation.name)
        end)
        it("should return a SetDeviceOrientation action with the correct status", function()
            local action = SetDeviceOrientation(DeviceOrientationMode.Landscape)

            expect(action).to.be.a("table")
            expect(action.deviceOrientation).to.be.a("string")
            expect(action.deviceOrientation).to.equal(DeviceOrientationMode.Landscape)

            action = SetDeviceOrientation(DeviceOrientationMode.Portrait)

            expect(action).to.be.a("table")
            expect(action.deviceOrientation).to.be.a("string")
            expect(action.deviceOrientation).to.equal(DeviceOrientationMode.Portrait)
        end)
    end)
end