local Packages = game.ReplicatedStorage.Packages

local JestGlobals = require(Packages.Dev.JestGlobals)
local beforeEach = JestGlobals.beforeEach
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest

local BaseStateMachine = script.Parent
local State = require(BaseStateMachine.BaseStateModule)
local Transition = require(BaseStateMachine.BaseTransitionModule)

local testState

describe("Handling State Transitions", function()
    beforeEach(function()
        testState = State.new()
    end)

    it("SHOULD start with no transitions", function()
        expect(#testState.transitions).toEqual(0)

        local transition = Transition.new()
        testState:AddTransition(transition)
        expect(#testState.transitions).toEqual(1)
    end)

    it("SHOULD test all transitions", function()
        local testFn = jest.fn(function()
            return false
        end)

        local transition1 = Transition.new()
        transition1.name = "Transition 1"
        transition1.Test = testFn
        testState:AddTransition(transition1)

        local transition2 = Transition.new()
        transition2.name = "Transition 2"
        transition2.Test = testFn
        testState:AddTransition(transition2)

        local nextState = testState:CheckTransitions()
        expect(testFn).toBeCalledTimes(2)
        expect(nextState).toBe(testState)
    end)
end)
