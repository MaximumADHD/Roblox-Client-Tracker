--!nonstrict
local RbxAnalyticsService
-- Wrapped in pcall because RbxAnalyticsService is not available at some security levels,
-- UIBlox scripts may be run at those lower levels (e.g. storybooks)
pcall(function()
	RbxAnalyticsService = game:GetService("RbxAnalyticsService")
end)

local Loading = script.Parent
local App = Loading.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent
local Core = UIBlox.Core

local Roact = require(Packages.Roact)
local t = require(Packages.t)
local Cryo = require(Packages.Cryo)

local ShimmerPanel = require(Loading.ShimmerPanel)
local DebugProps = require(Loading.Enum.DebugProps)
local LoadingStrategy = require(Loading.Enum.LoadingStrategy)
local withStyle = require(UIBlox.Core.Style.withStyle)

local Images = require(UIBlox.App.ImageSet.Images)
local ImageSetComponent = require(UIBlox.Core.ImageSet.ImageSetComponent)
local validateImageSetData = require(Core.ImageSet.Validator.validateImageSetData)

local ContentProviderContext = require(UIBlox.App.Context.ContentProvider)

local LOAD_FAILED_RETRY_COUNT = 3
local LOAD_TIMED_OUT_RETRY_COUNT = 5
local RETRY_TIME_MULTIPLIER = 1.5

local inf = math.huge

local LoadableImage = Roact.PureComponent:extend("LoadableImage")

LoadableImage.validateProps = t.strictInterface({
	-- The anchor point of the final and loading image
	AnchorPoint = t.optional(t.Vector2),
	-- The background color of the final image. Defaults to placeholder background color
	BackgroundColor3 = t.optional(t.Color3),
	-- The background transparency of the final image. Defaults to placeholder transparency
	BackgroundTransparency = t.optional(t.number),
	-- The corner radius of the image, shimmer, and failed image's rounded corners
	cornerRadius = t.optional(t.UDim),
	-- The final image.
	-- It could be a string referring to an image URI, or it could be an ImageSet.
	Image = t.optional(t.union(t.string, validateImageSetData)),
	-- Coloration for final image when loaded
	ImageColor3 = t.optional(t.Color3),
	-- The transparency of the final and loading image
	ImageTransparency = t.optional(t.number),
	-- The image rect offset of the final and loading image
	ImageRectOffset = t.optional(t.union(t.Vector2, t.table)),
	-- The image rect size of the final and loading image
	ImageRectSize = t.optional(t.union(t.Vector2, t.table)),
	-- The layout order of the final and loading image
	LayoutOrder = t.optional(t.integer),
	-- The loading image which shows if useShimmerAnimationWhileLoading is false
	loadingImage = t.optional(t.union(t.string, t.table)),
	-- The timing when image starts loading (Eager = on component mount, Default = leave up to game engine to decide)
	loadingStrategy = t.optional(LoadingStrategy.isEnumValue),
	-- The maximum time in seconds to wait for the image to load by game engine before it fails
	loadingTimeout = t.optional(t.numberPositive),
	-- A render function to run while loading (overrides useShimmerAnimationWhileLoading and loadingImage)
	renderOnLoading = t.optional(t.callback),
	-- A render function to run when loading fails
	renderOnFailed = t.optional(t.callback),
	-- The max size of all images shown
	MaxSize = t.optional(t.Vector2),
	-- The min size of all images shown
	MinSize = t.optional(t.Vector2),
	-- A function to call when loading is complete
	onLoaded = t.optional(t.callback),
	-- The position point of the loading image
	Position = t.optional(t.UDim2),
	-- Scale type of the final and loading image
	ScaleType = t.optional(t.enum(Enum.ScaleType)),
	-- The size of the image
	Size = t.UDim2,
	-- TileSize used for ScaleType.Tile
	TileSize = t.optional(t.UDim2),
	-- Whether or not to show a static image or the shimmer animation while loading
	useShimmerAnimationWhileLoading = t.optional(t.boolean),
	-- Whether to show failed state when failed
	showFailedStateWhenLoadingFailed = t.optional(t.boolean),
	-- The ZIndex of the loading and final images
	ZIndex = t.optional(t.integer),
	-- Do we expect this image to be updated while being displayed (e.g. it's a thumbnail of local avatar
	-- and he changes clothes)
	shouldHandleReloads = t.optional(t.boolean),

	contentProvider = t.union(t.instanceOf("ContentProvider"), t.table),

	[DebugProps.forceLoading] = t.optional(t.boolean),
	[DebugProps.forceFailed] = t.optional(t.boolean),
})

