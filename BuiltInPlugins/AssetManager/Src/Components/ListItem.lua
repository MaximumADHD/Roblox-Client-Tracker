local Plugin = script.Parent.Parent.Parent

local Cryo = require(Plugin.Packages.Cryo)
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)

local Framework = Plugin.Packages.Framework
local ContextServices = require(Framework.ContextServices)
local withContext = ContextServices.withContext

local UI = require(Framework.UI)
local Tooltip = UI.Tooltip

local Util = require(Framework.Util)
local StyleModifier = Util.StyleModifier
local FitFrameOnAxis = Util.FitFrame.FitFrameOnAxis

local UILibrary = require(Plugin.Packages.UILibrary)
local GetTextSize = UILibrary.Util.GetTextSize
local LayoutOrderIterator = UILibrary.Util.LayoutOrderIterator

local SetEditingAssets = require(Plugin.Src.Actions.SetEditingAssets)

local GetAssetPreviewData = require(Plugin.Src.Thunks.GetAssetPreviewData)
local OnAssetDoubleClick = require(Plugin.Src.Thunks.OnAssetDoubleClick)
local OnAssetRightClick = require(Plugin.Src.Thunks.OnAssetRightClick)
local OnAssetSingleClick = require(Plugin.Src.Thunks.OnAssetSingleClick)
local OnRecentAssetRightClick = require(Plugin.Src.Thunks.OnRecentAssetRightClick)

local FFlagStudioAssetManagerDisableHoverOnOverlay = game:GetFastFlag("StudioAssetManagerDisableHoverOnOverlay")
local FFlagAssetManagerWithContext = game:GetFastFlag("AssetManagerWithContext")

local AssetManagerService = game:GetService("AssetManagerService")
local ContentProvider = game:GetService("ContentProvider")
local StudioService = game:GetService("StudioService")

local ListItem = Roact.PureComponent:extend("ListItem")

local enableAudioImport = require(Plugin.Src.Util.AssetManagerUtilities).enableAudioImport

local ICON_SIZE = 150

local function stripText(text)
    local newText = string.gsub(text, "%s+", "")
    newText = string.gsub(newText, "\n", "")
    newText = string.gsub(newText, "\t", "")
    return newText
end

local function getClassIcon(assetData)
    local assetType = assetData.assetType
    if assetType == Enum.AssetType.Place then
        if assetData.isRootPlace then
            return StudioService:GetClassIcon("SpawnLocation")
        else
            return StudioService:GetClassIcon("Workspace")
        end
    elseif assetType == Enum.AssetType.Package then
        return StudioService:GetClassIcon("Model")
    elseif assetType == Enum.AssetType.Image then
        return StudioService:GetClassIcon("Decal")
    elseif assetType == Enum.AssetType.MeshPart then
        return StudioService:GetClassIcon("MeshPart")
    elseif enableAudioImport() and assetType == Enum.AssetType.Audio then
        return StudioService:GetClassIcon("Sound")
    elseif assetType == Enum.AssetType.Lua then
        return StudioService:GetClassIcon("Script")
    end
end

