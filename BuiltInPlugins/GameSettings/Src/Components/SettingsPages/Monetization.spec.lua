local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local Rodux = require(Plugin.Rodux)
local Framework = Plugin.Framework
local ContextServices = require(Framework.ContextServices)

local MainReducer = require(Plugin.Src.Reducers.MainReducer)

local provideMockContextForGameSettings = require(Plugin.Src.Components.provideMockContextForGameSettings)

local Monetization = require(Plugin.Src.Components.SettingsPages.Monetization)

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