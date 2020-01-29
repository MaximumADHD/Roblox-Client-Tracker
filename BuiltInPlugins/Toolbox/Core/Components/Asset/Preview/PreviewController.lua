--[[
	This component is used to render both mainPreview and TreeView.
	MainView can be modelPreview, soundPreview, scriptPreview, imagePreview and otherPreview.
]]
local FFlagStudioRefactorAssetPreview = settings():GetFFlag("StudioRefactorAssetPreview")

local Plugin = script.Parent.Parent.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)

local UILibrary =require(Libs.UILibrary)
local ModelPreview = UILibrary.Component.ModelPreview
local ImagePreview = UILibrary.Component.ImagePreview
local ThumbnailIconPreview = UILibrary.Component.ThumbnailIconPreview

-- mwang, 1/16/2020, remove with FFlagStudioRefactorAssetPreview
local Preview = Plugin.Core.Components.Asset.Preview
local DEPRECATED_ModelPreview = require(Preview.ModelPreview)
local DEPRECATED_ImagePreview = require(Preview.ImagePreview)
local DEPRECATED_OtherPreview = require(Preview.OtherPreview)
local MainViewButtons = require(Preview.MainViewButtons)
local PreviewLoading = require(Preview.PreviewLoading)

local Util = Plugin.Core.Util
local Analytics = require(Util.Analytics.Analytics)
local DebugFlags = require(Util.DebugFlags)

local AssetType = require(Plugin.Core.Types.AssetType)

local TreeView = require(Plugin.Core.Components.TreeView.TreeView)

local Urls = require(Plugin.Core.Util.Urls)

local TREEVIEW_WIDTH = 242
local PREVIEW_HEIGHT = 242
local TREEVIEW_BOTTOM_HEIGHT = 120
local MAINVIEW_BUTTONS_X_OFFSET = -7
local MAINVIEW_BUTTONS_Y_OFFSET = -7

local MODAL_MIN_WIDTH = 235

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

	self.treeviewInteracted = false
	self.inModelPreview = false
	self.inTreeview = false
	self.totalTimeSpent = 0
	self.cacheTime = 0

	self.onTreeviewStatusToggle = function(newStatus)
		self:setState({
			showTreeView = newStatus,
		})

		if not self.treeviewInteracted then
			Analytics.onTreeviewActivated(props.assetId)
			self.treeviewInteracted = true
		end
	end

	self.onModelPreviewFrameEntered = function(...)
		self.props.onModelPreviewFrameEntered(...)

		self.onPreviewStatusChange(true, self.inTreeview)
	end

	self.onModelPreviewFrameLeft = function(...)
		self.props.onModelPreviewFrameLeft(...)

		self.onPreviewStatusChange(false, self.inTreeview)
	end

	self.onTreeviewEntered = function()
		self.onPreviewStatusChange(self.inModelPreview, true)
	end

	self.onTreeviewLeft = function()
		self.onPreviewStatusChange(self.inModelPreview, false)
	end

	self.onPreviewStatusChange = function(newModelStatus, newTreeStatus)
		if (not self.inModelPreview and not self.inTreeview) and
			(newModelStatus or newTreeStatus) then
			-- Time to start the timer
			self.cacheTime = elapsedTime()
		end

		if (not newModelStatus and not newTreeStatus) and
			(self.inModelPreview or self.inTreeview) then
			local currentTime = elapsedTime()
			local newTimeSpent = currentTime - self.cacheTime
			if newTimeSpent > 0 then
				self.totalTimeSpent = self.totalTimeSpent + math.floor(newTimeSpent * 1000)
			else
				if DebugFlags.shouldDebugWarnings() then
					warn("No time spent on PreviewController.")
				end
			end
		end

		self.inModelPreview = newModelStatus
		self.inTreeview = newTreeStatus
	end
end

function PreviewController:willUnmount()
	-- TODO: Fix the analytics in the Markeptlace/Toolbos
	-- For now, it's the parent's duty to tell the component if we are mock or not
	-- This component itself should not care about that.
	-- This ticket: DEVTOOLS-2623 Refactor Toolbox Analytics will fix it.
	if not self.props.mockAnalytics then
		Analytics.onAssetPreviewEnded(self.props.assetId, self.totalTimeSpent)
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
	local onModelPreviewFrameEntered = self.onModelPreviewFrameEntered
	local onModelPreviewFrameLeft = self.onModelPreviewFrameLeft

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

	local THUMBNAIL_HEIGHT = PREVIEW_HEIGHT < MODAL_MIN_WIDTH and PREVIEW_HEIGHT or MODAL_MIN_WIDTH

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
			PreviewLoading = AssetType:isLoading(assetPreviewType) and Roact.createElement(PreviewLoading),

			DEPRECATED_ModelPreview = not FFlagStudioRefactorAssetPreview and AssetType:isModel(assetPreviewType) and Roact.createElement(DEPRECATED_ModelPreview, {
				currentPreview = currentPreview,

				onModelPreviewFrameEntered = onModelPreviewFrameEntered,
				onModelPreviewFrameLeft = onModelPreviewFrameLeft,
			}),

			ModelPreview = FFlagStudioRefactorAssetPreview and AssetType:isModel(assetPreviewType) and Roact.createElement(ModelPreview, {
					TargetModel = currentPreview,

					OnModelPreviewFrameEntered = onModelPreviewFrameEntered,
					OnModelPreviewFrameLeft = onModelPreviewFrameLeft,
			}),

			DEPRECATED_ImagePreview = not FFlagStudioRefactorAssetPreview and AssetType:isImage(assetPreviewType) and Roact.createElement(DEPRECATED_ImagePreview, {
				imageContent = getImage(currentPreview),
				scaleType = getImageScaleType(currentPreview),
			}),

			ImagePreview = FFlagStudioRefactorAssetPreview and AssetType:isImage(assetPreviewType) and Roact.createElement(ImagePreview, {
				ImageContent = getImage(currentPreview),
				ScaleType = getImageScaleType(currentPreview),
			}),


			PluginPreview = AssetType:isPlugin(assetPreviewType) and Roact.createElement("ImageLabel", {
				Image = Urls.constructAssetThumbnailUrl(assetId, 420, 420),
				Size = UDim2.new(0,THUMBNAIL_HEIGHT,0,THUMBNAIL_HEIGHT),
				Position = UDim2.new(0.5,0,0,0),
				AnchorPoint = Vector2.new(0.5,0),
			}),

			DEPRECATED_OtherPreview = not FFlagStudioRefactorAssetPreview and (AssetType:isScript(assetPreviewType) or AssetType:isOtherType(assetPreviewType)
				or AssetType:isAudio(assetPreviewType)) and Roact.createElement(DEPRECATED_OtherPreview, {

				instance = currentPreview,
				assetId = assetId,
				textContent = currentPreview.Name,
			}),

			-- Let the script and other share the same component for now
			ThumbnailIconPreview = FFlagStudioRefactorAssetPreview and (AssetType:isScript(assetPreviewType) or AssetType:isOtherType(assetPreviewType)
				or AssetType:isAudio(assetPreviewType)) and Roact.createElement(ThumbnailIconPreview, {

				TargetInstance = currentPreview,
				AssetId = assetId,
				ElementName = currentPreview.Name,
			}),

			MainViewButtons = not AssetType:isPlugin(assetPreviewType) and Roact.createElement(MainViewButtons, {
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

			onTreeviewEntered = self.onTreeviewEntered,
			onTreeviewLeft = self.onTreeviewLeft,

			layoutOrder = 2,
		}),
	})
end

return PreviewController