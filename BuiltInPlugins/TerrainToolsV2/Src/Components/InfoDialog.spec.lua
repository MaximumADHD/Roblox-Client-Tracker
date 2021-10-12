local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)

local MockProvider = require(Plugin.Src.TestHelpers.MockProvider)

local InfoDialog = require(script.Parent.InfoDialog)

return function()
    if game:GetFastFlag("TerrainToolsProgressWidgetInfoDialogTests") then
        it("should create and destroy without errors", function()
            local element = MockProvider.createElementWithMockContext(InfoDialog)
            local instance = Roact.mount(element)
            Roact.unmount(instance)
        end)
    end
end
