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
local LinkText = UI.LinkText

local Util = require(Framework.Util)
local StyleModifier = Util.StyleModifier

local UILibrary = require(Plugin.Packages.UILibrary)
local SearchBar = UILibrary.Component.SearchBar
local LayoutOrderIterator = UILibrary.Util.LayoutOrderIterator

local SetSearchTerm = require(Plugin.Src.Actions.SetSearchTerm)
local SetToPreviousScreen = require(Plugin.Src.Actions.SetToPreviousScreen)
local SetToNextScreen = require(Plugin.Src.Actions.SetToNextScreen)

local LaunchBulkImport = require(Plugin.Src.Thunks.LaunchBulkImport)

local Screens = require(Plugin.Src.Util.Screens)

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

    local currentScreen = props.CurrentScreen
    local previousScreens = props.PreviousScreens
    local nextScreens = props.NextScreens
    local dispatchSetToPreviousScreen = props.dispatchSetToPreviousScreen
    local dispatchSetToNextScreen = props.dispatchSetToNextScreen
    local previousButtonEnabled = #previousScreens > 0
    local nextButtonEnabled = #nextScreens > 0

    local bulkImporterRunning = props.BulkImporterRunning
    local dispatchLaunchBulkImporter = props.dispatchLaunchBulkImporter

    local searchBarOffset = topBarTheme.Button.Size * 4 + topBarTheme.Padding * 4

    local defaultText = localization:getText("SearchBar", "PlaceholderText")
        .. " " .. localization:getText("Folders", currentScreen)

    local layoutIndex = LayoutOrderIterator.new()

    return Roact.createElement("Frame", {
        Position = UDim2.new(0, 0, 0, 0),
        Size = UDim2.new(1, 0, 0, topBarTheme.Button.Size),

        BackgroundColor3 = theme.BackgroundColor,
        BackgroundTransparency = 0,

        BorderColor3 = topBarTheme.BorderColor,
        BorderSizePixel = 1,

        ZIndex = 1,
    }, {
        TopBarLayout = Roact.createElement("UIListLayout", {
            Padding = UDim.new(0, topBarTheme.Padding),
            FillDirection = Enum.FillDirection.Horizontal,
            VerticalAlignment = Enum.VerticalAlignment.Center,
            SortOrder = Enum.SortOrder.LayoutOrder,
        }),

        BeginPadding = Roact.createElement("UIPadding", {
            PaddingLeft = UDim.new(0, topBarTheme.Padding),
        }),

        ExplorerOverlayButton = self.props.Enabled and Roact.createElement(Button, {
            Size = UDim2.new(0, topBarTheme.Button.Size, 0, topBarTheme.Button.Size),
            AnchorPoint = Vector2.new(0.5, 0.5),
            LayoutOrder = layoutIndex:getNextOrder(),

            Style = "OverlayButton",

            OnClick = self.OnTreeViewButtonActivated,
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
                    if previousButtonEnabled then
                        dispatchSetToPreviousScreen(previousButtonEnabled)
                    end
                end,
            }),

            NextButton = Roact.createElement(Button, {
                Size = UDim2.new(0, topBarTheme.Button.Size, 0, topBarTheme.Button.Size),
                AnchorPoint = Vector2.new(0.5, 0.5),
                LayoutOrder = 2,

                Style = "NextButton",
                StyleModifier = not nextButtonEnabled and StyleModifier.Disabled,

                OnClick = function()
                    if nextButtonEnabled then
                        dispatchSetToNextScreen(nextButtonEnabled)
                    end
                end,
            }),
        }),

        BulkImporterButton = Roact.createElement(Button, {
            Size = UDim2.new(0, topBarTheme.Button.Size, 0, topBarTheme.Button.Size),
            AnchorPoint = Vector2.new(0.5, 0.5),
            LayoutOrder = layoutIndex:getNextOrder(),

            Style = "BulkImporterButton",
            StyleModifier = bulkImporterRunning and StyleModifier.Disabled,

            OnClick = function()
                if not bulkImporterRunning then
                    dispatchLaunchBulkImporter(0)
                end
            end,
        }),

        SearchBar = currentScreen ~= Screens.MAIN and Roact.createElement(SearchBar, {
            Size = UDim2.new(1, -searchBarOffset, 1, 0),
            LayoutOrder = layoutIndex:getNextOrder(),

            DefaultText = defaultText,
            OnSearchRequested = self.OnSearchRequested,
        }),

        EndPadding = Roact.createElement("UIPadding", {
            PaddingLeft = UDim.new(0, topBarTheme.Padding),
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