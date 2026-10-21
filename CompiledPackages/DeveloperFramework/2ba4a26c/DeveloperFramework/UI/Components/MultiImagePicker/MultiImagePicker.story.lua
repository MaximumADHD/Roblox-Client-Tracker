local Framework = script:FindFirstAncestor("UI").Parent

local Roact = require(Framework.Parent.Roact)

local Util = require(Framework.Util)
local LayoutOrderIterator = Util.LayoutOrderIterator
local getFileMaxSizeBytesOrDefault = require(Framework.Util.getFileMaxSizeBytesOrDefault)

local Dash = require(Framework.Parent.Dash)
local append = Dash.append
local join = Dash.join
local keys = Dash.keys

local StudioService = game:GetService("StudioService")
local DFIntFileMaxSizeBytes = getFileMaxSizeBytesOrDefault()

local MultiImagePicker = require(Framework.UI.Components.MultiImagePicker)

local promptForThumbnails = function()
	local ImageTypes = { "jpg", "jpeg", "png" }

	local thumbnails = StudioService:PromptImportFiles(ImageTypes)

	local rejectedThumbnailNames = {}
	local acceptedThumbnails = {}
	if thumbnails and #thumbnails > 0 then
		for _, thumb in ipairs(thumbnails) do
			if thumb.Size > DFIntFileMaxSizeBytes then
				table.insert(rejectedThumbnailNames, thumb.Name)
			else
				table.insert(acceptedThumbnails, thumb)
			end
		end
		if next(rejectedThumbnailNames) ~= nil then
			print("thumbnail rejected")
		end
		return acceptedThumbnails
	end

	return nil
end

local emptyThumbnails = {}
local emptyOrder = {}

local addThumbnails = function()
	local newThumbnails = promptForThumbnails()

	if newThumbnails then
		local thumbnails = join(emptyThumbnails, {})
		local order = append(emptyOrder, {})

		for _, thumbnail in pairs(newThumbnails) do
			local id = thumbnail:GetTemporaryId()
			table.insert(order, id)
			thumbnails[id] = {
				asset = thumbnail,
				tempId = id,
			}
		end

		emptyThumbnails = thumbnails
		emptyOrder = order
		print("thumbnail state now is:", emptyThumbnails)
	end
end

local thumbnailsChanged = function()
	print("thumbnails changed")
end

local thumbnailOrderChanged = function()
	print("thumbnail order changed")
end

local createMockThumbnail = function(
	id: number,
	altText: string?,
	approved: boolean?,
	imageId: number?,
	isModerated: boolean?,
	videoHash: string?,
	videoTitle: string?
)
	local moderatedCheck = if isModerated ~= nil then isModerated else false

	return {
		id = id,
		altText = if altText ~= nil then altText else nil,
		approved = if approved ~= nil then approved else true,
		imageId = if imageId ~= nil then imageId else id,
		isModerated = moderatedCheck,
		videoHash = if videoHash ~= nil then videoHash else nil,
		videoTitle = if videoTitle ~= nil then videoTitle else nil,
	}
end

local fiveThumbnails = {
	createMockThumbnail(11457774193),
	createMockThumbnail(10979850405),
	createMockThumbnail(11114178824),
	createMockThumbnail(11187570100),
	createMockThumbnail(11260544390),
}

local fiveOrder = keys(fiveThumbnails)

local videoThumbnails = {
	createMockThumbnail(1, nil, nil, nil, nil, "wBYjsROAy5w", "RDC 2022 Intro"), -- rdc intro
	createMockThumbnail(2, nil, false, nil, nil, "_EPelwsaF9E", "Roblox 2021 Cinematic"), -- 2021 cinematic
}

local videoOrder = keys(videoThumbnails)

local moderatedThumbnails = {
	createMockThumbnail(11457774193, nil, true, nil, true), -- should be moderated
	createMockThumbnail(11114178824, nil, true, nil, false), -- should have no text displayed
	createMockThumbnail(11260544390, nil, false, nil, true), -- should be moderated
	createMockThumbnail(11647696560, nil, false, nil, false), -- should be in review
}

local moderatedOrder = keys(moderatedThumbnails)

local layoutOrderIterator = LayoutOrderIterator.new()

