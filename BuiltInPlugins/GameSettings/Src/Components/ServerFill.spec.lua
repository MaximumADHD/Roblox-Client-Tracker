local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Roact)

local provideMockContextForGameSettings = require(Plugin.Src.Components.provideMockContextForGameSettings)

local ServerFill = require(Plugin.Src.Components.ServerFill)

return function()
    it("should construct and destroy without errors", function()
        local ServerFill = provideMockContextForGameSettings(nil, {
            element = Roact.createElement(ServerFill, {
            Title = "Server Fill",

            LayoutOrder = 1,
            Enabled = true,
            CustomSocialSlotsCount = 10,
			Selected = "Automatic",
			ErrorState = "Error",

			OnSocialSlotTypeChanged = function(button)

			end,
			OnCustomSocialSlotsCountChanged = function(customSocialSlotsCount)

			end,
        })})

        local handle = Roact.mount(ServerFill)
        expect(ServerFill).to.be.ok()
        expect(handle).to.be.ok()
        Roact.unmount(handle)
    end)
end