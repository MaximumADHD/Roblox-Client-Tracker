return function()
    local Modules = game:GetService("CoreGui"):FindFirstChild("RobloxGui").Modules
    local SelectCategory = require(Modules.LuaApp.Actions.SelectCategory)

    describe("Action SelectCategory", function()
        it("should return a correct action name", function()
            expect(SelectCategory.name).to.equal("SelectCategory")
        end)
        it("should return a correct action type name", function()
            local action = SelectCategory(1)
            expect(action.type).to.equal(SelectCategory.name)
        end)
        it("should return a SelectCategory action with the correct status", function()
            local action = SelectCategory(1)

            expect(action).to.be.a("table")
            expect(action.categoryIndex).to.be.a("number")
            expect(action.categoryIndex).to.equal(1)
        end)
    end)
end