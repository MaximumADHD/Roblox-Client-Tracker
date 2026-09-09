--[[
	A visual, interactive representation of any Asset.
	E.g. for models, an interactive 3D view.
	E.g. for videos, a video player.

	Required Props:
		table AssetData: The asset to preview.
		number Width: The width the component will occupy in pixels - this is required in order to
			determine whether the tree view should display horizontally or vertically.

	Optional Props:
		Stylizer Stylizer: A Stylizer ContextItem, which is provided via withContext.
		Instance AssetInstance: The Instance of the asset to preview.
		callback OnMouseEnter: called on MouseEnter - useful to delegate mouse scroll input to this component.
		callback OnMouseLeave: called on MouseLeave - useful to delegate mouse scroll input to this component.
		boolean DisableTreeView: Disallow using the TreeView to inspect the asset's children.
			Hides the tree view toggle button.
		number ImageCarouselAutoAdvanceTimer: Auto-advance timer for the image carousel. Does nothing if UseImageCarousel is false.
		callback OnImageCarouselImageChanged: function called when the image changes in the image carousel. Does nothing if UseImageCarousel is false.
		number ImageCarouselTransparencyThreshold: If provided, will call the OnImageChange callback when the transparency of the image fading in is >= this threshold. Irrelevant if animations are disabled.
		callback OnSetImageCarouselImages: function called when the image carousel component's images are set, either in didMount or didUpdate. Does nothing if UseImageCarousel is false.
		number LayoutOrder: LayoutOrder of the component.
		table Padding: Specific padding values for Top, Bottom, Left, and Right.
		table Margin: Specific margin values for Top, Bottom, Left, and Right.
		UDim2 Position: The position of this component.
		callback OnPlaySound: Called when a Sound plays.
		callback OnPauseSound: Called when a Sound plays.
		callback OnPlayVideo: Called when a Video plays.
		callback OnPauseVideo: Called when a Video plays.
		Enum.UsageContext UsageContext: The UsageContext for previewed assets.
		boolean UseImageCarousel: If true, renders an image carousel using the media id's in assetData as well as the asset thumbnail.
		boolean ShouldMuteModelSounds: Whether or not sound object descendants should be muted for AssetRenderModel
		boolean Hide3DPreviewForAssetsWithMeshes: Hides 3D preview for asset types that can have mesh dependencies while keeping TreeView available. Necessary for AssetPrivacy to stop Restricted dependencies from being fetched in AssetPreview.
]]

local TextService = game:GetService("TextService")

local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)
local ContextServices = require(Framework.UI.ContextServices)
local withContext = ContextServices.withContext

local FFlagDevFrameworkFixMissingKeyErrors = require(Framework.SharedFlags.getFFlagDevFrameworkFixMissingKeyErrors)()

local Typecheck = require(Framework.Util.Typecheck)
local AssetRenderUtil = require(Framework.Util.AssetRenderUtil)
local AssetRenderType = AssetRenderUtil.AssetRenderType
local Cryo = require(Framework.Parent.Cryo)

local Dash = require(Framework.Parent.Dash)
local join = Dash.join

local Button = require(Framework.UI.Components.DEPRECATED_Button)
local Container = require(Framework.UI.Components.Container)
local HoverArea = require(Framework.UI.Components.HoverArea)
local LoadingIndicator = require(Framework.UI.Components.LoadingIndicator)
local Pane = require(Framework.UI.Components.Pane)
local InstanceTreeView = require(Framework.UI.Components.InstanceTreeView)
local TextLabel = require(Framework.UI.Components.TextLabel)

local AudioPlayer = require(Framework.UI.Components.AudioPlayer)
local VideoPlayer = require(Framework.UI.Components.VideoPlayer)
local AssetRenderImage = require(Framework.UI.Components.AssetRenderImage)
local AssetRenderModel = require(Framework.UI.Components.AssetRenderModel)
local AssetRenderThumbnail = require(Framework.UI.Components.AssetRenderThumbnail)
local ImageCarousel = require(Framework.UI.Components.ImageCarousel)

