--[[
    The Nav Bar displays a path that is determined from a linked list of tables that have a each have a Parent.
    Each element in the path is clickble to set the current view to the one that corresponds to that screen.
    The path element that corresponds to the current screen will not be clickable.

    Necessary Properties:
        Size = UDim2, the size of this component within it's parent.
        LayoutOrder = number, the position of this component in it's parent.
    Dispatch Properties:
        DispatchSetScreen = callback, that sets the screen with info from the corresponding path element.
    State Properties:
        CurrentScreen = table, the current screen that is displayed see Screen.lua for the table format.
    Optional Properties:
]]

local Plugin = script.Parent.Parent.Parent

local Cryo = require(Plugin.Packages.Cryo)
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)

local UILibrary = require(Plugin.Packages.UILibrary)
local LayoutOrderIterator = UILibrary.Util.LayoutOrderIterator
local GetTextSize = UILibrary.Util.GetTextSize

local Framework = Plugin.Packages.Framework
local ContextServices = require(Framework.ContextServices)
local LinkText = require(Framework.UI).LinkText
local Image = require(Framework.UI).Decoration.Image
local Util = require(Framework.Util)
local StyleModifier = Util.StyleModifier

local SetScreen = require(Plugin.Src.Actions.SetScreen)

local Screens = require(Plugin.Src.Util.Screens)

local NavBar = Roact.PureComponent:extend("NavBar")

local function getCurrentPath(currentScreen)
    local path = {}

    while currentScreen ~= nil do
        table.insert(path, 1, currentScreen)
        currentScreen = Screens[currentScreen.Parent]
    end

    return path
end

local function buildPathComponents(props, theme, localization, dispatch)
    local pathComponents = {}

    local apiImpl = props.API:get()

    local currentScreen = props.CurrentScreen

    local path = getCurrentPath(currentScreen)

    local count = 1
    local layoutIndex = LayoutOrderIterator.new()
    local startingScreenKey = currentScreen.Key

    for index, screen in ipairs(path) do
        local isStartingElement = screen.Key == startingScreenKey
        local isTopLevel = screen.Key == Screens.MAIN.Key

        local gameName = props.UniverseName ~= "" and props.UniverseName
        or localization:getText("NavBar", "GamePlaceholderName")
        local pathPartText = isTopLevel and gameName or localization:getText("Folders", screen.Key)

        pathComponents[screen.Key] = Roact.createElement(LinkText, {
            Text = pathPartText,

            Style = "NavBar",
            StyleModifier = isStartingElement and StyleModifier.Disabled or Roact.None,

            OnClick = function()
                if not isStartingElement then
                    dispatch(true, apiImpl, screen)
                end
            end,

            LayoutOrder = layoutIndex:getNextOrder(),
        })

        if index ~= #path then
            pathComponents["PathSeparator-" .. count] = Roact.createElement(Image, {
                Size = UDim2.new(0, theme.NavBar.ImageSize, 0, theme.NavBar.ImageSize),

                Style = "NavBarPathSeparator",
                LayoutOrder = layoutIndex:getNextOrder(),
            })
        end

        if startingScreenKey == Screens.MAIN.Key then
            local gameIDText = localization:getText("NavBar", "ID", {gameId = game.GameId})

            local textExtents = GetTextSize(gameIDText, theme.FontSizeSmall, theme.Font)
            local textDimensions = UDim2.fromOffset(textExtents.X, textExtents.Y)

            pathComponents["UniverseId"] = Roact.createElement("TextLabel", {
                Size = textDimensions,
                BackgroundTransparency = 1,
                Text = gameIDText,
                TextColor3 = theme.DisabledColor,
                TextSize = theme.FontSizeSmall,
                Font = theme.Font,
                LayoutOrder = layoutIndex:getNextOrder(),
                TextXAlignment = Enum.TextXAlignment.Left,
            })
        end
        count = count + 1
    end

    return pathComponents
end

function NavBar:render()
    local props = self.props
    local localization = self.props.Localization
    local theme = props.Theme:get("Plugin")

    local size = props.Size
    local layoutOrder = props.LayoutOrder

    local dispatchSetScreen = props.dispatchSetScreen

    local navPathComponents = buildPathComponents(props, theme, localization, dispatchSetScreen)

    local NavBarChildren = {
        GameBarLayout = Roact.createElement("UIListLayout",{
            Padding = UDim.new(0, theme.NavBar.Padding),
            FillDirection = Enum.FillDirection.Horizontal,
            HorizontalAlignment = Enum.HorizontalAlignment.Left,
            VerticalAlignment = Enum.VerticalAlignment.Center,
            SortOrder = Enum.SortOrder.LayoutOrder,
        }),

        GameBarPadding = Roact.createElement("UIPadding", {
            PaddingLeft = UDim.new(0, theme.NavBar.Padding),
        }),
    }

    NavBarChildren = Cryo.Dictionary.join(NavBarChildren, navPathComponents)

    local NavBarContents = Roact.createElement("Frame", {
            Size = size,
            LayoutOrder = layoutOrder,

            BackgroundColor3 = theme.NavBar.BackgroundColor,
            BorderSizePixel = 0,
        }, NavBarChildren)

    return NavBarContents
end

ContextServices.mapToProps(NavBar,{
    API = ContextServices.API,
    Theme = ContextServices.Theme,
    Localization = ContextServices.Localization,
})

local function mapStateToProps(state, props)
    local screen = state.Screen or {}
    local currentScreen = screen.currentScreen

    return {
        UniverseName = state.AssetManagerReducer.universeName,
        CurrentScreen = currentScreen,
    }
end

local function useDispatchForProps(dispatch)
    return {
        dispatchSetScreen = function(enabled, apiImpl, screen)
            if enabled then
                dispatch(SetScreen(screen))
            end
        end,
    }
end

return RoactRodux.connect(mapStateToProps, useDispatchForProps)(NavBar)