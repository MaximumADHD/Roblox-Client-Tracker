return function()
    local Modules = game:GetService("CoreGui"):FindFirstChild("RobloxGui").Modules
    local SetPagePaused = require(Modules.LuaApp.Actions.SetPagePaused)

    describe("Action SetPagePaused", function()
        it("should return a correct action name", function()
            expect(SetPagePaused.name).to.equal("SetPagePaused")
        end)
        it("should return a correct action type name", function()
            local action = SetPagePaused(true)
            expect(action.type).to.equal(SetPagePaused.name)
        end)
        it("should return a SetPagePaused action with the correct status", function()
            local action = SetPagePaused(true)

            expect(action).to.be.a("table")
            expect(action.value).to.be.a("boolean")
            expect(action.value).to.equal(true)

            action = SetPagePaused(false)

            expect(action).to.be.a("table")
            expect(action.value).to.be.a("boolean")
            expect(action.value).to.equal(false)
        end)
    end)
end