local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Roact)

local provideMockContextForGameSettings = require(Plugin.Src.Components.provideMockContextForGameSettings)

local PaidAccess = require(Plugin.Src.Components.PaidAccess)

return function()
    it("should construct and destroy without errors", function()
        local PaidAccess = provideMockContextForGameSettings(nil, {
            element = Roact.createElement(PaidAccess, {
            Title = "Paid Access",
            Price = 200,
            TaxRate = 0.3,
            MinimumFee = 1,

            LayoutOrder = 1,
            Enabled = true,
            Selected = true,
            SelectionChanged = function()
            end,
        })})

        local handle = Roact.mount(PaidAccess)
        expect(PaidAccess).to.be.ok()
        expect(handle).to.be.ok()
        Roact.unmount(handle)
    end)
end