--[[
	A simple image button that listen to click event. If we click this button, we will open the file picker so we
	can choose the thumbnail.

	Necessary props:
		Size, UDim2, used to set how big the component is.

	Optional pros:
		AssetId, number, if set, will be used to get the thumbnail.
		IconFile, userData, file, if set, will be used to show the image.
		ThumbnailStatus, string, if set ,used to show user the thumbnail status.
		ChooseThumbnail, function, call back for choosing a thumbnail, if you set this function, can imagePicker be hovered.
		LayoutOrder, number, will be used by the parent layouter to change this componnet's position.
		Position, UDim2, you should have a Position or LayoutOrder.
]]
local FFlagToolboxRemoveWithThemes = game:GetFastFlag("ToolboxRemoveWithThemes")
local FFlagFixImagePickerStatus = game:DefineFastFlag("FixImagePickerStatus", false)

local Plugin = script.Parent.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)
local Framework = require(Libs.Framework)

local Util = Plugin.Core.Util
local ContextHelper = require(Util.ContextHelper)
local Images = require(Util.Images)
local Constants = require(Util.Constants)
local Urls = require(Util.Urls)
local Colors = require(Util.Colors)

local withTheme = ContextHelper.withTheme
local withLocalization = ContextHelper.withLocalization
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local ImagePicker = Roact.PureComponent:extend("ImagePicker")

local PREVIEW_HEIGHT = 40
-- Preview size is unique to preview.
local PREVIEW_FONT_SIZE = Constants.FONT_SIZE_MEDIUM
local HOVER_RECT =  Vector2.new(512, 256)

function ImagePicker:init(props)
	self.state = {
		hovered = false,
	}

	self.onMouseEnter = function(rbx, x, y)
		if self.props.ChooseThumbnail then
			self:setState({
				hovered = true,
			})
		end
	end

	self.onMouseLeave = function(rbx, x, y)
		self:setState({
			hovered = false,
		})
	end
end

function ImagePicker:getStatus(localization, localizedContent)
	local state = self.state
	local props = self.props
	local iconFile = props.IconFile
	local thumbnailStatus = props.ThumbnailStatus
	local hovered = state.hovered

	local status, showStatus
	if FFlagFixImagePickerStatus then
		local completed = thumbnailStatus == "Completed" or thumbnailStatus == nil
		showStatus = not (hovered or (completed and iconFile == nil))
		if iconFile then
			status = localizedContent.AssetConfig.PreviewArea.PreviewLabel
		else
			status = thumbnailStatus and localization:getThumbnailStatus(thumbnailStatus) or ""
		end
	else
		status = thumbnailStatus or localizedContent.AssetConfig.PreviewArea.PreviewLabel
		showStatus = not hovered
	end

	return status, showStatus
end

function ImagePicker:render()
	if FFlagToolboxRemoveWithThemes then
		return withLocalization(function(localization, localizedContent)
			return self:renderContent(nil, localization, localizedContent)
		end)
	else
		return withTheme(function(theme)
			return withLocalization(function(localization, localizedContent)
				return self:renderContent(theme, localization, localizedContent)
			end)
		end)
	end
end

function ImagePicker:renderContent(theme, localization, localizedContent)
	local props = self.props
	local state = self.state
	if FFlagToolboxRemoveWithThemes then
		theme = props.Stylizer
	end

	local size = props.Size
	local position = props.Position
	local layoutOrder = props.LayoutOrder
	local iconFile = props.IconFile
	local assetId = props.AssetId
	local chooseThumbnail = props.ChooseThumbnail

	local hovered = state.hovered
	local status, showStatus = self:getStatus(localization, localizedContent)

	local tempId = Images.PLUGIN_TEMP
	if iconFile then
		tempId = iconFile:GetTemporaryId()
	elseif assetId then
		tempId = Urls.constructAssetThumbnailUrl(assetId,
			Constants.ASSET_THUMBNAIL_REQUESTED_IMAGE_SIZE,
			Constants.ASSET_THUMBNAIL_REQUESTED_IMAGE_SIZE)
	end

	return Roact.createElement("ImageButton", {
		Position = position,
		Size = size,

		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		ClipsDescendants = true,

		Image  = tempId,

		[Roact.Event.Activated] = chooseThumbnail,
		[Roact.Event.MouseEnter] = self.onMouseEnter,
		[Roact.Event.mouseLeave] = self.onMouseLeave,

		LayoutOrder = layoutOrder,
	}, {
		ChangeIndication = Roact.createElement("ImageLabel", {
			Visible = hovered,
			AnchorPoint = Vector2.new(0, 1),
			Position = UDim2.new(0, 0, 1, 0),
			Size = UDim2.new(1, 0, 1.5, 0),
			Image = Images.GRADIENT,
			ImageColor3 = Color3.new(0, 0, 0),
			BackgroundTransparency = 1,
			ImageRectSize = HOVER_RECT,
		}),

		StatusFrame = showStatus and Roact.createElement("Frame", {
			Position = UDim2.new(0, 0, 1, - PREVIEW_HEIGHT),
			Size = UDim2.new(1, 0, 0, PREVIEW_HEIGHT),
			BackgroundColor3 = Color3.new(0, 0, 0),
			BackgroundTransparency = 0.5,
		}, {
			Status = Roact.createElement("TextLabel", {
				AnchorPoint = Vector2.new(0.5, 0.5),
				Size = UDim2.new(1, 0, 1, 0),
				Position = UDim2.new(0.5, 0, 0.5, 0),
				Text = status,
				-- Confirm theme color
				TextColor3 = Colors.WHITE,
				TextSize = PREVIEW_FONT_SIZE,
				Font = Constants.FONT,
				BackgroundTransparency = 1,
			}),
		}),

		ChangeLabel = hovered and Roact.createElement("TextLabel", {
			AnchorPoint = Vector2.new(0, 1),
			Position = UDim2.new(0, 0, 1, -15),
			Size = UDim2.new(1, 0, 0, 30),
			BackgroundTransparency = 1,
			Text = localizedContent.AssetConfig.PreviewArea.Change,
			TextColor3 = Colors.WHITE,
			TextSize = PREVIEW_FONT_SIZE,
			Font = Constants.FONT,
			ZIndex = 2,
		}),
	})
end

if FFlagToolboxRemoveWithThemes then
	ImagePicker = withContext({
		Stylizer = ContextServices.Stylizer,
	})(ImagePicker)
end

return ImagePicker
