--[[
	Represents a set of Thumbnails.

	Required Props:
		boolean Enabled: Whether this component is enabled.
		boolean HoverBarsEnabled: Whether the thumbnails should display their interactable bars.
		list Order: The order in which to display the thumbnails.
		table Thumbnails: The thumbnails to display in this widget.
		UDim2 ThumbnailSize: The size each Thumbnail in the set should be.

		callback StartDragging: A callback for when the user starts dragging a Thumbnail.
		callback DragMove: A callback for when the user drags a Thumbnail over another slot.
		callback AddNew: A callback for when the user wants to add a new Thumbnail.
		callback PromptDeleteThumbnail: A callback for when the user attempts to delete a Thumbnail.
		callback PromptPreviewThumbnail: A callback for when the user attempts to preview a Thumbnail.
		table Theme: The styles for the overall MultiImagePicker component. Styles are prop drilled from init.lua.

	Optional Props:
		number LayoutOrder = The order in which this widget should display in its parent.
		UDim2 Position: The position of this component. Defaults to UDim2.new().
]]
local Framework = script:FindFirstAncestor("UI").Parent

local Roact = require(Framework.Parent.Roact)
local Cryo = require(Framework.Parent.Cryo)

local Components = Framework.UI.Components
local Pane = require(Components.Pane)

local Thumbnail = require(script.Parent.Thumbnail)
local DragDestination = require(script.Parent.DragDestination)
local NewThumbnail = require(script.Parent.NewThumbnail)
local MultiImagePickerTypes = require(script.Parent.types)

export type Props = {
	Enabled: boolean,
	HoverBarsEnabled: boolean,
	LayoutOrder: number?,
	Order: { string },
	Position: UDim2?,
	Thumbnails: { [string]: any },
	ThumbnailSize: UDim2,

	StartDragging: (MultiImagePickerTypes.DragType) -> (),
	DragMove: (MultiImagePickerTypes.DragType) -> (),
	AddNew: () -> (),
	PromptDeleteThumbnail: (MultiImagePickerTypes.DeleteThumbnailType) -> (),
	PromptPreviewThumbnail: (MultiImagePickerTypes.PreviewThumbnailType) -> (),
	Theme: { [string]: any },
}

local ThumbnailSet = Roact.PureComponent:extend("ThumbnailSet")

function ThumbnailSet:render()
	local props: Props = self.props
	local theme = props.Theme
	local thumbnailSetTheme = theme.ThumbnailSet

	local thumbnails = props.Thumbnails or {}
	local order = props.Order or {}
	local active = props.Enabled
	local hoverBarsEnabled = props.HoverBarsEnabled
	local thumbnailSize = props.ThumbnailSize

	local children = {}

	if active then
		for id, thumbnail in pairs(thumbnails) do
			if thumbnail.id == "DragDestination" then
				children.DragDestination = Roact.createElement(DragDestination, {
					LayoutOrder = Cryo.List.find(order, id),
					Theme = theme,
				})
			else
				local image
				if not thumbnail.videoHash then
					if thumbnail.imageId then
						image = "rbxassetid://" .. thumbnail.imageId
					elseif thumbnail.tempId then
						image = thumbnail.tempId
					end
				end

				children[tostring(id)] = Roact.createElement(Thumbnail, {
					HoverBarEnabled = hoverBarsEnabled,
					Id = id,
					Image = image,
					LayoutOrder = Cryo.List.find(order, id),
					Preview = thumbnail.tempId,
					InReview = not thumbnail.approved,
					IsModerated = thumbnail.isModerated,
					VideoHash = thumbnail.videoHash or nil,
					VideoTitle = thumbnail.videoTitle,

					StartDragging = props.StartDragging,
					DragMove = props.DragMove,
					PromptDeleteThumbnail = props.PromptDeleteThumbnail,
					PromptPreviewThumbnail = props.PromptPreviewThumbnail,
					Theme = theme,
				})
			end
		end

		children.NewThumbnail = Roact.createElement(NewThumbnail, {
			LayoutOrder = #order + 1,
			OnClick = props.AddNew,
			Theme = theme,
		})
	end

	children.Layout = Roact.createElement("UIGridLayout", {
		CellPadding = thumbnailSetTheme.Padding,
		CellSize = thumbnailSize,
		FillDirection = Enum.FillDirection.Horizontal,
		HorizontalAlignment = Enum.HorizontalAlignment.Left,
		SortOrder = Enum.SortOrder.LayoutOrder,
	})
	return Roact.createElement(Pane, {
		LayoutOrder = props.LayoutOrder or 1,
		Position = props.Position or UDim2.new(),
		AutomaticSize = Enum.AutomaticSize.Y,
		HorizontalAlignment = Enum.HorizontalAlignment.Left,
	}, children)
end

return ThumbnailSet
