--[[
	Represents the Thumbnails widget in Basic Info.
	Consists of a list of tips as well as the ThumbnailSet.
	Handles the logic for dragging and reordering thumbnails.

	This component should only be created as part of a ThumbnailController.
	If just making a list of thumbnails to preview, use a ThumbnailSet.

	Required Props:
		boolean Enabled: Whether this component is enabled.
		list Order: The order that the given Thumbnails will be displayed.
			{id1, id2, id3, ..., idn}
		table Thumbnails: A list of thumbnails to display.
			{id1 = {thumbnail1}, id2 = {thumbnail2}, ..., idn = {thumbnailn}}
		callback ThumbnailAction: A callback for when the user interacts with a Thumbnail.
			Called when a thumbnail's button is pressed, when the user wants to add a new
			thumbnail, or when the user has finished dragging a thumbnail.
			These actions are handled by the ThumbnailController above this component.
		table Theme: The styles for the overall MultiImagePicker component. Styles are prop drilled from init.lua.
		Localization Localization: A Localization ContextItem, which is provided via withContext.
		Mouse Mouse: A Mouse ContextItem, which is provided via withContext.

	Optional Props:
		table AltTextError: The error associated with updating alt text.
		string ErrorMessage: The error message to be displayed.
		boolean IsVideoAllowed: If videos are allowed when selecting asset media. This defaults to false if nil.
		number LayoutOrder: The order in which this widget should display in its parent.
		number MaxThumbnails: The maximum number of Thumbnails the user can upload. This defaults to
			Thumbnail.DefaultMaxCount if nil.
		Component Notes: The component that is displayed before the MultiImagePicker is displayed.
		boolean ShowAltText: Whether to display the alt text field in the preview thumbnail dialog or not. This
			defaults to true if nil.
		boolean ShowTitle: Whether the show the title of the component or not. This defaults to true if nil.
		UDim2 ThumbnailSize: The size of each thumbnail displayed. This defaults to Thumbnail.DefaultSize if nil.
]]
local Framework = script:FindFirstAncestor("UI").Parent

local Roact = require(Framework.Parent.Roact)

local Util = require(Framework.Util)
local Cryo = require(Framework.Parent.Cryo)
local prioritize = Util.prioritize

local Components = Framework.UI.Components
local Pane = require(Components.Pane)

local ContextServices = require(Framework.ContextServices)
local withContext = ContextServices.withContext
local Resources = require(Framework.Resources)

local ThumbnailSet = require(script.Parent.ThumbnailSet)
local DragGhostThumbnail = require(script.Parent.DragGhostThumbnail)
local DeleteThumbnailDialog = require(script.Parent.DeleteThumbnailDialog)
local PreviewThumbnailDialog = require(script.Parent.PreviewThumbnailDialog)
local MultiImagePickerTypes = require(script.Parent.types)

local LOCALIZATION_PROJECT_NAME = Resources.LOCALIZATION_PROJECT_NAME

local FFlagDevFrameworkMultiImageRenameFix = game:DefineFastFlag("DevFrameworkMultiImageRenameFix", false)
local COMPONENT_NAME = if FFlagDevFrameworkMultiImageRenameFix then "MultiImagePicker" else "MulitImagePicker"

export type Props = {
	AltTextError: MultiImagePickerTypes.AltTextErrorType?,
	Enabled: boolean,
	ErrorMessage: string?,
	IsVideoAllowed: boolean?,
	LayoutOrder: number?,
	MaxThumbnails: number,
	Notes: any?,
	Order: { string },
	ShowAltText: boolean?,
	ShowTitle: boolean?,
	ThumbnailAction: (string, { [string]: any }?) -> (),
	Thumbnails: { [string]: any },
	ThumbnailSize: UDim2?,
	Theme: { [string]: any },
}

type _Props = Props & {
	Localization: any,
	Mouse: any,
}

local ThumbnailWidget = Roact.PureComponent:extend("ThumbnailWidget")

function ThumbnailWidget:init()
	self.frameRef = Roact.createRef()
	self.state = {
		dragId = nil,
		dragIndex = nil,
		oldIndex = nil,
		deleteThumbnailInfo = nil,
		previewThumbnailInfo = nil,
	}

	self.startDragging = function(dragInfo)
		self:setState({
			dragId = dragInfo.thumbnailId,
			dragIndex = dragInfo.index,
			oldIndex = dragInfo.index or nil,
		})
	end

	self.dragMove = function(dragInfo)
		self:setState({
			dragIndex = dragInfo.index,
		})
	end

	self.stopDragging = function()
		if self.state.dragId ~= nil and self.state.dragIndex ~= nil then
			local props: _Props = self.props
			props.Mouse:__resetCursor()

			if self.state.dragIndex == self.state.oldIndex then
				self:setState({
					dragId = Roact.None,
					dragIndex = Roact.None,
					oldIndex = Roact.None,
				})
			else
				props.ThumbnailAction("MoveTo", {
					thumbnailId = self.state.dragId,
					index = self.state.dragIndex,
				})
			end
		end
	end

	self.promptDeleteThumbnail = function(info)
		self:setState({
			deleteThumbnailInfo = info,
		})
	end

	self.promptPreviewThumbnail = function(info)
		self:setState({
			previewThumbnailInfo = info,
		})
	end
end

function ThumbnailWidget:didUpdate(nextProps)
	local props: _Props = self.props

	-- When the user stops dragging, the Order prop will change, and
	-- the lastState will still hold a dragId and dragIndex. Set those values
	-- back to nil here so that the thumbnails render in the right order.
	if nextProps.Order ~= props.Order then
		self:setState({
			dragId = Roact.None,
			dragIndex = Roact.None,
			oldIndex = Roact.None,
		})
	end