function ListItem:init()
    self.state = {
        -- StyleModifier must be upper case first character because of how Theme in ContextServices uses it.
        StyleModifier = nil,
        assetFetchStatus = nil,
        editText = "",
    }

    self.editing = false

    self.textBoxRef = Roact.createRef()

    self.onMouseEnter = function()
        if FFlagStudioAssetManagerDisableHoverOnOverlay then
            local props = self.props
            if not props.Enabled then
                return
            end
        end
        if self.state.StyleModifier == nil then
            self:setState({
                StyleModifier = StyleModifier.Hover,
            })
        end
        local assetData = self.props.AssetData
        local isFolder = assetData.ClassName == "Folder"
        local isPlace = assetData.assetType == Enum.AssetType.Place
        if not isFolder and not isPlace then
            self.props.dispatchGetAssetPreviewData(self.props.API:get(), {assetData.id})
        end
    end

    self.onMouseLeave = function()
        if FFlagStudioAssetManagerDisableHoverOnOverlay then
            local props = self.props
            if not props.Enabled then
                return
            end
        end
        if self.state.StyleModifier == StyleModifier.Hover then
            self:setState({
                StyleModifier = Roact.None,
            })
        end
    end

    self.onMouseActivated = function(rbx, obj, clickCount)
        local props = self.props
        if not props.Enabled then
            return
        end
        local assetData = props.AssetData
        if clickCount == 0 then
            props.dispatchOnAssetSingleClick(obj, assetData)
        elseif clickCount == 1 then
            props.dispatchOnAssetDoubleClick(props.Analytics, assetData)
        end
    end

    self.onMouseButton2Click = function(rbx, x, y)
        local props = self.props
        if not props.Enabled then
            return
        end
        local assetData = props.AssetData
        local isFolder = assetData.ClassName == "Folder"
        if isFolder then
            if not props.SelectedAssets[assetData.Screen.LayoutOrder] then
                props.dispatchOnAssetSingleClick(nil, assetData)
            end
        else
            if not props.SelectedAssets[assetData.key] then
                props.dispatchOnAssetSingleClick(nil, assetData)
            end
        end
        if props.RecentListItem then
            props.dispatchOnRecentAssetRightClick(props)
        else
            props.dispatchOnAssetRightClick(props)
        end
    end

    self.onTextChanged = function(rbx)
        local text = rbx.Text
        if text ~= self.props.AssetData.name then
            self:setState({
                editText = text,
            })
        end
	end

	self.onTextBoxFocusLost = function(rbx, enterPressed, inputObject)
        local props = self.props
        local assetData = props.AssetData
        local newName = self.state.editText
        if utf8.len(newName) ~= 0 and utf8.len(stripText(newName)) ~= 0 then
            if assetData.assetType == Enum.AssetType.Place then
                AssetManagerService:RenamePlace(assetData.id, newName)
            elseif assetData.assetType == Enum.AssetType.Image
            or assetData.assetType == Enum.AssetType.MeshPart
            or assetData.assetType == Enum.AssetType.Lua
            or (enableAudioImport() and assetData.assetType == Enum.AssetType.Audio)
            then
                local prefix
                -- Setting asset type to same value as Enum.AssetType since it cannot be passed into function
                if assetData.assetType == Enum.AssetType.Image then
                    prefix = "Images/"
                elseif assetData.assetType == Enum.AssetType.MeshPart then
                    prefix = "Meshes/"
                elseif assetData.assetType == Enum.AssetType.Lua then
                    prefix = "Scripts/"
                elseif enableAudioImport() and assetData.assetType == Enum.AssetType.Audio then
                    prefix = "Audio/"
                end
                AssetManagerService:RenameAlias(assetData.assetType.Value, assetData.id, prefix .. assetData.name, prefix .. newName)
            end
            props.AssetData.name = newName
        end
        props.dispatchSetEditingAssets({})
        self.editing = false
        -- force re-render to show updated name
        self:setState({
            editText = props.AssetData.name,
        })
    end

    local props = self.props
    local assetData = props.AssetData

    local isFolder = assetData.ClassName == "Folder"
    local assetId = assetData.id
    if not isFolder then
        if assetData.assetType == Enum.AssetType.Place then
            self.thumbnailUrl = string.format("rbxthumb://type=AutoGeneratedAsset&id=%i&w=%i&h=%i", assetId, ICON_SIZE, ICON_SIZE)
        else
            self.thumbnailUrl = string.format("rbxthumb://type=Asset&id=%i&w=%i&h=%i", assetId, ICON_SIZE, ICON_SIZE)
        end
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

function ListItem:didMount()
    self:setState({
        editText = self.props.AssetData.name
    })
end

