local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Roact)

local provideMockContextForGameSettings = require(Plugin.Src.Components.provideMockContextForGameSettings)

local VIPServers = require(Plugin.Src.Components.VIPServers)

return function()
    it("should construct and destroy without errors", function()
        local VIPServers = provideMockContextForGameSettings(nil, {
            element = Roact.createElement(VIPServers, {
                VIPServersData =             {
                    isEnabled = true,
                    price = 1000000000000000,
                    activeServersCount = 1000,
                    activeSubscriptionsCount = 1000,
                },

                Price = 200,
                DisabledSubText = "Mutually exclusive with Paid Access",

                LayoutOrder = 1,
                Enabled = true,
                SelectionChanged = function()
                end,
            })
        })

        local handle = Roact.mount(VIPServers)
        expect(VIPServers).to.be.ok()
        expect(handle).to.be.ok()
        Roact.unmount(handle)
    end)
end