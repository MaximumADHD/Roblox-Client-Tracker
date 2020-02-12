--[[
    The Top Bar contains the buttons for displaying the overlay, going back and forwards, importing assets
        as well the search bar.

    Necessary Properties:
        OnOverlayActivated = callback, to display the overlay when the overlay button is clicked.
    Optional Properties:
]]

local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local Framework = Plugin.Packages.Framework
local ContextServices = require(Framework.ContextServices)

local UI = require(Framework.UI)
local RoundBox = UI.Decoration.RoundBox
local Button = UI.Button

local TopBar = Roact.PureComponent:extend("TopBar")

function TopBar:init()
    self.OnTreeViewButtonActivated = function()
        self.props.OnOverlayActivated()
    end
end

function TopBar:render()
    local props = self.props
    local theme = props.Theme:get("Plugin")
    local topBarTheme = theme.TopBar

    return Roact.createElement("Frame", {
        Position = UDim2.new(0, 0, 0, 0),
        Size = UDim2.new(1, 0, 0, theme.TopBar.Height),

        BackgroundColor3 = theme.BackgroundColor,
        BackgroundTransparency = 0,

        BorderColor3 = topBarTheme.BorderColor,
        BorderSizePixel = 2,

        ZIndex = 1,
    }, {
        Padding = Roact.createElement("UIPadding", {
            PaddingLeft = UDim.new(0, topBarTheme.Padding.Left),
            PaddingRight = UDim.new(0, topBarTheme.Padding.Right),
        }),

        UIListLayout = Roact.createElement("UIListLayout", {
            FillDirection = Enum.FillDirection.Horizontal,
            VerticalAlignment = Enum.VerticalAlignment.Center,
            SortOrder = Enum.SortOrder.LayoutOrder,
        }),

        ExplorerOverlayFrame = self.props.Enabled and Roact.createElement(Button, {
            Size = UDim2.new(0, topBarTheme.Button.Size, 0, topBarTheme.Button.Size),
            AnchorPoint = Vector2.new(0.5, 0.5),

            OnClick = self.OnTreeViewButtonActivated,
        }, {
            OverlayButton = Roact.createElement(RoundBox, {
                Theme = self.props.Theme,
                Style = "AssetManagerMenu",
            })
        }),
    })
end

ContextServices.mapToProps(TopBar,{
    Theme = ContextServices.Theme,
})

return TopBar