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

local Util = require(Framework.Util)
local StyleModifier = Util.StyleModifier

local UILibrary = require(Plugin.Packages.UILibrary)
local createFitToContent = UILibrary.Component.createFitToContent
local LayoutOrderIterator = UILibrary.Util.LayoutOrderIterator

local SetToPreviousScreen = require(Plugin.Src.Actions.SetToPreviousScreen)
local SetToNextScreen = require(Plugin.Src.Actions.SetToNextScreen)

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

    local previousScreens = props.PreviousScreens
    local nextScreens = props.NextScreens
    local dispatchSetToPreviousScreen = props.dispatchSetToPreviousScreen
    local dispatchSetToNextScreen = props.dispatchSetToNextScreen
    local previousButtonEnabled = #previousScreens > 0
    local nextButtonEnabled = #nextScreens > 0

    local layoutIndex = LayoutOrderIterator.new()

    return Roact.createElement(createFitToContent("Frame", "UIListLayout", {
        Padding = UDim.new(0, topBarTheme.Padding),
        FillDirection = Enum.FillDirection.Horizontal,
        VerticalAlignment = Enum.VerticalAlignment.Center,
        SortOrder = Enum.SortOrder.LayoutOrder,
    }), {
        Position = UDim2.new(0, 0, 0, 0),

        BackgroundColor3 = theme.BackgroundColor,
        BackgroundTransparency = 0,

        BorderColor3 = topBarTheme.BorderColor,
        BorderSizePixel = 1,

        ZIndex = 1,
    }, {
        Padding = Roact.createElement("UIPadding", {
            PaddingLeft = UDim.new(0, topBarTheme.Padding),
        }),

        ExplorerOverlayFrame = self.props.Enabled and Roact.createElement(Button, {
            Size = UDim2.new(0, topBarTheme.Button.Size, 0, topBarTheme.Button.Size),
            AnchorPoint = Vector2.new(0.5, 0.5),
            LayoutOrder = layoutIndex:getNextOrder(),

            Style = "OverlayButton",

            OnClick = self.OnTreeViewButtonActivated,
        }),

        NavigationButtonsFrame = Roact.createElement(createFitToContent("Frame", "UIListLayout", {
            Padding = UDim.new(0, 0),
            FillDirection = Enum.FillDirection.Horizontal,
            SortOrder = Enum.SortOrder.LayoutOrder,
        }), {
            BackgroundTransparency = 1,
            LayoutOrder = layoutIndex:getNextOrder(),
        }, {
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
    })
end

ContextServices.mapToProps(TopBar,{
    Theme = ContextServices.Theme,
})

local function mapStateToProps(state, props)
    local previousScreens = state.Screen.previousScreens
    local nextScreens = state.Screen.nextScreens

	return {
        PreviousScreens = previousScreens,
        NextScreens = nextScreens,
	}
end

local function useDispatchForProps(dispatch)
	return {
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