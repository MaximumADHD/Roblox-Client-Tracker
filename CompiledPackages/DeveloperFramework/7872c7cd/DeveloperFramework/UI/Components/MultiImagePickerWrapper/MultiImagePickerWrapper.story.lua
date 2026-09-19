local Framework = script:FindFirstAncestor("UI").Parent

local Roact = require(Framework.Parent.Roact)

local MultiImagePickerWrapper = require(Framework.UI.Components.MultiImagePickerWrapper)

-- TODO https://jira.rbx.com/browse/STM-2651: remove this util function as it is the same as MultiImagePicker.story.lua
local createMockThumbnail = function(
	id: number,
	altText: string?,
	approved: boolean?,
	imageId: number?,
	videoHash: string?,
	videoTitle: string?
)
	return {
		id = id,
		altText = if altText ~= nil then altText else nil,
		approved = if approved ~= nil then approved else true,
		imageId = if imageId ~= nil then imageId else id,
		videoHash = if videoHash ~= nil then videoHash else nil,
		videoTitle = if videoTitle ~= nil then videoTitle else nil,
	}
end

local createThumbnails = function()
	return {
		createMockThumbnail(11457774193),
		createMockThumbnail(10979850405),
		createMockThumbnail(11114178824),
		createMockThumbnail(11588223734),
		createMockThumbnail(1, nil, nil, nil, "wBYjsROAy5w", "RDC 2022 Intro"),
	}
end

local ComponentDataProvider = Roact.PureComponent:extend("ComponentDataProvider")

function ComponentDataProvider:init()
	self.state = {
		thumbnailUpdateInfo = {},
	}

	self.thumbnailUpdateInfo = function(thumbnailUpdateInfo)
		self:setState({
			thumbnailUpdateInfo = thumbnailUpdateInfo,
		})

		print("New thumbnail update info:", thumbnailUpdateInfo)
	end
end

function ComponentDataProvider:render()
	return Roact.createElement(MultiImagePickerWrapper, {
		Thumbnails = createThumbnails(),
		SetThumbnailUpdateInfo = self.thumbnailUpdateInfo,
	})
end

return {
	stories = {
		{
			name = "Five thumbnails in MultiImagePickerWrapper (Updateable)",
			story = ComponentDataProvider,
		},
	},
}
