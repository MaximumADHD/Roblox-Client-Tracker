local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local MockServiceWrapper = require(Plugin.Src.TestHelpers.MockServiceWrapper)

local MenuBar = require(script.Parent.MenuBar)

return function()
    it("should create and destroy without errors", function()
        local mockServiceWrapper = Roact.createElement(MockServiceWrapper, {}, {
            MenuBar = Roact.createElement(MenuBar, {
                Entries = {
                    { Name = "Test Entry" }
                }
            }),
        })

        local instance = Roact.mount(mockServiceWrapper)
        Roact.unmount(instance)
    end)

    it("should hold menu entries", function()
        local container = Instance.new("Folder")
        local mockBar = Roact.createElement(MockServiceWrapper, {}, {
            MenuBar = Roact.createElement(MenuBar, {
                Entries = {
                    { Name = "Test Entry #1" },
                    { Name = "Test Entry #2" },
                }
            })
        })

        local instance = Roact.mount(mockBar, container)
        local menuBar = container:FindFirstChildOfClass("Frame")

        expect(menuBar).to.be.ok()
        expect(#menuBar:GetChildren()).to.equal(3)
        expect(menuBar:GetChildren()[1]).to.be.ok()
        expect(menuBar:GetChildren()[2]).to.be.ok()
    end)
end