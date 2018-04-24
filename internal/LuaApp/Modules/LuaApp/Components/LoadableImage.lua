local Modules = game:GetService("CoreGui").RobloxGui.Modules
local ContentProvider = game:GetService("ContentProvider")

local Roact = require(Modules.Common.Roact)

local preloadAsync = ContentProvider.PreloadAsync
local decal = Instance.new("Decal")
local decalList = {decal}

local LoadableImage = Roact.PureComponent:extend("LoadableImage")

function LoadableImage:init()
	self.onRef = function(rbx)
		self.rbx = rbx
	end
end

function LoadableImage:render()
	local size = self.props.Size
	local position = self.props.Position
	local borderSizePixel = self.props.BorderSizePixel
	local backgroundColor3 = self.props.BackgroundColor3

	return Roact.createElement("ImageLabel", {
		Position = position,
		BorderSizePixel = borderSizePixel,
		BackgroundColor3 = backgroundColor3,
		Size = size,
		[Roact.Ref] = self.onRef,
	})
end

function LoadableImage:didUpdate(oldProps)
	local image = self.props.Image

	if image == oldProps.Image then
		return
	end

	return self:_loadImage()
end

function LoadableImage:_loadImage()
	local image = self.props.Image
	self.rbx.Image = self.props.loadingImage

	if image == nil or image == "" then
		return
	end

	return spawn(function()
		decal.Texture = image
		preloadAsync(ContentProvider, decalList)
		if self.props.Image == image and self.rbx then
			self.rbx.Image = image
		end
	end)
end

LoadableImage.didMount = LoadableImage._loadImage

return LoadableImage