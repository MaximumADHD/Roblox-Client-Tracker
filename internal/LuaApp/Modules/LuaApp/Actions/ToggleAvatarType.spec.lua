return function()
    local Modules = game:GetService("CoreGui"):FindFirstChild("RobloxGui").Modules
    local ToggleAvatarType = require(Modules.LuaApp.Actions.ToggleAvatarType)

    describe("Action ToggleAvatarType", function()
        it("should return a correct action name", function()
            expect(ToggleAvatarType.name).to.equal("ToggleAvatarType")
        end)
        it("should return a correct action type name", function()
            local action = ToggleAvatarType()
            expect(action.type).to.equal(ToggleAvatarType.name)
        end)
        it("should return a ToggleAvatarType action with the correct status", function()
            local action = ToggleAvatarType()
            expect(action).to.be.a("table")
        end)
    end)
end