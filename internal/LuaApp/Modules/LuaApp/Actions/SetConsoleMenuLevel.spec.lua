return function()
    local Modules = game:GetService("CoreGui"):FindFirstChild("RobloxGui").Modules
    local SetConsoleMenuLevel = require(Modules.LuaApp.Actions.SetConsoleMenuLevel)

    describe("Action SetConsoleMenuLevel", function()
        it("should return a correct action name", function()
            expect(SetConsoleMenuLevel.name).to.equal("SetConsoleMenuLevel")
        end)
        it("should return a correct action type name", function()
            local action = SetConsoleMenuLevel(1)
            expect(action.type).to.equal(SetConsoleMenuLevel.name)
        end)
        it("should return a SetConsoleMenuLevel action with the correct status", function()
            local action = SetConsoleMenuLevel(1)

            expect(action).to.be.a("table")
            expect(action.menuLevel).to.be.a("number")
            expect(action.menuLevel).to.equal(1)
        end)
    end)
end