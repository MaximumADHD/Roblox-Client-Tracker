local FFlagAssetManagerDragAndDrop = game:GetFastFlag("AssetManagerDragAndDrop")

local Plugin = script.Parent.Parent.Parent

local Cryo = require(Plugin.Packages.Cryo)
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)

local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local UI = Framework.UI
local DragSource = UI.DragSource
local Pane = UI.Pane
local Tooltip = UI.Tooltip

local Util = Framework.Util
local StyleModifier = Util.StyleModifier
local FitFrameOnAxis = Util.FitFrame.FitFrameOnAxis
local LayoutOrderIterator = Util.LayoutOrderIterator
local GetTextSize = Util.GetTextSize

local SetEditingAssets = require(Plugin.Src.Actions.SetEditingAssets)

local GetAssetPreviewData = require(Plugin.Src.Thunks.GetAssetPreviewData)
local OnAssetDoubleClick = require(Plugin.Src.Thunks.OnAssetDoubleClick)
local OnAssetRightClick = require(Plugin.Src.Thunks.OnAssetRightClick)
local OnAssetSingleClick = require(Plugin.Src.Thunks.OnAssetSingleClick)
local OnRecentAssetRightClick = require(Plugin.Src.Thunks.OnRecentAssetRightClick)

local ReviewStatus = require(Plugin.Src.Util.ReviewStatus)
local ModerationUtil = require(Plugin.Src.Util.ModerationUtil)

local FFlagAssetManagerEnableModelAssets = game:GetFastFlag("AssetManagerEnableModelAssets")
local FFlagStudioAssetManagerAssetModeration = game:GetFastFlag("StudioAssetManagerAssetModeration")
local FFlagAssetManagerFixOpenAssetPreview1 = game:GetFastFlag("AssetManagerFixOpenAssetPreview1")

local ModernIcons = require(Plugin.Src.Util.ModernIcons)
local FFlagHighDpiIcons = game:GetFastFlag("SVGLuaIcons") and not game:GetService("StudioHighDpiService"):IsNotHighDPIAwareBuild()

local AssetManagerService = game:GetService("AssetManagerService")
local ContentProvider = game:GetService("ContentProvider")
local StudioService = game:GetService("StudioService")

local ListItem = Roact.PureComponent:extend("ListItem")

local enableAudioImport = require(Plugin.Src.Util.AssetManagerUtilities).enableAudioImport
local enableVideoImport = require(Plugin.Src.Util.AssetManagerUtilities).enableVideoImport

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
	elseif enableVideoImport() and assetType == Enum.AssetType.Video then
		return StudioService:GetClassIcon("VideoFrame")
	elseif assetType == Enum.AssetType.Lua then
		return StudioService:GetClassIcon("Script")
	elseif FFlagAssetManagerEnableModelAssets and assetType == Enum.AssetType.Model then
		return StudioService:GetClassIcon("Model")
	end
end

