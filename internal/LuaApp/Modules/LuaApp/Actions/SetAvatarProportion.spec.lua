return function()
    local Modules = game:GetService("CoreGui"):FindFirstChild("RobloxGui").Modules
    local SetAvatarProportion = require(Modules.LuaApp.Actions.SetAvatarProportion)

    describe("Action SetAvatarProportion", function()
        it("should return a correct action name", function()
            expect(SetAvatarProportion.name).to.equal("SetAvatarProportion")
        end)
        it("should return a correct action type name", function()
            local action = SetAvatarProportion(0.3)
            expect(action.type).to.equal(SetAvatarProportion.name)
        end)
        it("should return a SetAvatarProportion action with the correct status", function()
            local action = SetAvatarProportion(0.3)

            expect(action).to.be.a("table")
            expect(action.proportion).to.be.a("number")
            expect(action.proportion).to.equal(0.3)
        end)
    end)
end