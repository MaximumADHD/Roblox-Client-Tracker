local Plugin = script.Parent.Parent.Parent
local ExplorerOverlay = require(Plugin.Src.Components.ExplorerOverlay)

local MockServiceWrapper = require(Plugin.Src.TestHelpers.MockServiceWrapper)

local Roact = require(Plugin.Packages.Roact)

return function()
    it("should construct and destroy without any errors", function()
        local container = Instance.new("Folder")

        local element = Roact.createElement(MockServiceWrapper, {}, {
            Overlay = Roact.createElement(ExplorerOverlay, {
                FileExplorerData = {
                    Name = "Test Name",
                    ClassName = "Folder",
                    Screen = "",
                    Children = {},
                },
                OnActivated = function() end,
                Enabled = true,
            }),
        })

        local instance = Roact.mount(element, container)

        Roact.unmount(instance)
    end)
end