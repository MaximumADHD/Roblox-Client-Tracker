local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)

local Framework = Plugin.Packages.Framework
local ContextServices = require(Framework.ContextServices)
local Util = require(Framework.Util)
local StyleModifier = Util.StyleModifier

local OnAssetDoubleClick = require(Plugin.Src.Thunks.OnAssetDoubleClick)
local OnAssetRightClick = require(Plugin.Src.Thunks.OnAssetRightClick)
local OnAssetSingleClick = require(Plugin.Src.Thunks.OnAssetSingleClick)

local ContentProvider = game:GetService("ContentProvider")

local Tile = Roact.PureComponent:extend("Tile")

local ICON_SIZE = 150

function Tile:init()
    self.state = {
        -- StyleModifier must be upper case first character because of how Theme in ContextServices uses it.
        StyleModifier = nil,
        assetFetchStatus = nil,
        assetPreviewButtonHovered = false,
    }

    self.onMouseEnter = function()
        local props = self.props
        if self.state.StyleModifier == nil then
            props.Mouse:__pushCursor("PointingHand")
            self:setState({
                StyleModifier = StyleModifier.Hover,
            })
        end
        self:setState({
            assetPreviewButtonHovered = true,
        })
    end

    self.onMouseLeave = function()
        local props = self.props
        if self.state.StyleModifier == StyleModifier.Hover then
            props.Mouse:__popCursor()
            self:setState({
                StyleModifier = Roact.None,
            })
        end
        self:setState({
            assetPreviewButtonHovered = false,
        })
    end

    self.onMouseActivated = function(rbx, obj, clickCount)
        local props = self.props
        local assetData = props.AssetData
        if clickCount == 0 then
            if obj:IsModifierKeyDown(Enum.ModifierKey.Ctrl) then
                props.dispatchOnAssetSingleClick(true, assetData)
            else
                props.dispatchOnAssetSingleClick(false, assetData)
            end
        elseif clickCount == 1 then
            props.dispatchOnAssetDoubleClick(assetData)
        end

        props.Mouse:__popCursor()
    end

    self.onMouseButton2Click = function(rbx, x, y)
        local props = self.props
        local assetData = props.AssetData
        local isFolder = assetData.ClassName == "Folder"
        if isFolder then
            if not props.SelectedAssets[assetData.Screen.Key] then
                props.dispatchOnAssetSingleClick(false, assetData)
            end
        else
            if not props.SelectedAssets[assetData.key] then
                props.dispatchOnAssetSingleClick(false, assetData)
            end
        end
        props.dispatchOnAssetRightClick(props.API:get(), assetData, props.Localization, props.Plugin:get())
    end

    self.openAssetPreview = function()
        self.props.OnOpenAssetPreview(self.props.AssetData.id)
    end

    local props = self.props
    local assetData = props.AssetData

    local isFolder = assetData.ClassName == "Folder"
    local assetId = assetData.id
    if not isFolder then
        self.thumbnailUrl = string.format("rbxthumb://type=Asset&id=%i&w=%i&h=%i", assetId, ICON_SIZE, ICON_SIZE)
        spawn(function()
            local asset = { self.thumbnailUrl }
            local function setStatus(contentId, status)
                self:setState({
                    assetFetchStatus = status
                })
            end
            ContentProvider:PreloadAsync(asset, setStatus)
        end)
    end
end

