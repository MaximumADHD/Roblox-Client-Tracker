--[[
	The Top Bar contains the buttons for displaying the overlay, going back and forwards, importing assets
	as well the search bar.

	Required Props:
		callback OnOverlayActivated: to display the overlay when the overlay button is clicked.
]]
local Plugin = script.Parent.Parent.Parent

local InsertAsset = require(Plugin.Packages.InsertAsset)
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)

local InsertAssetContext = InsertAsset.Context.InsertAssetContext

local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Util = Framework.Util
local GetTextSize = Util.GetTextSize
local StyleModifier = Util.StyleModifier
local ui = Framework.Style.ComponentSymbols

local UI = Framework.UI
local Button = UI.Button
local HoverArea = UI.HoverArea
local LoadingIndicator = UI.LoadingIndicator

local UILibrary = require(Plugin.Packages.UILibrary)
local InfiniteScrollingFrame = UILibrary.Component.InfiniteScrollingFrame

local Screens = require(Plugin.Src.Util.Screens)
local View = require(Plugin.Src.Util.View)

local ListItem = require(Plugin.Src.Components.ListItem)
local Tile = require(Plugin.Src.Components.Tile)

local SetAssets = require(Plugin.Src.Actions.SetAssets)

local GetAssets = require(Plugin.Src.Thunks.GetAssets)
local LoadAllAliases = require(Plugin.Src.Thunks.LoadAllAliases)
local OnAssetDrag = require(Plugin.Src.Thunks.OnAssetDrag)
local OnAssetRightClick = require(Plugin.Src.Thunks.OnAssetRightClick)
local OnScreenChange = require(Plugin.Src.Thunks.OnScreenChange)
local UpdateSelectedAssets = require(Plugin.Src.Thunks.UpdateSelectedAssets)

local AssetManagerService = game:GetService("AssetManagerService")
local BulkImportService = game:GetService("BulkImportService")

local FFlagAssetManagerEnableModelAssets = game:GetFastFlag("AssetManagerEnableModelAssets")
local FFlagAssetManagerGeneralizeSignalAPI = game:GetFastFlag("AssetManagerGeneralizeSignalAPI")
local FFlagAssetManagerRefactorPath = game:GetFastFlag("AssetManagerRefactorPath")

local shouldEnableAudioImport = require(Plugin.Src.Util.AssetManagerUtilities).shouldEnableAudioImport
local shouldEnableVideoImport = require(Plugin.Src.Util.AssetManagerUtilities).shouldEnableVideoImport

local AssetGridContainer = Roact.Component:extend("AssetGridContainer")

local function isSupportedBulkImportAssetScreen(screen)
	return screen.Path == Screens.IMAGES.Path or screen.Path == Screens.MESHES.Path
		or (shouldEnableAudioImport() and screen.Path == Screens.AUDIO.Path)
		or (shouldEnableVideoImport() and screen.Path == Screens.VIDEO.Path)
		or (FFlagAssetManagerEnableModelAssets and screen.Path == Screens.MODELS.Path)
end

local function hasItemsToDisplay(assets, currentScreen, hasLinkedScripts, searchTerm)
	if currentScreen.Path == Screens.MAIN.Path then
		for _, screen in pairs(Screens) do
			if screen.Path ~= Screens.MAIN.Path then
				if (screen.Path == Screens.SCRIPTS.Path and hasLinkedScripts) or screen.Path ~= Screens.SCRIPTS.Path then
					return true
				end
			end
		end
	else
		for _, asset in pairs(assets) do
			local plain = true -- Disable magic characters like (, ), %...
			if string.find(string.lower(asset.name), string.lower(searchTerm), 1, plain) then
				return true
			end
		end
	end
	return false
end

