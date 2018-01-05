return function()
    local Modules = game:GetService("CoreGui"):FindFirstChild("RobloxGui").Modules
    local SetAvatarBodyType = require(Modules.LuaApp.Actions.SetAvatarBodyType)

    describe("Action SetAvatarBodyType", function()
        it("should return a correct action name", function()
            expect(SetAvatarBodyType.name).to.equal("SetAvatarBodyType")
        end)
        it("should return a correct action type name", function()
            local action = SetAvatarBodyType(0.5)
            expect(action.type).to.equal(SetAvatarBodyType.name)
        end)
        it("should return a SetAvatarBodyType action with the correct status", function()
            local action = SetAvatarBodyType(0.5)

            expect(action).to.be.a("table")
            expect(action.bodyType).to.be.a("number")
            expect(action.bodyType).to.equal(0.5)
        end)
    end)
end