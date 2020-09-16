local Plugin = script.Parent.Parent.Parent
local ListItem = require(Plugin.Src.Components.ListItem)

local MockServiceWrapper = require(Plugin.Src.TestHelpers.MockServiceWrapper)

local Roact = require(Plugin.Packages.Roact)

return function()
    it("should construct and destroy without any errors", function()
        local container = Instance.new("Folder")

        local element = Roact.createElement(MockServiceWrapper, {}, {
            ListItem = Roact.createElement(ListItem, {
                AssetData = {
                    name = "Test Name",
                    ClassName = "Image",
                }
            })
        })

        local instance = Roact.mount(element, container)

        Roact.unmount(instance)
    end)
end