return {
	stories = {
		{
			name = "Empty MultiImagePicker",
			story = Roact.createElement(MultiImagePicker, {
				AddThumbnail = addThumbnails,
				AltTextError = {
					ErrorMessage = "Alt text error",
				},
				Enabled = true,
				ErrorMessage = nil,
				IsVideoAllowed = true,
				LayoutOrder = layoutOrderIterator:getNextOrder(),
				Notes = nil,
				Order = emptyOrder,
				Thumbnails = emptyThumbnails,
				ThumbnailsChanged = thumbnailsChanged,
				ThumbnailOrderChanged = thumbnailOrderChanged,
			}),
		},
		{
			name = "MultiImagePicker with title hidden",
			story = Roact.createElement(MultiImagePicker, {
				AddThumbnail = addThumbnails,
				AltTextError = {
					ErrorMessage = "Alt text error",
				},
				Enabled = true,
				ErrorMessage = nil,
				IsVideoAllowed = true,
				LayoutOrder = layoutOrderIterator:getNextOrder(),
				Notes = nil,
				Order = emptyOrder,
				ShowTitle = false,
				Thumbnails = emptyThumbnails,
				ThumbnailsChanged = thumbnailsChanged,
				ThumbnailOrderChanged = thumbnailOrderChanged,
			}),
		},
		{
			name = "MultiImagePicker with smaller thumbnails",
			story = Roact.createElement(MultiImagePicker, {
				AddThumbnail = addThumbnails,
				AltTextError = {
					ErrorMessage = "Alt text error",
				},
				Enabled = true,
				ErrorMessage = nil,
				IsVideoAllowed = true,
				LayoutOrder = layoutOrderIterator:getNextOrder(),
				Notes = nil,
				Order = emptyOrder,
				ThumbnailSize = UDim2.new(0, 185, 0, 104),
				Thumbnails = emptyThumbnails,
				ThumbnailsChanged = thumbnailsChanged,
				ThumbnailOrderChanged = thumbnailOrderChanged,
			}),
		},
		{
			name = "Five Thumbnails in MultiImagePicker (Nonupdateable)",
			story = Roact.createElement(MultiImagePicker, {
				AddThumbnail = addThumbnails,
				AltTextError = {
					ThumbnailId = nil,
					ErrorMessage = "Alt text error",
				},
				Enabled = true,
				ErrorMessage = nil,
				IsVideoAllowed = true,
				LayoutOrder = layoutOrderIterator:getNextOrder(),
				Notes = nil,
				Order = fiveOrder,
				Thumbnails = fiveThumbnails,
				ThumbnailsChanged = thumbnailsChanged,
				ThumbnailOrderChanged = thumbnailOrderChanged,
			}),
		},
		{
			name = "Thumbnails with alt text hidden in MultiImagePicker (Nonupdateable)",
			story = Roact.createElement(MultiImagePicker, {
				AddThumbnail = addThumbnails,
				AltTextError = {
					ThumbnailId = nil,
					ErrorMessage = "Alt text error",
				},
				Enabled = true,
				ErrorMessage = nil,
				IsVideoAllowed = true,
				LayoutOrder = layoutOrderIterator:getNextOrder(),
				Notes = nil,
				Order = fiveOrder,
				ShowAltText = false,
				Thumbnails = fiveThumbnails,
				ThumbnailsChanged = thumbnailsChanged,
				ThumbnailOrderChanged = thumbnailOrderChanged,
			}),
		},
		{
			name = "Video thumbnails in MultiImagePicker (Nonupdateable) with IsVideoAllowed = false",
			story = Roact.createElement(MultiImagePicker, {
				AddThumbnail = addThumbnails,
				AltTextError = {
					ThumbnailId = nil,
					ErrorMessage = "Alt text error",
				},
				Enabled = true,
				ErrorMessage = nil,
				IsVideoAllowed = false,
				LayoutOrder = layoutOrderIterator:getNextOrder(),
				Notes = nil,
				Order = videoOrder,
				Thumbnails = videoThumbnails,
				ThumbnailsChanged = thumbnailsChanged,
				ThumbnailOrderChanged = thumbnailOrderChanged,
			}),
		},
		{
			name = "Video thumbnails in MultiImagePicker (Nonupdateable) with IsVideoAllowed = true",
			story = Roact.createElement(MultiImagePicker, {
				AddThumbnail = addThumbnails,
				AltTextError = {
					ThumbnailId = nil,
					ErrorMessage = "Alt text error",
				},
				Enabled = true,
				ErrorMessage = nil,
				IsVideoAllowed = true,
				LayoutOrder = layoutOrderIterator:getNextOrder(),
				Notes = nil,
				Order = videoOrder,
				Thumbnails = videoThumbnails,
				ThumbnailsChanged = thumbnailsChanged,
				ThumbnailOrderChanged = thumbnailOrderChanged,
			}),
		},
		{
			name = "Some moderated thumbnails in MultiImagePicker",
			story = Roact.createElement(MultiImagePicker, {
				AddThumbnail = addThumbnails,
				AltTextError = {
					ThumbnailId = nil,
					ErrorMessage = "Alt text error",
				},
				Enabled = true,
				ErrorMessage = nil,
				IsVideoAllowed = true,
				LayoutOrder = layoutOrderIterator:getNextOrder(),
				Notes = nil,
				Order = moderatedOrder,
				Thumbnails = moderatedThumbnails,
				ThumbnailsChanged = thumbnailsChanged,
				ThumbnailOrderChanged = thumbnailOrderChanged,
			}),
		},
	},
}
