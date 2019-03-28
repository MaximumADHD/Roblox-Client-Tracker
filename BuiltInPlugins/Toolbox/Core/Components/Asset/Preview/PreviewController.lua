--[[
	This component is used to render both mainPreview and TreeView.
	MainView can be modelPreview, soundPreview, scriptPreview, imagePreview and otherPreview.
]]

local Plugin = script.Parent.Parent.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)

local Preview = Plugin.Core.Components.Asset.Preview
local ModelPreview = require(Preview.ModelPreview)
local ImagePreview = require(Preview.ImagePreview)
local OtherPreview = require(Preview.OtherPreview)
local MainViewButtons = require(Preview.MainViewButtons)

local AssetType = require(Plugin.Core.Types.AssetType)

local TreeView = require(Plugin.Core.Components.TreeView.TreeView)

local TREEVIEW_WIDTH = 242
local PREVIEW_HEIGHT = 242
local TREEVIEW_BOTTOM_HEIGHT = 120
local MAINVIEW_BUTTONS_X_OFFSET = -7
local MAINVIEW_BUTTONS_Y_OFFSET = -7

local PreviewController = Roact.PureComponent:extend("PreviewController")

local function getImage(instance)
	if instance:IsA("Decal") or instance:IsA("Texture") then
		return instance.Texture
	elseif instance:IsA("Sky") then
		return instance.SkyboxFt
	else
		return instance.Image
	end
end

local function getImageScaleType(instance)
	if instance:IsA("Sky") then
		return Enum.ScaleType.Crop
	else
		return Enum.ScaleType.Fit
	end
end

function PreviewController:init(props)
	self.state = {
		-- This controls the treeview and full screen button's status
		showTreeView = false,
	}

	self.onTreeviewStatusToggle = function(newStatus)
		self:setState({
			showTreeView = newStatus,
		})
	end
end

function PreviewController:render()
	local props = self.props
	local state = self.state

	local currentPreview = props.currentPreview
	local previewModel = props.previewModel
	local assetPreviewType = props.assetPreviewType
	local assetId = props.assetId
	local putTreeviewOnBottom = props.putTreeviewOnBottom

	local layoutOrder = props.layoutOrder

	local onTreeItemClicked = props.onTreeItemClicked
	local onModelPreviewFrameEntered = props.onModelPreviewFrameEntered
	local onModelPreviewFrameLeft = props.onModelPreviewFrameLeft

	local width = props.width

	local showTreeView = state.showTreeView
	local previewSize
	local treeViewSize
	local height
	if showTreeView then
		height = putTreeviewOnBottom and PREVIEW_HEIGHT + TREEVIEW_BOTTOM_HEIGHT or PREVIEW_HEIGHT
		previewSize = putTreeviewOnBottom and UDim2.new(1, 0, 0, PREVIEW_HEIGHT)
			or UDim2.new(1, -TREEVIEW_WIDTH, 0, PREVIEW_HEIGHT)
		treeViewSize = putTreeviewOnBottom and UDim2.new(1, 0, 0, TREEVIEW_BOTTOM_HEIGHT)
			or UDim2.new(0, TREEVIEW_WIDTH, 0, PREVIEW_HEIGHT)
	else
		height = PREVIEW_HEIGHT
		previewSize = UDim2.new(1, 0, 0, PREVIEW_HEIGHT)
		treeViewSize = UDim2.new()
	end

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, width, 0, height),

		BackgroundTransparency = 1,
		BorderSizePixel = 0,

		LayoutOrder = layoutOrder,
	}, {
		UIListLayout = Roact.createElement("UIListLayout", {
			FillDirection = putTreeviewOnBottom and Enum.FillDirection.Vertical or Enum.FillDirection.Horizontal,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			VerticalAlignment = Enum.VerticalAlignment.Top,
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),

		MainView = Roact.createElement("Frame", {
			Size = previewSize,

			BackgroundTransparency = 1,
			BorderSizePixel = 0,

			LayoutOrder = 1,
		}, {
			ModelPreview = AssetType:isModel(assetPreviewType) and Roact.createElement(ModelPreview, {
				currentPreview = currentPreview,

				onModelPreviewFrameEntered = onModelPreviewFrameEntered,
				onModelPreviewFrameLeft = onModelPreviewFrameLeft,
			}),

			ImagePreview = AssetType:isImage(assetPreviewType) and Roact.createElement(ImagePreview, {
				imageContent = getImage(currentPreview),
				scaleType = getImageScaleType(currentPreview)
			}),

			-- Let the script and other share the same component for now
			OtherPreview = (AssetType:isScript(assetPreviewType) or AssetType:isOtherType(assetPreviewType)
				or AssetType:isAudio(assetPreviewType)) and Roact.createElement(OtherPreview, {

				instance = currentPreview,
				assetId = assetId,
				textContent = currentPreview.Name,
			}),

			MainViewButtons = Roact.createElement(MainViewButtons, {
				position = UDim2.new(1, MAINVIEW_BUTTONS_X_OFFSET, 1, MAINVIEW_BUTTONS_Y_OFFSET),
				ZIndex = 2,

				showTreeView = state.showTreeView,
				onTreeviewStatusToggle = self.onTreeviewStatusToggle,
			})
		}),

		TreeView = showTreeView and Roact.createElement(TreeView, {
			size = treeViewSize,

			RootInstance = previewModel,
			SelectedInstance = currentPreview,
			InstanceClicked = onTreeItemClicked,

			layoutOrder = 2,
		}),
	})
end

return PreviewController