function ListItem:didUpdate(lastProps, lastState)
    local props = self.props
    local assetData = props.AssetData
    local isEditingAsset = props.EditingAssets[assetData.id]
    if isEditingAsset then
        if self.textBoxRef and self.textBoxRef.current and not self.editing then
            local textBox = self.textBoxRef.current
            textBox:CaptureFocus()
            textBox.SelectionStart = 1
            textBox.CursorPosition = #textBox.Text + 1
            self.editing = true
        end
    end
end

function ListItem:render()
    local props = self.props
    local pluginStyle = props.Theme:get("Plugin")

    -- Must use getStyle(namespace, component) for StyleModifiers to work
    -- otherwise functionality equivalent to prop.Theme:get("Plugin").Tile.Default
    local listItemStyle= props.Theme:getStyle("Plugin", self)

    local enabled = props.Enabled

    local size = listItemStyle.Size

    local assetData = props.AssetData

    local backgroundColor = listItemStyle.BackgroundColor
    local backgroundTransparency = listItemStyle.BackgroundTransparency
    local borderSizePixel = listItemStyle.BorderSizePixel
    local padding = listItemStyle.Padding

    local imageInfo = {}
    local isFolder = assetData.ClassName == "Folder"
    if isFolder then
        imageInfo.Image = assetData.Screen.Image
    else
        if self.state.assetFetchStatus == Enum.AssetFetchStatus.Success then
            if assetData.assetType == Enum.AssetType.Place and assetData.isRootPlace then
                imageInfo = getClassIcon(assetData)
            else
                imageInfo.Image = self.thumbnailUrl
            end
        elseif self.state.assetFetchStatus == Enum.AssetFetchStatus.Failure or props.RecentListItem then
            imageInfo = getClassIcon(assetData)
        end
    end

    local imageFrameSize = listItemStyle.Image.FrameSize
    local imageSize = listItemStyle.Image.ImageSize
    local imagePos = listItemStyle.Image.ImagePosition
    local imageAnchorPos = listItemStyle.Image.ImageAnchorPosition
    local imageBGColor = listItemStyle.Image.BackgroundColor

    local textColor = listItemStyle.Text.Color
    local textFont = pluginStyle.Font
    local textSize = listItemStyle.Text.Size
    local textBGTransparency = listItemStyle.Text.BackgroundTransparency
    local textTruncate = listItemStyle.Text.TextTruncate
    local textXAlignment = listItemStyle.Text.XAlignment
    local textYAlignment = listItemStyle.Text.YAlignment

    local textFrameSize = listItemStyle.Text.Frame.Size

    local editText = self.state.editText
    local isEditingAsset = props.EditingAssets[assetData.id]
    local editTextPadding = listItemStyle.EditText.TextPadding
    local editTextClearOnFocus = listItemStyle.EditText.ClearTextOnFocus
    local editTextXAlignment = listItemStyle.Text.XAlignment

    local editTextFrameBackgroundColor = listItemStyle.EditText.Frame.BackgroundColor
    local editTextFrameBorderColor = listItemStyle.EditText.Frame.BorderColor

    local editTextSize = GetTextSize(editText, textSize, textFont, Vector2.new(listItemStyle.Size.X.Offset, math.huge))

    local name = assetData.name
    local displayName = assetData.name
    local nameSize = GetTextSize(assetData.name, textSize, textFont,
        Vector2.new(textFrameSize.X.Offset, math.huge))
    if nameSize.Y > textFrameSize.Y.Offset then
        -- using hardcoded values for now since tile size is constant
        displayName = string.sub(assetData.name, 1, 12) .. "..." ..
            string.sub(assetData.name, string.len(assetData.name) - 5)
    end

    local layoutOrder = props.LayoutOrder
    local layoutIndex = LayoutOrderIterator.new()

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
        Roact.createElement(FitFrameOnAxis, {
			BackgroundTransparency = 1,
            axis = FitFrameOnAxis.Axis.Vertical,
            FillDirection = Enum.FillDirection.Horizontal,
            minimumSize = size,
			contentPadding = padding,
		}, {
            ImageFrame = Roact.createElement("Frame", {
                Size = imageFrameSize,
                LayoutOrder = layoutIndex:getNextOrder(),

                BackgroundTransparency = 0,
                BackgroundColor3 = imageBGColor,
                BorderSizePixel = 0,
            },{
                Image = Roact.createElement("ImageLabel", Cryo.Dictionary.join(imageInfo, {
                    Size = imageSize,
                    Position = imagePos,
                    AnchorPoint = imageAnchorPos,

                    BackgroundTransparency = 1,
                }))
            }),

            Name = not isEditingAsset and Roact.createElement("TextLabel", {
                Size = textFrameSize,
                LayoutOrder = layoutIndex:getNextOrder(),

                Text = displayName,
                TextColor3 = textColor,
                Font = textFont,
                TextSize = textSize,

                BackgroundTransparency = textBGTransparency,
                TextXAlignment = textXAlignment,
                TextYAlignment = textYAlignment,
                TextTruncate = textTruncate,
                TextWrapped = true,
            }),

            RenameTextBox = isEditingAsset and Roact.createElement("TextBox",{
                Size = UDim2.new(0, editTextSize.X + editTextPadding, 0, textFrameSize.Y.Offset),
                LayoutOrder = layoutIndex:getNextOrder(),

                BackgroundColor3 = editTextFrameBackgroundColor,
                BorderColor3 = editTextFrameBorderColor,

                Text = editText,
                TextColor3 = textColor,
                Font = textFont,
                TextSize = textSize,

                TextXAlignment = editTextXAlignment,
                ClearTextOnFocus = editTextClearOnFocus,

                [Roact.Ref] = self.textBoxRef,

                [Roact.Change.Text] = self.onTextChanged,
                [Roact.Event.FocusLost] = self.onTextBoxFocusLost,
            }),
        }),

        Tooltip = enabled and Roact.createElement(Tooltip, {
            Text = name,
            Enabled = true,
        }),
    })
