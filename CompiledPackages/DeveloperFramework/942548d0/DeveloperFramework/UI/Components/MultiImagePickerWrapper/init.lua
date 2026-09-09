--[[
	A wrapper for the MultiImagePicker. This is intended to be a stateful / standalone version of the MultiImagePicker,
	one that is not coupled with React / Rodux that is present in the GameSettings version. Eventually, the long term
	goal would be to remove the GameSettings Rodux version, then combine this wrapper with the base component. A ticket
	for all the integration needed is marked with TODOs under STM-2651

	Required Props:
		callback SetThumbnailUpdateInfo: The function call that receives all the updates whenever a thumbnail is added,
			changed, or reordered.
		list InitThumbnailArray: The list of thumbnail metadata to initialize the MultiImagePicker with.
		Stylizer Stylizer: A Stylizer ContextItem, which is provided via withContext.

	Optional Props:
		table AltTextError: The error associated with updating alt text. This should be updated after the API call is
			made to save the thumbnail / order changes.
		boolean IsVideoAllowed: If videos are allowed when selecting asset media
		number LayoutOrder: LayoutOrder of the component.
		number MaxThumbnails: The maximum number of Thumbnails the user can upload. This defaults to
			Thumbnail.DefaultMaxCount (inside MultiImagePicker.styles) if nil.
		Component Notes: The component that is displayed before the MultiImagePicker is displayed.
		boolean ShowAltText: Whether to display the alt text field in the preview thumbnail dialog or not. This
			defaults to true if nil.
		boolean ShowTitle: Whether the show the title of the component or not. This defaults to true if nil.
		UDim2 ThumbnailSize: The size of each thumbnail displayed. This defaults to Thumbnail.DefaultSize if nil.
]]
local Framework = script:FindFirstAncestor("UI").Parent

local Roact = require(Framework.Parent.Roact)

local ContextServices = require(Framework.ContextServices)
local withContext = ContextServices.withContext

local Components = Framework.UI.Components
local Pane = require(Components.Pane)
local MultiImagePicker = require(Components.MultiImagePicker)
local MultiImagePickerWrapperTypes = require(script.types)

local Util = require(Framework.Util)
local deepCopy = Util.deepCopy
local deepEqual = Util.deepEqual
local isRoact17 = Util.isRoact17(Roact)
local getFileMaxSizeBytesOrDefault = require(Framework.Util.getFileMaxSizeBytesOrDefault)

local RejectedThumbnailDialog = require(script.RejectedThumbnailDialog)

local StudioService = game:GetService("StudioService")
local DFIntFileMaxSizeBytes = getFileMaxSizeBytesOrDefault()

export type Props = {
	AltTextError: any, -- TODO https://jira.rbx.com/browse/STM-2651: MultiImagePickerTypes.AltTextErrorType?,
	InitThumbnailArray: { MultiImagePickerWrapperTypes.Thumbnail },
	IsVideoAllowed: boolean?,
	LayoutOrder: number?,
	MaxThumbnails: number,
	Notes: any?,
	SetThumbnailUpdateInfo: (MultiImagePickerWrapperTypes.ThumbnailUpdateInfo) -> (),
	ShowAltText: boolean?,
	ShowTitle: boolean?,
	ThumbnailSize: UDim2?,
}

type _Props = Props & {
	Stylizer: { [string]: any },
}

type State = {
	altTextError: any, -- TODO https://jira.rbx.com/browse/STM-2651: MultiImagePickerTypes.AltTextErrorType?,
	errorMessage: string?,
	order: MultiImagePickerWrapperTypes.Order,
	thumbnails: MultiImagePickerWrapperTypes.Thumbnails,
	originalOrder: MultiImagePickerWrapperTypes.Order,
	originalThumbnails: MultiImagePickerWrapperTypes.Thumbnails,
	rejectedThumbnailNames: { string },
}

local MultiImagePickerWrapper = Roact.PureComponent:extend("MultiImagePickerWrapper")