local AssetRender = Roact.PureComponent:extend("AssetRender")
Typecheck.wrap(AssetRender, script)

local FONT_SIZE_MEDIUM = 40
local THUMBNAIL_URL = "rbxthumb://type=CreatorContextAsset&id=%d&w=%d&h=%d"

function AssetRender:init()
	self.state = {
		treeViewSelection = {},
		treeViewExpansion = {},
		treeViewVisible = false,
		isFontLoaded = false,
	}

	-- InstanceTreeView needs a list of instances (where we always pass a single instance)
	-- In order to avoid passing a new table every time we render, maintain a map of
	-- (instance) -> (list containing instance) here.
	self.memoizedTreeViewInstances = {}

	self.toggleTreeViewVisible = function()
		self:setState(function(prevState)
			return {
				treeViewVisible = not prevState.treeViewVisible,
			}
		end)
	end

	self.onTreeViewExpansionChange = function(expansion)
		self:setState({
			treeViewExpansion = join(self.state.treeViewExpansion, expansion),
		})
	end

	self.onTreeViewSelectionChange = function(selection)
		self:setState({
			treeViewSelection = selection,
		})
	end
end

-- This function is for FontFamily assets and starts loading the proper Font when the component is first mounted
-- TextLabel is only rendered once the Font has finished loading
function AssetRender:loadFontForTextLabelAndSetStateWhenDone()
	local props = self.props
	local style = props.Stylizer

	task.spawn(function()
		local params = Instance.new("GetTextBoundsParams")
		params.Font = Font.fromId(props.AssetData.Asset.Id)
		params.Text = style.RenderView.FontRenderView.Text
		local _size = TextService:GetTextBoundsAsync(params)
		self:setState({
			isFontLoaded = true,
		})
	end)
end

function AssetRender:didMount()
	local props = self.props

	local isFontFamily = props.AssetData.Asset.TypeId == Enum.AssetType.FontFamily.Value

	-- For FontFamily assets, the TextLabel should only be rendered once the desired Font has finished loading
	if isFontFamily then
		self:loadFontForTextLabelAndSetStateWhenDone()
	end
end

function AssetRender:didUpdate(previousProps, previousState)
	local props = self.props
	local state = self.state
	if (previousProps == props) and (previousState == state) then
		return
	else
		local isFontFamily = props.AssetData.Asset.TypeId == Enum.AssetType.FontFamily.Value

		-- For FontFamily assets, load the new Font when the asset id changes
		if isFontFamily and (props.AssetData.Asset.Id ~= previousProps.AssetData.Asset.Id) then
			self:setState({
				isFontLoaded = false,
			})
			self:loadFontForTextLabelAndSetStateWhenDone()
		end
	end
end

function AssetRender:getMemoizedTreeViewInstances(instance)
	local memoized = self.memoizedTreeViewInstances[instance]
	if memoized == nil then
		memoized = { instance }
		self.memoizedTreeViewInstances[instance] = memoized
	end

	return memoized
end

function AssetRender:getAssetThumbnailUrl(id, width, height)
	return string.format(THUMBNAIL_URL, id, width, height)
end

function AssetRender:getImagesForCarousel(size: number)
	local props = self.props
	-- In image carousel, display thumbnail + additional media
	local allImageCarouselMediaIds = Cryo.List.join({ props.AssetData.Asset.Id }, props.AssetData.Asset.AssetMediaIds)
	return Dash.map(allImageCarouselMediaIds, function(mediaId)
		return self:getAssetThumbnailUrl(mediaId, size, size)
	end)
end

