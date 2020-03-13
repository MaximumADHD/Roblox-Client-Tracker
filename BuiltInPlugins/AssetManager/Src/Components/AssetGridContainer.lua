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

local UILibrary = require(Plugin.Packages.UILibrary)
local InfiniteScrollingFrame = UILibrary.Component.InfiniteScrollingFrame
local LoadingIndicator = UILibrary.Component.LoadingIndicator
local GetTextSize = UILibrary.Util.GetTextSize

local Screens = require(Plugin.Src.Util.Screens)

local Tile = require(Plugin.Src.Components.Tile)

local SetScreen = require(Plugin.Src.Actions.SetScreen)

local GetAssets = require(Plugin.Src.Thunks.GetAssets)
local OnScreenChange = require(Plugin.Src.Thunks.OnScreenChange)

local AssetGridContainer = Roact.PureComponent:extend("AssetGridContainer")

function AssetGridContainer:init()
    self.currentScreen = ""

    self.layoutRef = Roact.createRef()
end

function AssetGridContainer:createTiles(apiImpl, localization, theme,
    dispatchSetScreen, assets, currentScreen, searchTerm)

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
                local folderTile = Roact.createElement(Tile, {
                    AssetData = {
                        name = localization:getText("Folders", screen.Key),
                        ClassName = "Folder",
                    },
                    OnClick = function()
                        dispatchSetScreen(screen, apiImpl)
                    end,

                    LayoutOrder = screen.LayoutOrder,
                })
                assetsToDisplay[screen.Key] = folderTile
            end
        end
    else
        for i, asset in ipairs(assets) do
            if searchTerm ~= "" then
                if string.find(asset.name, searchTerm) then
                    local assetTile = Roact.createElement(Tile, {
                        AssetData = asset,
                        LayoutOrder = i,
                    })
                    assetsToDisplay[i] = assetTile
                    numberAssets = numberAssets + 1
                end
            else
                local assetTile = Roact.createElement(Tile, {
                    AssetData = asset,
                    LayoutOrder = i,
                })
                assetsToDisplay[i] = assetTile
                numberAssets = numberAssets + 1
            end
        end
    end

    return assetsToDisplay, numberAssets
end

function AssetGridContainer:render()
    local props = self.props
    local apiImpl = props.API:get()
    local theme = props.Theme:get("Plugin")
    local localization = props.Localization

    local size = props.Size
    local layoutOrder = props.LayoutOrder

    local assetsTable = props.AssetsTable
    local assets = assetsTable.assets
    local nextPageCursor = assetsTable.nextPageCursor
    local nextPageNumber = assetsTable.pageNumber
    local currentScreen = props.CurrentScreen
    local isFetchingAssets = props.IsFetchingAssets
    local searchTerm = props.SearchTerm

    local dispatchGetAssets = props.dispatchGetAssets
    local dispatchOnScreenChange = props.dispatchOnScreenChange
    local dispatchSetScreen = props.dispatchSetScreen

    -- need to keep track and dispatch screen change here to properly handle prev/next buttons setting screen
    if self.currentScreen ~= currentScreen.Key then
        dispatchOnScreenChange(apiImpl, currentScreen)
        self.currentScreen = currentScreen.Key
    end

    local contents, assetCount = self:createTiles(apiImpl, localization, theme,
        dispatchSetScreen, assets, currentScreen, searchTerm)

    local hasAssetsToDisplay = currentScreen.Key == Screens.MAIN.Key or assetCount ~= 0

    local assetTypeText = localization:getText("Folders", currentScreen.Key)
    local noResultsText = localization:getText("AssetGrid", "NoResults", {assetType = assetTypeText})
    local noResultsTextExtents = GetTextSize(noResultsText, theme.FontSizeSmall, theme.Font)

    return Roact.createElement("Frame", {
        Size = size,
        LayoutOrder = layoutOrder,

        BackgroundTransparency = 1,
    }, {
        AssetGrid = hasAssetsToDisplay and Roact.createElement(InfiniteScrollingFrame, {
            Size = UDim2.new(1, 0, 1, 0),

            BackgroundTransparency = 1,

            LayoutRef = self.layoutRef,

            NextPageFunc = function()
                if nextPageCursor then
                    dispatchGetAssets(apiImpl, currentScreen.AssetType, nextPageCursor)
                elseif nextPageNumber then
                    dispatchGetAssets(apiImpl, currentScreen.AssetType, nil, nextPageNumber)
                end
            end,
        }, contents),

        NoResultsText = not hasAssetsToDisplay and not isFetchingAssets and Roact.createElement("TextLabel", {
            Size = UDim2.new(0, noResultsTextExtents.X, 0, noResultsTextExtents.Y),
            Position = UDim2.new(0.5, 0, 0.3, 0),
            AnchorPoint = Vector2.new(0.5, 0.5),

            Text = noResultsText,
            TextColor3 = theme.DisabledColor,
            Font = theme.Font,
            TextSize = theme.FontSizeSmall,

            BackgroundTransparency = 1,
        }),

        LoadingIndicator = isFetchingAssets and Roact.createElement(LoadingIndicator, {
            Position = UDim2.new(0.5, 0, 0.5, 0),
            AnchorPoint = Vector2.new(0.5, 0.5),
        }),
    })
end

ContextServices.mapToProps(AssetGridContainer,{
    API = ContextServices.API,
    Theme = ContextServices.Theme,
    Localization = ContextServices.Localization,
})

local function mapStateToProps(state, props)
    local assetManagerReducer = state.AssetManagerReducer
	return {
        AssetsTable = assetManagerReducer.assetsTable,
        IsFetchingAssets = assetManagerReducer.isFetchingAssets,
        SearchTerm = assetManagerReducer.searchTerm,
        CurrentScreen = state.Screen.currentScreen,
	}
end

local function useDispatchForProps(dispatch)
	return {
        dispatchGetAssets = function(apiImpl, assetType, pageCursor, pageNumber)
            dispatch(GetAssets(apiImpl, assetType, pageCursor, pageNumber))
        end,
        dispatchOnScreenChange = function(apiImpl, screen)
            dispatch(OnScreenChange(apiImpl, screen))
        end,
        dispatchSetScreen = function(screen)
            dispatch(SetScreen(screen))
        end,
	}
end

return RoactRodux.connect(mapStateToProps, useDispatchForProps)(AssetGridContainer)