LoadableImage.defaultProps = {
	BackgroundTransparency = 0,
	cornerRadius = UDim.new(0, 0),
	MaxSize = Vector2.new(inf, inf),
	MinSize = Vector2.new(0, 0),
	useShimmerAnimationWhileLoading = false,
	showFailedStateWhenLoadingFailed = false,
	loadingStrategy = LoadingStrategy.Default,
	loadingTimeout = 30,
	shouldHandleReloads = false,
}

function LoadableImage:init()
	self.currentImageLoadIndex = 0
	self:setState({
		eagerRetrying = false,
	})

	self.imageRef = Roact.createRef()
	self._isMounted = false
end

function LoadableImage:renderShimmer(theme, sizeConstraint)
	return Roact.createElement("Frame", {
		AnchorPoint = self.props.AnchorPoint,
		BorderSizePixel = 0,
		BackgroundColor3 = theme.PlaceHolder.Color,
		BackgroundTransparency = theme.PlaceHolder.Transparency,
		LayoutOrder = self.props.LayoutOrder,
		Position = self.props.Position,
		Size = self.props.Size,
		ZIndex = self.props.ZIndex,
	}, {
		Shimmer = Roact.createElement(ShimmerPanel, {
			Size = UDim2.new(1, 0, 1, 0),
			cornerRadius = self.props.cornerRadius,
		}),
		UISizeConstraint = sizeConstraint,
		UICorner = Roact.createElement("UICorner", {
			CornerRadius = self.props.cornerRadius,
		}) or nil,
	})
end

function LoadableImage:defaultRenderOnFail(theme, sizeConstraint)
	local cornerRadius = self.props.cornerRadius

	local failedImage = Images["icons/status/imageunavailable"]
	local failedImageSize = failedImage.ImageRectSize / Images.ImagesResolutionScale

	return Roact.createElement("Frame", {
		AnchorPoint = self.props.AnchorPoint,
		BorderSizePixel = 0,
		BackgroundColor3 = theme.PlaceHolder.Color,
		BackgroundTransparency = theme.PlaceHolder.Transparency,
		LayoutOrder = self.props.LayoutOrder,
		Position = self.props.Position,
		Size = self.props.Size,
		ZIndex = self.props.ZIndex,
	}, {
		EmptyIcon = Roact.createElement(ImageSetComponent.Label, {
			BackgroundTransparency = 1,
			AnchorPoint = Vector2.new(0.5, 0.5),
			Image = failedImage,
			ImageColor3 = theme.UIDefault.Color,
			ImageTransparency = theme.UIDefault.Transparency,
			Position = UDim2.new(0.5, 0, 0.5, 0),
			Size = UDim2.new(0, failedImageSize.X, 0, failedImageSize.Y),
		}, {
			UICorner = cornerRadius ~= UDim.new(0, 0) and Roact.createElement("UICorner", {
				CornerRadius = cornerRadius,
			}) or nil,
		}),
		UISizeConstraint = sizeConstraint,
		UICorner = cornerRadius ~= UDim.new(0, 0) and Roact.createElement("UICorner", {
			CornerRadius = cornerRadius,
		}) or nil,
	})
end

function LoadableImage:isImageNonNil()
	return self.props.Image ~= Roact.None and self.props.Image ~= nil
end

function LoadableImage:getCurrentImageAssetFetchStatus(state)
	local key = self:getAssetFetchStatusStateKey(self.currentImageLoadIndex)
	local assetFetchStatus = state[key]
	if assetFetchStatus == nil then
		assetFetchStatus = Enum.AssetFetchStatus.None
	end

	return assetFetchStatus
end

function LoadableImage:isLoadingComplete(state)
	local assetFetchStatus = self:getCurrentImageAssetFetchStatus(state)
	if assetFetchStatus == Enum.AssetFetchStatus.None or assetFetchStatus == Enum.AssetFetchStatus.Loading then
		return false
	end
	if assetFetchStatus == Enum.AssetFetchStatus.Failure or assetFetchStatus == Enum.AssetFetchStatus.TimedOut then
		if state.eagerRetrying then
			return false
		end
	end
	return true
end

