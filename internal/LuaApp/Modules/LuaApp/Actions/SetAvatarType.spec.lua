return function()
    local Modules = game:GetService("CoreGui"):FindFirstChild("RobloxGui").Modules
    local SetAvatarType = require(Modules.LuaApp.Actions.SetAvatarType)

    describe("Action SetAvatarType", function()
        it("should return a correct action name", function()
            expect(SetAvatarType.name).to.equal("SetAvatarType")
        end)
        it("should return a correct action type name", function()
            local action = SetAvatarType("R6")
            expect(action.type).to.equal(SetAvatarType.name)
        end)
        it("should return a SetAvatarType action with the correct status", function()
            local action = SetAvatarType("R6")

            expect(action).to.be.a("table")
            expect(action.avatarType).to.be.a("string")
            expect(action.avatarType).to.equal("R6")

            action = SetAvatarType("R15")

            expect(action).to.be.a("table")
            expect(action.avatarType).to.be.a("string")
            expect(action.avatarType).to.equal("R15")
        end)
    end)
end