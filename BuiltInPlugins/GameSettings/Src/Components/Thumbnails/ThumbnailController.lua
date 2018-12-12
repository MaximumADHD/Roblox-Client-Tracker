--[[
	A top-level Controller for the ThumbnailWidget in BasicInfo.
	Accepts ThumbnailActions from its ThumbnailWidget component, then
	executes functions based on these actions.

	Accepts props intended for ThumbnailWidget, and combines these props with the
	ThumbnailAction handler.

	Used from props for ThumbnailWidget:
		table Thumbnails = A list of thumbnails to display.
			{id1 = {thumbnail1}, id2 = {thumbnail2}, ..., idn = {thumbnailn}}

		list Order = The order that the given Thumbnails will be displayed.
			{id1, id2, id3, ..., idn}

	Additional callbacks:
		function ThumbnailOrderChanged = A callback for BasicInfo when the thumbnail
			order has been changed and needs to be saved.
		function ThumbnailsChanged = A callback for BasicInfo when the thumbnails
			have changed and need to be saved, for example, when a thumbnail was deleted.
		function AddThumbnail = A callback for BasicInfo when the user wants to add
			a new thumbnail.
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local Cryo = require(Plugin.Cryo)

local ThumbnailPreviewDialog = require(Plugin.Src.Components.Dialog.ThumbnailPreviewDialog)
local ThumbnailWidget = require(Plugin.Src.Components.Thumbnails.ThumbnailWidget)
local showDialog = require(Plugin.Src.Consumers.showDialog)
local getMouse = require(Plugin.Src.Consumers.getMouse)

local ThumbnailController = Roact.PureComponent:extend("ThumbnailController")

function ThumbnailController:init()
	self.dispatchAction = function(action, info)
		if action == "AddNew" then
			self:addNew(action, info)
		elseif action == "Delete" then
			self:deleteThumbnail(info.thumbnailId)
		elseif action == "MoveTo" then
			self:moveToIndex(info.thumbnailId, info.index)
		elseif action == "Zoom" then
			self:openPreviewDialog(info.thumbnailId)
		end
	end
end

function ThumbnailController:addNew()
	self.props.AddThumbnail()
end

function ThumbnailController:deleteThumbnail(thumbnailId)
	self.props.ThumbnailsChanged(Cryo.Dictionary.join(self.props.Thumbnails, {
		[thumbnailId] = Cryo.None,
	}))
	local newOrder = Cryo.List.removeValue(self.props.Order, thumbnailId)
	self.props.ThumbnailOrderChanged(newOrder)
	getMouse(self).resetMouse()
end

function ThumbnailController:moveToIndex(thumbnailId, index)
	local newOrder = Cryo.List.removeValue(self.props.Order, thumbnailId)
	table.insert(newOrder, index, thumbnailId)
	self.props.ThumbnailOrderChanged(newOrder)
end

function ThumbnailController:openPreviewDialog(thumbnailId)
	local dialogProps = {
		Title = "Preview",
		Size = Vector2.new(660, 380),
		Thumbnails = self.props.Thumbnails,
		Order = self.props.Order,
		StartId = thumbnailId,
	}
	showDialog(self, ThumbnailPreviewDialog, dialogProps)
	:catch(function()
		-- Nothing to catch when window is closed;
		-- It's just a non-interactable preview window.
	end)
end

function ThumbnailController:render()
	return Roact.createElement(ThumbnailWidget, Cryo.Dictionary.join(self.props, {
		ThumbnailAction = self.dispatchAction
	}))
end

return ThumbnailController