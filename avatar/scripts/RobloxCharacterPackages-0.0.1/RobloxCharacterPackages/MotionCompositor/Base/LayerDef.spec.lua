local Workspace = script.Parent.Parent
local Packages = Workspace.Parent
local JestGlobals = require(Packages.Dev.JestGlobals)
local Layer = require(Workspace.Base.Layer)
local LayerDef = require(Workspace.Base.LayerDef)
local Types = require(Workspace.Base.types)

local beforeEach = JestGlobals.beforeEach
local describe = JestGlobals.describe
local it = JestGlobals.it
local expect = JestGlobals.expect

describe("LayerDef", function()
    local TestLayerClass = nil

    beforeEach(function()
        TestLayerClass =
            Layer:extend("TestLayer") :: Types.ExtendLayer<{ state: { someState: boolean } }>

        TestLayerClass.defaultProps = {
            boolProp = true,
            stringProp = "test",
            numProp = 2,
        }
    end)

    describe("new", function()
        it("creates layer def with prop methods", function()
            local layerDef = LayerDef.new(TestLayerClass)

            expect(layerDef).toHaveProperty("name")
            expect(layerDef).toHaveProperty("boolProp")
            expect(layerDef).toHaveProperty("stringProp")
            expect(layerDef).toHaveProperty("numProp")
            expect(layerDef).never.toHaveProperty("someMissingProp")
        end)

        it("throws error with duplicate property", function()
            TestLayerClass.defaultProps.name = "name"

            expect(function()
                LayerDef.new(TestLayerClass)
            end).toThrowError()
        end)
    end)

    describe("prop methods", function()
        it("update props and return def", function()
            local layerDef = LayerDef.new(TestLayerClass)

            expect(layerDef:name("TestDef")).toBe(layerDef)
            expect(layerDef:boolProp(false)).toBe(layerDef)
            expect(layerDef:stringProp("Changed String")).toBe(layerDef)
            expect(layerDef:numProp(8)).toBe(layerDef)
            expect(layerDef.layerName).toBe("TestDef")
            expect(layerDef.props.boolProp).toBeFalsy()
            expect(layerDef.props.stringProp).toBe("Changed String")
            expect(layerDef.props.numProp).toBe(8)
            expect(layerDef.props.someMissingProp).toBeNil()
        end)
    end)

    describe("addChild", function()
        it("adds child with linkData and return def", function()
            local layerDef = LayerDef.new(TestLayerClass)
            local childTable = {} :: LayerDef.LayerDef

            expect(layerDef:addChild({ someData = "test" }, childTable)).toBe(layerDef)
            expect(#layerDef.children).toBe(1)
            expect(layerDef.children).toContain(childTable)
        end)
    end)

    describe("inherit", function()
        it("recursively copies the definition tree ", function()
            local testCompositorDef = LayerDef.new(TestLayerClass)
                :name("Layer1")
                :stringProp("layer1string")
                :addChild({}, LayerDef.new(TestLayerClass):name("Layer2"):boolProp(false))
                :addChild(
                    {},
                    LayerDef.new(TestLayerClass)
                        :name("Layer3")
                        :numProp(12)
                        :addChild({}, LayerDef.new(TestLayerClass):name("Layer4"):boolProp(true))
                )

            local inheritedDef = testCompositorDef:inherit()

            expect(inheritedDef).never.toBe(testCompositorDef)
            expect(inheritedDef.layer).toBe(TestLayerClass)
            expect(inheritedDef.layerName).toBe("Layer1")
            expect(inheritedDef.props.stringProp).toBe("layer1string")
            local layer2Def = inheritedDef.children[1]
            expect(layer2Def).never.toBe(testCompositorDef.children[1])
            expect(layer2Def.layer).toBe(TestLayerClass)
            expect(layer2Def.layerName).toBe("Layer2")
            expect(layer2Def.props.boolProp).toBeFalsy()
            local layer3Def = inheritedDef.children[2]
            expect(layer3Def).never.toBe(testCompositorDef.children[2])
            expect(layer3Def.layer).toBe(TestLayerClass)
            expect(layer3Def.layerName).toBe("Layer3")
            expect(layer3Def.props.numProp).toBe(12)
            local layer4Def = inheritedDef.children[2].children[1]
            expect(layer4Def).never.toBe(testCompositorDef.children[2].children[1])
            expect(layer4Def.layer).toBe(TestLayerClass)
            expect(layer4Def.layerName).toBe("Layer4")
            expect(layer4Def.props.boolProp).toBeTruthy()
        end)
    end)

    describe("instantiate", function()
        local testCompositorDef

        beforeEach(function()
            testCompositorDef = LayerDef.new(TestLayerClass)
                :name("Layer1")
                :stringProp("layer1string")
                :addChild(
                    { someLinkData = "someLinkData" },
                    LayerDef.new(TestLayerClass):name("Layer2"):boolProp(false)
                )
                :addChild(
                    {},
                    LayerDef.new(TestLayerClass)
                        :name("Layer3")
                        :numProp(12)
                        :addChild({}, LayerDef.new(TestLayerClass):name("Layer4"):boolProp(true))
                )
        end)

        it("creates layer instance tree with names, props, and linkdata", function()
            local layerInstanceTree = testCompositorDef:instantiate({} :: Types.Context)

            expect(layerInstanceTree.name).toBe("Layer1")
            expect(layerInstanceTree.props.stringProp).toBe("layer1string")
            expect(layerInstanceTree).toHaveProperty("state")
            local layer2 = layerInstanceTree.children[1]
            expect(layer2.name).toBe("Layer2")
            expect(layer2.linkData).never.toBe(testCompositorDef.children[1].linkData)
            expect(layer2.props.boolProp).toBeFalsy()
            expect((layer2.linkData :: Types.Map).someLinkData).toBe("someLinkData")
            local layer3 = layerInstanceTree.children[2]
            expect(layer3.name).toBe("Layer3")
            expect(layer3.props.numProp).toBe(12)
            local layer4 = layerInstanceTree.children[2].children[1]
            expect(layer4.name).toBe("Layer4")
            expect(layer4.props.boolProp).toBeTruthy()
        end)

        it("passes context to all layers", function()
            local fakeContext = { params = {} } :: any
            local layerInstanceTree = testCompositorDef:instantiate(fakeContext :: Types.Context)

            expect(layerInstanceTree.context).toBe(fakeContext)
            expect(layerInstanceTree.props.__paramsTable).toBe(fakeContext.params)
            local layer2 = layerInstanceTree.children[1]
            expect(layer2.context).toBe(fakeContext)
            expect(layer2.props.__paramsTable).toBe(fakeContext.params)
            local layer3 = layerInstanceTree.children[2]
            expect(layer3.context).toBe(fakeContext)
            expect(layer3.props.__paramsTable).toBe(fakeContext.params)
            local layer4 = layerInstanceTree.children[2].children[1]
            expect(layer4.context).toBe(fakeContext)
            expect(layer4.props.__paramsTable).toBe(fakeContext.params)
        end)
    end)
end)
