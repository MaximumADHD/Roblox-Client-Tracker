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

local SetRecentViewToggled = require(Plugin.Src.Actions.SetRecentViewToggled)
local SetScreen = require(Plugin.Src.Actions.SetScreen)

local Screens = require(Plugin.Src.Util.Screens)

local NavBar = Roact.PureComponent:extend("NavBar")

local DEPRECATED_previousShouldTruncate = nil
local DEPRECATED_shouldTruncate = false
local DEPRECATED_isTruncated = false

local DEPRECATED_preTruncContentWidth = 0

local DEPRECATED_previousScreen = nil

local DEPRECATED_truncatedPathParts = {}

local NavBarPadding = 12

local FFlagStudioAssetManagerAddGridListToggle = game:GetFastFlag("StudioAssetManagerAddGridListToggle")

-- clean up DEPRECATED_previousDEPRECATED_shouldTruncate, DEPRECATED_isTruncated, DEPRECATED_shouldTruncate with flag
local FFlagAssetManagerFixNavBarSetState = game:GetFastFlag("AssetManagerFixNavBarSetState")

function NavBar:getCurrentPath(currentScreen)
    local path = {}
    -- remove continueTruncated with FFlagAssetManagerFixNavBarSetState
    local continueTruncating = DEPRECATED_shouldTruncate
    local startingScreen = currentScreen

    local isFolderScreen = currentScreen.Key == Screens.MAIN.Key

    local navBarWidth = self.NavBar.current and self.NavBar.current.AbsoluteSize.X or 0

    while currentScreen ~= nil do
        if FFlagAssetManagerFixNavBarSetState then
            if self.state.contentWidth + NavBarPadding > navBarWidth then
                self.preTruncContentWidth = self.state.contentWidth
                if (currentScreen.Key ~= startingScreen.Key or isFolderScreen) and not self.truncatedPathParts[currentScreen.Key] then
                    self.truncatedPathParts[currentScreen.Key] = true
                end
            elseif self.preTruncContentWidth + NavBarPadding <= navBarWidth then
                self.truncatedPathParts = {}
            end
        else
            if continueTruncating then
                if (currentScreen.Key ~= startingScreen.Key or isFolderScreen) and not DEPRECATED_truncatedPathParts[currentScreen.Key] then
                    DEPRECATED_truncatedPathParts[currentScreen.Key] = true
                    continueTruncating = false
                    DEPRECATED_isTruncated = true
                end
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

    local recentViewToggled = props.RecentViewToggled
    local dispatchSetRecentViewToggled = props.dispatchSetRecentViewToggled

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

        local textTruncate
        if FFlagAssetManagerFixNavBarSetState then
            textTruncate = self.truncatedPathParts[screen.Key] and Enum.TextTruncate.AtEnd or nil
        else
            textTruncate = DEPRECATED_truncatedPathParts[screen.Key] and Enum.TextTruncate.AtEnd or nil
        end

        local size = nil

        if FFlagAssetManagerFixNavBarSetState and self.truncatedPathParts[screen.Key] or DEPRECATED_truncatedPathParts[screen.Key] then
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
                    if FFlagStudioAssetManagerAddGridListToggle and recentViewToggled then
                        dispatchSetRecentViewToggled(false)
                    end
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
    self.state = {
        contentWidth = 0,
        currentScreen = "",
    }

    self.preTruncContentWidth = 0
    self.truncatedPathParts = {}

    self.Layout = Roact.createRef()
    self.NavBar = Roact.createRef()

    self.DEPRECATED_recalculateTextTruncation = function()
        assert(not FFlagAssetManagerFixNavBarSetState)
        if not DEPRECATED_previousScreen then
            return
        end

        DEPRECATED_previousShouldTruncate = DEPRECATED_shouldTruncate

        local shouldRerender = false

        local contentWidth = self.Layout.current and self.Layout.current.AbsoluteContentSize.X or 0
        local navBarWidth = self.NavBar.current and self.NavBar.current.AbsoluteSize.X or 0

        -- content doesn't fit on screen
        if contentWidth + NavBarPadding > navBarWidth then
            DEPRECATED_preTruncContentWidth = contentWidth
            DEPRECATED_shouldTruncate = true
        -- screen is now wide enough to fit pre-truncated content
        elseif DEPRECATED_isTruncated and DEPRECATED_preTruncContentWidth <= navBarWidth then
            DEPRECATED_shouldTruncate = false
            shouldRerender = true
            DEPRECATED_isTruncated = false
            DEPRECATED_truncatedPathParts = {}
        end

        if DEPRECATED_previousScreen.Key ~= self.props.CurrentScreen.Key then
            DEPRECATED_truncatedPathParts = {}
            shouldRerender = true
        end

        if DEPRECATED_previousShouldTruncate ~= DEPRECATED_shouldTruncate or shouldRerender then
            self:setState({})
        end
    end
end

function NavBar:didMount()
    if FFlagAssetManagerFixNavBarSetState then
        self:setState({
            contentWidth = self.Layout.current and self.Layout.current.AbsoluteContentSize.X or 0,
        })
    end
end

function NavBar:didUpdate()
    local props = self.props
    local screen = props.CurrentScreen
    if FFlagAssetManagerFixNavBarSetState then
        if screen ~= self.state.currentScreen then
            self:setState({
                currentScreen = screen,
                contentWidth = self.Layout.current and self.Layout.current.AbsoluteContentSize.X or 0,
            })
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

    if not FFlagAssetManagerFixNavBarSetState then
        self:DEPRECATED_recalculateTextTruncation()
    end
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

            [Roact.Change.AbsoluteSize] = function()
                if FFlagAssetManagerFixNavBarSetState then
                    self:setState({
                        contentWidth = self.Layout.current and self.Layout.current.AbsoluteContentSize.X or 0,
                    })
                else
                    self.DEPRECATED_recalculateTextTruncation()
                end
            end,
            [Roact.Ref] = self.NavBar,
        }, NavBarChildren)

    if not FFlagAssetManagerFixNavBarSetState then
        DEPRECATED_previousScreen = props.CurrentScreen
    end

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
        RecentViewToggled = state.AssetManagerReducer.recentViewToggled,
    }
end

local function mapDispatchToProps(dispatch)
    return {
        dispatchSetRecentViewToggled = function(toggled)
            dispatch(SetRecentViewToggled(toggled))
        end,
        dispatchSetScreen = function(enabled, screen)
            if enabled then
                dispatch(SetScreen(screen))
            end
        end,
    }
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(NavBar)
