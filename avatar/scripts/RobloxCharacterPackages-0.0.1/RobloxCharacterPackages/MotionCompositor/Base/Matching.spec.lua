local Workspace = script.Parent.Parent
local Packages = Workspace.Parent
local JestGlobals = require(Packages.Dev.JestGlobals)
local Matching = require(Workspace.Base.Matching)
local Types = require(Workspace.Base.types)

local describe = JestGlobals.describe
local it = JestGlobals.it
local expect = JestGlobals.expect

describe("Matching", function()
    describe("createPhaseStateForBlendSpace", function()
        it("returns phase state with normalized time position", function()
            local phaseState1 = Matching.createPhaseStateForBlendSpace(0.1)
            local phaseState2 = Matching.createPhaseStateForBlendSpace(0.9)
            local phaseState3 = Matching.createPhaseStateForBlendSpace(1.5)
            local phaseState4 = Matching.createPhaseStateForBlendSpace(-2.2)

            expect(phaseState1).never.toHaveProperty("phaseSignal")
            expect(phaseState1.normalizedTimePosition).toBeCloseTo(0.1)
            expect(phaseState2).never.toHaveProperty("phaseSignal")
            expect(phaseState2.normalizedTimePosition).toBeCloseTo(0.9)
            expect(phaseState3).never.toHaveProperty("phaseSignal")
            expect(phaseState3.normalizedTimePosition).toBeCloseTo(0.5)
            expect(phaseState4).never.toHaveProperty("phaseSignal")
            expect(phaseState4.normalizedTimePosition).toBeCloseTo(0.8)
        end)
    end)

    describe("matchPhasesToState", function()
        it("returns 0 with non-nil phase group", function()
            local normalizedTimePosition = Matching.matchPhasesToState(
                { phaseSignal = {} :: Types.PhaseSignal } :: Types.PhaseState,
                {} :: Types.PhaseSignal
            )

            expect(normalizedTimePosition).toBe(0)
        end)

        it("returns normalized time position with nil PhaseSignal", function()
            local normalizedTimePosition = Matching.matchPhasesToState(
                { phaseSignal = {} :: Types.PhaseSignal, normalizedTimePosition = 0.4 },
                nil
            )

            expect(normalizedTimePosition).toBe(0.4)
        end)

        it("returns normalized time position with PhaseState without PhaseSignal", function()
            local normalizedTimePosition = Matching.matchPhasesToState(
                { normalizedTimePosition = 0.4 },
                {} :: Types.PhaseSignal
            )

            expect(normalizedTimePosition).toBe(0.4)
        end)
    end)
end)