function LoadableImage:render()
	local anchorPoint = self.props.AnchorPoint
	local layoutOrder = self.props.LayoutOrder
	local size = self.props.Size
	local position = self.props.Position
	local backgroundColor3 = self.props.BackgroundColor3
	local backgroundTransparency = self.props.BackgroundTransparency
	local cornerRadius = self.props.cornerRadius
	local scaleType = self.props.ScaleType
	local zIndex = self.props.ZIndex
	local imageUriOrImageSet = self.props.Image
	local imageTransparency = self.props.ImageTransparency
	local imageRectOffset = self.props.ImageRectOffset
	local imageRectSize = self.props.ImageRectSize
	local imageColor3 = self.props.ImageColor3
	local maxSize = self.props.MaxSize
	local minSize = self.props.MinSize
	local renderOnLoading = self.props.renderOnLoading
	local renderOnFailed = self.props.renderOnFailed
	local loadingImage = self.props.loadingImage
	local loadingStrategy = self.props.loadingStrategy
	local useShimmerAnimationWhileLoading = self.props.useShimmerAnimationWhileLoading
	local showFailedStateWhenLoadingFailed = self.props.showFailedStateWhenLoadingFailed
	local loadingComplete = self:isImageNonNil() and self:isLoadingComplete(self.state)

	local assetFetchStatus = self:getCurrentImageAssetFetchStatus(self.state)
	local loadingStarted = assetFetchStatus ~= Enum.AssetFetchStatus.None
	local loadingFailed = assetFetchStatus == Enum.AssetFetchStatus.Failure

	local hasUISizeConstraint = false

	if self.props[DebugProps.forceLoading] then
		loadingComplete = false
	end
	if self.props[DebugProps.forceFailed] then
		loadingFailed = true
	end

	if maxSize.X ~= inf or maxSize.Y ~= inf or minSize.X ~= 0 or minSize.Y ~= 0 then
		hasUISizeConstraint = true
	end

	local sizeConstraint = hasUISizeConstraint
		and Roact.createElement("UISizeConstraint", {
			MaxSize = maxSize,
			MinSize = minSize,
		})

	return withStyle(function(stylePalette)
		local theme = stylePalette.Theme

		if loadingFailed and renderOnFailed then
			return renderOnFailed()
		elseif loadingFailed and showFailedStateWhenLoadingFailed then
			return self:defaultRenderOnFail(theme, sizeConstraint)
		elseif not loadingComplete and renderOnLoading and loadingStrategy ~= LoadingStrategy.Default then
			return renderOnLoading()
		elseif
			not loadingComplete
			and useShimmerAnimationWhileLoading
			and loadingStrategy ~= LoadingStrategy.Default
		then
			return self:renderShimmer(theme, sizeConstraint)
		else
			-- Default strategy requires the Image property to be populated in order for the engine to fetch it
			local shouldDisplayImage = loadingComplete or loadingStrategy == LoadingStrategy.Default

			local onLoading
			if not loadingComplete and renderOnLoading and loadingStrategy == LoadingStrategy.Default then
				onLoading = renderOnLoading()
			end

			local shimmer
			if
				not loadingComplete
				and useShimmerAnimationWhileLoading
				and loadingStrategy == LoadingStrategy.Default
				and loadingStarted
			then
				shimmer = self:renderShimmer(theme, sizeConstraint)
			end

			return Roact.createElement(ImageSetComponent.Label, {
				AnchorPoint = anchorPoint,
				BackgroundColor3 = backgroundColor3 or theme.PlaceHolder.Color,
				BackgroundTransparency = backgroundTransparency or theme.PlaceHolder.Transparency,
				BorderSizePixel = 0,
				Image = shouldDisplayImage and imageUriOrImageSet or loadingImage,
				ImageTransparency = imageTransparency,
				ImageRectOffset = imageRectOffset,
				ImageRectSize = imageRectSize,
				ImageColor3 = shouldDisplayImage and imageColor3 or nil,
				LayoutOrder = layoutOrder,
				Position = position,
				ScaleType = scaleType,
				TileSize = self.props.TileSize,
				Size = size,
				ZIndex = zIndex,
				[Roact.Ref] = self.imageRef,
			}, {
				UISizeConstraint = sizeConstraint,
				UICorner = cornerRadius ~= UDim.new(0, 0) and Roact.createElement("UICorner", {
					CornerRadius = cornerRadius,
				}) or nil,
				OnLoading = onLoading,
				Shimmer = shimmer,
			})
		end
	end)
