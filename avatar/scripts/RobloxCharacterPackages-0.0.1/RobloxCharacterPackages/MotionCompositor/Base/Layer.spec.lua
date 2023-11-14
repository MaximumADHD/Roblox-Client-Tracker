local Workspace = script.Parent.Parent
local Packages = Workspace.Parent
local JestGlobals = require(Packages.Dev.JestGlobals)
local Layer = require(Workspace.Base.Layer)
local Types = require(Workspace.Base.types)

local describe = JestGlobals.describe
local it = JestGlobals.it
local expect = JestGlobals.expect

describe("Layer", function()
    describe("extend", function()
        it("creates proper layer definition", function()
            local testLayer = Layer:extend("TestLayer")

            expect(getmetatable(testLayer)).never.toBeNil()
            expect(tostring(testLayer)).toBe("TestLayer")
            expect(testLayer.__layerName).toBe("TestLayer")
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
        end)
    end)

    describe("__tostring", function()
        it("returns layer name", function()
            local testLayer = Layer:extend("TestLayer")

            expect(testLayer:__tostring()).toBe("TestLayer")
        end)
    end)

    describe("evaluate", function()
        it("throws error for default implementation", function()
            local testLayer = Layer:extend("TestLayer")

            expect(function()
                testLayer:evaluate(nil)
            end).toThrowError("TestLayer:evaluate not implemented")
        end)
    end)

    describe("update", function()
        it("default implementation updates all children", function()
            local testLayer = Layer:extend("TestLayer")

            local testChild1 = { update = JestGlobals.jest.fn() }
            local testChild2 = { update = JestGlobals.jest.fn() }
            local testChild3 = { update = JestGlobals.jest.fn() }

            testLayer.children = { testChild1, testChild2, testChild3 }
            local emptyPhaseStateTable = {} :: Types.PhaseState
            testLayer:update(0.2, emptyPhaseStateTable)

            expect(testChild1.update).toBeCalledWith(testChild1, 0.2, emptyPhaseStateTable)
            expect(testChild2.update).toBeCalledWith(testChild2, 0.2, emptyPhaseStateTable)
            expect(testChild3.update).toBeCalledWith(testChild3, 0.2, emptyPhaseStateTable)
        end)
    end)

    describe("reset", function()
        it("calls __resetInternal and resets children", function()
            local testLayer = Layer:extend("TestLayer")
            testLayer.__resetInternal = JestGlobals.jest.fn()

            local testChild1 = { reset = JestGlobals.jest.fn() }
            local testChild2 = { reset = JestGlobals.jest.fn() }
            local testChild3 = { reset = JestGlobals.jest.fn() }

            testLayer.children = { testChild1, testChild2, testChild3 }
            testLayer:reset()

            expect(testLayer.__resetInternal).toBeCalled()
            expect(testChild1.reset).toBeCalled()
            expect(testChild2.reset).toBeCalled()
            expect(testChild3.reset).toBeCalled()
        end)
    end)

    describe("overrideProperties", function()
        it("overrides PropsTable props", function()
            local testLayer = Layer:extend("TestLayer")
            local mockPropsTable = {
                override = JestGlobals.jest.fn(),
            }
            local overrides = {
                override1 = "hello",
                override2 = 42,
            }
            testLayer.props = mockPropsTable

            testLayer:overrideProperties(overrides)

            expect(mockPropsTable.override).toBeCalledWith(mockPropsTable, overrides)
        end)
    end)

    describe("getDebugData", function()
        it("creates valid debug data table", function()
            local testLayer = Layer:extend("TestLayer")
            testLayer.name = "Test"
            testLayer.state = { basicState = true }
            testLayer.props = {
                getAllValues = JestGlobals.jest.fn(),
            }

            local debugData = testLayer:getDebugData()

            expect(debugData.name).toBe("Test")
            expect(debugData.className).toBe("TestLayer")
            expect(debugData.state).toBe(testLayer.state)
            expect(debugData.watches).toBe(nil)
            expect(testLayer.props.getAllValues).toBeCalled()
        end)
    end)

    describe("getChildDebugData", function()
        it("returns nil", function()
            local testLayer = Layer:extend("TestLayer")

            expect(testLayer:getChildDebugData(0, {})).toBeNil()
            expect(testLayer:getChildDebugData(1, {})).toBeNil()
            expect(testLayer:getChildDebugData(-10, {})).toBeNil()
        end)
    end)
end)
