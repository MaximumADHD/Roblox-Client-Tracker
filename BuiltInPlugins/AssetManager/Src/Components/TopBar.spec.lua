local Plugin = script.Parent.Parent.Parent
local TopBar = require(Plugin.Src.Components.TopBar)

local MockServiceWrapper = require(Plugin.Src.TestHelpers.MockServiceWrapper)

local Roact = require(Plugin.Packages.Roact)

return function()
    it("should construct and destroy without any errors", function()
        local container = Instance.new("Folder")

        local element = Roact.createElement(MockServiceWrapper, {}, {
            TopBar = Roact.createElement(TopBar, {
                OnOverlayActivated = function() end,
                Enabled = true,
            })
        })

        local instance = Roact.mount(element, container)

        Roact.unmount(instance)
    end)
end