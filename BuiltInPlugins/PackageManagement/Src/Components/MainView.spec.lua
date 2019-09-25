local Plugin = script.Parent.Parent.Parent

local Roact =require(Plugin.Packages.Roact)
local MockServiceWrapper = require(Plugin.Src.TestHelpers.MockServiceWrapper)

local MainView = require(Plugin.Src.Components.MainView)

return function()
    it("should create and destroy without errors", function()
        local mockServiceWrapper = Roact.createElement(MockServiceWrapper, {}, {
            MainView = Roact.createElement(MainView, {
                MenuEntries = {
                    { Name = "Test Entry" }
                }
            })
        })

        local instance = Roact.mount(mockServiceWrapper)
        Roact.unmount(instance)
    end)

    it("should render correctly", function()
        local container = Instance.new("Folder")
        local mockServiceWrapper = Roact.createElement(MockServiceWrapper, {}, {
            MainView = Roact.createElement(MainView, {
                MenuEntries = {
                    { Name = "Test Entry #1" }
                }
            })
        })

        local instance = Roact.mount(mockServiceWrapper, container)
        local mainView = container:FindFirstChildOfClass("Frame")

        expect(mainView).to.be.ok()
        expect(mainView.MenuBar).to.be.ok()
        expect(mainView.Page).to.be.ok()
    end)
end