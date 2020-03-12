--[[
    The Main View of Asset Manager which contains the Top Bar, the Tile View, and Explorer Overlay.
    This Component also manages the following callbacks:
        displaying and hiding the explorer overlay
        going to a specific screen in the Tile View.

    Necessary Properties:

    Optional Properties:
]]

local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)

local ContextServices = require(Plugin.Packages.Framework.ContextServices)

local UILibrary = require(Plugin.Packages.UILibrary)
local LayoutOrderIterator = UILibrary.Util.LayoutOrderIterator

local AssetGridContainer = require(Plugin.Src.Components.AssetGridContainer)
local ExplorerOverlay = require(Plugin.Src.Components.ExplorerOverlay)
local NavBar = require(Plugin.Src.Components.NavBar)
local TopBar = require(Plugin.Src.Components.TopBar)

local Screens = require(Plugin.Src.Util.Screens)

local GetUniverseConfiguration = require(Plugin.Src.Thunks.GetUniverseConfiguration)

local MainView = Roact.PureComponent:extend("MainView")

local defaultFoldersLoaded = false
local universeNameSet = false
local function createDefaultFileOverlayFolders(category, parent, localization)
    local node = {
        ClassName = "Folder",
        Name = localization:getText("Folders", category),
        Screen = category,
        Children = {},
        Parent = parent,
    }

    if parent then
        table.insert(parent.Children, node)
    end
end

function MainView:init()
    self.state = {
        showOverlay = false,
        fileExplorerData = {
            Name = "Game 1",
            ClassName = "Folder",
            Screen = Screens.MAIN.Key,
            Children = {},
        },
    }

    self.openOverlay = function()
        self:setState({
            showOverlay = true,
        })
    end

    self.closeOverlay = function()
        self:setState({
            showOverlay = false,
        })
    end
end

function MainView:didMount()
    self.props.dispatchGetUniverseConfiguration(self.props.API:get())
end

function MainView:render()
    local props = self.props
    local theme = props.Theme:get("Plugin")

    local localization = props.Localization

    local universeName = props.UniverseName

    local layoutIndex = LayoutOrderIterator.new()

    if not defaultFoldersLoaded then
        for _, screen in pairs(Screens) do
            if screen.Key ~= Screens.MAIN.Key then
                createDefaultFileOverlayFolders(screen.Key, self.state.fileExplorerData, localization)
            end
        end
        defaultFoldersLoaded = true
    end

    if universeName ~= "" and not universeNameSet then
        self.state.fileExplorerData.Name = universeName
        universeNameSet = true
    end

    return Roact.createElement("Frame", {
        Size = UDim2.new(1, 0, 1, 0),
        Position = UDim2.new(0, 0, 0, 0),
        BackgroundTransparency = 0,
        BackgroundColor3 = theme.BackgroundColor,
    }, {
        MainViewLayout = Roact.createElement("UIListLayout", {
            FillDirection = Enum.FillDirection.Vertical,
            SortOrder = Enum.SortOrder.LayoutOrder,
            VerticalAlignment = Enum.VerticalAlignment.Top,
        }),

        TopBar = Roact.createElement(TopBar, {
            Size = UDim2.new(1, 0, 0, theme.TopBar.Button.Size),
            LayoutOrder = layoutIndex:getNextOrder(),

            OnOverlayActivated = self.openOverlay,
            Enabled = not self.state.showOverlay,
        }),

        NavBar = Roact.createElement(NavBar, {
            Size = UDim2.new(1, 0, 0, theme.NavBar.Height),
            LayoutOrder = layoutIndex:getNextOrder(),
        }),

        ExplorerOverlay = self.state.showOverlay and Roact.createElement(ExplorerOverlay, {
            FileExplorerData = self.state.fileExplorerData,
            CloseOverlay = self.closeOverlay,
        }),

        AssetGridView = Roact.createElement(AssetGridContainer, {
            Size = UDim2.new(1, 0, 1, -theme.TopBar.Button.Size - theme.NavBar.Height),
            LayoutOrder = layoutIndex:getNextOrder(),
        }),
    })
end

ContextServices.mapToProps(MainView,{
    API = ContextServices.API,
    Theme = ContextServices.Theme,
    Localization = ContextServices.Localization,
})

local function mapStateToProps(state, props)
    return {
        UniverseName = state.AssetManagerReducer.universeName,
    }
end

local function useDispatchForProps(dispatch)
    return {
        dispatchGetUniverseConfiguration = function(apiImpl)
            dispatch(GetUniverseConfiguration(apiImpl))
        end,
    }
end

return RoactRodux.connect(mapStateToProps, useDispatchForProps)(MainView)