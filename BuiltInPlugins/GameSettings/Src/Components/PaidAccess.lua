--[[
    PaidAccess is a wrapper around RadioButtonSet to display a Price config (field for price,
    label for fee, label for actual amount earned) between the "On" and "Off" buttons.

    Necessary props:
        Price = number, the initial price to be shown in the text field.
        TaxRate = number, the percentage of the price that is taken as a fee.
        MinimumFee = number, is the minimum fee that will be levied.
        Enabled = boolean, whether or not this component is enabled.
        Selected = boolean, "true" if On button should be selected, "false" if the off button should be selected.
        LayoutOrder = number, order in which this component should appear under its parent.

        OnPaidAccessToggle = function(button), this is a callback thta is invoked with the button info, when the radio button is toggled.
            example of button info:
            {
                Id = true,
                Title = "This is a foo button.",
                Description = "Lorem ipsum",
            }
        OnPaidAccessPriceChanged = function(price), this is a callback to be invoked when the price field changes values

    Optional props:
        PriceError = string, error message to be shown for this component
]]

local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Roact)
local Framework = Plugin.Framework
local FitFrameOnAxis = require(Framework.Util).FitFrame.FitFrameOnAxis

local ContextServices = require(Plugin.Framework.ContextServices)

local RadioButtonSet = require(Plugin.Src.Components.RadioButtonSet)
local RobuxFeeBase = require(Plugin.Src.Components.RobuxFeeBase)

local PaidAccess = Roact.PureComponent:extend("PaidAccess")

function PaidAccess:render()
    local props = self.props
    local localization = props.Localization

    local title = localization:getText("Monetization", "TitlePaidAccess")
    local price = props.Price and props.Price or 0
    local taxRate = props.TaxRate
    local minimumFee = props.MinimumFee
    local layoutOrder = props.LayoutOrder

    local enabled = props.Enabled
    local selected = props.Selected

    local onButtonToggled = props.OnPaidAccessToggle
    local onPaidAccessPriceChanged = props.OnPaidAccessPriceChanged

    local subText
    local priceError = props.PriceError
    if enabled and priceError then
        subText = priceError
    elseif not enabled then
        subText = localization:getText("Monetization", "PaidAccessHint")
    end

    local buttons = {
        {
            Id = true,
            Title = localization:getText("General", "SettingOn"),
            Children = {
                RobuxFeeBase = Roact.createElement(RobuxFeeBase, {
                    Price = price,
                    TaxRate = taxRate,
                    MinimumFee = minimumFee,
                    SubText = subText,

                    OnPriceChanged = onPaidAccessPriceChanged,

                    Enabled = selected,
                }),
            },
        },
        {
            Id = false,
            Title = localization:getText("General", "SettingOff"),
        },
    }

    return Roact.createElement(FitFrameOnAxis, {
        axis = FitFrameOnAxis.Axis.Vertical,
        minimumSize = UDim2.new(1, 0, 0, 0),
        BackgroundTransparency = 1,

        LayoutOrder = layoutOrder,
    }, {
        OnOffToggle = Roact.createElement(RadioButtonSet, {
            Title = title,

            Buttons = buttons,

            Enabled = enabled,
            Selected = selected,
            SelectionChanged = onButtonToggled,
        })
    })
end

ContextServices.mapToProps(PaidAccess, {
    Localization = ContextServices.Localization,
})

return PaidAccess