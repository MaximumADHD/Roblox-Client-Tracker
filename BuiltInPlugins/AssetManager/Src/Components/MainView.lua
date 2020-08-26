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

local Framework = Plugin.Packages.Framework

local ContextServices = require(Framework.ContextServices)

local UI = require(Framework.UI)
local Button = UI.Button
local HoverArea = UI.HoverArea

local UILibrary = require(Plugin.Packages.UILibrary)
local LayoutOrderIterator = UILibrary.Util.LayoutOrderIterator
local GetTextSize = UILibrary.Util.GetTextSize

local AssetGridContainer = require(Plugin.Src.Components.AssetGridContainer)
local AssetPreviewWrapper = require(Plugin.Src.Components.AssetPreviewWrapper)
local ExplorerOverlay = require(Plugin.Src.Components.ExplorerOverlay)
local NavBar = require(Plugin.Src.Components.NavBar)
local TopBar = require(Plugin.Src.Components.TopBar)

local Screens = require(Plugin.Src.Util.Screens)

local GetAssets = require(Plugin.Src.Thunks.GetAssets)
local GetUniverseConfiguration = require(Plugin.Src.Thunks.GetUniverseConfiguration)

local StudioService = game:GetService("StudioService")

local MainView = Roact.PureComponent:extend("MainView")

local universeNameSet = false
local initialHasLinkedScriptValue = false

local function createDefaultFileOverlayFolders(screen, parent, localization)
    local node = {
        ClassName = "Folder",
        Name = localization:getText("Folders", screen.Key),
        Screen = screen.Key,
        Children = {},
        Parent = parent,
    }

    if parent then
        parent.Children[screen.LayoutOrder] = node
    end
end

function MainView:init()
    self.state = {
        showAssetPreview = false,
        showOverlay = false,
        fileExplorerData = {
            Name = "Game 1",
            ClassName = "Folder",
            Screen = Screens.MAIN.Key,
            Children = {},
        },
    }

    self.gamePublishedConnection = nil

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

    self.closeAssetPreview = function()
        self:setState({
            showAssetPreview = false,
            assetPreview = nil,
        })
    end

    self.openAssetPreview = function(assetData, assetPreviewData)
        if not assetPreviewData then
            return
        end

        local assetPreviewWrapper = Roact.createElement(AssetPreviewWrapper, {
            AssetPreviewData = assetPreviewData,
            OnAssetPreviewClose = self.closeAssetPreview,
            AssetData = assetData,
        })

        self:setState({
            showAssetPreview = true,
            assetPreview = assetPreviewWrapper,
        })
    end

    self.getScripts = function()
        local props = self.props
        local apiImpl = props.API:get()

        local dispatchGetAssets = props.dispatchGetAssets
        dispatchGetAssets(apiImpl, Screens.SCRIPTS.AssetType, nil, nil, false)
    end
end

function MainView:didMount()
    self.getScripts()
    if game.GameId ~= 0 then
        self.props.dispatchGetUniverseConfiguration(self.props.API:get())
    end
    self.gamePublishedConnection = StudioService.GamePublishFinished:connect(function()
        self.props.dispatchGetUniverseConfiguration(self.props.API:get())
    end)
end

function MainView:willUnmount()
    if self.gamePublishedConnection then
        self.gamePublishedConnection:disconnect()
    end
end

function MainView:didUpdate()
    local props = self.props
    local localization = props.Localization
    local hasLinkedScripts = props.HasLinkedScripts

    if not initialHasLinkedScriptValue ~= hasLinkedScripts then
        for _, screen in pairs(Screens) do
            if screen.Key ~= Screens.MAIN.Key then
                -- Only show the scripts folder if this universe has linked scripts because they're deprecated.
                if (screen.Key == Screens.SCRIPTS.Key and hasLinkedScripts) or screen.Key ~= Screens.SCRIPTS.Key then
                    createDefaultFileOverlayFolders(screen, self.state.fileExplorerData, localization)
                end
            end
        end
        if hasLinkedScripts then
            initialHasLinkedScriptValue = hasLinkedScripts
        end
    end
end

