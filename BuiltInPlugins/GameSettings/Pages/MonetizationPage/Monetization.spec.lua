local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Rodux = require(Plugin.Packages.Rodux)
local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices

local MainReducer = require(Plugin.Src.Reducers.MainReducer)

local provideMockContextForGameSettings = require(Plugin.Src.Components.provideMockContextForGameSettings)

local Monetization = require(Plugin.Pages.MonetizationPage.Monetization)

return function()
    it("should construct and destroy without any errors", function()
        local store = Rodux.Store.new(MainReducer, {
            Settings = {
                Current = {
                    isForSale = true,
                    price = 100,
                    vipServersIsEnabled = false,
                    vipServersPrice = 200,
                    vipServersActiveServersCount = 50,
                    vipServersActiveSubscriptionsCount = 60,
                    developerProducts = {
                        [1] = {
                            id = 1,
                            name = "DevProduct1",
                            description = "This is a Developer Product",
                            iconImageAssetid = "",
                            price = 10,
                        }
                    },
                    taxRate = 0.3,
                    minimumFee = 1,
                },
                Changed = {},
                Errors = {},
            },
        })

        local element = provideMockContextForGameSettings({
            Store = ContextServices.Store.new(store)
        } , {
            MonetizationPage = Roact.createElement(Monetization)
        })

        local handle = Roact.mount(element)
        expect(element).to.be.ok()
        expect(handle).to.be.ok()
        Roact.unmount(handle)
    end)
end