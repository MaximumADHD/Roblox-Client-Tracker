return function()
    local Modules = game:GetService("CoreGui"):FindFirstChild("RobloxGui").Modules
    local SetAvatarWidth = require(Modules.LuaApp.Actions.SetAvatarWidth)

    describe("Action SetAvatarWidth", function()
        it("should return a correct action name", function()
            expect(SetAvatarWidth.name).to.equal("SetAvatarWidth")
        end)
        it("should return a correct action type name", function()
            local action = SetAvatarWidth(0.7, 0.85)
            expect(action.type).to.equal(SetAvatarWidth.name)
        end)
        it("should return a SetAvatarWidth action with the correct status", function()
            local action = SetAvatarWidth(0.7, 0.85)

            expect(action).to.be.a("table")
            expect(action.width).to.be.a("number")
            expect(action.width).to.equal(0.7)
            expect(action.depth).to.be.a("number")
            expect(action.depth).to.equal(0.85)
        end)
    end)
end