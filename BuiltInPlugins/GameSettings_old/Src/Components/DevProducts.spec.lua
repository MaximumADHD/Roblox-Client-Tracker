local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Roact)

local provideMockContextForGameSettings = require(Plugin.Src.Components.provideMockContextForGameSettings)

local DevProducts = require(Plugin.Src.Components.DevProducts)

return function()
    it("should construct and destroy without errors", function()
        local DevProducts = provideMockContextForGameSettings(nil, {
            element = Roact.createElement(DevProducts, {
                ProductList = {
                    [191911919191] = {
                        191911919191, -- Id
                        "DevProductName", --Name
                        100, --Price
                    }
                },

                LayoutOrder = 1,

                OnEditDevProductClicked = function(productId)
                    print(productId)
                end,
            })
        })

        local handle = Roact.mount(DevProducts)
        expect(DevProducts).to.be.ok()
        expect(handle).to.be.ok()
        Roact.unmount(handle)
    end)
end