function AssetGridContainer:init()
	self.state = {
		currentScreen = "",
		currentView = "",
	}

	self.hasItemsToDisplay = false

	self.gridLayoutRef = Roact.createRef()
	self.listLayoutRef = Roact.createRef()

	self.bulkImportFinishedConnection = nil
	self.importSessionFinishedConnection = nil

	self.onClearSelection = function()
		if not self.props.Enabled then
			return
		end
		self.props.dispatchUpdateSelectedAssets({})
	end

	self.onMouseButton2Click = function()
		local props = self.props
		if not props.Enabled then
			return
		end
		self.props.dispatchUpdateSelectedAssets({})
		local screen = props.CurrentScreen
		if screen.Path == Screens.PLACES.Path then
			-- pretend we are right clicking on folder to show add new place context menu
			local placesFolder = {
				ClassName = "Folder",
				Screen = screen,
			}
			props.dispatchOnAssetRightClick(props, placesFolder)
		end
	end

	self.onOpenAssetPreview = function(assetData)
		-- When opening asset preview, set selected assets to that asset only
		self.props.dispatchUpdateSelectedAssets({ [assetData.key] = true })

		local assetPreviewData = self.props.AssetsTable.assetPreviewData[assetData.id]
		self.props.OnOpenAssetPreview(assetData, assetPreviewData)
	end

	self.onAssetPreviewClose = function()
		self.props.OnAssetPreviewClose()
	end

	self.onAssetDrag = function(assetData)
		local props = self.props
		local insertAsset = props.InsertAsset:get()
		props.dispatchOnAssetDrag(insertAsset, assetData, props.Analytics)
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
			if FFlagAssetManagerRefactorPath then
				props.dispatchGetAssets(apiImpl, screen.Path)
			else
				props.dispatchGetAssets(apiImpl, screen.AssetType)
			end
		end
	end)

	if FFlagAssetManagerGeneralizeSignalAPI then
		self.importSessionFinishedConnection = AssetManagerService.ImportSessionFinished:Connect(function()
			local props = self.props
			local screen = props.CurrentScreen
			if isSupportedBulkImportAssetScreen(screen) then
				local apiImpl = props.API:get()
				props.dispatchSetAssets({ assets = {} })
				if FFlagAssetManagerRefactorPath then
					props.dispatchGetAssets(apiImpl, screen.Path)
				else
					props.dispatchGetAssets(apiImpl, screen.AssetType)
				end
			end
		end)
	end
end

function AssetGridContainer:willUnmount()
	if self.bulkImportFinishedConnection then
		self.bulkImportFinishedConnection:disconnect()
	end

	if self.importSessionFinishedConnection then
		self.importSessionFinishedConnection:Disconnect()
	end
end

function AssetGridContainer:createTiles(apiImpl, localization, theme,
	assets, assetsModerationData, currentScreen, searchTerm, selectedAssets, hasLinkedScripts, enabled)

	local numberAssets = 0
	local assetsToDisplay = {
		GridLayout = Roact.createElement("UIGridLayout", {
			CellSize = theme[ui.Tile].Size,
			CellPadding = theme.AssetGridContainer.CellPadding,
			SortOrder = Enum.SortOrder.LayoutOrder,

			[Roact.Ref] = self.gridLayoutRef,
		})
	}

	if currentScreen.Path == Screens.MAIN.Path then
		for _, screen in pairs(Screens) do
			if screen.Path ~= Screens.MAIN.Path then
				local selectedAssetsPath = screen.LayoutOrder
				if (screen.Path == Screens.SCRIPTS.Path and hasLinkedScripts) or screen.Path ~= Screens.SCRIPTS.Path then
					local folderTile = Roact.createElement(Tile, {
						AssetData = {
							name = localization:getText("Folders", screen.Path),
							ClassName = "Folder",
							Screen = screen,
						},

						LayoutOrder = screen.LayoutOrder,
						StyleModifier = selectedAssets[selectedAssetsPath] and StyleModifier.Selected or nil,
						Enabled = enabled,
					})
					assetsToDisplay[screen.Path] = folderTile
				end
			end
		end
	else
		for _, asset in pairs(assets) do
			-- pass in true for plain to disable magic characters like (, ), %...
			if string.find(string.lower(asset.name), string.lower(searchTerm), 1, true) then
				asset.key = asset.layoutOrder
				local assetTile = Roact.createElement(Tile, {
					AssetData = asset,
					ModerationData = assetsModerationData[asset.id],
					LayoutOrder = asset.layoutOrder,
					StyleModifier = selectedAssets[asset.layoutOrder] and StyleModifier.Selected or nil,
					Enabled = enabled,
					OnOpenAssetPreview = self.onOpenAssetPreview,
					OnAssetPreviewClose = self.onAssetPreviewClose,
					OnAssetDrag = self.onAssetDrag,
				})
				assetsToDisplay[asset.id] = assetTile
				numberAssets = numberAssets + 1
			end
		end
	end

	return assetsToDisplay, numberAssets
