return function()
    local ActiveUserReducer = require(script.Parent.ActiveUser)
    local Actions = script.Parent.Parent.Actions
    local ActionType = require(Actions.ActionType)
    local ActiveUserActions = require(Actions.ActiveUserActions)

    describe("initial state", function()
        it("should return an initial table when passed nil", function()
            local state = ActiveUserReducer(nil, {})
            expect(state).to.be.a("table")
        end)
    end)

    describe("Action SetUnder13Status", function()
        it("should set under13 status in the store", function()
            local action = ActiveUserActions.SetUnder13(false)
            local state = ActiveUserReducer(state, action)

            expect(state).to.be.a("table")
            expect(state.Under13).to.be.a("boolean")
            expect(state.Under13).to.equal(false)
        end)

        it ("should update under13 status in the store", function()
            local action = ActiveUserActions.SetUnder13(false)
            local state = ActiveUserReducer(state, action)

            expect(state).to.be.a("table")
            expect(state.Under13).to.be.a("boolean")
            expect(state.Under13).to.equal(false)

            action = ActiveUserActions.SetUnder13(true)
            state = ActiveUserReducer(state, action)

            expect(state.Under13).to.equal(true)
        end)
    end)
end