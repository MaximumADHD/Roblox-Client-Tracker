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

local previousShouldTruncate = nil
local shouldTruncate = false
local isTruncated = false

local preTruncContentWidth = 0

local previousScreen = nil

local truncatedPathParts = {}

local NavBarPadding = 12

function NavBar:getCurrentPath(currentScreen)
    local path = {}
    local continueTruncating = shouldTruncate
    local startingScreen = currentScreen

    local isFolderScreen = currentScreen.Key == Screens.MAIN.Key

    while currentScreen ~= nil do
        if continueTruncating then
            if (currentScreen.Key ~= startingScreen.Key or isFolderScreen) and not truncatedPathParts[currentScreen.Key] then
                truncatedPathParts[currentScreen.Key] = true
                continueTruncating = false
                isTruncated = true
            end
        end
        table.insert(path, 1, currentScreen)

        currentScreen = Screens[currentScreen.Parent]
    end

    return path
end

function NavBar:buildPathComponents(props, theme, localization, dispatch)
    local pathComponents = {}

    local currentScreen = props.CurrentScreen

    local path = self:getCurrentPath(currentScreen)

    local count = 1
    local layoutIndex = LayoutOrderIterator.new()
    local startingScreenKey = currentScreen.Key

    for index, screen in ipairs(path) do
        local isStartingElement = screen.Key == startingScreenKey
        local isTopLevel = screen.Key == Screens.MAIN.Key

        local gameName = props.UniverseName ~= "" and props.UniverseName
        or localization:getText("NavBar", "GamePlaceholderName")
        local pathPartText = isTopLevel and gameName or localization:getText("Folders", screen.Key)

        local textTruncate = truncatedPathParts[screen.Key] and Enum.TextTruncate.AtEnd or nil

        local size = nil

        if truncatedPathParts[screen.Key] then
            size = UDim2.new(theme.NavBar.TruncatedTextScale, 0, 1, 0)
        end

        pathComponents[screen.Key] = Roact.createElement(LinkText, {
            Size = size,
            Text = pathPartText,

            Style = "NavBar",
            StyleModifier = isStartingElement and StyleModifier.Disabled or Roact.None,

            OnClick = function()
                if not isStartingElement then
                    dispatch(true, screen)
                end
            end,

            TextTruncate = textTruncate,

            LayoutOrder = layoutIndex:getNextOrder(),
        })

        if index ~= #path then
            local textExtents = GetTextSize(">", theme.FontSizeLarge, theme.Font)
            local textDimensions = UDim2.fromOffset(textExtents.X, textExtents.Y)

            pathComponents["PathSeparator-" .. count] = Roact.createElement("TextLabel", {
                Size = textDimensions,
                BackgroundTransparency = 1,
                Text = ">",
                TextColor3 = theme.TextColor,
                TextSize = theme.FontSizeLarge,
                Font = theme.Font,
                LayoutOrder = layoutIndex:getNextOrder(),
                TextXAlignment = Enum.TextXAlignment.Center,
                TextYAlignment = Enum.TextYAlignment.Bottom,
            })
        end

        if startingScreenKey == Screens.MAIN.Key then
            local gameIDText = localization:getText("NavBar", "ID", {gameId = game.GameId})

            local textExtents = GetTextSize(gameIDText, theme.FontSizeMedium, theme.Font)
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

function NavBar:init()
    self.Layout = Roact.createRef()
    self.NavBar = Roact.createRef()

    self.recalculateTextTruncation = function()
        if not previousScreen then
            return
        end

        previousShouldTruncate = shouldTruncate

        local shouldRerender = false

        local contentWidth = self.Layout.current and self.Layout.current.AbsoluteContentSize.X or 0
        local navBarWidth = self.NavBar.current and self.NavBar.current.AbsoluteSize.X or 0

        -- content doesn't fit on screen
        if contentWidth + NavBarPadding > navBarWidth then
            preTruncContentWidth = contentWidth
            shouldTruncate = true
        -- screen is now wide enough to fit pre-truncated content
        elseif isTruncated and preTruncContentWidth <= navBarWidth then
            shouldTruncate = false
            shouldRerender = true
            isTruncated = false
            truncatedPathParts = {}
        end

        if previousScreen.Key ~= self.props.CurrentScreen.Key then
            truncatedPathParts = {}
            shouldRerender = true
        end

        if previousShouldTruncate ~= shouldTruncate or shouldRerender then
            self:setState({})
        end
    end
end

function NavBar:render()
    local props = self.props
    local localization = self.props.Localization
    local theme = props.Theme:get("Plugin")

    local size = props.Size
    local layoutOrder = props.LayoutOrder

    local dispatchSetScreen = props.dispatchSetScreen

    self:recalculateTextTruncation()
    local navPathComponents = self:buildPathComponents(props, theme, localization, dispatchSetScreen)

    local NavBarChildren = {
        GameBarLayout = Roact.createElement("UIListLayout",{
            Padding = UDim.new(0, theme.NavBar.Padding),
            FillDirection = Enum.FillDirection.Horizontal,
            HorizontalAlignment = Enum.HorizontalAlignment.Left,
            VerticalAlignment = Enum.VerticalAlignment.Center,
            SortOrder = Enum.SortOrder.LayoutOrder,

            [Roact.Ref] = self.Layout,
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

            [Roact.Change.AbsoluteSize] = self.recalculateTextTruncation,
            [Roact.Ref] = self.NavBar,
        }, NavBarChildren)

    previousScreen = props.CurrentScreen

    return NavBarContents
end

ContextServices.mapToProps(NavBar,{
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

local function mapDispatchToProps(dispatch)
    return {
        dispatchSetScreen = function(enabled, screen)
            if enabled then
                dispatch(SetScreen(screen))
            end
        end,
    }
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(NavBar)