function MainView:render()
    local props = self.props
    local theme = props.Theme:get("Plugin")

    local localization = props.Localization

    local universeName = props.UniverseName

    local layoutIndex = LayoutOrderIterator.new()

    self.state.fileExplorerData.Name = universeName
    if universeName ~= "" and not universeNameSet then
        universeNameSet = true
    end

    local isPublishedGame = game.GameId ~= 0
    local publishText = localization:getText("MainView", "PublishText")
    local publishTextExtents = GetTextSize(publishText, theme.FontSizeLarge, theme.Font,
        Vector2.new(theme.MainView.PublishText.Width, math.huge))
    local buttonText = localization:getText("MainView", "ButtonText")
    local buttonTextExtents = GetTextSize(buttonText, theme.FontSizeLarge, theme.Font)

    return Roact.createElement("Frame", {
        Size = UDim2.new(1, 0, 1, 0),
        Position = UDim2.new(0, 0, 0, 0),
        BackgroundTransparency = 0,
        BackgroundColor3 = theme.BackgroundColor,
    }, {
        UseText = not isPublishedGame and Roact.createElement("TextLabel", {
            Size = UDim2.new(0, publishTextExtents.X, 0, publishTextExtents.Y),
            Position = UDim2.new(0.5, 0, 0, theme.MainView.PublishText.Offset),
            AnchorPoint = Vector2.new(0.5, 0.5),
            LayoutOrder = layoutIndex:getNextOrder(),

            BackgroundTransparency = 1,

            Font = theme.Font,
            Text = publishText,
            TextColor3 = theme.TextColor,
            TextSize = theme.FontSizeLarge,
            TextXAlignment = Enum.TextXAlignment.Center,
            TextWrapped = true,
        }),

        PublishButton = not isPublishedGame and Roact.createElement(Button, {
            Style = "RoundPrimary",

            Text = buttonText,
            Size = UDim2.new(0, buttonTextExtents.X + theme.MainView.PublishButton.PaddingX,
                0, buttonTextExtents.Y + theme.MainView.PublishButton.PaddingY),
            Position = UDim2.new(0.5, 0, 0, theme.MainView.PublishButton.Offset),
            AnchorPoint = Vector2.new(0.5, 0.5),
            LayoutOrder = layoutIndex:getNextOrder(),

            OnClick = function()
                StudioService:ShowPublishToRoblox()
            end,
        }, {
            Roact.createElement(HoverArea, {Cursor = "PointingHand"}),
        }),

        MainViewLayout = isPublishedGame and Roact.createElement("UIListLayout", {
            FillDirection = Enum.FillDirection.Vertical,
            SortOrder = Enum.SortOrder.LayoutOrder,
            VerticalAlignment = Enum.VerticalAlignment.Top,
        }),

        ExplorerOverlay = isPublishedGame and self.state.showOverlay and Roact.createElement(ExplorerOverlay, {
            FileExplorerData = self.state.fileExplorerData,
            CloseOverlay = self.closeOverlay,
        }),

        AssetPreview = isPublishedGame and self.state.showAssetPreview and self.state.assetPreview,

        TopBar = isPublishedGame and Roact.createElement(TopBar, {
            Size = UDim2.new(1, 0, 0, theme.TopBar.Button.Size),
            LayoutOrder = layoutIndex:getNextOrder(),

            OnOverlayActivated = self.openOverlay,
            Enabled = not self.state.showOverlay,
        }),

        NavBar = isPublishedGame and Roact.createElement(NavBar, {
            Size = UDim2.new(1, 0, 0, theme.NavBar.Height),
            LayoutOrder = layoutIndex:getNextOrder(),
        }),

        AssetGridView = isPublishedGame and Roact.createElement(AssetGridContainer, {
            Size = UDim2.new(1, 0, 1, -theme.TopBar.Button.Size - theme.NavBar.Height),
            LayoutOrder = layoutIndex:getNextOrder(),

            OnOpenAssetPreview = self.openAssetPreview,
            Enabled = not self.state.showOverlay,
        }),
    })
end

ContextServices.mapToProps(MainView,{
    API = ContextServices.API,
    Theme = ContextServices.Theme,
    Localization = ContextServices.Localization,
})

local function mapStateToProps(state, props)
    local assetManagerReducer = state.AssetManagerReducer

	return {
        AssetsTable = assetManagerReducer.assetsTable,
        UniverseName = assetManagerReducer.universeName,
        HasLinkedScripts = assetManagerReducer.hasLinkedScripts,
    }
end

local function mapDispatchToProps(dispatch)
    return {
        dispatchGetAssets = function(apiImpl, assetType, pageCursor, pageNumber, showLoadingIndicator)
            dispatch(GetAssets(apiImpl, assetType, pageCursor, pageNumber, showLoadingIndicator))
        end,

        dispatchGetUniverseConfiguration = function(apiImpl)
            dispatch(GetUniverseConfiguration(apiImpl))
        end,
    }
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(MainView)