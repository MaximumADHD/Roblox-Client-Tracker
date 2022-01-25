local Plugin = script.Parent.Parent.Parent

local FFlagRefactorDevFrameworkContextItems2 = game:GetFastFlag("RefactorDevFrameworkContextItems2")

local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)

local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local StudioUI = Framework.StudioUI
local AssetPreview = StudioUI.AssetPreview

local OnAssetDoubleClick = require(Plugin.Src.Thunks.OnAssetDoubleClick)
local OnAssetRightClick = require(Plugin.Src.Thunks.OnAssetRightClick)

local GetAssetFavorited = require(Plugin.Src.Thunks.GetAssetFavorited)
local GetAssetFavoriteCount = require(Plugin.Src.Thunks.GetAssetFavoriteCount)
local ToggleFavoriteStatus = require(Plugin.Src.Thunks.ToggleFavoriteStatus)

local StudioService = game:GetService("StudioService")

local AssetPreviewWrapper = Roact.PureComponent:extend("AssetPreviewWrapper")

local MAX_PREVIEW_WIDTH = 640

local PADDING = 32

function AssetPreviewWrapper:init()
    self.state = {
        selectedPreviewInstance = nil,
        maxPreviewHeight = 0,
        maxPreviewWidth = 0,
    }

    local userId = StudioService:GetUserId()

    self.onTreeItemClicked = function(instance)
        self:setState({
            selectedPreviewInstance = instance
        })
    end

    self.tryInsert = function()
        local props = self.props
        local analytics = props.Analytics
        local assetData = props.AssetData

        props.dispatchOnAssetDoubleClick(analytics, assetData, true)
    end

    self.requestFavoriteCounts = function()
        local props = self.props
        local assetId = props.AssetData.id
        local apiImpl = props.API:get()
		props.dispatchGetAssetFavoriteCount(apiImpl, assetId)
	end

    self.checkFavorited = function()
        local props = self.props
        local assetId = props.AssetData.id
        local apiImpl = props.API:get()
		props.dispatchGetAssetFavorited(apiImpl, assetId, userId)
	end

    self.onFavoritedActivated = function(rbx)
        local props = self.props
        local assetId = props.AssetData.id
        local apiImpl = props.API:get()
		local favorited = props.Favorited
		props.dispatchToggleFavoriteStatus(apiImpl, assetId, userId, favorited)
	end

    self.tryCreateContextMenu = function()
        local props = self.props

        props.dispatchOnAssetRightClick(props)
    end

    self.ClickDetectorRef = Roact.createRef()

    self.onDetectorABSSizeChange = function()
		local currentClickDetector = self.ClickDetectorRef.current
		if not currentClickDetector then
			return
		end

		local detectorAbsSize = currentClickDetector.AbsoluteSize
		local detectorWidth = detectorAbsSize.x
		local detectorHeight = detectorAbsSize.y

		self:setState({
			maxPreviewWidth = detectorWidth - 2 * PADDING,
			maxPreviewHeight = detectorHeight - 2 * PADDING,
		})
    end
end

function AssetPreviewWrapper:didMount()
    self.checkFavorited()
    self.requestFavoriteCounts()
end

function AssetPreviewWrapper:render()
    local props = self.props
    local state = self.state

    local target = FFlagRefactorDevFrameworkContextItems2 and props.Focus:get() or props.Focus:getTarget()
    local localization = props.Localization
    local theme = props.Theme:get("Plugin")

    local assetData = props.AssetPreviewData
    local rootTreeViewInstance = assetData.rootTreeViewInstance
    local selectedInstance = self.state.selectedPreviewInstance or assetData.rootTreeViewInstance

    local maxPreviewWidth = math.min(state.maxPreviewWidth, MAX_PREVIEW_WIDTH)
    local maxPreviewHeight = state.maxPreviewHeight

    local onAssetPreviewClose = props.OnAssetPreviewClose

    return Roact.createElement(Roact.Portal, {
        target = target,
    }, {
        AssetPreview = Roact.createElement("Frame",{
            Size = UDim2.new(1,0,1,0),
            BackgroundTransparency = 1,
            BorderSizePixel = 0,
        }, {
            Background = Roact.createElement("ImageButton", {
                Size = UDim2.new(1,0,1,0),

                AutoButtonColor = false,
                BorderSizePixel = 0,

                BackgroundColor3 = Color3.new(0,0,0),
                BackgroundTransparency = theme.Overlay.Background.Transparency,

                ZIndex = 1,

                [Roact.Event.Activated] = onAssetPreviewClose,
                [Roact.Ref] = self.ClickDetectorRef,
                [Roact.Change.AbsoluteSize] = self.onDetectorABSSizeChange,
            }),

            Contents = Roact.createElement(AssetPreview, {
                Position = UDim2.new(0.5, 0, 0.5, 0),
                AnchorPoint = Vector2.new(0.5, 0.5),
                Size = UDim2.fromOffset(maxPreviewWidth, maxPreviewHeight),

                AssetData = assetData,
                AssetInstance = selectedInstance,

                OnClickContext = self.tryCreateContextMenu,

                ActionText = localization:getText("AssetPreview", "Insert"),
                OnClickAction = self.tryInsert,

                Favorites = {
                    OnClick = self.onFavoritedActivated,
                    Count = assetData.favoriteCount and assetData.favoriteCount or 0,
                    IsFavorited = assetData.favorited and assetData.favorited or false,
                },

                HideCreatorSearch = true,

                ZIndex = 2,
            }),
        })
    })
end

local function mapStateToProps(state, props)
end

AssetPreviewWrapper = withContext({
    Analytics = ContextServices.Analytics,
    API = ContextServices.API,
    Focus = ContextServices.Focus,
    Localization = ContextServices.Localization,
    Plugin = ContextServices.Plugin,
    Theme = ContextServices.Theme,
})(AssetPreviewWrapper)

local function mapDispatchToProps(dispatch)
	return {
        dispatchOnAssetDoubleClick = function(analytics, assetData, isAssetPreviewInsertButton)
            dispatch(OnAssetDoubleClick(analytics, assetData, isAssetPreviewInsertButton))
        end,
        dispatchOnAssetRightClick = function(props)
            props.IsAssetPreviewMenu = true
            dispatch(OnAssetRightClick(props))
        end,
        dispatchGetAssetFavorited = function(apiImpl, assetId, userId)
			dispatch(GetAssetFavorited(apiImpl, assetId, userId))
		end,
		dispatchGetAssetFavoriteCount = function(apiImpl, assetId)
			dispatch(GetAssetFavoriteCount(apiImpl, assetId))
		end,
		dispatchToggleFavoriteStatus = function(apiImpl, userId, assetId, favorited)
			dispatch(ToggleFavoriteStatus(apiImpl, userId, assetId, favorited))
		end,
    }
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(AssetPreviewWrapper)
