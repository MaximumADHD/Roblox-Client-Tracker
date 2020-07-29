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
local Util = require(Framework.Util)
local StyleModifier = Util.StyleModifier

local UI = require(Framework.UI)
local Button = UI.Button
local HoverArea = UI.HoverArea

local UILibrary = require(Plugin.Packages.UILibrary)
local InfiniteScrollingFrame = UILibrary.Component.InfiniteScrollingFrame
local LoadingIndicator = UILibrary.Component.LoadingIndicator
local GetTextSize = UILibrary.Util.GetTextSize

local Screens = require(Plugin.Src.Util.Screens)

local Tile = require(Plugin.Src.Components.Tile)

local SetAssets = require(Plugin.Src.Actions.SetAssets)
local SetSelectedAssets = require(Plugin.Src.Actions.SetSelectedAssets)

local GetAssets = require(Plugin.Src.Thunks.GetAssets)
local GetAssetPreviewData = require(Plugin.Src.Thunks.GetAssetPreviewData)
local LoadAllAliases = require(Plugin.Src.Thunks.LoadAllAliases)
local OnAssetRightClick = require(Plugin.Src.Thunks.OnAssetRightClick)
local OnScreenChange = require(Plugin.Src.Thunks.OnScreenChange)

local BulkImportService = game:GetService("BulkImportService")

local FFlagStudioAssetManagerCaseInsensitiveFilter = game:DefineFastFlag("StudioAssetManagerCaseInsensitiveFilter", false)
local FFlagStudioAssetManagerLoadAllAliasesButton = game:DefineFastFlag("StudioAssetManagerLoadAllAliasesButton", false)
local FFlagStudioAssetManagerShiftMultiSelect = game:GetFastFlag("StudioAssetManagerShiftMultiSelect")

local AssetGridContainer = Roact.Component:extend("AssetGridContainer")

local function isSupportedBulkImportAssetScreen(screen)
    return screen.Key == Screens.IMAGES.Key or screen.Key == Screens.MESHES.Key
end

function AssetGridContainer:init()
    self.state = {
        currentScreen = "",
    }

    self.layoutRef = Roact.createRef()

    self.bulkImportFinishedConnection = nil

    self.onClearSelection = function()
        if not self.props.Enabled then
            return
        end
        self.props.dispatchSetSelectedAssets({})
    end

    self.onMouseButton2Click = function()
        local props = self.props
        if not props.Enabled then
            return
        end
        props.dispatchSetSelectedAssets({})
        local screen = props.CurrentScreen
        if screen.Key == Screens.PLACES.Key then
            -- pretend we are right clicking on folder to show add new place context menu
            local placesFolder = {
                ClassName = "Folder",
                Screen = screen,
            }
            props.dispatchOnAssetRightClick(props.Analytics, props.API:get(), placesFolder, props.Localization, props.Plugin:get())
        end
    end

    self.onOpenAssetPreview = function(assetData)
        local assetPreviewData = self.props.AssetsTable.assetPreviewData[assetData.id]
        self.props.OnOpenAssetPreview(assetData, assetPreviewData)
    end
end

function AssetGridContainer:didMount()
    self.bulkImportFinishedConnection = BulkImportService.BulkImportFinished:connect(function(state)
        -- state is 1 for success
        local props = self.props
        local screen = props.CurrentScreen
        if state == 1 and isSupportedBulkImportAssetScreen(screen) then
            local apiImpl = props.API:get()
            props.dispatchSetAssets({ assets = {} })
            props.dispatchGetAssets(apiImpl, screen.AssetType)
        end
    end)
end

function AssetGridContainer:willUnmount()
    if self.bulkImportFinishedConnection then
        self.bulkImportFinishedConnection:disconnect()
    end
end

