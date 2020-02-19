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

local TopBar = require(Plugin.Src.Components.TopBar)
local ExplorerOverlay = require(Plugin.Src.Components.ExplorerOverlay)

local Screens = require(Plugin.Src.Util.Screens)

local MainView = Roact.PureComponent:extend("MainView")

local defaultFoldersLoaded = false
local function createDefaultFileOverlayFolders(category, parent, localization)
    local node = {
        ClassName = "Folder",
        Name = localization:getText("Folders", category),
        Screen = category,
        Children = {},
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
            Screen = Screens.MAIN,
            Children = {},
        },
    }

    self.onOverlayButtonActivated = function()
        self:setState({
            showOverlay = not self.state.showOverlay,
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

    if not defaultFoldersLoaded then
        for _,category in pairs(Screens) do
            if category ~= Screens.MAIN then
                createDefaultFileOverlayFolders(category, self.state.fileExplorerData, localization)
            end
        end
        defaultFoldersLoaded = true
    end

    return Roact.createElement("Frame", {
        Position = UDim2.new(0, 0, 0, 0),
        Size = UDim2.new(1, 0, 1, 0),
        BackgroundTransparency = 0,
        BackgroundColor3 = theme.BackgroundColor,
    }, {
        TopBar = Roact.createElement(TopBar, {
            OnOverlayActivated = self.onOverlayButtonActivated,
            Enabled = not self.state.showOverlay,
        }),

        ExplorerOverlay = self.state.showOverlay and Roact.createElement(ExplorerOverlay, {
            FileExplorerData = self.state.fileExplorerData,
            CloseOverlay = self.closeOverlay,
        })
    })
end

ContextServices.mapToProps(MainView,{
    Theme = ContextServices.Theme,
    Localization = ContextServices.Localization,
})

return MainView