--[[
	Represents the Thumbnails widget in Basic Info.
	Consists of a list of tips as well as the ThumbnailSet.
	Handles the logic for dragging and reordering thumbnails.

	This component should only be created as part of a ThumbnailController.
	If just making a list of thumbnails to preview, use a ThumbnailSet.

	Props:
		bool Enabled = Whether this component is enabled.

		table Thumbnails = A list of thumbnails to display.
			{id1 = {thumbnail1}, id2 = {thumbnail2}, ..., idn = {thumbnailn}}

		list Order = The order that the given Thumbnails will be displayed.
			{id1, id2, id3, ..., idn}

		int LayoutOrder = The order in which this widget should display in its parent.
		function ThumbnailAction = A callback for when the user interacts with a Thumbnail.
			Called when a thumbnail's button is pressed, when the user wants to add a new
			thumbnail, or when the user has finished dragging a thumbnail.
			These actions are handled by the ThumbnailController above this component.
]]

local FFlagGameSettingsFixThumbnailDrag = settings():GetFFlag("GameSettingsFixThumbnailDrag")

local NOTES = {
	"You can set up to 10 screenshots and YouTube videos for a game.",
	"Acceptable image files: jpg, gif, png, tga, bmp | Recommended resolution: 1920 x 1080",
	"Items will be reviewed by moderators before being made visible to other users."
}

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local Cryo = require(Plugin.Cryo)
local Constants = require(Plugin.Src.Util.Constants)
local withTheme = require(Plugin.Src.Consumers.withTheme)
local getMouse = require(Plugin.Src.Consumers.getMouse)

local ThumbnailSet = require(Plugin.Src.Components.Thumbnails.ThumbnailSet)
local DragGhostThumbnail = require(Plugin.Src.Components.Thumbnails.DragGhostThumbnail)
local BulletPoint = require(Plugin.Src.Components.BulletPoint)
local createFitToContent = require(Plugin.Src.Components.createFitToContent)

local ThumbnailWidget = Roact.PureComponent:extend("ThumbnailWidget")

local FitToContent = createFitToContent("Frame", "UIListLayout", {
	Padding = UDim.new(0, 15),
	SortOrder = Enum.SortOrder.LayoutOrder,
})

function ThumbnailWidget:init()
	self.frameRef = Roact.createRef()
	self.state = {
		dragId = nil,
		dragIndex = nil,
		oldIndex = nil,
	}

	self.notesList = {
		Layout = Roact.createElement("UIListLayout", {
			Padding = UDim.new(0, 4),
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),
	}

	for i, item in ipairs(NOTES) do
		table.insert(self.notesList, Roact.createElement(BulletPoint, {
			LayoutOrder = i,
			Text = item,
		}))
	end

	self.heightChanged = function(newheight)
		local frame = self.frameRef.current
		frame.Size = UDim2.new(1, 0, 0, newheight + Constants.FRAME_PADDING
			+ Constants.ELEMENT_PADDING + Constants.HEADER_HEIGHT + Constants.ELEMENT_PADDING)
	end

	self.startDragging = function(dragInfo)
		self:setState({
			dragId = dragInfo.thumbnailId,
			dragIndex = dragInfo.index,
			oldIndex = FFlagGameSettingsFixThumbnailDrag and dragInfo.index or nil,
		})
	end

	self.dragMove = function(dragInfo)
		self:setState({
			dragIndex = dragInfo.index,
		})
	end

	self.stopDragging = function()
		if self.state.dragId ~= nil and self.state.dragIndex ~= nil then
			getMouse(self).resetMouse()
			if FFlagGameSettingsFixThumbnailDrag and self.state.dragIndex == self.state.oldIndex then
				self:setState({
					dragId = Roact.None,
					dragIndex = Roact.None,
					oldIndex = Roact.None,
				})
			else
				self.props.ThumbnailAction("MoveTo", {
					thumbnailId = self.state.dragId,
					index = self.state.dragIndex,
				})
			end
		end
	end
end

function ThumbnailWidget.getDerivedStateFromProps(_, lastState)
	-- When the user stops dragging, the Order prop will change, and
	-- the lastState will still hold a dragId and dragIndex. Set those values
	-- back to nil here so that the thumbnails render in the right order.
	if lastState.dragId ~= nil then
		return {
			dragId = Roact.None,
			dragIndex = Roact.None,
			oldIndex = Roact.None,
		}
	end
end

function ThumbnailWidget:render()
	return withTheme(function(theme)
		local active = self.props.Enabled

		local thumbnails = self.props.Thumbnails or {}
		local order = self.props.Order or {}
		local numThumbnails = #order or 0

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

		return Roact.createElement(FitToContent, {
			LayoutOrder = self.props.LayoutOrder or 1,
			BackgroundTransparency = 1,
		}, {
			-- Placed in a folder to prevent this component from being part
			-- of the LayoutOrder. This component is a drag area that is the size
			-- of the entire component.
			DragFolder = Roact.createElement("Folder", {}, {
				DragGhost = Roact.createElement(DragGhostThumbnail, {
					Enabled = active and dragging,
					Image = thumbnails[dragId] and thumbnails[dragId].imageId
						and ("rbxassetid://" .. thumbnails[dragId].imageId) or nil,
					StopDragging = self.stopDragging,
				}),
			}),

			Title = Roact.createElement("TextLabel", {
				LayoutOrder = 0,
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Size = UDim2.new(1, 0, 0, 16),

				TextColor3 = theme.titledFrame.text,
				Font = Enum.Font.SourceSans,
				TextSize = 22,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Top,
				Text = "Screenshots & Videos",
			}),

			Notes = Roact.createElement("Frame", {
				LayoutOrder = 1,
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 0, 72),
				Position = UDim2.new(0, 0, 0, 0),
			}, self.notesList),

			Thumbnails = Roact.createElement(ThumbnailSet, {
				LayoutOrder = 2,
				Thumbnails = dragging and dragThumbnails or thumbnails,
				Order = dragging and dragOrder or order,
				HoverBarsEnabled = not dragging,
				Enabled = active,
				Position = UDim2.new(0, 0, 0, 96),

				SetHeight = self.heightChanged,

				StartDragging = self.startDragging,
				DragMove = self.dragMove,

				ButtonPressed = self.props.ThumbnailAction,
				AddNew = function()
					self.props.ThumbnailAction("AddNew")
				end,
			}),

			-- Placed in a folder to prevent this component from being part
			-- of the LayoutOrder and receiving padding above and below
			CountFolder = Roact.createElement("Folder", {}, {
				Count = Roact.createElement("TextLabel", {
					Visible = active,
					Size = UDim2.new(1, 0, 0, 20),
					Position = UDim2.new(0, 0, 1, Constants.ELEMENT_PADDING),
					AnchorPoint = Vector2.new(0, 1),
					BackgroundTransparency = 1,
					TextColor3 = theme.thumbnail.count,
					Text = numThumbnails > 0 and (numThumbnails .. "/" .. Constants.MAX_THUMBNAILS)
						or "Up to " .. Constants.MAX_THUMBNAILS .. " items",
					Font = Enum.Font.SourceSans,
					TextSize = 16,
					TextXAlignment = Enum.TextXAlignment.Left,
					TextYAlignment = Enum.TextYAlignment.Center,
				}),
			}),
		})
	end)
end

return ThumbnailWidget