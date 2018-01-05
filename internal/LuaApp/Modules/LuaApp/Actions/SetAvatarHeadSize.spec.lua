return function()
    local Modules = game:GetService("CoreGui"):FindFirstChild("RobloxGui").Modules
    local SetAvatarHeadSize = require(Modules.LuaApp.Actions.SetAvatarHeadSize)

    describe("Action SetAvatarHeadSize", function()
        it("should return a correct action name", function()
            expect(SetAvatarHeadSize.name).to.equal("SetAvatarHeadSize")
        end)
        it("should return a correct action type name", function()
            local action = SetAvatarHeadSize(0.95)
            expect(action.type).to.equal(SetAvatarHeadSize.name)
        end)
        it("should return a SetAvatarHeadSize action with the correct status", function()
            local action = SetAvatarHeadSize(0.95)

            expect(action).to.be.a("table")
            expect(action.head).to.be.a("number")
            expect(action.head).to.equal(0.95)
        end)
    end)
end