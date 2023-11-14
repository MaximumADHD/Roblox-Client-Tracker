local Workspace = script.Parent.Parent
local Packages = Workspace.Parent
local FiniteLayer = require(Workspace.Base.FiniteLayer)
local JestGlobals = require(Packages.Dev.JestGlobals)

local describe = JestGlobals.describe
local it = JestGlobals.it
local expect = JestGlobals.expect

describe("FiniteLayer", function()
    describe("extend", function()
        it("creates proper layer definition", function()
            local testLayer = FiniteLayer:extend("TestFiniteLayer")

            expect(getmetatable(testLayer)).never.toBeNil()
            expect(tostring(testLayer)).toBe("TestFiniteLayer")
            expect(testLayer.__layerName).toBe("TestFiniteLayer")
            expect(testLayer).never.toContain("extend")
            expect(testLayer).toHaveProperty("__index")
            expect(testLayer).toHaveProperty("__tostring")
            expect(testLayer).toHaveProperty("init")
            expect(testLayer).toHaveProperty("defaultProps")
            expect(testLayer).toHaveProperty("overrideProperties")
            expect(testLayer).toHaveProperty("update")
            expect(testLayer).toHaveProperty("evaluate")
            expect(testLayer).toHaveProperty("update")
            expect(testLayer).toHaveProperty("reset")
            expect(testLayer).toHaveProperty("__resetInternal")
            expect(testLayer).toHaveProperty("getChildDebugData")
            expect(testLayer).toHaveProperty("getLayerWatches")
            expect(testLayer).toHaveProperty("getDebugData")
            -- New FiniteLayer methods
            expect(testLayer).toHaveProperty("getDuration")
        end)
    end)

    describe("__tostring", function()
        it("returns layer name", function()
            local testLayer = FiniteLayer:extend("TestFiniteLayer")

            expect(testLayer:__tostring()).toBe("TestFiniteLayer")
        end)
    end)

    describe("getDuration", function()
        it("throws error", function()
            local testLayer = FiniteLayer:extend("TestFiniteLayer")

            expect(function()
                testLayer:getDuration()
            end).toThrowError()
        end)
    end)

    describe("getDebugData", function()
        it("uses getDuration and adds length to state", function()
            local testLayer = FiniteLayer:extend("TestFiniteLayer")
            testLayer.props = {
                getAllValues = function()
                    return {}
                end,
            }
            function testLayer:getDuration()
                return 2
            end

            local debugData = testLayer:getDebugData()

            expect(debugData.state.length).toBe(2)
        end)
    end)
end)
