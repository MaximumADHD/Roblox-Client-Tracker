local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Roact)

local provideMockContextForGameSettings = require(Plugin.Src.Components.provideMockContextForGameSettings)

local RobuxFeeBase = require(Plugin.Src.Components.RobuxFeeBase)

return function()
    it("should construct and destroy without errors", function()
        local RobuxFeeBase = provideMockContextForGameSettings(nil, {
            element = Roact.createElement(RobuxFeeBase, {
                Title = "title",
                Price = 10000000000000000000000,
                TaxRate = 0.3,
                MinimumFee = 1,
                SubText = "bad user, no cookie :(",

                Enabled = true,
                Selected = true,
                SelectionChanged = function()
                end,

                LayoutOrder = 2,

                CreateExtraOnLabels = function(layoutOrderIterator)
                    return {
                        SubscriptionsAndTotalFrame = Roact.createElement("Frame", {
                            BackgroundTransparency = 1,
                            BorderSizePixel = 0,

                            LayoutOrder = layoutOrderIterator:getNextOrder(),
                        },{
                            Subscriptions = Roact.createElement("TextLabel", {
                                Text = "A trillion",
                                BackgroundTransparency = 1,

                                TextXAlignment = Enum.TextXAlignment.Left,
                                TextYAlignment = Enum.TextYAlignment.Center,
                            }),

                            TotalVIPServers = Roact.createElement("TextLabel", {
                                Text = "A billion",
                                BackgroundTransparency = 1,

                                TextXAlignment = Enum.TextXAlignment.Left,
                                TextYAlignment = Enum.TextYAlignment.Center,
                            }),
                        })
                    }
                end,
        })})

        local handle = Roact.mount(RobuxFeeBase)
        expect(RobuxFeeBase).to.be.ok()
        expect(handle).to.be.ok()
        Roact.unmount(handle)
    end)
end