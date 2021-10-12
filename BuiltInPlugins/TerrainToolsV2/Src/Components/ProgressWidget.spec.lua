local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)

local MockProvider = require(Plugin.Src.TestHelpers.MockProvider)

local ProgressWidget = require(script.Parent.ProgressWidget)

return function()
    if game:GetFastFlag("TerrainToolsProgressWidgetInfoDialogTests") then
        it("should create and destroy without errors", function()
            local element = MockProvider.createElementWithMockContext(ProgressWidget)
            local instance = Roact.mount(element)
            Roact.unmount(instance)
        end)
    end
end