function MultiImagePickerWrapper:init()
	self.state = {
		altTextError = nil,
		errorMessage = nil,
		order = {},
		thumbnails = {},
		originalOrder = {},
		originalThumbnails = {},
	}

	self.promptForThumbnails = function()
		local props: _Props = self.props
		local theme = props.Stylizer

		local thumbnails = StudioService:PromptImportFiles(theme.ImageTypes)

		local errorThumbnailNames = {}
		local acceptedThumbnails = {}

		if thumbnails and #thumbnails > 0 then
			for _, thumb in ipairs(thumbnails) do
				if thumb.Size > DFIntFileMaxSizeBytes then
					table.insert(errorThumbnailNames, thumb.Name)
				else
					table.insert(acceptedThumbnails, thumb)
				end
			end

			if next(errorThumbnailNames) ~= nil then
				self:setState({ rejectedThumbnailNames = errorThumbnailNames })
			end

			return acceptedThumbnails
		end

		return nil
	end

	self.addThumbnails = function()
		local state: State = self.state
		local newThumbnails = self.promptForThumbnails()

		if newThumbnails then
			local order = deepCopy(state.order)
			local thumbnails = deepCopy(state.thumbnails)

			for _, thumbnail in pairs(newThumbnails) do
				local id = thumbnail:GetTemporaryId()
				table.insert(order, id)
				thumbnails[id] = {
					asset = thumbnail,
					tempId = id,
				}
			end

			if isRoact17 then
				self:setState({
					thumbnails = thumbnails,
					order = order,
				}, function()
					self.updateThumbnailChangeInfo()
				end)
			else
				self:setState({
					thumbnails = thumbnails,
					order = order,
				})
				self.updateThumbnailChangeInfo()
			end
		end
	end

	self.deleteThumbnail = function(
		order: MultiImagePickerWrapperTypes.Order,
		thumbnails: MultiImagePickerWrapperTypes.Thumbnails
	)
		if isRoact17 then
			self:setState({
				order = order,
				thumbnails = thumbnails,
			}, function()
				self.updateThumbnailChangeInfo()
			end)
		else
			self:setState({
				order = order,
				thumbnails = thumbnails,
			})
			self.updateThumbnailChangeInfo()
		end
	end

	self.orderChanged = function(order: MultiImagePickerWrapperTypes.Order)
		if isRoact17 then
			self:setState({
				order = order,
			}, function()
				self.updateThumbnailChangeInfo()
			end)
		else
			self:setState({
				order = order,
			})
			self.updateThumbnailChangeInfo()
		end
	end

	-- Called when the thumbnails have changed and need to be saved. This currently only runs if a thumbnail's alt text
	-- was changed, but could be extended for other property changes too.
	self.thumbnailsChanged = function(thumbnails: MultiImagePickerWrapperTypes.Thumbnails)
		-- afletcher: GRPS-1130 handle moderated alt text errors better
		if isRoact17 then
			self:setState({
				altTextError = nil,
				thumbnails = thumbnails,
			}, function()
				self.updateThumbnailChangeInfo()
			end)
		else
			self:setState({
				altTextError = nil,
				thumbnails = thumbnails,
			})
			self.updateThumbnailChangeInfo()
		end
	end

	self.updateThumbnailChangeInfo = function()
		local state: State = self.state
		local props: _Props = self.props

		local originalThumbnails = state.originalThumbnails
		local changedThumbnails = state.thumbnails

		local thumbnailAltTextsToUpdate = {}
		local thumbnailFilesToAdd = {}
		local thumbnailIdsToRemove = {}
		if originalThumbnails and changedThumbnails then
			for thumbnailId in pairs(originalThumbnails) do
				if changedThumbnails[thumbnailId] == nil then
					table.insert(thumbnailIdsToRemove, tonumber(thumbnailId))
				end
			end
			for id, data in pairs(changedThumbnails) do
				if originalThumbnails[id] == nil then
					table.insert(thumbnailFilesToAdd, data.asset)
					if data.altText ~= "" then
						thumbnailAltTextsToUpdate[id] = data.altText
					end
				elseif originalThumbnails[id].altText ~= data.altText then
					thumbnailAltTextsToUpdate[id] = data.altText
				end
			end
		end

		props.SetThumbnailUpdateInfo({
			ThumbnailAltTextsToUpdate = thumbnailAltTextsToUpdate,
			ThumbnailFilesToAdd = thumbnailFilesToAdd,
			ThumbnailIdsToRemove = thumbnailIdsToRemove,
			ThumbnailOrderToChange = state.order,
		})
	end

	self.initializeThumbnails = function()
		local props: _Props = self.props

		-- return early if there were no thumbnails that were passed in
		if not props.InitThumbnailArray then
			return
		end

		local tempOrder = {}
		local tempThumbnails = {}

		for _, thumbnail in pairs(props.InitThumbnailArray) do
			local stringId = tostring(thumbnail.id)
			table.insert(tempOrder, stringId)
			tempThumbnails[stringId] = thumbnail
		end

		self:setState({
			altTextError = props.AltTextError,
			order = tempOrder,
			thumbnails = tempThumbnails,
			originalOrder = tempOrder,
			originalThumbnails = tempThumbnails,
		})
	end

	self.onCloseRejectedDialog = function()
		self:setState({
			rejectedThumbnailNames = Roact.None,
		})
	end
end

function MultiImagePickerWrapper:didMount()
	self.initializeThumbnails()
end

function MultiImagePickerWrapper:didUpdate(prevProps: _Props)
	local props: _Props = self.props

	if prevProps.InitThumbnailArray == nil then
		self.initializeThumbnails()
	-- if the thumbnails or their metadata is different, re-initialize them
	elseif not deepEqual(prevProps.InitThumbnailArray, props.InitThumbnailArray) then
		self.initializeThumbnails()
	end
end

function MultiImagePickerWrapper:render()
	local props: _Props = self.props
	local state: State = self.state

	return Roact.createElement(Pane, {
		AutomaticSize = Enum.AutomaticSize.XY,
	}, {
		MultiImagePicker = Roact.createElement(MultiImagePicker, {
			AddThumbnail = self.addThumbnails,
			AltTextError = state.altTextError,
			DeleteThumbnail = self.deleteThumbnail,
			Enabled = true,
			ErrorMessage = state.errorMessage,
			IsVideoAllowed = props.IsVideoAllowed,
			LayoutOrder = props.LayoutOrder,
			Order = state.order,
			MaxThumbnails = props.MaxThumbnails,
			Notes = props.Notes,
			ShowAltText = props.ShowAltText,
			ShowTitle = props.ShowTitle,
			ThumbnailOrderChanged = self.orderChanged,
			Thumbnails = state.thumbnails,
			ThumbnailsChanged = self.thumbnailsChanged,
			ThumbnailSize = props.ThumbnailSize,
		}),
		RejectedThumbnailDialog = Roact.createElement(RejectedThumbnailDialog, {
			Enabled = state.rejectedThumbnailNames ~= nil,
			Files = state.rejectedThumbnailNames,
			OnClose = self.onCloseRejectedDialog,
			Theme = props.Stylizer,
		}),
	})
end

MultiImagePickerWrapper = withContext({
	Stylizer = ContextServices.Stylizer,
})(MultiImagePickerWrapper)

return MultiImagePickerWrapper
