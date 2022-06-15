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

local Framework = require(Plugin.Packages.Framework)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local UI = Framework.UI
local Button = UI.Button
local HoverArea = UI.HoverArea

local Util = Framework.Util
local LayoutOrderIterator = Util.LayoutOrderIterator
local GetTextSize = Util.GetTextSize

local AssetGridContainer = require(Plugin.Src.Components.AssetGridContainer)
local AssetPreviewWrapper = require(Plugin.Src.Components.AssetPreviewWrapper)
local ExplorerOverlay = require(Plugin.Src.Components.ExplorerOverlay)
local NavBar = require(Plugin.Src.Components.NavBar)
local RecentlyImportedView = require(Plugin.Src.Components.RecentlyImportedView)
local TopBar = require(Plugin.Src.Components.TopBar)

local Screens = require(Plugin.Src.Util.Screens)

local LoadAllAliases = require(Plugin.Src.Thunks.LoadAllAliases)
local GetUniverseConfiguration = require(Plugin.Src.Thunks.GetUniverseConfiguration)
local OnScreenChange = require(Plugin.Src.Thunks.OnScreenChange)

local StudioService = game:GetService("StudioService")
local StudioPublishService = game:GetService("StudioPublishService")
local MainView = Roact.PureComponent:extend("MainView")

local FFlagStudioAssetManagerAddRecentlyImportedView = game:GetFastFlag("StudioAssetManagerAddRecentlyImportedView")
local FFlagAssetManagerRefactorPath = game:GetFastFlag("AssetManagerRefactorPath")
local FFLagMovePublishToStudioPublishService = game:GetFastFlag("MovePublishToStudioPublishService")
local FFlagAssetManagerFixOpenAssetPreview1 = game:GetFastFlag("AssetManagerFixOpenAssetPreview1")

local universeNameSet = false
local initialHasLinkedScriptValue = false

local function createDefaultFileOverlayFolders(screen, parent, localization)
    local node = {
        ClassName = "Folder",
        Name = localization:getText("Folders", screen.Path),
        Screen = screen.Path,
        Children = {},
        Parent = parent,
    }

    if parent then
        parent.Children[screen.LayoutOrder] = node
    end
end

