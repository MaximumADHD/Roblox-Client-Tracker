local Plugin = script.Parent.Parent.Parent
local FolderTreeItem = require(Plugin.Src.Components.FolderTreeItem)

local MockServiceWrapper = require(Plugin.Src.TestHelpers.MockServiceWrapper)

local Roact = require(Plugin.Packages.Roact)

return function()
    it("should construct and destroy without any errors", function()
        local container = Instance.new("Folder")

        local element = Roact.createElement(MockServiceWrapper, {}, {
            FolderTreeItem = Roact.createElement(FolderTreeItem, {
                -- data information
                element = {
                    Name = "Model",
                    ClassName = "Model",
                },
                parent = nil,

                -- styling information
                rowIndex = 0,
                indent = 0,
                canExpand = true,
                isExpanded = false,
                isSelected = false,

                -- function callbacks
                toggleExpanded = function()
                    return true
                end,
                toggleSelected = function()
                    return true
                end,

                children = {},
        })})

        local instance = Roact.mount(element, container)

        Roact.unmount(instance)
    end)
end