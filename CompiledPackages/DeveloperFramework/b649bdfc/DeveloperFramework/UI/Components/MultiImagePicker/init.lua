--[[
	A top-level Controller for the ThumbnailWidget.
	Accepts ThumbnailActions from its ThumbnailWidget component, then
	executes functions based on these actions.

	Accepts props intended for ThumbnailWidget, and combines these props with the
	ThumbnailAction handler.

	Required Props:
		boolean Enabled: Whether this component is enabled.
		list Order: The order that the given Thumbnails will be displayed.
			{id1, id2, id3, ..., idn}
		table Thumbnails: A list of thumbnails to display.
			{id1 = {thumbnail1}, id2 = {thumbnail2}, ..., idn = {thumbnailn}}
		callback AddThumbnail: A callback for when the user wants to add
			a new thumbnail.
		callback DeleteThumbnail: A callback for when the user deletes a thumbnail.
		callback ThumbnailOrderChanged: A callback for when the thumbnail
			order has been changed and needs to be saved.
		callback ThumbnailsChanged: A callback for when the thumbnails
			have changed and need to be saved. This currently only runs if a thumbnail's
			alt text was changed, but could be extended for other property changes too.
		Stylizer Stylizer: A Stylizer ContextItem, which is provided via withContext.

	Optional Props:
		table AltTextError: The error associated with updating alt text.
		string ErrorMessage: The error message to be displayed.
		boolean IsVideoAllowed: If videos are allowed when selecting asset media. This defaults to false if nil.
		number LayoutOrder: LayoutOrder of the component.
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
local Cryo = require(Framework.Parent.Cryo)

local Util = Framework.Util
local deepCopy = require(Util.deepCopy)
local ContextServices = require(Framework.ContextServices)
local withContext = ContextServices.withContext

local Dash = require(Framework.Parent.Dash)
local join = Dash.join

local ThumbnailWidget = require(script.ThumbnailWidget)
local MultiImagePickerTypes = require(script.types)

export type Props = {
	AddThumbnail: () -> (),
	AltTextError: MultiImagePickerTypes.AltTextErrorType?,
	DeleteThumbnail: ({ string }, { [string]: any }) -> ()?,
	Enabled: boolean,
	ErrorMessage: string?,
	IsVideoAllowed: boolean?,
	LayoutOrder: number?,
	MaxThumbnails: number,
	Notes: any?,
	Order: { string },
	ShowAltText: boolean?,
	ShowTitle: boolean?,
	Thumbnails: { [string]: any },
	ThumbnailOrderChanged: ({ string }) -> (),
	ThumbnailsChanged: ({ [string]: any }) -> (),
	ThumbnailSize: UDim2?,
}

type _Props = Props & {
	Stylizer: { [string]: any },
}

local MultiImagePicker = Roact.PureComponent:extend("MultiImagePicker")

function MultiImagePicker:init()
	self.dispatchAction = function(action, info)
		if action == "AddNew" then
			self:addNew()
		elseif action == "Delete" then
			self:deleteThumbnail(info.thumbnailId)
		elseif action == "MoveTo" then
			self:moveToIndex(info.thumbnailId, info.index)
		elseif action == "UpdateAltTexts" then
			self:updateAltTexts(info)
		end
	end
end

function MultiImagePicker:addNew()
	local props: _Props = self.props

	props.AddThumbnail()
end

function MultiImagePicker:deleteThumbnail(thumbnailId)
	local props: _Props = self.props

	local newOrder = Cryo.List.removeValue(props.Order, thumbnailId)
	local newThumbnails = Cryo.Dictionary.join(props.Thumbnails, {
		[thumbnailId] = Cryo.None,
	})

	-- TODO https://jira.rbx.com/browse/STM-2651: remove this check and just use DeleteThumbnail
	-- when the wrapper is merged with this component
	if props.DeleteThumbnail then
		props.DeleteThumbnail(newOrder, newThumbnails)
	else
		props.ThumbnailOrderChanged(newOrder)
		props.ThumbnailsChanged(newThumbnails)
	end
end

function MultiImagePicker:updateAltTexts(altTexts)
	local props: _Props = self.props

	local newThumbnails = deepCopy(props.Thumbnails)

	for thumbnailId, altText in pairs(altTexts) do
		newThumbnails[thumbnailId].altText = altText
	end

	props.ThumbnailsChanged(newThumbnails)
end

function MultiImagePicker:moveToIndex(thumbnailId, index)
	local props: _Props = self.props

	local newOrder = Cryo.List.removeValue(props.Order, thumbnailId)
	table.insert(newOrder, index, thumbnailId)
	props.ThumbnailOrderChanged(newOrder)
end

function MultiImagePicker:render()
	local props: _Props = self.props

	return Roact.createElement(
		ThumbnailWidget,
		join(props, {
			Theme = props.Stylizer,
			ThumbnailAction = self.dispatchAction,
		})
	)
end

MultiImagePicker = withContext({
	Stylizer = ContextServices.Stylizer,
})(MultiImagePicker)

return MultiImagePicker
