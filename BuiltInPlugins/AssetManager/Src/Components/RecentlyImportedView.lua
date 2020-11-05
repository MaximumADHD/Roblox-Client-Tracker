--[[
    The Recent View contains the button in which the view is toggled and the scrolling list of items in that view.

    Necessary Properties:
        RecentViewToggled = boolean, whether or not list is toggled
    Optional Properties:
]]

local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Framework = Plugin.Packages.Framework
local ContextServices = require(Framework.ContextServices)

local UI = require(Framework.UI)
local Button = UI.Button
local HoverArea = UI.HoverArea
local ScrollingFrame = UI.ScrollingFrame

local Util = require(Framework.Util)
local StyleModifier = Util.StyleModifier

local UILibrary = require(Plugin.Packages.UILibrary)
local LayoutOrderIterator = UILibrary.Util.LayoutOrderIterator

local ListItem = require(Plugin.Src.Components.ListItem)

local SetRecentViewToggled = require(Plugin.Src.Actions.SetRecentViewToggled)
local SetSelectedAssets = require(Plugin.Src.Actions.SetSelectedAssets)

local FFlagStudioAssetManagerAddGridListToggle = game:GetFastFlag("StudioAssetManagerAddGridListToggle")

local RecentlyImportedView = Roact.PureComponent:extend("RecentlyImportedView")

function RecentlyImportedView:createListItems(theme, recentAssets, selectedAssets, enabled)
    local assetsToDisplay = {}

    for index, asset in pairs(recentAssets) do
        asset.key = index
        local assetItem = Roact.createElement(ListItem, {
            AssetData = asset,
            LayoutOrder = index,
            StyleModifier = selectedAssets[index] and StyleModifier.Selected or nil,
            Enabled = enabled,
            RecentListItem = true,
        })
        assetsToDisplay[index] = assetItem
    end

    return assetsToDisplay
end

function RecentlyImportedView:render()
    local props = self.props
    local theme = props.Theme:get("Plugin")
    local recentViewTheme = theme.RecentView
    local localization = props.Localization

    local size = props.Size
    local layoutOrder = props.LayoutOrder
    local enabled = props.Enabled

    local recentlyImportedViewText = localization:getText("RecentlyImportedView", "Title")

    local recentViewToggled = props.RecentViewToggled
    local dispatchSetRecentViewToggled = props.dispatchSetRecentViewToggled

    local dispatchSetSelectedAssets = props.dispatchSetSelectedAssets

    local recentAssets = props.RecentAssets
    local selectedAssets = props.SelectedAssets
    local contents = self:createListItems(theme, recentAssets, selectedAssets, enabled)

    local layoutIndex = LayoutOrderIterator.new()

    return Roact.createElement("Frame", {
        Size = size,
        LayoutOrder = layoutOrder,
        ZIndex = 2,

        BackgroundTransparency = 1,
    }, {
        RecentlyImportedViewLayout = Roact.createElement("UIListLayout", {
            Padding = UDim.new(0, 0),
            FillDirection = Enum.FillDirection.Vertical,
            VerticalAlignment = FFlagStudioAssetManagerAddGridListToggle and nil or
                Enum.VerticalAlignment.Center,
            SortOrder = Enum.SortOrder.LayoutOrder,
        }),

        RecentlyImportedViewBar = Roact.createElement("Frame", {
            Size = UDim2.new(1, 0, 0, recentViewTheme.Bar.Height),
            LayoutOrder = layoutIndex:getNextOrder(),
            ZIndex = 100,

            BackgroundColor3 = recentViewTheme.Bar.BackgroundColor,
            BorderColor3 = theme.BorderColor,
            BorderSizePixel = 1,
        }, {
            RecentlyImportedViewBarLayout = Roact.createElement("UIListLayout", {
                Padding = UDim.new(0, recentViewTheme.Bar.Padding),
                FillDirection = Enum.FillDirection.Horizontal,
                VerticalAlignment = FFlagStudioAssetManagerAddGridListToggle and nil or
                Enum.VerticalAlignment.Center,
                SortOrder = Enum.SortOrder.LayoutOrder,
            }),

            GameBarPadding = Roact.createElement("UIPadding", {
                PaddingLeft = UDim.new(0, recentViewTheme.Bar.Padding),
            }),

            RecentlyImportedViewBarText = Roact.createElement("TextLabel", {
                Size = UDim2.new(1, -recentViewTheme.Bar.Button.Size - recentViewTheme.Bar.Padding, 1, 0),
                LayoutOrder = 0,

                BackgroundTransparency = 1,

                Text = recentlyImportedViewText,
                TextColor3 = theme.TextColor,
                TextSize = theme.FontSizeSmall,
                Font = theme.Font,
                TextXAlignment = Enum.TextXAlignment.Left,
            }),

            RecentlyImportedViewBarToggleButton = Roact.createElement(Button, {
                Size = UDim2.new(0, recentViewTheme.Bar.Button.Size, 0, recentViewTheme.Bar.Button.Size),
                AnchorPoint = Vector2.new(0.5, 0.5),
                LayoutOrder = 1,

                Style = recentViewToggled and "DownButton" or "UpButton",

                OnClick = function()
                    if enabled then
                        dispatchSetRecentViewToggled(not recentViewToggled)
                        dispatchSetSelectedAssets({})
                    end
                end,
            }, {
                HoverArea = enabled and Roact.createElement(HoverArea, {
                    Cursor = "PointingHand",
                    MouseEnter = self.mouseEnter,
                    MouseLeave = self.mouseLeave,
                }),
            }),
        }),

        RecentlyImportedViewScrollingFrame = Roact.createElement(ScrollingFrame, {
            Size = UDim2.new(1, 0, recentViewToggled and 1 or 0, recentViewToggled and -recentViewTheme.Bar.Height or 0),
            LayoutOrder = layoutIndex:getNextOrder(),

            BackgroundTransparency = 1,

            AutoSizeLayoutOptions = {
                SortOrder = Enum.SortOrder.LayoutOrder,
            },
        }, contents),
    })
end

ContextServices.mapToProps(RecentlyImportedView,{
    Analytics = ContextServices.Analytics,
    Localization = ContextServices.Localization,
    Theme = ContextServices.Theme,
})

local function mapStateToProps(state, props)
    local assetManagerReducer = state.AssetManagerReducer

	return {
        RecentAssets = assetManagerReducer.recentAssets,
        RecentViewToggled = assetManagerReducer.recentViewToggled,
        SelectedAssets = assetManagerReducer.selectedAssets,
	}
end

local function mapDispatchToProps(dispatch)
	return {
        dispatchSetRecentViewToggled = function(toggled)
            dispatch(SetRecentViewToggled(toggled))
        end,
        dispatchSetSelectedAssets = function(assets)
            dispatch(SetSelectedAssets(assets))
        end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(RecentlyImportedView)