local Plugin = script.Parent.Parent.Parent

local Cryo = require(Plugin.Packages.Cryo)
local Roact = require(Plugin.Packages.Roact)

local Framework = Plugin.Packages.Framework
local ContextServices = require(Framework.ContextServices)

local Util = require(Framework.Util)
local StyleModifier = Util.StyleModifier

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
        if self.state.StyleModifier == nil then
            local props = self.props
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
        if self.state.StyleModifier == StyleModifier.Hover then
            local props = self.props
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
        if clickCount == 0 then
            if self.state.StyleModifier ~= StyleModifier.Selected then
                self:setState({
                    StyleModifier = StyleModifier.Selected
                })
            else
                self.props.OnClick()
            end
        elseif clickCount == 1 then
            self.props.OnClick()
        end

        local props = self.props
        props.Mouse:__popCursor()
    end

    self.openAssetPreview = function()
        -- TODO mwang, hook up opening asset preview
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

    local imageProps
    if isFolder then
        imageProps = {
            Image = tileStyle.Image.Folder
        }
    else
        imageProps = {
            Image = self.state.assetFetchStatus == Enum.AssetFetchStatus.Success and self.thumbnailUrl
                or tileStyle.Image.PlaceHolder
        }
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

    return Roact.createElement("TextButton", {
        Size = size,
        BackgroundColor3 = backgroundColor,
        BackgroundTransparency = backgroundTransparency,
        BorderSizePixel = borderSizePixel,

        Text = "",
        LayoutOrder = layoutOrder,

        [Roact.Event.Activated] = self.onMouseActivated,
        [Roact.Event.MouseEnter] = self.onMouseEnter,
        [Roact.Event.MouseLeave] = self.onMouseLeave,
    }, {
        Thumbnail = Roact.createElement("ImageLabel", Cryo.Dictionary.join(imageProps, {
            Size = imageSize,
            Position = imagePos,

            BackgroundTransparency = imageBGTransparency,
        }), {
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
    Theme = ContextServices.Theme,
    Mouse = ContextServices.Mouse,
})

return Tile