function MainView:init()
    self.state = {
        currentScreen = "",
        showAssetPreview = false,
        showOverlay = false,
        fileExplorerData = {
            Name = "Game 1",
            ClassName = "Folder",
            Screen = Screens.MAIN.Path,
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
        if FFlagAssetManagerFixOpenAssetPreview1 then
            if type(assetPreviewData) == "table" then
                local assetPreviewWrapper = Roact.createElement(AssetPreviewWrapper, {
                    AssetPreviewData = assetPreviewData,
                    OnAssetPreviewClose = self.closeAssetPreview,
                    AssetData = assetData,
                })

                self:setState({
                    showAssetPreview = true,
                    assetPreview = assetPreviewWrapper,
                })
            else
                local localization = self.props.Localization
                local assetPreviewErrorText = localization:getText("MainView", "AssetPreviewError")
                print(assetPreviewErrorText)
            end
        else
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
    end

    self.getScripts = function()
        local props = self.props
        local apiImpl = props.API:get()
        local dispatchLoadAllAliases = props.dispatchLoadAllAliases
        if FFlagAssetManagerRefactorPath then
            dispatchLoadAllAliases(apiImpl, Screens.SCRIPTS.Path)
        else
            dispatchLoadAllAliases(apiImpl, Enum.AssetType.Lua)
        end
    end

    self.hasScripts = function()
        local props = self.props
        local apiImpl = props.API:get()
        local dispatchLoadAllAliases = props.dispatchLoadAllAliases
        if FFlagAssetManagerRefactorPath then
            dispatchLoadAllAliases(apiImpl, Screens.SCRIPTS.Path, true)
        else
            dispatchLoadAllAliases(apiImpl, Enum.AssetType.Lua, true)
        end
    end
end

function MainView:didMount()
    self.hasScripts()
    if game.GameId ~= 0 then
        self.props.dispatchGetUniverseConfiguration(self.props.API:get())
    end

    if FFLagMovePublishToStudioPublishService then
        self.gamePublishedConnection = StudioPublishService.GamePublishFinished:connect(function()
            self.props.dispatchGetUniverseConfiguration(self.props.API:get())
        end)
    else
        self.gamePublishedConnection = StudioService.DEPRECATED_GamePublishFinished:connect(function()
            self.props.dispatchGetUniverseConfiguration(self.props.API:get())
        end)
    end
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
            if screen.Path ~= Screens.MAIN.Path then
                -- Only show the scripts folder if this universe has linked scripts because they're deprecated.
                if (screen.Path == Screens.SCRIPTS.Path and hasLinkedScripts) or screen.Path ~= Screens.SCRIPTS.Path then
                    createDefaultFileOverlayFolders(screen, self.state.fileExplorerData, localization)
                end
            end
        end
        if hasLinkedScripts then
            initialHasLinkedScriptValue = hasLinkedScripts
        end
    end

    local apiImpl = props.API:get()
    local screen = props.CurrentScreen
    if screen ~= self.state.currentScreen then
        props.dispatchOnScreenChange(apiImpl, screen)
        self:setState({
            currentScreen = screen,
        })
    end
end

function MainView:render()
    local props = self.props
    local theme = props.Stylizer

    local localization = props.Localization

    local universeName = props.UniverseName

    local layoutIndex = LayoutOrderIterator.new()

    self.state.fileExplorerData.Name = universeName
    if universeName ~= "" and not universeNameSet then
        universeNameSet = true
    end

    local isPublishedGame = game.GameId ~= 0
    local publishText = localization:getText("MainView", "SaveText")

    local publishTextExtents = GetTextSize(publishText, theme.FontSizeLarge, theme.Font,
        Vector2.new(theme.MainView.PublishText.Width, math.huge))
    local buttonText = localization:getText("MainView", "ButtonText")
    buttonText = localization:getText("MainView", "SaveToRobloxButtonText")
    local buttonTextExtents = GetTextSize(buttonText, theme.FontSizeLarge, theme.Font)

    local recentViewToggled = props.RecentViewToggled
    local recentAssets = props.RecentAssets
    local hasRecentAssets = next(recentAssets) ~= nil

    local assetGridViewOffset = theme.TopBar.Height + theme.NavBar.Height + (hasRecentAssets and theme.RecentView.Bar.Height or 0)
    local recentViewOffset = theme.TopBar.Height + theme.NavBar.Height

    local isAssetGridViewEnabled = not self.state.showOverlay and not self.state.showAssetPreview

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
                if FFLagMovePublishToStudioPublishService then
                    StudioPublishService:ShowSaveOrPublishPlaceToRoblox(false, false, Enum.StudioCloseMode.None)
                else
                    StudioService:DEPRECATED_ShowSaveOrPublishPlaceToRoblox(false, false, Enum.StudioCloseMode.None)
                end
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

        AssetGridView = not FFlagStudioAssetManagerAddRecentlyImportedView and isPublishedGame and Roact.createElement(AssetGridContainer, {
            Size = UDim2.new(1, 0, 1, -theme.TopBar.Button.Size - theme.NavBar.Height),
            LayoutOrder = layoutIndex:getNextOrder(),

            OnOpenAssetPreview = self.openAssetPreview,
            OnAssetPreviewClose = self.closeAssetPreview,
            Enabled = isAssetGridViewEnabled,
        }),

        RecentsAssetGridView = FFlagStudioAssetManagerAddRecentlyImportedView and
        isPublishedGame and
        not recentViewToggled and
        Roact.createElement(AssetGridContainer, {
            Size = UDim2.new(1, 0, 1, -assetGridViewOffset),
            LayoutOrder = layoutIndex:getNextOrder(),

            OnOpenAssetPreview = self.openAssetPreview,
            OnAssetPreviewClose = self.closeAssetPreview,
            Enabled = isAssetGridViewEnabled,
        }),

        RecentlyImportedView = FFlagStudioAssetManagerAddRecentlyImportedView and
        hasRecentAssets and
        Roact.createElement(RecentlyImportedView, {
            Size = UDim2.new(1, 0, recentViewToggled and 1 or 0, recentViewToggled and -recentViewOffset or theme.RecentView.Bar.Height),
            LayoutOrder = layoutIndex:getNextOrder(),

            Enabled = not self.state.showOverlay,
        }),
    })
end

MainView = withContext({
    API = ContextServices.API,
    Stylizer = ContextServices.Stylizer,
    Localization = ContextServices.Localization,
})(MainView)

local function mapStateToProps(state, props)
    local assetManagerReducer = state.AssetManagerReducer

	return {
        AssetsTable = assetManagerReducer.assetsTable,
        CurrentScreen = state.Screen.currentScreen,
        UniverseName = assetManagerReducer.universeName,
        HasLinkedScripts = assetManagerReducer.hasLinkedScripts,
        RecentAssets = assetManagerReducer.recentAssets,
        RecentViewToggled = assetManagerReducer.recentViewToggled,
    }
end

local function mapDispatchToProps(dispatch)
    return {
        dispatchLoadAllAliases = function(apiImpl, assetPath, scriptCheck)
            dispatch(LoadAllAliases(apiImpl, assetPath, scriptCheck))
        end,
        dispatchGetUniverseConfiguration = function(apiImpl)
            dispatch(GetUniverseConfiguration(apiImpl))
        end,
        dispatchOnScreenChange = function(apiImpl, screen)
            dispatch(OnScreenChange(apiImpl, screen))
        end,
    }
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(MainView)