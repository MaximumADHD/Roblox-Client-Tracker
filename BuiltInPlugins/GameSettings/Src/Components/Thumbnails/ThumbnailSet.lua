--[[
	Represents a set of Thumbnails.

	Props:
		table Thumbnails = The thumbnails to display in this widget.
		list Order = The order in which to display the thumbnails.
		bool Enabled = Whether this component is enabled.
		bool HoverBarsEnabled = Whether the thumbnails should display their interactable bars.
		UDim2 Position = The position of this component. Defaults to UDim2.new().

		function SetHeight = A callback for when this ThumbnailSet's height changes.
		function StartDragging = A callback for when the user starts dragging a Thumbnail.
		function DragMove = A callback for when the user drags a Thumbnail over another slot.
		function ButtonPressed = A callback for when the user interacts with a Thumbnail.
		function AddNew = A callback for when the user wants to add a new Thumbnail.
]]

local FFlagGameSettingsImageUploadingEnabled = settings():GetFFlag("GameSettingsImageUploadingEnabled")

local THUMBNAIL_PADDING = UDim2.new(0, 30, 0, 30)

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local Cryo = require(Plugin.Cryo)
local Constants = require(Plugin.Src.Util.Constants)
local withTheme = require(Plugin.Src.Consumers.withTheme)

local Thumbnail = require(Plugin.Src.Components.Thumbnails.Thumbnail)
local DragDestination = require(Plugin.Src.Components.Thumbnails.DragDestination)
local NewThumbnail = require(Plugin.Src.Components.Thumbnails.NewThumbnail)

local createFitToContent = require(Plugin.Src.Components.createFitToContent)

local ThumbnailSet = Roact.PureComponent:extend("ThumbnailSet")

local FitToContent = createFitToContent("Frame", "UIGridLayout", {
	CellPadding = THUMBNAIL_PADDING,
	CellSize = Constants.THUMBNAIL_SIZE,
	FillDirection = Enum.FillDirection.Horizontal,
	SortOrder = Enum.SortOrder.LayoutOrder,
})

function ThumbnailSet:render()
	return withTheme(function(theme)
		local thumbnails = self.props.Thumbnails or {}
		local order = self.props.Order or {}
		local active = self.props.Enabled
		local hoverBarsEnabled = self.props.HoverBarsEnabled

		local children = {}

		if active then
			for id, thumbnail in pairs(thumbnails) do
				if thumbnail.id == "DragDestination" then
					children.DragDestination = Roact.createElement(DragDestination, {
						LayoutOrder = Cryo.List.find(order, id),
					})
				else
					local image
					if not thumbnail.videoHash then
						if FFlagGameSettingsImageUploadingEnabled then
							if thumbnail.imageId then
								image = "rbxassetid://" .. thumbnail.imageId
							elseif thumbnail.tempId then
								image = thumbnail.tempId
							end
						else
							image = "rbxassetid://" .. thumbnail.imageId
						end
					end

					children[tostring(id)] = Roact.createElement(Thumbnail, {
						Id = id,
						LayoutOrder = Cryo.List.find(order, id),
						Image = image,
						VideoHash = thumbnail.videoHash or nil,
						VideoTitle = thumbnail.videoTitle,
						Review = not thumbnail.approved,
						Preview = FFlagGameSettingsImageUploadingEnabled and thumbnail.tempId,

						StartDragging = self.props.StartDragging,
						DragMove = self.props.DragMove,

						HoverBarEnabled = hoverBarsEnabled,
						ButtonPressed = self.props.ButtonPressed,
					})
				end
			end

			children.NewThumbnail = Roact.createElement(NewThumbnail, {
				LayoutOrder = #order + 1,
				OnClick = self.props.AddNew,
			})
		end

		return Roact.createElement(FitToContent, {
			BackgroundTransparency = 1,
			LayoutOrder = self.props.LayoutOrder or 1,
			Position = self.props.Position or UDim2.new(),
		}, children)
	end)
end

return ThumbnailSet