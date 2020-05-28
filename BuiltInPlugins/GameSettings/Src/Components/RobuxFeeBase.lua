--[[
    RobuxFeeBase is the base component to display an on/off toggle in addition to a Price config (field for price,
    label for fee, label for actual amount earned).

    Necessary props:
        Title = string, the title of the
        Price = number, the initial price to be shown in the text field.
        TaxRate = number, the percentage of the price that is taken as a fee.
        MinimumFee = number, is the minimum fee that will be levied.
        SubText = string, text to be shown under the price text field when this component is disabled or has an error.
            this text usually describes what must be done for this component to be enabled again.
        Enabled = boolean, controls if text/images are greyed out/disabled.
        OnPriceChanged = function(newPrice), a callback that will be invoked when the price in the text entry is changed.

    Optional props:
        LayoutOrder = number, order in which this component should appear under its parent.
]]

local Plugin = script.Parent.Parent.Parent
local Cryo = require(Plugin.Cryo)
local Roact = require(Plugin.Roact)
local UILibrary = require(Plugin.UILibrary)

local Framework = Plugin.Framework
local FitFrameOnAxis = require(Framework.Util).FitFrame.FitFrameOnAxis

local ContextServices = require(Framework.ContextServices)

local RoundFrame = UILibrary.Component.RoundFrame
local TextEntry = UILibrary.Component.TextEntry
local GetTextSize = UILibrary.Util.GetTextSize

local RobuxFeeBase = Roact.PureComponent:extend("RobuxFeeBase")