end

function AssetGridContainer:createListItems(apiImpl, localization, theme,
	assets, assetsModerationData, currentScreen, searchTerm, selectedAssets, hasLinkedScripts, enabled)

	local numberAssets = 0
	local assetsToDisplay = {
		ListLayout = Roact.createElement("UIListLayout", {
			Padding = UDim.new(0, 0),
			FillDirection = Enum.FillDirection.Vertical,
			SortOrder = Enum.SortOrder.LayoutOrder,

			[Roact.Ref] = self.listLayoutRef,
		}),
	}

	if currentScreen.Path == Screens.MAIN.Path then
		for _, screen in pairs(Screens) do
			if screen.Path ~= Screens.MAIN.Path then
				if (screen.Path == Screens.SCRIPTS.Path and hasLinkedScripts) or screen.Path ~= Screens.SCRIPTS.Path then
					local folderListItem = Roact.createElement(ListItem, {
						AssetData = {
							name = localization:getText("Folders", screen.Path),
							ClassName = "Folder",
							Screen = screen,
						},

						LayoutOrder = screen.LayoutOrder,
						StyleModifier = selectedAssets[screen.LayoutOrder] and StyleModifier.Selected or nil,
						Enabled = enabled,
					})
					assetsToDisplay[screen.Path] = folderListItem
				end
			end
		end
	else
		for _, asset in pairs(assets) do
			-- pass in true for plain to disable magic characters like (, ), %...
			if string.find(string.lower(asset.name), string.lower(searchTerm), 1, true) then
				asset.key = asset.layoutOrder
				local assetListItem = Roact.createElement(ListItem, {
					AssetData = asset,
					ModerationData = assetsModerationData[asset.id],
					LayoutOrder = asset.layoutOrder,
					StyleModifier = selectedAssets[asset.layoutOrder] and StyleModifier.Selected or nil,
					Enabled = enabled,
					OnOpenAssetPreview = self.onOpenAssetPreview,
					OnAssetPreviewClose = self.onAssetPreviewClose,
					OnAssetDrag = self.onAssetDrag,
				})
				assetsToDisplay[asset.id] = assetListItem
				numberAssets = numberAssets + 1
			end
		end
	end

	return assetsToDisplay, numberAssets
end

function AssetGridContainer:didUpdate()
	local props = self.props
	-- force re-render so scrolling frame updates to new layout ref
	local view = props.View
	if view ~= self.state.currentView then
		self:setState({
			currentView = view,
		})
	end

	local assets = props.AssetsTable.assets
	local currentScreen = props.CurrentScreen
	local hasLinkedScripts = props.HasLinkedScripts
	local searchTerm = props.SearchTerm

	local result = hasItemsToDisplay(assets, currentScreen, hasLinkedScripts, searchTerm)
	if result ~= self.hasItemsToDisplay then
		self.hasItemsToDisplay = result
		if result then
			self:setState({})
		end
	end
end

