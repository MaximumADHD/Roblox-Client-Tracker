return function()
    local Plugin = script.Parent.Parent.Parent.Parent
    local Roact = require(Plugin.Packages.Roact)
    local mockContext = require(Plugin.Src.Util.mockContext)

    local MaterialGrid = require(script.Parent)

    local function createTestElement(props: MaterialGrid.Props?)
        props = props or {}

        return mockContext({
            MaterialGrid = Roact.createElement(MaterialGrid, props)
        })
    end

    it("should create and destroy without errors", function()
        local element = createTestElement()
        local instance = Roact.mount(element)
        Roact.unmount(instance)
    end)

    it("should render correctly", function()
        local container = Instance.new("Folder")
        local element = createTestElement({
            LayoutOrder = 1,
            Size = UDim2.fromScale(1, 1),
        })
        local instance = Roact.mount(element, container)

        local main = container:FindFirstChildOfClass("Frame")
        expect(main).to.be.ok()
        Roact.unmount(instance)
    end)
end