function AssetRender:render()
	local props = self.props
	local state = self.state

	local style = self.props.Stylizer

	local width = props.Width

	local assetId = props.AssetData.Asset.Id

	local treeViewRootInstance = props.AssetInstance

	-- The tree view supports multiple selections, but we do not.
	local treeViewSelectedInstance = Cryo.Dictionary.keys(state.treeViewSelection)[1]
	local instance = treeViewSelectedInstance or props.AssetInstance

	local renderType = AssetRenderUtil:getRenderType(instance)
	local isModelWithoutInstance = props.AssetData.Asset.TypeId == Enum.AssetType.Model.Value
		and not props.AssetInstance
	local isPlugin = props.AssetData.Asset.TypeId == Enum.AssetType.Plugin.Value
	local isFontFamily = props.AssetData.Asset.TypeId == Enum.AssetType.FontFamily.Value
	local canHaveMeshDependencies = props.AssetData.Asset.TypeId == Enum.AssetType.Model.Value
		or props.AssetData.Asset.TypeId == Enum.AssetType.MeshPart.Value
	local isDecal = props.AssetData.Asset.TypeId == Enum.AssetType.Decal.Value

	local treeViewEnabled = not props.DisableTreeView
		and treeViewRootInstance
		and not isPlugin
		and not isFontFamily
		and not isModelWithoutInstance

	local treeViewVisible = treeViewEnabled and state.treeViewVisible
	local renderViewSize = style.RenderView.Size
	local treeViewSize = style.TreeView.Size

	-- Tree View is displayed next to the renderView when the frame is sufficiently wide
	local treeViewHorizontal = width > renderViewSize.Y.Offset * 2

	if treeViewVisible and treeViewHorizontal then
		treeViewSize = style.TreeView.HorizontalSize
		renderViewSize = UDim2.new(renderViewSize.X - treeViewSize.X, renderViewSize.Y)
	end

	local totalHeight = treeViewVisible and not treeViewHorizontal and renderViewSize.Y + treeViewSize.Y
		or renderViewSize.Y

	local renderView

	if props.UseImageCarousel then
		renderView = Roact.createElement(ImageCarousel, {
			AutoAdvance = true,
			AutoAdvanceTimer = props.ImageCarouselAutoAdvanceTimer,
			ImageStrings = self:getImagesForCarousel(style.Thumbnail.Size),
			OnImageChange = props.OnImageCarouselImageChanged,
			OnImageChangeTransparencyThreshold = props.ImageCarouselTransparencyThreshold,
			OnSetImages = props.OnSetImageCarouselImages,
			PaneStyle = style.ImageCarousel.PaneStyle,
			ShowNavigationOnHover = true,
			DisableAnimations = true,
		})
	elseif
		isModelWithoutInstance
		or isPlugin
		or (props.Hide3DPreviewForAssetsWithMeshes and canHaveMeshDependencies)
	then
		renderView = Roact.createElement(AssetRenderImage, {
			Image = self:getAssetThumbnailUrl(assetId, style.Thumbnail.Size, style.Thumbnail.Size),
		})
	elseif isFontFamily then
		renderView = if state.isFontLoaded
			then Roact.createElement(Pane, {
				BackgroundTransparency = 0,
				BackgroundColor = style.RenderView.FontRenderView.FontRenderViewBackgroundColor,
				Padding = style.RenderView.FontRenderView.Padding,
				Size = UDim2.new(1, 0, 1, 0),
			}, {
				fontTextLabel = Roact.createElement(TextLabel, {
					AnchorPoint = Vector2.new(0.5, 0.5),
					AutomaticSize = Enum.AutomaticSize.XY,
					FontFace = Font.fromId(assetId),
					Position = UDim2.new(0.5, 0, 0.5, 0),
					Size = UDim2.new(1, 0, 1, 0),
					Text = style.RenderView.FontRenderView.Text,
					TextSelectable = false,
					TextSize = FONT_SIZE_MEDIUM,
					TextWrapped = true,
					TextXAlignment = Enum.TextXAlignment.Left,
				}),
			})
			else Roact.createElement(LoadingIndicator, {
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.fromScale(0.5, 0.5),
				Size = UDim2.fromScale(0.5, 0.5),
			})
	elseif renderType == nil then
		renderView = Roact.createElement(LoadingIndicator, {
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.fromScale(0.5, 0.5),
			Size = UDim2.fromScale(0.5, 0.5),
		})
	elseif renderType == AssetRenderType.Model then
		renderView = Roact.createElement(AssetRenderModel, {
			Model = instance,
			OnMouseEnter = props.OnMouseEnter,
			OnMouseLeave = props.OnMouseLeave,
			ShouldMuteModelSounds = props.ShouldMuteModelSounds,
		})
	elseif renderType == AssetRenderType.Sound then
		renderView = Roact.createElement(AudioPlayer, {
			OnPlay = props.OnPlaySound,
			OnPause = props.OnPauseSound,
			SoundId = treeViewSelectedInstance and treeViewSelectedInstance.SoundId
				or string.format("rbxassetid://%d", assetId),
			Style = treeViewEnabled and style.AudioPlayerWithTreeViewButton or style.AudioPlayer,
			UsageContext = props.UsageContext,
		})
	elseif renderType == AssetRenderType.Video then
		renderView = Roact.createElement(VideoPlayer, {
			OnPlay = props.OnPlayVideo,
			OnPause = props.OnPauseVideo,
			VideoId = treeViewSelectedInstance and treeViewSelectedInstance.Video
				or string.format("rbxassetid://%d", assetId),
			Style = treeViewEnabled and style.VideoPlayerWithTreeViewButton or style.VideoPlayer,
		})
	elseif renderType == AssetRenderType.Image then
		renderView = Roact.createElement(AssetRenderImage, {
			Image = if isDecal
				then self:getAssetThumbnailUrl(assetId, style.Thumbnail.Size, style.Thumbnail.Size)
				else instance,
		})
	elseif renderType == AssetRenderType.Script or renderType == AssetRenderType.Other then
		renderView = Roact.createElement(AssetRenderThumbnail, {
			Instance = instance,
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.fromScale(0.5, 0.5),
			Size = UDim2.fromScale(0.5, 0.5),
		})
	else
		error(string.format("Unhandled AssetRenderType: %s", tostring(renderType)))
	end

	return Roact.createElement(Container, {
		LayoutOrder = props.LayoutOrder,
		Position = props.Position,
		Margin = props.Margin,
		Padding = props.Padding,
		Size = UDim2.new(UDim.new(0, width), totalHeight),
		Background = style.Background,
		BackgroundStyle = style.BackgroundStyle,
	}, {
		Layout = Roact.createElement("UIListLayout", {
			FillDirection = treeViewHorizontal and Enum.FillDirection.Horizontal or Enum.FillDirection.Vertical,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			VerticalAlignment = Enum.VerticalAlignment.Center,
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),
		RenderView = Roact.createElement(Container, {
			LayoutOrder = 1,
			Size = renderViewSize,
		}, {
			AssetRenderView = renderView,
			TreeViewButton = treeViewEnabled and Roact.createElement(
				Button,
				{
					Style = style.RenderView.TreeViewButton,
					OnClick = self.toggleTreeViewVisible,
					AnchorPoint = Vector2.new(1, 1),
					Position = UDim2.new(1, -7, 1, -7),
					ZIndex = 2,
				},
				if FFlagDevFrameworkFixMissingKeyErrors
					then Roact.createElement(HoverArea, { Cursor = "PointingHand" })
					else {
						Roact.createElement(HoverArea, { Cursor = "PointingHand" }),
					}
			),
		}),
		TreeView = treeViewVisible and Roact.createElement(InstanceTreeView, {
			LayoutOrder = 2,
			Size = treeViewSize,
			Instances = self:getMemoizedTreeViewInstances(treeViewRootInstance),
			Expansion = state.treeViewExpansion,
			Selection = state.treeViewSelection,
			OnExpansionChange = self.onTreeViewExpansionChange,
			OnSelectionChange = self.onTreeViewSelectionChange,
			Style = "BorderBox",
		}),
	})
end

AssetRender = withContext({
	Stylizer = ContextServices.Stylizer,
})(AssetRender)

return AssetRender