function AssetGridContainer:render()
	local props = self.props
	local apiImpl = props.API:get()
	local theme = props.Stylizer
	local localization = props.Localization

	local size = props.Size
	local layoutOrder = props.LayoutOrder
	local enabled = props.Enabled

	local assetsTable = props.AssetsTable
	local assets = assetsTable.assets
	local assetsModerationData = assetsTable.assetsModerationData
	local nextPageCursor = assetsTable.nextPageCursor
	local nextPageNumber = assetsTable.pageNumber
	local currentScreen = props.CurrentScreen
	local isFetchingAssets = props.IsFetchingAssets
	local searchTerm = props.SearchTerm
	local selectedAssets = props.SelectedAssets
	local hasLinkedScripts = props.HasLinkedScripts

	local dispatchGetAssets = props.dispatchGetAssets
	local dispatchLoadAllAliases = props.dispatchLoadAllAliases

	local view = props.View

	local contents, assetCount

	local layoutRef
	if view.Key == View.LIST.Key then
		contents, assetCount = self:createListItems(apiImpl, localization, theme,
			assets, assetsModerationData, currentScreen, searchTerm, selectedAssets, hasLinkedScripts, enabled)
		layoutRef = self.listLayoutRef
	elseif view.Key == View.GRID.Key then
		contents, assetCount = self:createTiles(apiImpl, localization, theme,
			assets, assetsModerationData, currentScreen, searchTerm, selectedAssets, hasLinkedScripts, enabled)
		layoutRef = self.gridLayoutRef
	end

	local hasAssetsToDisplay = currentScreen.Path == Screens.MAIN.Path or assetCount ~= 0

	local hasMorePages = nextPageNumber ~= nil

	local assetTypeText = localization:getText("Folders", currentScreen.Path)
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

			LayoutRef = layoutRef,
			CanvasHeight = 200,

			NextPageRequestDistance = 100,
			NextPageFunc = function()
				if nextPageCursor then
					if FFlagAssetManagerRefactorPath then
						dispatchGetAssets(apiImpl, currentScreen.Path, nextPageCursor)
					else
						dispatchGetAssets(apiImpl, currentScreen.AssetType, nextPageCursor)
					end
				elseif nextPageNumber then
					if FFlagAssetManagerRefactorPath then
						dispatchGetAssets(apiImpl, currentScreen.Path, nil, nextPageNumber)
					else
						dispatchGetAssets(apiImpl, currentScreen.AssetType, nil, nextPageNumber)
					end
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
				if FFlagAssetManagerRefactorPath then
					dispatchLoadAllAliases(apiImpl, currentScreen.Path)
				else
					dispatchLoadAllAliases(apiImpl, currentScreen.AssetType)
				end
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

AssetGridContainer = withContext({
	Analytics = ContextServices.Analytics,
	API = ContextServices.API,
	InsertAsset = InsertAssetContext,
	Localization = ContextServices.Localization,
	Plugin = ContextServices.Plugin,
	Stylizer = ContextServices.Stylizer,
})(AssetGridContainer)

local function mapStateToProps(state, props)
	local assetManagerReducer = state.AssetManagerReducer

	return {
		AssetsTable = assetManagerReducer.assetsTable,
		CurrentScreen = state.Screen.currentScreen,
		IsFetchingAssets = assetManagerReducer.isFetchingAssets,
		SearchTerm = assetManagerReducer.searchTerm,
		SelectedAssets = assetManagerReducer.selectedAssets,
		HasLinkedScripts = assetManagerReducer.hasLinkedScripts,
		View = assetManagerReducer.view,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		dispatchGetAssets = function(apiImpl, path, pageCursor, pageNumber)
			dispatch(GetAssets(apiImpl, path, pageCursor, pageNumber))
		end,
		dispatchLoadAllAliases = function(apiImpl, assetPath)
			dispatch(LoadAllAliases(apiImpl, assetPath))
		end,
		dispatchOnAssetRightClick = function(props, placesFolder)
			props.AssetData = placesFolder
			dispatch(OnAssetRightClick(props))
		end,
		dispatchOnAssetDrag = function(insertAsset, assetData, analytics)
			dispatch(OnAssetDrag(insertAsset, assetData, analytics))
		end,
		dispatchOnScreenChange = function(apiImpl, screen)
			dispatch(OnScreenChange(apiImpl, screen))
		end,
		dispatchSetAssets = function(assets)
			dispatch(SetAssets(assets))
		end,
		dispatchUpdateSelectedAssets = function(selectedAssets)
			dispatch(UpdateSelectedAssets(selectedAssets))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(AssetGridContainer)