end

function LoadableImage:maybeCallOnLoaded(oldState)
	if self.props.onLoaded then
		local wasLoaded = self:isLoadingComplete(oldState)
		local isLoaded = self:isLoadingComplete(self.state)
		if not wasLoaded and isLoaded then
			self.props.onLoaded()
		end
	end
end

function LoadableImage:didUpdate(oldProps, oldState)
	if oldProps.Image ~= self.props.Image then
		self:loadImage()
	end
	self:maybeCallOnLoaded(oldState)
end

function LoadableImage:didMount()
	self._isMounted = true

	-- Load image will setState with the latest assetFetchStats -> trigger didUpdate -> call to maybeCallOnLoaded.
	-- We don't need to call maybeCallOnLoaded here.
	self:loadImage()
end

function LoadableImage:willUnmount()
	self._isMounted = false
	self:dropConnections()
end

function LoadableImage:isTerminalStatus(assetFetchStatus)
	return assetFetchStatus == Enum.AssetFetchStatus.Success
		or assetFetchStatus == Enum.AssetFetchStatus.Failure
		or assetFetchStatus == Enum.AssetFetchStatus.TimedOut
end

--[[
	Image could be nil, a normal uri, or an image set (or nil)
	If an image set, convert that to an image uri.
]]
function LoadableImage:getImageUri()
	if self.props.Image then
		if typeof(self.props.Image) == "string" then
			return self.props.Image
		else
			return self.props.Image.Image
		end
	else
		return nil
	end
end

-- We are not doing any preload async stuff.
-- We want to just wait until the image is out of "loading" state, then note what happened and proceed.
function LoadableImage:awaitImageLoaded(thisImageLoadIndex, currentStatus)
	-- If already done, nothing to do here.
	if self:isTerminalStatus(currentStatus) then
		return
	end

	-- self.props.Image could be raw image uri or an image set.
	-- The thing we want to wait for is the actual image inside the image set.
	local imageUri = self:getImageUri()

	-- Listen for updates until we hit a terminal status, then cancel the listening.
	local callback = function(newAssetFetchStatus)
		self:updateAssetFetchStatusForImageLoadIndex(newAssetFetchStatus, thisImageLoadIndex, imageUri)
		self:maybeReportCounter("Await", newAssetFetchStatus)
		if self:isTerminalStatus(newAssetFetchStatus) and self.awaitImageLoadedConnection then
			self.awaitImageLoadedConnection:Disconnect()
			self.awaitImageLoadedConnection = nil
		end
	end

	if imageUri == "" then
		callback(Enum.AssetFetchStatus.Success)
		return
	end

	local signal = self.props.contentProvider:GetAssetFetchStatusChangedSignal(imageUri)
	self.awaitImageLoadedConnection = signal:Connect(callback)
end

function LoadableImage:maybeReportCounter(prefix, assetFetchStatus)
	-- See note above: pcall because RbxAnalyticsService may not be available
	-- in call contexts where UIBlox are used.
	pcall(function()
		local counterName = "UIBlox_LoadableImage_" .. prefix .. "_" .. tostring(assetFetchStatus)
		RbxAnalyticsService:ReportCounter(counterName)
	end)
end

