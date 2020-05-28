--[[
    The DevProducts component has a button to bring up a page to create/edit Developer Products
    as well as contains a table of existing developer products.

    The each item in the table of developer products has a "product id", "product name", and "price"

    Necessary Props:
        ProductList = table, table of developer product data
            list structure:
            {
                95 = {
                    95, --ProductID,
                    "The best product ever", --ProductName
                    10000000000000000, --Price
                }
            }
        OnEditDevProductClicked = function(productID), callback that takes in a productId to be invoked on Menu Item
            button clicked.
        LayoutOrder = number, this will be the layout order of this component in its parent.

    Optional Props:
        ShowTable = boolean, determines if the table should be displayed or not.
]]

local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Roact)

local UILibrary = require(Plugin.UILibrary)
local GetTextSize = UILibrary.Util.GetTextSize
local TitledFrame = UILibrary.Component.TitledFrame

local Framework = Plugin.Framework
local FrameworkUI = require(Framework.UI)
local Button = FrameworkUI.Button
local HoverArea = FrameworkUI.HoverArea
local ContextServices = require(Framework.ContextServices)
local FitFrameOnAxis = require(Framework.Util).FitFrame.FitFrameOnAxis

local TableWithMenu = require(Plugin.Src.Components.TableWithMenu)

local DevProducts = Roact.PureComponent:extend(script.Name)

function DevProducts:render()
    local props = self.props
    local theme = props.Theme:get("Plugin")
    local localization = props.Localization

    local productsList = props.ProductList
    local showTable = props.ShowTable

    local dispatchCreateNewDevProduct = props.CreateNewDevProduct
    local dispatchSetEditDevProductId = props.OnEditDevProductClicked

    local layoutOrder = props.LayoutOrder

    local buttonText = localization:getText("General", "ButtonCreate")
    local buttonTextExtents = GetTextSize(buttonText, theme.fontStyle.Header.TextSize, theme.fontStyle.Header.Font)

    return Roact.createElement(FitFrameOnAxis, {
        axis = FitFrameOnAxis.Axis.Vertical,
        minimumSize = UDim2.new(1, 0, 0, 0),
        contentPadding = UDim.new(0, theme.devProducts.headerPadding),

        BackgroundTransparency = 1,

        LayoutOrder = layoutOrder,
    }, {
        DevProductsTitle = Roact.createElement(TitledFrame,{
            Title = localization:getText("Monetization", "DevProducts"),
            LayoutOrder = 1,
            MaxHeight = theme.header.height,
            TextSize = theme.fontStyle.Title.TextSize,
        },{
            CreateButton = Roact.createElement(Button, {
                Style = "GameSettingsPrimaryButton",
                Text = buttonText,
                Size = UDim2.new(0, buttonTextExtents.X + theme.createButton.PaddingX,
                0, buttonTextExtents.Y + theme.createButton.PaddingY),
                LayoutOrder = 2,
                OnClick = function()
                    dispatchCreateNewDevProduct()
                end,
            }, {
                Roact.createElement(HoverArea, {Cursor = "PointingHand"}),
            }),
        }),

        DeveloperProductTable = showTable and Roact.createElement(TableWithMenu, {
            Headers = {
                localization:getText("Monetization", "ProductID"),
                localization:getText("Monetization", "ProductName"),
                localization:getText("Monetization", "Price"),
            },

            Data = productsList,

            MenuItems = {
                {Key = "Edit", Text = localization:getText("General", "ButtonEdit"),}
            },

            OnItemClicked = function(key, id)
                dispatchSetEditDevProductId(id)
            end,

            LayoutOrder = 2,
        })
    })
end

ContextServices.mapToProps(DevProducts, {
    Localization = ContextServices.Localization,
    Theme = ContextServices.Theme,
})

return DevProducts