function AssetGridContainer:createTiles(apiImpl, localization, theme,
    assets, currentScreen, searchTerm, selectedAssets, hasLinkedScripts, enabled)

    local numberAssets = 0
    local assetsToDisplay = {
        GridLayout = Roact.createElement("UIGridLayout", {
            CellSize = theme.Tile.Default.Size,
            CellPadding = theme.AssetGridContainer.CellPadding,
            SortOrder = Enum.SortOrder.LayoutOrder,

            [Roact.Ref] = self.layoutRef,
        })
    }

    if currentScreen.Key == Screens.MAIN.Key then
        for _, screen in pairs(Screens) do
            if screen.Key ~= Screens.MAIN.Key then
                local key = FFlagStudioAssetManagerShiftMultiSelect and screen.LayoutOrder or screen.Key
                if (screen.Key == Screens.SCRIPTS.Key and hasLinkedScripts) or screen.Key ~= Screens.SCRIPTS.Key then
                    local folderTile = Roact.createElement(Tile, {
                        AssetData = {
                            name = localization:getText("Folders", screen.Key),
                            ClassName = "Folder",
                            Screen = screen,
                        },

                        LayoutOrder = screen.LayoutOrder,
                        StyleModifier = selectedAssets[key] and StyleModifier.Selected or nil,
                        Enabled = enabled,
                    })
                    assetsToDisplay[screen.Key] = folderTile
                end
            end
        end
    else
        for _, asset in pairs(assets) do
            -- pass in true for plain to disable magic characters like (, ), %...
            if FFlagStudioAssetManagerCaseInsensitiveFilter then
                if string.find(string.lower(asset.name), string.lower(searchTerm), 1, true) then
                    asset.key = asset.layoutOrder
                    local assetTile = Roact.createElement(Tile, {
                        AssetData = asset,
                        LayoutOrder = asset.layoutOrder,
                        StyleModifier = selectedAssets[asset.layoutOrder] and StyleModifier.Selected or nil,
                        Enabled = enabled,
                        OnOpenAssetPreview = self.onOpenAssetPreview,
                    })
                    assetsToDisplay[asset.layoutOrder] = assetTile
                    numberAssets = numberAssets + 1
                end
            else
                if string.find(asset.name, searchTerm, 1, true) then
                    asset.key = asset.layoutOrder
                    local assetTile = Roact.createElement(Tile, {
                        AssetData = asset,
                        LayoutOrder = asset.layoutOrder,
                        StyleModifier = selectedAssets[asset.layoutOrder] and StyleModifier.Selected or nil,
                        Enabled = enabled,
                        OnOpenAssetPreview = self.onOpenAssetPreview,
                    })
                    assetsToDisplay[asset.layoutOrder] = assetTile
                    numberAssets = numberAssets + 1
                end
            end
        end
    end

    return assetsToDisplay, numberAssets
end

function AssetGridContainer:didUpdate()
    local props = self.props
    local apiImpl = props.API:get()
    local screen = props.CurrentScreen
    if screen ~= self.state.currentScreen then
        props.dispatchOnScreenChange(apiImpl, screen)
        self:setState({
            currentScreen = screen,
        })
    end
end