function RobuxFeeBase:render()
    local props = self.props
    local theme = props.Theme:get("Plugin")
    local localization = props.Localization

    local taxRate = props.TaxRate
    local minimumFee = props.Price > 0 and props.MinimumFee or 0

    local priceVal = type(props.Price) == "number" and props.Price or 0
    local price = string.format("%.f", priceVal)
    local subText = props.SubText
    local enabled = props.Enabled
    local onPriceChanged = props.OnPriceChanged

    local layoutOrder = props.LayoutOrder

    local feeText = localization:getText("Monetization", "FeeLabel", {string.format("%2d", taxRate * 100)})
    local feeTextSize = GetTextSize(feeText, theme.fontStyle.Normal.TextSize, theme.fontStyle.Normal.Font)

    local feeVal = math.max(minimumFee, math.ceil(priceVal * taxRate))
    local feeAmount = string.format("%.f", tostring(feeVal))

    local priceText = localization:getText("Monetization", "Price")
    local priceTextSize = GetTextSize(priceText, theme.fontStyle.Normal.TextSize, theme.fontStyle.Normal.Font)

    local earnText = localization:getText("Monetization", "EarnLabel")
    local earnTextSize = GetTextSize(earnText, theme.fontStyle.Normal.TextSize, theme.fontStyle.Normal.Font)

    local earnVal = (priceVal - feeVal > 0) and priceVal - feeVal or 0
    local earnAmount = string.format("%.f", tostring(earnVal))

    local subTextSize
    if subText then
        if enabled then
            subTextSize = GetTextSize(subText, theme.fontStyle.SmallError.TextSize, theme.fontStyle.SmallError.Font,
                Vector2.new(theme.robuxFeeBase.subText.width, math.huge))
        else
            subTextSize = GetTextSize(subText, theme.fontStyle.Subtext.TextSize, theme.fontStyle.Subtext.Font,
                Vector2.new(theme.robuxFeeBase.subText.width, math.huge))
        end
    else
        subTextSize = {}
    end

    local transparency = enabled and theme.robuxFeeBase.transparency.enabled or theme.robuxFeeBase.transparency.disabled

    local subTextTheme = enabled and theme.fontStyle.SmallError or theme.fontStyle.Subtext

    return Roact.createElement(FitFrameOnAxis, {
        axis = FitFrameOnAxis.Axis.Vertical,
        minimumSize = UDim2.new(1, 0, 0, 0),
        contentPadding = UDim.new(0, theme.robuxFeeBase.spacing),
        BackgroundTransparency = 1,
        FillDirection = Enum.FillDirection.Horizontal,

        LayoutOrder = layoutOrder,
    }, {
        PriceLabel = Roact.createElement("TextLabel", Cryo.Dictionary.join(theme.fontStyle.Normal, {
            Text = priceText,
            TextTransparency = transparency,

            Size = UDim2.new(0, priceTextSize.X, 0, theme.rowHeight),
            BackgroundTransparency = 1,

            LayoutOrder = 1,
        })),

        ContentOffsetByPrice = Roact.createElement(FitFrameOnAxis, {
            axis = FitFrameOnAxis.Axis.Vertical,
            minimumSize = UDim2.new(1, 0, 0, 0),
            FillDirection = Enum.FillDirection.Vertical,
            BackgroundTransparency = 1,

            LayoutOrder = 2,
        }, {
            PriceFrame = Roact.createElement(RoundFrame, {
                Size = UDim2.new(0, theme.robuxFeeBase.priceField.width, 0, theme.rowHeight),

                BorderSizePixel = 0,
                BackgroundColor3 = theme.textBox.background,

                LayoutOrder = 1,
            },{
                HorizontalLayout = Roact.createElement("UIListLayout",{
                    FillDirection = Enum.FillDirection.Horizontal,
                    SortOrder = Enum.SortOrder.LayoutOrder,
                    VerticalAlignment = Enum.VerticalAlignment.Center,
                }),

                RobuxIcon = Roact.createElement("ImageLabel", {
                    AnchorPoint = Vector2.new(0, 0.5),
                    Size = UDim2.new(0, theme.robuxFeeBase.icon.size, 0, theme.robuxFeeBase.icon.size),

                    Image = theme.robuxFeeBase.icon.image,
                    ImageTransparency = transparency,

                    BackgroundTransparency = 1,
                }),

                PriceTextBox = Roact.createElement(TextEntry, Cryo.Dictionary.join(theme.fontStyle.Normal, {
                    Size = UDim2.new(1, -theme.robuxFeeBase.icon.size, 1, 0),
                    Visible = true,

                    Text = price,
                    PlaceholderText = "",
                    Enabled = enabled,

                    SetText = onPriceChanged,

                    FocusChanged = function()
                    end,

                    HoverChanged = function()
                    end,
                }))
            }),

            SubText = subText and Roact.createElement("TextLabel", Cryo.Dictionary.join(subTextTheme, {
                Size = UDim2.new(0, math.ceil(subTextSize.X), 0, subTextSize.Y),

                BackgroundTransparency = 1,

                Text = subText,

                TextYAlignment = Enum.TextYAlignment.Center,
                TextXAlignment = Enum.TextXAlignment.Left,

                TextWrapped = true,

                LayoutOrder = 2,
            })),

            FeeFrame = Roact.createElement("Frame", {
                Size = UDim2.new(1, 0, 0, theme.rowHeight),

                BackgroundTransparency = 1,
                LayoutOrder = 3,
            },{
                HorizontalLayout = Roact.createElement("UIListLayout",{
                    FillDirection = Enum.FillDirection.Horizontal,
                    SortOrder = Enum.SortOrder.LayoutOrder,
                    VerticalAlignment = Enum.VerticalAlignment.Center,
                }),

                FeeLabel = Roact.createElement("TextLabel", Cryo.Dictionary.join(theme.fontStyle.Normal, {
                    Size = UDim2.new(0, feeTextSize.X, 1, 0),

                    BackgroundTransparency = 1,

                    TextYAlignment = Enum.TextYAlignment.Center,
                    TextXAlignment = Enum.TextXAlignment.Left,
                    TextTransparency = transparency,

                    Text = feeText,

                    LayoutOrder = 1,
                })),

                RobuxIcon = Roact.createElement("ImageLabel", {
                    AnchorPoint = Vector2.new(0, 0.5),
                    Size = UDim2.new(0, theme.robuxFeeBase.icon.size, 0, theme.robuxFeeBase.icon.size),

                    Image = theme.robuxFeeBase.icon.image,
                    ImageTransparency = transparency,

                    BackgroundTransparency = 1,

                    LayoutOrder = 2,
                }),

                FeeAmount = Roact.createElement("TextLabel", Cryo.Dictionary.join(theme.fontStyle.Normal, {
                    Size = UDim2.new(1, 0, 0, theme.rowHeight),

                    BackgroundTransparency = 1,
                    BorderSizePixel = 0,

                    TextYAlignment = Enum.TextYAlignment.Center,
                    TextXAlignment = Enum.TextXAlignment.Left,
                    TextTransparency = transparency,

                    Text = feeAmount,

                    LayoutOrder = 3,
                }))
            }),

            EarnFrame = Roact.createElement("Frame", {
                Size = UDim2.new(1, 0, 0, theme.rowHeight),
                BackgroundTransparency = 1,
                LayoutOrder = 4,
            },{
                HorizontalLayout = Roact.createElement("UIListLayout",{
                    FillDirection = Enum.FillDirection.Horizontal,
                    SortOrder = Enum.SortOrder.LayoutOrder,
                    VerticalAlignment = Enum.VerticalAlignment.Center,
                }),

                EarnLabel = Roact.createElement("TextLabel", Cryo.Dictionary.join(theme.fontStyle.Normal, {
                    Size = UDim2.new(0, earnTextSize.X, 1, 0),

                    BackgroundTransparency = 1,
                    BorderSizePixel = 0,

                    TextYAlignment = Enum.TextYAlignment.Center,
                    TextXAlignment = Enum.TextXAlignment.Left,
                    TextTransparency = transparency,

                    Text = earnText,

                    LayoutOrder = 1,
                })),

                RobuxIcon = Roact.createElement("ImageLabel", {
                    AnchorPoint = Vector2.new(0, 0.5),
                    Size = UDim2.new(0, theme.robuxFeeBase.icon.size, 0, theme.robuxFeeBase.icon.size),

                    Image = theme.robuxFeeBase.icon.image,
                    ImageTransparency = transparency,

                    BackgroundTransparency = 1,

                    LayoutOrder = 2,
                }),

                EarnAmount = Roact.createElement("TextLabel", Cryo.Dictionary.join(theme.fontStyle.Normal, {
                    Size = UDim2.new(1, 0, 0, theme.rowHeight),

                    BackgroundTransparency = 1,
                    BorderSizePixel = 0,

                    TextYAlignment = Enum.TextYAlignment.Center,
                    TextXAlignment = Enum.TextXAlignment.Left,
                    TextTransparency = transparency,

                    Text = earnAmount,

                    LayoutOrder = 3,
                }))
            }),
        }),
    })
end

ContextServices.mapToProps(RobuxFeeBase, {
    Localization = ContextServices.Localization,
    Theme = ContextServices.Theme,
})

return RobuxFeeBase