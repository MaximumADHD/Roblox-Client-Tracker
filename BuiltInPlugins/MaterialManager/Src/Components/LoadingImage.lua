--[[
	Image label that displays a loading animation until the image is ready to use.

	Required Props:
		ContentId Image: Id of the image to load
		ImageLoader ImageLoader: An ImageLoader context item, which is provided via withContext.

	Optional Props:
		All other ImageLabel properties
]]

local Plugin = script.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Roact = require(Plugin.Packages.Roact)
local Dash = Framework.Dash

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local UI = Framework.UI
local LoadingIndicator = UI.LoadingIndicator

local ImageLoader = require(Plugin.Src.Controllers.ImageLoader)

export type Props = {
	BackgroundTransparency: number?,
	Size: UDim2?,
	Image: string?,
	ScaleType: Enum.ScaleType?,
	LayoutOrder: number?,
	AnchorPoint: Vector2?,
	Position: UDim2?,
	ZIndex: number?,
}

type _Props = Props & {
	ImageLoader: any,	
}

local LoadingImage = Roact.PureComponent:extend("LoadingImage")

function LoadingImage:init()
	local props: _Props = self.props
	
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
			props.ImageLoader:loadImage(imageId)
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
	local props: _Props = self.props

	self.isMounted = true
	self.onImageLoaderConnection = props.ImageLoader.ImageLoaded:Connect(self.onImageLoaded)
	self.requestLoadImage(props.Image)
end

function LoadingImage:willUnmount()
	if self.onImageLoaderConnection then
		self.onImageLoaderConnection:Disconnect()
		self.onImageLoaderConnection = nil
	end

	self.isMounted = false
end

function LoadingImage:didUpdate(prevProps, prevState)
	local props: _Props = self.props

	if prevProps.Image ~= props.Image then
		self.requestLoadImage(props.Image)
	end
end

function LoadingImage:render()
	local props: _Props = self.props
	local loaded = self.state.currentImageLoaded

	local imageProps = loaded and Dash.join(props, {
		-- As we wrap the image in a container, disable all position/size related props
		-- But pass through the image-related props (e.g. ScaleType, ImageColor3 etc.)
		Size = UDim2.new(1, 0, 1, 0),
		LayoutOrder = Dash.None,
		AnchorPoint = Dash.None,
		Position = Dash.None,
		ZIndex = Dash.None,

		-- Don't pass our context items on either
		ImageLoader = Dash.None,
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

		LoadingSpinner = not loaded and Roact.createElement(LoadingIndicator, {
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.new(0.5, 0, 0.5, 0),
			Size = UDim2.fromScale(0.5, 0.5),
		}),
	})
end


LoadingImage = withContext({
	ImageLoader = ImageLoader,
})(LoadingImage)

return LoadingImage