function AssetGridContainer:render()
    local props = self.props
    local apiImpl = props.API:get()
    local theme = props.Theme:get("Plugin")
    local localization = props.Localization

    local size = props.Size
    local layoutOrder = props.LayoutOrder
    local enabled = props.Enabled

    local assetsTable = props.AssetsTable
    local assets = assetsTable.assets
    local numberOfAssets = assetsTable.index
    local nextPageCursor = assetsTable.nextPageCursor
    local nextPageNumber = assetsTable.pageNumber
    local currentScreen = props.CurrentScreen
    local isFetchingAssets = props.IsFetchingAssets
    local searchTerm = props.SearchTerm
    local selectedAssets = props.SelectedAssets
    local assetPreviewData = assetsTable.assetPreviewData
    local hasLinkedScripts = props.HasLinkedScripts

    local dispatchGetAssets = props.dispatchGetAssets
    local dispatchGetAssetPreviewData = props.dispatchGetAssetPreviewData
    local dispatchLoadAllAliases = props.dispatchLoadAllAliases

    local contents, assetCount = self:createTiles(apiImpl, localization, theme,
        assets, currentScreen, searchTerm, selectedAssets, hasLinkedScripts, enabled)

    local hasAssetsToDisplay = currentScreen.Key == Screens.MAIN.Key or assetCount ~= 0

    if hasAssetsToDisplay then
        if numberOfAssets ~= 0 then
            local assetIds = {}
            for assetId, asset in pairs(assets) do
                local isPlace = asset.assetType == Enum.AssetType.Place
                if not isPlace and assetPreviewData[assetId] == nil then
                    table.insert(assetIds, assetId)
                end
            end

            if #assetIds ~= 0 then
                dispatchGetAssetPreviewData(apiImpl, assetIds)
            end
        end
    end

    local hasMorePages = FFlagStudioAssetManagerLoadAllAliasesButton and nextPageNumber ~= nil

    local assetTypeText = localization:getText("Folders", currentScreen.Key)
    local noResultsText = localization:getText("AssetGrid", "NoResults", {assetType = assetTypeText})
    local noResultsTextExtents = GetTextSize(noResultsText, theme.FontSizeMedium, theme.Font)
    local loadButtonText = localization:getText("AssetGrid", "LoadButton")
    local loadButtonTextExtents = GetTextSize(loadButtonText, theme.FontSizeLarge, theme.Font)

    return Roact.createElement("Frame", {
        Size = size,
        LayoutOrder = layoutOrder,

        BackgroundTransparency = 1,
    }, {
        AssetGrid = hasAssetsToDisplay and Roact.createElement(InfiniteScrollingFrame, {
            Size = UDim2.new(1, 0, 1, 0),

            BackgroundTransparency = 1,

            LayoutRef = self.layoutRef,
            CanvasHeight = 200,

            NextPageRequestDistance = 100,
            NextPageFunc = function()
                if nextPageCursor then
                    dispatchGetAssets(apiImpl, currentScreen.AssetType, nextPageCursor)
                elseif nextPageNumber then
                    dispatchGetAssets(apiImpl, currentScreen.AssetType, nil, nextPageNumber)
                end
            end,
        }, contents),

        ActionButton = hasAssetsToDisplay and Roact.createElement("ImageButton", {
            Size = UDim2.new(1, 0, 1, 0),

            BackgroundTransparency = 1,

            [Roact.Event.Activated] = self.onClearSelection,
            [Roact.Event.MouseButton2Click] = self.onMouseButton2Click,
        }),

        NoResultsText = not hasAssetsToDisplay and not isFetchingAssets and not hasMorePages and Roact.createElement("TextLabel", {
            Size = UDim2.new(0, noResultsTextExtents.X, 0, noResultsTextExtents.Y),
            Position = UDim2.new(0.5, 0, 0.3, 0),
            AnchorPoint = Vector2.new(0.5, 0.5),

            Text = noResultsText,
            TextColor3 = theme.DisabledColor,
            Font = theme.Font,
            TextSize = theme.FontSizeMedium,

            BackgroundTransparency = 1,
        }),

        LoadButton = not hasAssetsToDisplay and not isFetchingAssets and hasMorePages and Roact.createElement(Button, {
            Style = "RoundPrimary",

            Text = loadButtonText,
            Size = UDim2.new(0, loadButtonTextExtents.X + theme.AssetGridContainer.LoadButton.PaddingX,
                0, loadButtonTextExtents.Y + theme.AssetGridContainer.LoadButton.PaddingY),
            Position = UDim2.new(0.5, 0, 0.3, 0),
            AnchorPoint = Vector2.new(0.5, 0.5),

            OnClick = function()
                dispatchLoadAllAliases(apiImpl, currentScreen.AssetType)
            end,
        }, {
            Roact.createElement(HoverArea, {Cursor = "PointingHand"}),
        }),

        LoadingIndicator = isFetchingAssets and Roact.createElement(LoadingIndicator, {
            Position = UDim2.new(0.5, 0, 0.5, 0),
            AnchorPoint = Vector2.new(0.5, 0.5),
            ZIndex = 2,
        }),
    })
end

ContextServices.mapToProps(AssetGridContainer,{
    Analytics = ContextServices.Analytics,
    API = ContextServices.API,
    Localization = ContextServices.Localization,
    Plugin = ContextServices.Plugin,
    Theme = ContextServices.Theme,
})

local function mapStateToProps(state, props)
    local assetManagerReducer = state.AssetManagerReducer

	return {
        AssetsTable = assetManagerReducer.assetsTable,
        CurrentScreen = state.Screen.currentScreen,
        IsFetchingAssets = assetManagerReducer.isFetchingAssets,
        SearchTerm = assetManagerReducer.searchTerm,
        SelectedAssets = assetManagerReducer.selectedAssets,
        HasLinkedScripts = assetManagerReducer.hasLinkedScripts,
	}
end

local function mapDispatchToProps(dispatch)
	return {
        dispatchGetAssets = function(apiImpl, assetType, pageCursor, pageNumber)
            dispatch(GetAssets(apiImpl, assetType, pageCursor, pageNumber))
        end,
        dispatchLoadAllAliases = function(apiImpl, assetType)
            dispatch(LoadAllAliases(apiImpl, assetType))
        end,
        dispatchOnAssetRightClick = function(analytics, apiImpl, assetData, localization, plugin)
            dispatch(OnAssetRightClick(analytics, apiImpl, assetData, localization, plugin))
        end,
        dispatchOnScreenChange = function(apiImpl, screen)
            dispatch(OnScreenChange(apiImpl, screen))
        end,
        dispatchSetAssets = function(assets)
            dispatch(SetAssets(assets))
        end,
        dispatchSetSelectedAssets = function(selectedAssets)
            dispatch(SetSelectedAssets(selectedAssets))
        end,
        dispatchGetAssetPreviewData = function(apiImpl, assetIds)
            dispatch(GetAssetPreviewData(apiImpl, assetIds))
        end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(AssetGridContainer)