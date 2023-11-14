local Workspace = script.Parent.Parent
local Packages = Workspace.Parent
local JestGlobals = require(Packages.Dev.JestGlobals)
local PropsTable = require(Workspace.Base.PropsTable)

local describe = JestGlobals.describe
local it = JestGlobals.it
local expect = JestGlobals.expect

describe("PropsTable", function()
    describe("props", function()
        it("return correct values", function()
            local props = PropsTable.new({ prop1 = 1, prop2 = 2, propHello = "hello" }, {})
            expect(props.prop1).toBe(1)
            expect(props.prop2).toBe(2)
            expect(props.propHello).toBe("hello")
        end)

        it("return correct default values", function()
            local props = PropsTable.new({ prop1 = 1, prop2 = 2 }, { missingProp = "not missing" })
            expect(props.prop1).toBe(1)
            expect(props.prop2).toBe(2)
            expect(props.missingProp).toBe("not missing")
        end)

        it("override defaults", function()
            local props = PropsTable.new(
                { prop1 = 1, prop2 = 2, propHello = "hello" },
                { prop1 = 24, prop2 = 42, propHello = "hi" }
            )
            expect(props.prop1).toBe(1)
            expect(props.prop2).toBe(2)
            expect(props.propHello).toBe("hello")
        end)

        it("return nil for nonexistant key", function()
            local props = PropsTable.new({ prop1 = 1, prop2 = 2, propHello = "hello" }, {})

            expect(props.someMissingKey1).toBeNil()
            expect(props.someMissingKey2).toBeNil()
        end)
    end)

    describe("prop expressions", function()
        it("evaluate successfully", function()
            local props = PropsTable.new({
                propExpr1 = function(params)
                    return 1
                end,
                propExpr2 = function(params)
                    return 2
                end,
                propExprHello = function(params)
                    return "hello"
                end,
            }, {})
            expect(props.propExpr1).toBe(1)
            expect(props.propExpr2).toBe(2)
            expect(props.propExprHello).toBe("hello")
        end)

        it("evaluate with params", function()
            local props = PropsTable.new({
                propExpr1 = function(params)
                    return params.param1
                end,
                propExpr2 = function(params)
                    return (params.param1 :: number) * 2
                end,
                propExprHello = function(params)
                    return (params.paramHello :: string) .. " world"
                end,
            }, {})

            props:setParams({
                param1 = 1,
                paramHello = "hello",
            })
            expect(props.propExpr1).toBe(1)
            expect(props.propExpr2).toBe(2)
            expect(props.propExprHello).toBe("hello world")
        end)

        it("work with regular props and params", function()
            local props = PropsTable.new({
                prop42 = 42,
                propExprPi2 = function(params)
                    return (params.pi :: number) * 2
                end,
            }, {})

            props:setParams({
                pi = math.pi,
            })
            expect(props.prop42).toBe(42)
            expect(props.propExprPi2).toBeCloseTo(math.pi * 2)
        end)
    end)

    describe("override", function()
        it("removes overrides when nil", function()
            local props = PropsTable.new({ prop1 = 1, prop2 = 2, propHello = "hello" }, {})

            props:override({ prop1 = 2, prop2 = 3, propHello = "goodbye" })
            props:override(nil)

            expect(props.prop1).toBe(1)
            expect(props.prop2).toBe(2)
            expect(props.propHello).toBe("hello")
        end)

        it("overrides values succesfully", function()
            local props = PropsTable.new(
                { prop1 = 1, prop2 = 2, propHello = "hello", notOverriden = "Not Overridden" },
                {}
            )

            props:override({ prop1 = 2, prop2 = 3, propHello = "goodbye" })

            expect(props.prop1).toBe(2)
            expect(props.prop2).toBe(3)
            expect(props.propHello).toBe("goodbye")
            expect(props.notOverriden).toBe("Not Overridden")
        end)
    end)

    describe("getAllValues", function()
        it("returns a table with all values", function()
            local props = PropsTable.new({ prop1 = 1, prop2 = 2, propHello = "hello" }, {})

            local allValues = props:getAllValues()

            expect(allValues.prop1).toBe(1)
            expect(allValues.prop2).toBe(2)
            expect(allValues.propHello).toBe("hello")
        end)

        it("returns a table with evaluated expressions", function()
            local props = PropsTable.new({
                expression1 = function()
                    return 1
                end,
                expression2 = function(params)
                    return params.param1
                end,
            }, {})
            props:setParams({ param1 = "param" })

            local allValues = props:getAllValues()

            expect(allValues.expression1).toBe(1)
            expect(allValues.expression2).toBe("param")
        end)
    end)
end)
