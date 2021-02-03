--[[
	Image label that displays a loading animation until the image is ready to use.

	Required Props:
		ContentId Image: Id of the image to load
		ImageLoader ImageLoader: An ImageLoader context item, which is provided via mapToProps.

	Optional Props:
		All other ImageLabel properties
]]

local Plugin = script.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Roact = require(Plugin.Packages.Roact)
local Cryo = require(Plugin.Packages.Cryo)

local ContextServices = Framework.ContextServices
local ContextItems = require(Plugin.Src.ContextItems)

local Spinner = require(Plugin.Src.Components.Spinner)

local LoadingImage = Roact.PureComponent:extend("LoadingImage")

function LoadingImage:init()
	self.state = {
		currentImageLoaded = false,
	}

	self.mostRecentRequestedImage = nil
	self.requestLoadImage = function(imageId)
		if imageId == self.mostRecentRequestedImage then
			return
		end

		self:setState({
			currentImageLoaded = false,
		})

		self.mostRecentRequestedImage = imageId
		if imageId ~= nil and imageId ~= "" then
			self.props.ImageLoader:loadImage(imageId)
		end
	end

	self.onImageLoaded = function(imageId)
		if not self.isMounted then
			return
		end
		if imageId == self.mostRecentRequestedImage then
			self:setState({
				currentImageLoaded = true,
			})
		end
	end
end

function LoadingImage:didMount()
	self.isMounted = true

	self.onImageLoaderConnection = self.props.ImageLoader.ImageLoaded:Connect(self.onImageLoaded)
	self.requestLoadImage(self.props.Image)
end

function LoadingImage:willUnmount()
	if self.onImageLoaderConnection then
		self.onImageLoaderConnection:Disconnect()
		self.onImageLoaderConnection = nil
	end

	self.isMounted = false
end

function LoadingImage:didUpdate(prevProps, prevState)
	if prevProps.Image ~= self.props.Image then
		self.requestLoadImage(self.props.Image)
	end
end

function LoadingImage:render()
	local props = self.props
	local loaded = self.state.currentImageLoaded

	local imageProps = loaded and Cryo.Dictionary.join(props, {
		-- As we wrap the image in a container, disable all position/size related props
		-- But pass through the image-related props (e.g. ScaleType, ImageColor3 etc.)
		Size = UDim2.new(1, 0, 1, 0),
		LayoutOrder = Cryo.None,
		AnchorPoint = Cryo.None,
		Position = Cryo.None,
		ZIndex = Cryo.None,

		-- Don't pass our context items on either
		ImageLoader = Cryo.None,
	}) or {}

	return Roact.createElement("Frame", {
		LayoutOrder = props.LayoutOrder,
		AnchorPoint = props.AnchorPoint,
		Position = props.Position,
		Size = props.Size,
		ZIndex = props.ZIndex,

		BackgroundTransparency = 1,
	}, {
		Image = loaded and Roact.createElement("ImageLabel", imageProps),

		LoadingSpinner = not loaded and Roact.createElement(Spinner, {
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.new(0.5, 0, 0.5, 0),
		}),
	})
end

ContextServices.mapToProps(LoadingImage, {
	ImageLoader = ContextItems.ImageLoader,
})

return LoadingImage