function Tile:render()
    local props = self.props
    local pluginStyle = props.Theme:get("Plugin")

    -- Must use getStyle(namespace, component) for StyleModifiers to work
    -- otherwise functionality equivalent to prop.Theme:get("Plugin").Tile.Default
    local tileStyle = props.Theme:getStyle("Plugin", self)

    local size = tileStyle.Size

    local assetData = props.AssetData

    local backgroundColor = tileStyle.BackgroundColor
    local backgroundTransparency = tileStyle.BackgroundTransparency
    local borderSizePixel = tileStyle.BorderSizePixel

    local textColor = tileStyle.Text.Color
    local textFont = pluginStyle.Font
    local textSize = tileStyle.Text.Size
    local textBGTransparency = tileStyle.Text.BackgroundTransparency
    local textTruncate = tileStyle.Text.TextTruncate

    local textFrameSize = tileStyle.Text.Frame.Size
    local textFramePos = tileStyle.Text.Frame.Position

    local textXAlignment = tileStyle.Text.XAlignment
    local textYAlignment = tileStyle.Text.YAlignment

    local name = assetData.name

    local isFolder = assetData.ClassName == "Folder"
    local isPlace = assetData.assetType == Enum.AssetType.Place

    local image
    if isFolder then
        image = tileStyle.Image.Folder
    else
        image = self.state.assetFetchStatus == Enum.AssetFetchStatus.Success and self.thumbnailUrl
            or tileStyle.Image.PlaceHolder
    end

    local imageSize = tileStyle.Image.Size
    local imagePos = tileStyle.Image.Position
    local imageBGTransparency = tileStyle.Image.BackgroundTransparency

    local createAssetPreviewButton = not isFolder and not isPlace
    local showAssetPreviewButton = self.state.assetPreviewButtonHovered
    local magnifyingGlass = tileStyle.AssetPreview.Image
    local assetPreviewButtonSize = tileStyle.AssetPreview.Button.Size
    local assetPerviewButtonPos = tileStyle.AssetPreview.Button.XOffset

    local isRootPlace = assetData.isRootPlace
    local rootPlaceImageSize = tileStyle.Image.StartingPlace.Size
    local rootPlaceIcon = tileStyle.Image.StartingPlace.Icon
    local rootPlaceIconXOffset = tileStyle.Image.StartingPlace.XOffset
    local rootPlaceIconYOffset = tileStyle.Image.StartingPlace.YOffset


    local layoutOrder = props.LayoutOrder

    return Roact.createElement("ImageButton", {
        Size = size,
        BackgroundColor3 = backgroundColor,
        BackgroundTransparency = backgroundTransparency,
        BorderSizePixel = borderSizePixel,

        LayoutOrder = layoutOrder,

        [Roact.Event.Activated] = self.onMouseActivated,
        [Roact.Event.MouseButton2Click] = self.onMouseButton2Click,
        [Roact.Event.MouseEnter] = self.onMouseEnter,
        [Roact.Event.MouseLeave] = self.onMouseLeave,
    }, {
        Thumbnail = Roact.createElement("ImageLabel", {
            Size = imageSize,
            Position = imagePos,

            Image = image,

            BackgroundTransparency = imageBGTransparency,
        }, {
            AssetPreviewButton = createAssetPreviewButton and Roact.createElement("ImageButton", {
                Position = UDim2.new(0, assetPerviewButtonPos, 0, 0),
                Size = UDim2.new(0, assetPreviewButtonSize, 0, assetPreviewButtonSize),

                Image = magnifyingGlass,
                ImageTransparency = showAssetPreviewButton and 0 or 1,
                BackgroundTransparency = 1,

                [Roact.Event.Activated] = self.openAssetPreview,
            }),

            RootPlaceImage = isRootPlace and Roact.createElement("ImageLabel", {
                Size = UDim2.new(0, rootPlaceImageSize, 0, rootPlaceImageSize),
                Position = UDim2.new(0, rootPlaceIconXOffset, 0, rootPlaceIconYOffset),

                Image = rootPlaceIcon,
                BackgroundTransparency = 1,
            })
        }),

        Name = Roact.createElement("TextLabel", {
            Size = textFrameSize,
            Position = textFramePos,

            Text = name,
            TextColor3 = textColor,
            Font = textFont,
            TextSize = textSize,

            BackgroundTransparency = textBGTransparency,
            TextXAlignment = textXAlignment,
            TextYAlignment = textYAlignment,
            TextTruncate = textTruncate,
        })
    })
end

ContextServices.mapToProps(Tile, {
    API = ContextServices.API,
    Localization = ContextServices.Localization,
    Mouse = ContextServices.Mouse,
    Plugin = ContextServices.Plugin,
    Theme = ContextServices.Theme,
})

local function mapStateToProps(state, props)
	return {
        SelectedAssets = state.AssetManagerReducer.selectedAssets,
	}
end

local function mapDispatchToProps(dispatch)
	return {
        dispatchOnAssetDoubleClick = function(assetData)
            dispatch(OnAssetDoubleClick(assetData))
        end,
        dispatchOnAssetRightClick = function(apiImpl, assetData, localization, plugin)
            dispatch(OnAssetRightClick(apiImpl, assetData, localization, plugin))
        end,
        dispatchOnAssetSingleClick = function(isCtrlKeyDown, assetData)
            dispatch(OnAssetSingleClick(isCtrlKeyDown, assetData))
        end,
    }
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(Tile)