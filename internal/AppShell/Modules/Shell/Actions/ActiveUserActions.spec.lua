return function()
    local Actions = script.Parent.Parent.Actions
    local ActionType = require(Actions.ActionType)
    local ActiveUserActions = require(Actions.ActiveUserActions)

    describe("Action SetUnder13", function()
        it("should return a SetUnder13 action with the correct status", function()
            local action = ActiveUserActions.SetUnder13(true)

            expect(action).to.be.a("table")
            expect(action.type).to.equal(ActionType.SetUnder13Status)
            expect(action.status).to.be.a("boolean")
            expect(action.status).to.equal(true)
        end)
    end)

    describe("Action GetUnder13", function()
        it("should return a 'thunk' as the action", function()
            local thunk = ActiveUserActions.GetUnder13()

            expect(thunk).to.be.a("function")
        end)
    end)
end