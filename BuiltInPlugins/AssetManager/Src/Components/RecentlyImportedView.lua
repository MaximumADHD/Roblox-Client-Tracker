--[[
    The Recent View contains the button in which the view is toggled and the scrolling list of items in that view.

    Necessary Properties:
        RecentViewToggled = boolean, whether or not list is toggled
    Optional Properties:
]]

local Plugin = script.Parent.Parent.Parent

local Cryo = require(Plugin.Packages.Cryo)
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Framework = Plugin.Packages.Framework
local ContextServices = require(Framework.ContextServices)
local withContext = ContextServices.withContext

local UI = require(Framework.UI)
local ScrollingFrame = UI.ScrollingFrame

local Util = require(Framework.Util)
local LayoutOrderIterator = Util.LayoutOrderIterator
local StyleModifier = Util.StyleModifier

local ListItem = require(Plugin.Src.Components.ListItem)

local SetRecentViewToggled = require(Plugin.Src.Actions.SetRecentViewToggled)

local RecentlyImportedView = Roact.PureComponent:extend("RecentlyImportedView")

function RecentlyImportedView:createListItems(theme, recentAssets, selectedAssets, enabled)
    local assetsToDisplay = {}
    for _, asset in pairs(recentAssets) do
        local assetItem = Roact.createElement(ListItem, {
            AssetData = asset,
            LayoutOrder = asset.key,
            StyleModifier = selectedAssets[asset.key] and StyleModifier.Selected or nil,
            Enabled = enabled,
            RecentListItem = true,
        })
        assetsToDisplay[asset.id] = assetItem
    end

    return assetsToDisplay
end

function RecentlyImportedView:init()
    self.onMouseActivated = function(rbx, obj, clickCount)
        local props = self.props
        props.dispatchSetRecentViewToggled(not props.RecentViewToggled)
    end

    self.mouseEnter = function()
        local props = self.props
        props.Mouse:__pushCursor("PointingHand")
	end

    self.mouseLeave = function()
        local props = self.props
        props.Mouse:__popCursor()
	end
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
    local arrowImageProps = recentViewToggled and recentViewTheme.Bar.Arrow.Expanded or recentViewTheme.Bar.Arrow.Collapsed

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
            SortOrder = Enum.SortOrder.LayoutOrder,
        }),

        RecentlyImportedViewBar = Roact.createElement("ImageButton", {
            Size = UDim2.new(1, 0, 0, recentViewTheme.Bar.Height),
            LayoutOrder = layoutIndex:getNextOrder(),
            ZIndex = 100,

            BackgroundColor3 = recentViewTheme.Bar.BackgroundColor,
            BorderColor3 = theme.BorderColor,
            BorderSizePixel = 1,

            [Roact.Event.Activated] = self.onMouseActivated,
            [Roact.Event.MouseEnter] = self.mouseEnter,
            [Roact.Event.mouseLeave] = self.mouseLeave,
        }, {
            RecentlyImportedViewBarLayout = Roact.createElement("UIListLayout", {
                Padding = UDim.new(0, recentViewTheme.Bar.Padding),
                FillDirection = Enum.FillDirection.Horizontal,
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

            CollapseImageFrame = Roact.createElement("Frame", {
                Size = UDim2.new(0, recentViewTheme.Bar.Button.Size, 0, recentViewTheme.Bar.Button.Size),
                LayoutOrder = 1,

                BackgroundTransparency = 1,
            }, {
                CollapseArrow = Roact.createElement("ImageLabel", Cryo.Dictionary.join(arrowImageProps, {
                    Size = UDim2.new(0, recentViewTheme.Bar.Arrow.Size, 0, recentViewTheme.Bar.Arrow.Size),
                    AnchorPoint = Vector2.new(0, 0.5),
                    Position = UDim2.new(0, 0, 0.5, 0),
                    BackgroundTransparency = 1,
                    ImageColor3 = recentViewTheme.Bar.Arrow.Color,
                })),
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

RecentlyImportedView = withContext({
    Analytics = ContextServices.Analytics,
    Localization = ContextServices.Localization,
    Mouse = ContextServices.Mouse,
    Theme = ContextServices.Theme,
})(RecentlyImportedView)

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
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(RecentlyImportedView)