function ListItem:isFolder()
	local props = self.props
	local isFolder = props.AssetData.ClassName == "Folder"
	return isFolder
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
		local props = self.props
		if not props.Enabled then
			return
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
			if FFlagAssetManagerFixOpenAssetPreview1 then
				local assetPreviewData = self.props.AssetsTable.assetPreviewData[assetData.id]
				-- asset preview data is not loaded or stored
				if type(assetPreviewData) ~= "table" then
					self.props.dispatchGetAssetPreviewData(self.props.API:get(), {assetData.id})
				end
			else
				self.props.dispatchGetAssetPreviewData(self.props.API:get(), {assetData.id})
			end
		end
	end

	self.onMouseLeave = function()
		local props = self.props
		if not props.Enabled then
			return
		end
		if self.state.StyleModifier == StyleModifier.Hover then
			self:setState({
				StyleModifier = Roact.None,
			})
		end
	end

	if FFlagAssetManagerDragAndDrop then
		self.onClick = function(input, clickCount)
			local props = self.props
			if not props.Enabled then
				return
			end
			local assetData = props.AssetData
			if clickCount == 0 then
				props.dispatchOnAssetSingleClick(input, assetData)
			elseif clickCount == 1 then
				props.dispatchOnAssetDoubleClick(props.Analytics, assetData)
			end
		end

		self.onDragBegan = function(input)
			if self:isFolder() then
				return
			end
			local props = self.props
			if not props.OnAssetDrag then
				return
			end
			local assetData = props.AssetData
			props.OnAssetDrag(assetData)
		end

		self.onRightClick = function()
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
	else
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
			or (enableVideoImport() and assetData.assetType == Enum.AssetType.Video)
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
				elseif enableVideoImport() and assetData.assetType == Enum.AssetType.Video then
					prefix = "Video/"
				elseif FFlagAssetManagerEnableModelAssets and assetData.assetType == Enum.AssetType.Model then
					prefix = "Models/"
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
	local pluginStyle = props.Stylizer

	local localization = props.Localization

	local enabled = props.Enabled

	local size = pluginStyle.Size

	local assetData = props.AssetData

	local backgroundColor = pluginStyle.BackgroundColor
	local backgroundTransparency = pluginStyle.BackgroundTransparency
	local borderSizePixel = pluginStyle.BorderSizePixel
	local padding = if FFlagAssetManagerDragAndDrop then nil else pluginStyle.Padding
	local spacing = if FFlagAssetManagerDragAndDrop then pluginStyle.Spacing else nil

	local imageInfo = {}
	local isFolder = assetData.ClassName == "Folder"
	if isFolder and FFlagHighDpiIcons then
		imageInfo.Image = ModernIcons.getIconForCurrentTheme(assetData.Screen.Image)
	elseif isFolder then
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

	local imageFrameSize = pluginStyle.Image.FrameSize
	local imageSize = pluginStyle.Image.ImageSize
	local imagePos = pluginStyle.Image.ImagePosition
	local imageAnchorPos = pluginStyle.Image.ImageAnchorPosition
	local imageBGColor = pluginStyle.Image.BackgroundColor

	local textColor = pluginStyle.Text.Color
	local textFont = pluginStyle.Font
	local textSize = pluginStyle.Text.Size
	local textBGTransparency = pluginStyle.Text.BackgroundTransparency
	local textTruncate = pluginStyle.Text.TextTruncate
	local textXAlignment = pluginStyle.Text.XAlignment
	local textYAlignment = pluginStyle.Text.YAlignment

	local textFrameSize = pluginStyle.Text.Frame.Size

	local editText = self.state.editText
	local isEditingAsset = props.EditingAssets[assetData.id]
	local editTextPadding = pluginStyle.EditText.TextPadding
	local editTextClearOnFocus = pluginStyle.EditText.ClearTextOnFocus
	local editTextXAlignment = pluginStyle.Text.XAlignment

	local editTextFrameBackgroundColor = pluginStyle.EditText.Frame.BackgroundColor
	local editTextFrameBorderColor = pluginStyle.EditText.Frame.BorderColor

	local editTextSize = GetTextSize(editText, textSize, textFont, Vector2.new(pluginStyle.Size.X.Offset, math.huge))

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

	local moderationImage
	local displayModerationStatus
	local moderationTooltip
	if FFlagStudioAssetManagerAssetModeration then
		textFrameSize = UDim2.new(1, pluginStyle.Text.Frame.XOffset, 0, pluginStyle.Text.Frame.YOffset)
		if not isFolder then
			local moderationData = props.ModerationData
			if moderationData and next(moderationData) ~= nil then
				-- fetch moderation data then set icon/textbox size
				local isPending = moderationData.reviewStatus == ReviewStatus.Pending
				local isApproved = ModerationUtil.isApprovedAsset(moderationData)
				displayModerationStatus = isPending or not isApproved
				if displayModerationStatus then
					if isPending then
						moderationImage = pluginStyle.Image.ModerationStatus.Pending
					elseif not isApproved then
						moderationImage = pluginStyle.Image.ModerationStatus.Rejected
					end
					textFrameSize = UDim2.new(1, 2 * pluginStyle.Text.Frame.XOffset - pluginStyle.Text.Frame.Padding, 0, pluginStyle.Text.Frame.YOffset)
					moderationTooltip = ModerationUtil.getModerationTooltip(localization, moderationData)
				end
			end
		end
	end

	if FFlagAssetManagerDragAndDrop then
		return Roact.createElement(DragSource, {
			Size = size,

			OnClick = self.onClick,
			OnRightClick = self.onRightClick,
			OnDragBegan = self.onDragBegan,
		}, {
			ListItem = Roact.createElement(Pane, {
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundColor = backgroundColor,
				Layout = Enum.FillDirection.Horizontal,
				LayoutOrder = layoutOrder,
				Spacing = spacing,
				Transparency = backgroundTransparency,

				[Roact.Event.MouseEnter] = self.onMouseEnter,
				[Roact.Event.MouseLeave] = self.onMouseLeave,
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
				}, {
					NameTooltip = FFlagStudioAssetManagerAssetModeration and Roact.createElement(Tooltip, {
						Text = name,
						Enabled = enabled,
					}),
				}),

				RenameTextBox = isEditingAsset and Roact.createElement("TextBox", {
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

				ModerationImageFrame = displayModerationStatus and Roact.createElement("Frame", {
					Size = imageFrameSize,
					LayoutOrder = layoutIndex:getNextOrder(),

					BackgroundTransparency = 1,
				},{
					Image = Roact.createElement("ImageLabel", {
						Image = moderationImage,
						Size = imageSize,
						Position = imagePos,
						AnchorPoint = imageAnchorPos,

						BackgroundTransparency = 1,
					}),

					ModerationTooltip = Roact.createElement(Tooltip, {
						Text = moderationTooltip,
						Enabled = enabled,
					}),
				}),
			}),

			DEPRECATED_Tooltip = not FFlagStudioAssetManagerAssetModeration and enabled and Roact.createElement(Tooltip, {
				Text = name,
				Enabled = true,
			}),
		})
	else
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
			ListItem = Roact.createElement(FitFrameOnAxis, {
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
				}, {
					NameTooltip = FFlagStudioAssetManagerAssetModeration and Roact.createElement(Tooltip, {
						Text = name,
						Enabled = enabled,
					}),
				}),

				RenameTextBox = isEditingAsset and Roact.createElement("TextBox", {
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

				ModerationImageFrame = displayModerationStatus and Roact.createElement("Frame", {
					Size = imageFrameSize,
					LayoutOrder = layoutIndex:getNextOrder(),

					BackgroundTransparency = 1,
				},{
					Image = Roact.createElement("ImageLabel", {
						Image = moderationImage,
						Size = imageSize,
						Position = imagePos,
						AnchorPoint = imageAnchorPos,

						BackgroundTransparency = 1,
					}),

					ModerationTooltip = Roact.createElement(Tooltip, {
						Text = moderationTooltip,
						Enabled = enabled,
					}),
				}),
			}),

			DEPRECATED_Tooltip = not FFlagStudioAssetManagerAssetModeration and enabled and Roact.createElement(Tooltip, {
				Text = name,
				Enabled = true,
			}),
		})
	end
end

ListItem = withContext({
	Analytics = ContextServices.Analytics,
	API = ContextServices.API,
	Localization = ContextServices.Localization,
	Mouse = ContextServices.Mouse,
	Plugin = ContextServices.Plugin,
	Stylizer = ContextServices.Stylizer,
})(ListItem)

local function mapStateToProps(state, props)
	local assetManagerReducer = state.AssetManagerReducer
	return {
		AssetsTable = assetManagerReducer.assetsTable,
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