local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)

local UILibrary = require(Plugin.Packages.UILibrary)
local AssetPreview = UILibrary.Component.AssetPreview

local Framework = Plugin.Packages.Framework
local ContextServices = require(Framework.ContextServices)

local AssetPreviewWrapper = Roact.PureComponent:extend("AssetPreviewWrapper")

local MAX_PREVIEW_WIDTH = 640

local PADDING = 20

function AssetPreviewWrapper:init()
    self.state = {
        selectedPreviewInstance = nil,
        maxPreviewHeight = 0,
        maxPreviewWidth = 0,
    }

    self.onTreeItemClicked = function(instance)
        self:setState({
            selectedPreviewInstance = instance
        })
    end

    self.tryInsert = function()
        --TODO mwang hook up insert functionality
    end

    self.onFavoritedActivated = function()
        --TODO mwang hook up favoriting
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

function AssetPreviewWrapper:render()
    local props = self.props
    local state = self.state

    local target = props.Focus:getTarget()
    local localization = props.Localization
    local theme = props.Theme:get("Plugin")

    local assetData = props.AssetData
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
                MaxPreviewWidth = maxPreviewWidth,
                MaxPreviewHeight = maxPreviewHeight,

                AssetData = assetData,
                PreviewModel = rootTreeViewInstance,
                CurrentPreview = selectedInstance,

                ActionBarText = localization:getText("AssetPreview", "Insert"),
                TryInsert = self.tryInsert,

                OnFavoritedActivated = self.onFavoritedActivated,
                FavoriteCounts = self.props.favoriteCounts,
                Favorited = self.props.favorited,

                TryCreateContextMenu = self.tryCreateContextMenu,
                OnTreeItemClicked = self.onTreeItemClicked,

                SearchByCreator = self.searchByCreator,

                ZIndex = 2,
            })
        })
    })
end

ContextServices.mapToProps(AssetPreviewWrapper, {
    Focus = ContextServices.Focus,
    Localization = ContextServices.Localization,
    Theme = ContextServices.Theme,
})

return AssetPreviewWrapper