end

function ThumbnailWidget:render()
	local props: _Props = self.props
	local theme = props.Theme
	local localization = props.Localization

	local active = props.Enabled

	local thumbnails = props.Thumbnails or {}
	local order = props.Order or {}
	local maxThumbnails = prioritize(props.MaxThumbnails, theme.Thumbnail.DefaultMaxCount)
	local numThumbnails = #order or 0
	local showAltText = prioritize(props.ShowAltText, true)
	local showTitle = prioritize(props.ShowTitle, true)
	local thumbnailSize = prioritize(props.ThumbnailSize, theme.Thumbnail.DefaultSize)
	local errorMessage = props.ErrorMessage
	local deleteThumbnailInfo = self.state.deleteThumbnailInfo
	local previewThumbnailInfo = self.state.previewThumbnailInfo

	local dragId = self.state.dragId
	local dragIndex = self.state.dragIndex
	local dragging = dragId ~= nil

	local dragThumbnails
	local dragOrder
	if dragging then
		dragThumbnails = Cryo.Dictionary.join(thumbnails, {
			[dragId] = {
				id = "DragDestination",
			},
		})
		dragOrder = Cryo.List.removeValue(order, dragId)
		table.insert(dragOrder, dragIndex, dragId)
	end

	local dragImageId = nil
	if thumbnails[dragId] then
		if thumbnails[dragId].imageId then
			dragImageId = "rbxassetid://" .. thumbnails[dragId].imageId
		elseif thumbnails[dragId].tempId then
			dragImageId = thumbnails[dragId].tempId
		end
	end

	local countTextColor
	if errorMessage or numThumbnails > maxThumbnails then
		countTextColor = theme.Colors.Error
	else
		countTextColor = theme.Thumbnail.Count
	end

	local children = {
		-- Placed in a folder to prevent this component from being part
		-- of the LayoutOrder. This component is a drag area that is the size
		-- of the entire component.
		DragFolder = Roact.createElement("Folder", {}, {
			DragGhost = Roact.createElement(DragGhostThumbnail, {
				Enabled = active and dragging,
				Image = dragImageId,
				StopDragging = self.stopDragging,
				ThumbnailSize = thumbnailSize,
				Theme = theme,
			}),
		}),

		Title = if showTitle
			then Roact.createElement(
				"TextLabel",
				Cryo.Dictionary.join(theme.FontStyle.Normal, {
					LayoutOrder = 0,
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					Size = UDim2.new(1, 0, 0, 16),

					TextXAlignment = Enum.TextXAlignment.Left,
					TextYAlignment = Enum.TextYAlignment.Top,
					Text = localization:getProjectText(LOCALIZATION_PROJECT_NAME, COMPONENT_NAME, "TitleThumbnails"),
				})
			)
			else nil,

		Notes = props.Notes,

		Thumbnails = Roact.createElement(ThumbnailSet, {
			LayoutOrder = 2,
			Thumbnails = dragging and dragThumbnails or thumbnails,
			Order = dragging and dragOrder or order,
			HoverBarsEnabled = not dragging,
			Enabled = active,

			StartDragging = self.startDragging,
			DragMove = self.dragMove,

			PromptPreviewThumbnail = self.promptPreviewThumbnail,
			PromptDeleteThumbnail = self.promptDeleteThumbnail,
			ThumbnailSize = thumbnailSize,

			AddNew = function()
				props.ThumbnailAction("AddNew")
			end,

			Theme = theme,
		}),

		Count = Roact.createElement(
			"TextLabel",
			Cryo.Dictionary.join(theme.FontStyle.Smaller, {
				LayoutOrder = 3,
				Visible = active,
				Size = UDim2.new(1, 0, 0, 20),
				BackgroundTransparency = 1,
				TextColor3 = countTextColor,
				Text = errorMessage
					or numThumbnails > 0 and (numThumbnails .. "/" .. maxThumbnails)
					or localization:getProjectText(
						LOCALIZATION_PROJECT_NAME,
						COMPONENT_NAME,
						"ThumbnailsCount",
						{ maxThumbnails = maxThumbnails }
					),
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Center,
			})
		),

		DeleteDialog = Roact.createElement(DeleteThumbnailDialog, {
			Enabled = deleteThumbnailInfo ~= nil,
			OnClose = function()
				self:setState({
					deleteThumbnailInfo = Roact.None,
				})
			end,
			DeleteThumbnail = function()
				props.ThumbnailAction("Delete", deleteThumbnailInfo)
			end,
			Theme = theme,
		}),

		PreviewDialog = Roact.createElement(PreviewThumbnailDialog, {
			AltTextError = props.AltTextError,
			Enabled = previewThumbnailInfo ~= nil,
			IsVideoAllowed = props.IsVideoAllowed,
			OnClose = function()
				self:setState({
					previewThumbnailInfo = Roact.None,
				})
			end,
			Order = order,
			ShowAltText = showAltText,
			StartThumbnailInfo = previewThumbnailInfo,
			Thumbnails = thumbnails,
			UpdateAltTexts = function(altTextInfos)
				props.ThumbnailAction("UpdateAltTexts", altTextInfos)
			end,
			Theme = theme,
		}),
	}

	return Roact.createElement(Pane, {
		LayoutOrder = props.LayoutOrder or 1,
		Layout = Enum.FillDirection.Vertical,
		AutomaticSize = Enum.AutomaticSize.XY,
		Spacing = UDim.new(0, 15),
	}, children)
end

ThumbnailWidget = withContext({
	Localization = ContextServices.Localization,
	Mouse = ContextServices.Mouse,
})(ThumbnailWidget)

return ThumbnailWidget
