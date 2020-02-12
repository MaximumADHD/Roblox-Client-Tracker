local Plugin = script.Parent.Parent.Parent
local MainView = require(Plugin.Src.Components.MainView)

local MockServiceWrapper = require(Plugin.Src.TestHelpers.MockServiceWrapper)

local Roact = require(Plugin.Packages.Roact)

return function()
    it("should construct and destroy without any errors", function()
        local container = Instance.new("Folder")

        local element = Roact.createElement(MockServiceWrapper, {}, {
            MainView = Roact.createElement(MainView, {
                CloseOverlay = function() end,
            })
        })

        local instance = Roact.mount(element, container)

        Roact.unmount(instance)
    end)
end