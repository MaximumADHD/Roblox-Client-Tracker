local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local MockServiceWrapper = require(Plugin.Src.TestHelpers.MockServiceWrapper)

local MenuEntry = require(script.Parent.MenuEntry)

return function()
    it("should create and destroy without errors", function()
        local mockServiceWrapper = Roact.createElement(MockServiceWrapper, {}, {
            MenuEntry = Roact.createElement(MenuEntry, {}), 
        })

        local instance = Roact.mount(mockServiceWrapper)
        Roact.unmount(instance)
    end)

    it("should render correctly", function()
        local mockServiceWrapper = Roact.createElement(MockServiceWrapper, {}, {
            MenuEntry = Roact.createElement(MenuEntry, {
                Title = "Test Title",
                Selected = true,
            }), 
        })

        local container = Instance.new("Folder")

        local instance = Roact.mount(mockServiceWrapper, container)

        local entry = container:FindFirstChildOfClass("Frame")
        expect(entry).to.be.ok()
        expect(entry.Highlight).to.be.ok()
        expect(entry.Highlight.BackgroundTransparency).to.equal(0)
        expect(entry.Title == "Test Title").to.be.ok()
    end)
end