--[[
	We are using "eager" policy.
	Try PreloadAsync until it succeeds or we hit retry limit.
	Note we have different retry limit for "failed" vs "timed out" (we try more for timed out because it is possible
	we're just taking a while for server to generate the image)
]]
function LoadableImage:preloadImageWithRetryLogic(thisImageId)
	local originalImageUri = self:getImageUri()
	local retryCount = 0

	local latestStatus = Enum.AssetFetchStatus.None
	while true do
		if not self._isMounted then
			return
		end

		-- Every time we retry, wait a little longer.
		if retryCount > 0 then
			task.wait(RETRY_TIME_MULTIPLIER * math.pow(2, retryCount - 1))
		end

		self.props.contentProvider:PreloadAsync({ originalImageUri }, function(_, assetFetchStatus)
			-- We may have died in the meantime.
			-- Also may have been configured with a different image.
			local currentImageUri = self:getImageUri()
			if self._isMounted and currentImageUri == originalImageUri then
				self:maybeReportCounter("PreloadAsync", assetFetchStatus)
				latestStatus = assetFetchStatus
				self:updateAssetFetchStatusForImageLoadIndex(assetFetchStatus, thisImageId, originalImageUri)
			end
		end)

		local currentImageUri = self:getImageUri()
		-- PreloadAsync is async, we might have died in the meantime.  Or changed image.
		if not (self._isMounted and currentImageUri == originalImageUri) then
			return
		end

		if latestStatus == Enum.AssetFetchStatus.Success then
			break
		end

		-- FIXME(dbanks)
		-- 2023/08/28
		-- This whole business of retrying in case of failure or timeout is actually useless.
		-- See BatchThumbnailFetcher::markFailedRequest and/or BatchThumbnailFetcher::markSuccessRequest.
		-- If BTF tries n times and finally times out, the result is written into BTF's cache -> all
		-- subsequent retries will hit the cache and get the same result.
		-- Hopefully soon we may fix this so that retrying here would be meaningful.
		-- If we don't/can't change this about BTF then we should remove this retry logic, it's just
		-- dead/confusing code.
		retryCount = retryCount + 1
		if latestStatus == Enum.AssetFetchStatus.Failure and retryCount > LOAD_FAILED_RETRY_COUNT then
			break
		elseif latestStatus == Enum.AssetFetchStatus.TimedOut and retryCount > LOAD_TIMED_OUT_RETRY_COUNT then
			break
		end

		self:setState({
			eagerRetrying = true,
		})
	end

	self:setState({
		eagerRetrying = false,
	})
end

function LoadableImage:getAssetFetchStatusStateKey(imageLoadIndex)
	return "assetFetchStatus_" .. tostring(imageLoadIndex)
end

function LoadableImage:updateAssetFetchStatusForImageLoadIndex(status, imageLoadIndex, imageUri)
	local key = self:getAssetFetchStatusStateKey(imageLoadIndex)
	self:setState({
		[key] = status,
	})
end

function LoadableImage:dropConnections()
	if self.listenForReloadsConnection then
		self.listenForReloadsConnection:Disconnect()
		self.listenForReloadsConnection = nil
	end
	if self.awaitImageLoadedConnection then
		self.awaitImageLoadedConnection:Disconnect()
		self.awaitImageLoadedConnection = nil
	end
end

function LoadableImage:loadImage()
	-- We are now dealing with a new image load.  Increment the index.
	local thisImageLoadIndex = self.currentImageLoadIndex + 1
	self.currentImageLoadIndex = thisImageLoadIndex

	local originalImageUri = self:getImageUri()
	local loadingStrategy = self.props.loadingStrategy

	-- Remove any connections we might have where we're listening for changes in this guy's
	-- asset fetch stats.
	self:dropConnections()

	-- If image is junk, easy out.
	if originalImageUri == nil then
		self:updateAssetFetchStatusForImageLoadIndex(
			Enum.AssetFetchStatus.Success,
			thisImageLoadIndex,
			originalImageUri
		)
		self:setState({
			eagerRetrying = false,
		})
		return
	end

	local initialStatus = self.props.contentProvider:GetAssetFetchStatus(originalImageUri)
	self:maybeReportCounter("InitialStatus", initialStatus)
	self:updateAssetFetchStatusForImageLoadIndex(initialStatus, thisImageLoadIndex, originalImageUri)

	-- If we expect this thing might change after being loaded, listen for changes in the status.
	if self.props.shouldHandleReloads then
		local callback = function(newStatus, _)
			self:maybeReportCounter("Reloads", newStatus)
			self:updateAssetFetchStatusForImageLoadIndex(newStatus, thisImageLoadIndex, originalImageUri)
		end
		local signal = self.props.contentProvider:GetAssetFetchStatusChangedSignal(originalImageUri)
		self.listenForReloadsConnection = signal:Connect(callback)
	end

	if loadingStrategy == LoadingStrategy.Eager then
		task.spawn(function()
			self:preloadImageWithRetryLogic(thisImageLoadIndex)
		end)
	elseif loadingStrategy == LoadingStrategy.Default then
		self:awaitImageLoaded(thisImageLoadIndex, initialStatus)
	end
end

return function(props)
	return Roact.createElement(ContentProviderContext.Consumer, {
		render = function(contentProvider)
			local propsWithContentProvider = Cryo.Dictionary.join(props, {
				contentProvider = contentProvider,
			})
			return Roact.createElement(LoadableImage, propsWithContentProvider)
		end,
	})
end
