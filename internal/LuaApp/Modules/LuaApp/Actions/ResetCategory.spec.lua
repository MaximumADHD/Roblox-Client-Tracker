return function()
    local Modules = game:GetService("CoreGui"):FindFirstChild("RobloxGui").Modules
    local ResetCategory = require(Modules.LuaApp.Actions.ResetCategory)

    describe("Action ResetCategory", function()
        it("should return a correct action name", function()
            expect(ResetCategory.name).to.equal("ResetCategory")
        end)
        it("should return a correct action type name", function()
            local action = ResetCategory()
            expect(action.type).to.equal(ResetCategory.name)
        end)
        it("should return a ResetCategory action with the correct status", function()
            local action = ResetCategory()
            expect(action).to.be.a("table")
        end)
    end)
end