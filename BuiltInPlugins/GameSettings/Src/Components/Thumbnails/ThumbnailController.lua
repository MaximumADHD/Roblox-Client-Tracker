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
local ContextServices = require(Plugin.Framework.ContextServices)

local DialogProvider = require(Plugin.Src.Providers.DialogProviderContextItem)

local ThumbnailPreviewDialog = require(Plugin.Src.Components.Dialog.ThumbnailPreviewDialog)
local ThumbnailWidget = require(Plugin.Src.Components.Thumbnails.ThumbnailWidget)
local showDialog = require(Plugin.Src.Consumers.showDialog)
local SimpleDialog = require(Plugin.Src.Components.Dialog.SimpleDialog)
local getMouse = require(Plugin.Src.Consumers.getMouse)
local getLocalizedContent = require(Plugin.Src.Consumers.getLocalizedContent)

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
	if game:GetFastFlag("StudioConvertGameSettingsToDevFramework") then
		local localization = self.props.Localization
		local dialog = self.props.Dialog
		local dialogProps = {
			Size = Vector2.new(368, 145),
			Title = localization:getText("General", "DeleteDialogHeader"),
			Header = localization:getText("General", "DeleteDialogBody"),
			Buttons = {
				localization:getText("General", "ReplyNo"),
				localization:getText("General", "ReplyYes"),
			},
		}

		if not dialog.showDialog(SimpleDialog, dialogProps):await() then
			return
		end
	else
		local localized = getLocalizedContent(self)
		local dialogProps = {
			Size = Vector2.new(368, 145),
			Title = localized.DeleteDialog.Header,
			Header = localized.DeleteDialog.Body,
			Buttons = localized.DeleteDialog.Buttons,
		}

		if not showDialog(self, SimpleDialog, dialogProps):await() then
			return
		end
	end

	self.props.ThumbnailsChanged(Cryo.Dictionary.join(self.props.Thumbnails, {
		[thumbnailId] = Cryo.None,
	}))
	local newOrder = Cryo.List.removeValue(self.props.Order, thumbnailId)
	self.props.ThumbnailOrderChanged(newOrder)

	if not game:GetFastFlag("StudioConvertGameSettingsToDevFramework") then
		getMouse(self).resetMouse()
	end
end

function ThumbnailController:moveToIndex(thumbnailId, index)
	local newOrder = Cryo.List.removeValue(self.props.Order, thumbnailId)
	table.insert(newOrder, index, thumbnailId)
	self.props.ThumbnailOrderChanged(newOrder)
end

function ThumbnailController:openPreviewDialog(thumbnailId)
	local dialogProps = {
		Title = game:GetFastFlag("StudioConvertGameSettingsToDevFramework")
			and self.props.Localization:getText("General", "PreviewDialogHeader")
			or getLocalizedContent(self).PreviewDialog.Header,
		Size = Vector2.new(660, 380),
		Thumbnails = self.props.Thumbnails,
		Order = self.props.Order,
		StartId = thumbnailId,
	}

	local promise
	if game:GetFastFlag("StudioConvertGameSettingsToDevFramework") then
		promise = self.props.Dialog.showDialog(ThumbnailPreviewDialog, dialogProps)
	else
		promise = showDialog(self, ThumbnailPreviewDialog, dialogProps)
	end
	promise:catch(function()
		-- Nothing to catch when window is closed;
		-- It's just a non-interactable preview window.
	end)
end

function ThumbnailController:render()
	return Roact.createElement(ThumbnailWidget, Cryo.Dictionary.join(self.props, {
		ThumbnailAction = self.dispatchAction,
	}))
end

if game:GetFastFlag("StudioConvertGameSettingsToDevFramework") then
	ContextServices.mapToProps(ThumbnailController, {
		Localization = ContextServices.Localization,
		Dialog = DialogProvider
	})
end

return ThumbnailController