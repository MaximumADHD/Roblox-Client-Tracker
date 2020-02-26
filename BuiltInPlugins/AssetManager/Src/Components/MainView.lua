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
local ContextServices = require(Plugin.Packages.Framework.ContextServices)

local UILibrary = require(Plugin.Packages.UILibrary)
local createFitToContent = UILibrary.Component.createFitToContent
local LayoutOrderIterator = UILibrary.Util.LayoutOrderIterator

local TopBar = require(Plugin.Src.Components.TopBar)
local ExplorerOverlay = require(Plugin.Src.Components.ExplorerOverlay)
local NavBar = require(Plugin.Src.Components.NavBar)

local Screens = require(Plugin.Src.Util.Screens)

local MainView = Roact.PureComponent:extend("MainView")

local FitTocontent = createFitToContent("Frame", "UIListLayout", {
    FillDirection = Enum.FillDirection.Vertical,
    SortOrder = Enum.SortOrder.LayoutOrder,
    VerticalAlignment = Enum.VerticalAlignment.Top,
})

local defaultFoldersLoaded = false
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

function MainView:render()
    local props = self.props
    local theme = props.Theme:get("Plugin")

    local localization = props.Localization

    local layoutIndex = LayoutOrderIterator.new()

    if not defaultFoldersLoaded then
        for _, screen in pairs(Screens) do
            if screen.Key ~= Screens.MAIN.Key then
                createDefaultFileOverlayFolders(screen.Key, self.state.fileExplorerData, localization)
            end
        end
        defaultFoldersLoaded = true
    end

    return Roact.createElement(FitTocontent, {
        Position = UDim2.new(0, 0, 0, 0),
        BackgroundTransparency = 0,
        BackgroundColor3 = theme.BackgroundColor,
    }, {
        TopBar = Roact.createElement(TopBar, {
            OnOverlayActivated = self.openOverlay,
            Enabled = not self.state.showOverlay,
            LayoutOrder = layoutIndex:getNextOrder(),
        }),

        NavBar = Roact.createElement(NavBar, {
            Size = UDim2.new(1, 0, 0, theme.NavBar.Height),
            LayoutOrder = layoutIndex:getNextOrder(),
        }),

        ExplorerOverlay = self.state.showOverlay and Roact.createElement(ExplorerOverlay, {
            FileExplorerData = self.state.fileExplorerData,
            CloseOverlay = self.closeOverlay,
        }),
    })
end

ContextServices.mapToProps(MainView,{
    Theme = ContextServices.Theme,
    Localization = ContextServices.Localization,
})

return MainView