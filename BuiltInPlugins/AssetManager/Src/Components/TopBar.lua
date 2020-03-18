--[[
    The Top Bar contains the buttons for displaying the overlay, going back and forwards, importing assets
        as well the search bar.

    Necessary Properties:
        OnOverlayActivated = callback, to display the overlay when the overlay button is clicked.
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
local LinkText = UI.LinkText

local Util = require(Framework.Util)
local StyleModifier = Util.StyleModifier

local UILibrary = require(Plugin.Packages.UILibrary)
local SearchBar = UILibrary.Component.SearchBar
local LayoutOrderIterator = UILibrary.Util.LayoutOrderIterator
local StyledTooltip = UILibrary.Component.StyledTooltip
local GetTextSize = UILibrary.Util.GetTextSize

local SetSearchTerm = require(Plugin.Src.Actions.SetSearchTerm)
local SetToPreviousScreen = require(Plugin.Src.Actions.SetToPreviousScreen)
local SetToNextScreen = require(Plugin.Src.Actions.SetToNextScreen)

local LaunchBulkImport = require(Plugin.Src.Thunks.LaunchBulkImport)

local Screens = require(Plugin.Src.Util.Screens)

local BulkImportService = game:GetService("BulkImportService")

local TopBar = Roact.PureComponent:extend("TopBar")

function TopBar:init(props)
    self.OnTreeViewButtonActivated = function()
        props.OnOverlayActivated()
    end

    self.OnSearchRequested = function(searchTerm)
        props.dispatchSetSearchTerm(searchTerm)
    end
end

function TopBar:render()
    local props = self.props
    local theme = props.Theme:get("Plugin")
    local topBarTheme = theme.TopBar
    local localization = props.Localization

    local size = props.Size
    local layoutOrder = props.LayoutOrder

    local enabled = props.Enabled

    local currentScreen = props.CurrentScreen
    local previousScreens = props.PreviousScreens
    local nextScreens = props.NextScreens
    local dispatchSetToPreviousScreen = props.dispatchSetToPreviousScreen
    local dispatchSetToNextScreen = props.dispatchSetToNextScreen
    local previousButtonEnabled = #previousScreens > 0
    local nextButtonEnabled = #nextScreens > 0

    local bulkImporterRunning = props.BulkImporterRunning
    local dispatchLaunchBulkImporter = props.dispatchLaunchBulkImporter
    local bulkImporterTooltipText = localization:getText("BulkImport", "BulkImportRunning")
    local bulkImporterLinkText = localization:getText("BulkImport", "BulkImportShowLink")
    local tooltipTextExtents = GetTextSize(bulkImporterTooltipText, topBarTheme.Tooltip.TextSize,
        theme.Font, Vector2.new(topBarTheme.Tooltip.Width, math.huge))
    local linkTextExtents = GetTextSize(bulkImporterLinkText, topBarTheme.Tooltip.TextSize,
        theme.Font, Vector2.new(topBarTheme.Tooltip.Width, math.huge))
    local tooltipHeight = tooltipTextExtents.Y + 3 * topBarTheme.Tooltip.Padding + linkTextExtents.Y

    local searchBarOffset = topBarTheme.Button.Size * 4 + topBarTheme.Padding * 4

    local defaultText = localization:getText("SearchBar", "PlaceholderText")
        .. " " .. localization:getText("Folders", currentScreen.Key)

    local layoutIndex = LayoutOrderIterator.new()

    return Roact.createElement("Frame", {
        Size = size,
        LayoutOrder = layoutOrder,

        BackgroundColor3 = theme.BackgroundColor,
        BorderColor3 = theme.BorderColor,
        BorderSizePixel = 1,
    }, {
        TopBarLayout = Roact.createElement("UIListLayout", {
            Padding = UDim.new(0, topBarTheme.Padding),
            FillDirection = Enum.FillDirection.Horizontal,
            VerticalAlignment = Enum.VerticalAlignment.Center,
            SortOrder = Enum.SortOrder.LayoutOrder,
        }),

        Padding = Roact.createElement("UIPadding", {
            PaddingLeft = UDim.new(0, topBarTheme.Padding),
            PaddingRight = UDim.new(0, topBarTheme.Padding),
        }),

		ExplorerOverlayButton = Roact.createElement(Button, {
            Size = UDim2.new(0, topBarTheme.Button.Size, 0, topBarTheme.Button.Size),
            AnchorPoint = Vector2.new(0.5, 0.5),
            LayoutOrder = layoutIndex:getNextOrder(),

            Style = "OverlayButton",

            OnClick = function()
                if enabled then
                    self.OnTreeViewButtonActivated()
                end
            end,
        }, {
            HoverArea = enabled and Roact.createElement(HoverArea, {
                Cursor = "PointingHand",
                MouseEnter = self.mouseEnter,
                MouseLeave = self.mouseLeave,
            }),
        }),

        NavigationButtonsFrame = Roact.createElement("Frame", {
            Size = UDim2.new(0, 2 * topBarTheme.Button.Size, 0, topBarTheme.Button.Size),
            BackgroundTransparency = 1,
            LayoutOrder = layoutIndex:getNextOrder(),
        }, {
            ButtonLayout = Roact.createElement("UIListLayout", {
                Padding = UDim.new(0, 0),
                FillDirection = Enum.FillDirection.Horizontal,
                SortOrder = Enum.SortOrder.LayoutOrder,
            }),

            PreviousButton = Roact.createElement(Button, {
                Size = UDim2.new(0, topBarTheme.Button.Size, 0, topBarTheme.Button.Size),
                AnchorPoint = Vector2.new(0.5, 0.5),
                LayoutOrder = 1,

                Style = "PreviousButton",
                StyleModifier = not previousButtonEnabled and StyleModifier.Disabled,

                OnClick = function()
                    if previousButtonEnabled and enabled then
                        dispatchSetToPreviousScreen(previousButtonEnabled)
                    end
                end,
            }, {
                HoverArea = previousButtonEnabled and enabled and Roact.createElement(HoverArea, {
                    Cursor = "PointingHand",
                    MouseEnter = self.mouseEnter,
                    MouseLeave = self.mouseLeave,
                }),
            }),

            NextButton = Roact.createElement(Button, {
                Size = UDim2.new(0, topBarTheme.Button.Size, 0, topBarTheme.Button.Size),
                AnchorPoint = Vector2.new(0.5, 0.5),
                LayoutOrder = 2,

                Style = "NextButton",
                StyleModifier = not nextButtonEnabled and StyleModifier.Disabled,

                OnClick = function()
                    if nextButtonEnabled and enabled then
                        dispatchSetToNextScreen(nextButtonEnabled)
                    end
                end,
            }, {
                HoverArea = nextButtonEnabled and enabled and Roact.createElement(HoverArea, {
                    Cursor = "PointingHand",
                    MouseEnter = self.mouseEnter,
                    MouseLeave = self.mouseLeave,
                }),
            }),
        }),

        BulkImporterButton = Roact.createElement(Button, {
            Size = UDim2.new(0, topBarTheme.Button.Size, 0, topBarTheme.Button.Size),
            AnchorPoint = Vector2.new(0.5, 0.5),
            LayoutOrder = layoutIndex:getNextOrder(),

            Style = "BulkImporterButton",
            StyleModifier = bulkImporterRunning and StyleModifier.Disabled,

            OnClick = function()
                if not bulkImporterRunning and enabled then
                    dispatchLaunchBulkImporter(0)
                end
            end,
        }, {
            Tooltip = Roact.createElement(StyledTooltip, {
                Elements = {
                    Roact.createElement("UIListLayout", {
                        Padding = UDim.new(0, topBarTheme.Tooltip.Padding),
                        FillDirection = Enum.FillDirection.Vertical,
                        VerticalAlignment = Enum.VerticalAlignment.Center,
                        SortOrder = Enum.SortOrder.LayoutOrder,
                    }),

                    Padding = Roact.createElement("UIPadding", {
                        PaddingTop = UDim.new(0, topBarTheme.Tooltip.Padding),
                        PaddingBottom = UDim.new(0, topBarTheme.Tooltip.Padding),
                    }),

                    Text = Roact.createElement("TextLabel", {
                        Size = UDim2.new(0, tooltipTextExtents.X, 0, tooltipTextExtents.Y),

                        BackgroundTransparency = 1,

                        Font = theme.Font,
                        Text = bulkImporterTooltipText,
                        TextColor3 = theme.TextColor,
                        TextSize = topBarTheme.Tooltip.TextSize,
                        TextXAlignment = Enum.TextXAlignment.Left,
                        TextWrapped = true,

                        LayoutOrder = 1,
                    }),

                    LinkText = Roact.createElement(LinkText, {
                        Text = bulkImporterLinkText,
                        Style = "BulkImporterTooltip",

                        LayoutOrder = 2,

                        OnClick = function()
                            BulkImportService:ShowBulkImportView()
                        end,
                    }),
                },

                TooltipExtents = Vector2.new(topBarTheme.Tooltip.Width, tooltipHeight),
                Enabled = bulkImporterRunning,
            }),

            HoverArea = not bulkImporterRunning and enabled and Roact.createElement(HoverArea, {
                Cursor = "PointingHand",
                MouseEnter = self.mouseEnter,
                MouseLeave = self.mouseLeave,
            }),
        }),

        SearchBar = currentScreen.Key ~= Screens.MAIN.Key and Roact.createElement(SearchBar, {
            Size = UDim2.new(1, -searchBarOffset, 1, 0),
            LayoutOrder = layoutIndex:getNextOrder(),

            Enabled = enabled,

            DefaultText = defaultText,
            OnSearchRequested = self.OnSearchRequested,
        }),
    })
end

ContextServices.mapToProps(TopBar,{
    Theme = ContextServices.Theme,
    Localization = ContextServices.Localization,
})

local function mapStateToProps(state, props)
    local previousScreens = state.Screen.previousScreens
    local nextScreens = state.Screen.nextScreens

	return {
        BulkImporterRunning = state.AssetManagerReducer.bulkImporterRunning,
        CurrentScreen = state.Screen.currentScreen,
        PreviousScreens = previousScreens,
        NextScreens = nextScreens,
	}
end

local function useDispatchForProps(dispatch)
	return {
        dispatchLaunchBulkImporter = function(assetType)
            dispatch(LaunchBulkImport(assetType))
        end,
        dispatchSetSearchTerm = function(searchTerm)
            dispatch(SetSearchTerm(searchTerm))
        end,
        dispatchSetToPreviousScreen = function(enabled)
            if enabled then
                dispatch(SetToPreviousScreen())
            end
        end,
        dispatchSetToNextScreen = function(enabled)
            if enabled then
                dispatch(SetToNextScreen())
            end
        end,
	}
end

return RoactRodux.connect(mapStateToProps, useDispatchForProps)(TopBar)