end

if FFlagAssetManagerWithContext then
	ListItem = withContext({
	    Analytics = ContextServices.Analytics,
	    API = ContextServices.API,
	    Localization = ContextServices.Localization,
	    Mouse = ContextServices.Mouse,
	    Plugin = ContextServices.Plugin,
	    Theme = ContextServices.Theme,
	})(ListItem)
else
	ContextServices.mapToProps(ListItem, {
	    Analytics = ContextServices.Analytics,
	    API = ContextServices.API,
	    Localization = ContextServices.Localization,
	    Mouse = ContextServices.Mouse,
	    Plugin = ContextServices.Plugin,
	    Theme = ContextServices.Theme,
	})
end


local function mapStateToProps(state, props)
    local assetManagerReducer = state.AssetManagerReducer
	return {
        EditingAssets = assetManagerReducer.editingAssets,
        SelectedAssets = assetManagerReducer.selectedAssets,
	}
end

local function mapDispatchToProps(dispatch)
	return {
        dispatchGetAssetPreviewData = function(apiImpl, assetIds)
            dispatch(GetAssetPreviewData(apiImpl, assetIds))
        end,
        dispatchOnAssetDoubleClick = function(analytics, assetData)
            dispatch(OnAssetDoubleClick(analytics, assetData))
        end,
        dispatchOnAssetRightClick = function(props)
            dispatch(OnAssetRightClick(props))
        end,
        dispatchOnAssetSingleClick = function(obj, assetData)
            dispatch(OnAssetSingleClick(obj, assetData))
        end,
        dispatchOnRecentAssetRightClick = function(props)
            dispatch(OnRecentAssetRightClick(props))
        end,
        dispatchSetEditingAssets = function(editingAssets)
            dispatch(SetEditingAssets(editingAssets))
        end,
    }
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(ListItem)