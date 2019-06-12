local ContentProvider = game:GetService("ContentProvider")

local LoadingRoot = script.Parent
local UIBloxRoot = LoadingRoot.Parent
local Roact = require(UIBloxRoot.Parent.Roact)
local ShimmerPanel = require(script.Parent.ShimmerPanel)
local withStyle = require(UIBloxRoot.Style.withStyle)
local t = require(UIBloxRoot.Parent.t)
local ImageSet = require(UIBloxRoot.ImageSet)

local decal = Instance.new("Decal")
local inf = math.huge
local loadedImagesByUri = {}

local arePropsValid = t.strictInterface({
	-- The anchor point of the final and loading image
	AnchorPoint = t.optional(t.Vector2),
	-- The background color of the final image. Defaults to placeholder background color.
	BackgroundColor3 = t.optional(t.Color3),
	-- The background transparency of the final image. Defaults to placeholder transparency.
	BackgroundTransparency = t.optional(t.number),
	-- The final image
	Image = t.optional(t.string),
	-- The image set data for slicing images correctly
	imageSetData = t.optional(t.table),
	-- The layout order of the final and loading image
	LayoutOrder = t.optional(t.integer),
	-- The loading image which shows if useShimmerAnimationWhileLoading is false
	loadingImage = t.optional(t.string),
	-- The max size of the final and loading image
	MaxSize = t.optional(t.Vector2),
	-- The min size of the final and loading image
	MinSize = t.optional(t.Vector2),
	-- The position point of the loading image
	Position = t.optional(t.UDim2),
	-- The scale type of the final and loading image
	ScaleType = t.optional(t.enum(Enum.ScaleType)),
	-- The size point of the loading image
	Size = t.UDim2,
	-- Whether or not to show a static image or the shimmer animation while loading
	useShimmerAnimationWhileLoading = t.optional(t.boolean),
	-- The ZIndex of the loading and final images
	ZIndex = t.optional(t.integer),
})

local LoadableImage = Roact.PureComponent:extend("LoadableImage")

LoadableImage.defaultProps = {
	BackgroundTransparency = 0,
	imageSetData = {},
	MaxSize = Vector2.new(inf, inf),
	MinSize = Vector2.new(0, 0),
	useShimmerAnimationWhileLoading = false,
}

function LoadableImage:init()
	self.state = {
		loaded = loadedImagesByUri[self.props.Image],
	}
	self._isMounted = false


	self.isLoaded = function(image)
		if image == Roact.None or image == nil then
			return false
		else
			return self.state.loaded
		end
	end
end

function LoadableImage:render()
	assert(arePropsValid(self.props))
	local anchorPoint = self.props.AnchorPoint
	local layoutOrder = self.props.LayoutOrder
	local size = self.props.Size
	local position = self.props.Position
	local backgroundColor3 = self.props.BackgroundColor3
	local backgroundTransparency = self.props.BackgroundTransparency
	local scaleType = self.props.ScaleType
	local zIndex = self.props.ZIndex
	local image = self.props.Image
	local imageSetData = self.props.imageSetData
	local maxSize = self.props.MaxSize
	local minSize = self.props.MinSize
	local loadingImage = self.props.loadingImage
	local useShimmerAnimationWhileLoading = self.props.useShimmerAnimationWhileLoading
	local loaded = self.isLoaded(image)
	local hasUISizeConstraint = false
	if maxSize.X ~= inf or maxSize.Y ~= inf or minSize.X ~= 0 or minSize.Y ~= 0 then
		hasUISizeConstraint = true
	end

	local renderFunction = function(stylePalette)
		local theme = stylePalette.Theme

		local imageProps = {
			AnchorPoint = anchorPoint,
			BackgroundColor3 = backgroundColor3 or theme.PlaceHolder.Color,
			BackgroundTransparency = backgroundTransparency or theme.PlaceHolder.Transparency,
			Image = loaded and image or loadingImage,
			LayoutOrder = layoutOrder,
			Position = position,
			ScaleType = scaleType,
			Size = size,
			ZIndex = zIndex,
		}
		local newProps = ImageSet.transformProps(imageProps, imageSetData)

		if not loaded and useShimmerAnimationWhileLoading then
			return Roact.createElement("Frame", {
				AnchorPoint = anchorPoint,
				BorderSizePixel = 0,
				BackgroundColor3 = theme.PlaceHolder.Color,
				BackgroundTransparency = theme.PlaceHolder.Transparency,
				LayoutOrder = layoutOrder,
				Position = position,
				Size = size,
				ZIndex = zIndex,
			}, {
				Shimmer = Roact.createElement(ShimmerPanel, {
					Size = UDim2.new(1, 0, 1, 0),
				}),
				UISizeConstraint = hasUISizeConstraint and Roact.createElement("UISizeConstraint", {
					MaxSize = maxSize,
					MinSize = minSize,
				}),
			})
		else
			return Roact.createElement("ImageLabel", newProps, {
				UISizeConstraint = hasUISizeConstraint and Roact.createElement("UISizeConstraint", {
					MaxSize = maxSize,
					MinSize = minSize,
				})
			})
		end
	end
	return withStyle(renderFunction)
end

function LoadableImage:shouldLoadImage(image)
	return image ~= nil and not loadedImagesByUri[image]
end

function LoadableImage:didUpdate(oldProps)
	if oldProps.Image ~= self.props.Image then
		self:_loadImage()
	end
end

function LoadableImage:didMount()
	self._isMounted = true

	self:_loadImage()
end

function LoadableImage:willUnmount()
	self._isMounted = false
end

function LoadableImage:_loadImage()
	local image = self.props.Image

	if self:shouldLoadImage(image) then
		if self.state.loaded then
			self:setState({
				loaded = false
			})
		end
	else
		if loadedImagesByUri[image] and not self.state.loaded then
			self:setState({
				loaded = true
			})
		end
		return
	end

	-- Synchronization/Batching work should be done in engine for performance improvements
	-- related ticket: CLIPLAYEREX-1764
	spawn(function()
		decal.Texture = image
		ContentProvider:PreloadAsync({decal})

		loadedImagesByUri[image] = true

		if self._isMounted then
			self:setState({
				loaded = true
			})

			if self.props.onLoaded then
				self.props.onLoaded()
			end
		end
	end)
end

function LoadableImage._mockPreloadDone(image)
	loadedImagesByUri[image] = true
end

function LoadableImage.isLoaded(image)
	if image == Roact.None or image == nil then
		return false
	else
		return loadedImagesByUri[image] ~= nil
	end
end

return LoadableImage
