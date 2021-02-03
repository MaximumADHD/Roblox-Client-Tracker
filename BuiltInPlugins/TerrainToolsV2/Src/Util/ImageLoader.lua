--[[
	Context item for loading images in the background.

	Usage:
		1. Connect an "on loaded" handler:
			local connection = self.props.ImageLoader.ImageLoaded:Connect(function(imageId)
				print(imageId, "loaded!")
			end)
		2. Request an image to load:
			local alreadyLoaded = self.props.ImageLoader:loadImage("rbxasset://12345")
		3. If you'd like to query image state:
			local imageWasLoadedBefore = self.props.ImageLoader:hasImageLoaded("rbxasset://67890")
			-- Note that this only checks if the image was loaded by *this* ImageLoader instance and exists in its own cache
		4. Disconnect your connection when no longer interested:
			connection:Disconnect()

	Internal implementation:
		- ImageLabels have an "IsLoaded" property that's set to true once the underlying texture is ready to render
		- It doesn't fire a changed event, so we have to poll for its state
		- It also requires the ImageLabel to be in a renderable state, i.e. a child of some rendered LayerCollector
		- ImageLoader creates a host ScreenGui target and manages a pool of ImageLabels
		- On requesting an image, an ImageLabel is taken from the pool (or a new one is created), and moved to a loading list
		- When the polling loop sees IsLoaded was set to true, it fires the loaded event then moves the image back to the pool
]]

local Plugin = script.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Roact = require(Plugin.Packages.Roact)

local ContextItem = Framework.ContextServices.ContextItem
local Provider = Framework.ContextServices.Provider

local FrameworkUtil = Framework.Util
local Signal = FrameworkUtil.Signal

local function createHelperImageLabel(parent)
	local imageLabel = Instance.new("ImageLabel")
	imageLabel.Size = UDim2.new(0, 0, 0, 0)
	imageLabel.BackgroundTransparency = 1
	imageLabel.Parent = parent
	return imageLabel
end

local ImageLoader = ContextItem:extend("ImageLoader")

--[[
	table options:
		function? createImageLabel: for tests to mock ImageLabel
		bool? dontPoll: for tests to override the polling loop (manually call :_checkImages())
]]
function ImageLoader.new(options)
	local self = setmetatable({
		ImageLoaded = Signal.new(),

		_loadedImagesCache = {},

		_imageLabelPool = {},
		_loadingImageLabels = {},
		_loadingImageIds = {},

		_alive = true,

		_createImageLabel = (options and options.createImageLabel) or createHelperImageLabel,
	}, ImageLoader)

	self._hostGui = Instance.new("ScreenGui")
	self._hostGui.Name = "ImageLoader"
	self._hostGui.Enabled = true
	self._hostGui.Parent = game:GetService("CoreGui")

	if not options or not options._dontPoll then
		spawn(function()
			self:_pollImageLoop()
		end)
	end

	return self
end

function ImageLoader:createProvider(root)
	return Roact.createElement(Provider, {
		ContextItem = self,
	}, {root})
end

function ImageLoader:loadImage(imageId)
	if imageId == nil or imageId == "" then
		return false
	end

	if self._loadedImagesCache[imageId] then
		self.ImageLoaded:Fire(imageId)
		return true
	end

	-- Something's already requested this specific id to load
	-- Don't need to create a second ImageLabel for it
	if self._loadingImageIds[imageId] then
		return false
	end

	local imageLabel
	if #self._imageLabelPool > 0 then
		imageLabel = table.remove(self._imageLabelPool)
	else
		imageLabel = self._createImageLabel(self._hostGui)
	end

	imageLabel.Image = imageId
	self._loadingImageIds[imageId] = true
	table.insert(self._loadingImageLabels, imageLabel)
	return false
end

function ImageLoader:hasImageLoaded(imageId)
	return self._loadedImagesCache[imageId] or false
end

function ImageLoader:destroy()
	self._alive = false

	for _, imageLabel in ipairs(self._imageLabelPool) do
		imageLabel:Destroy()
	end
	self._imageLabelPool = nil

	for _, imageLabel in ipairs(self._loadingImageLabels) do
		imageLabel:Destroy()
	end
	self._loadingImageLabels = nil

	self._hostGui:Destroy()
	self._hostGui = nil
end

function ImageLoader:_pollImageLoop()
	while self._alive do
		self:_checkImages()
		wait(0.1)
	end
end

function ImageLoader:_checkImages()
	local i = 1
	while i <= #self._loadingImageLabels do
		local imageLabel = self._loadingImageLabels[i]
		if imageLabel.IsLoaded then
			local loadedImageId = imageLabel.Image
			self._loadedImagesCache[loadedImageId] = true
			self.ImageLoaded:Fire(loadedImageId)

			imageLabel.Image = ""
			self._loadingImageIds[loadedImageId] = nil
			table.remove(self._loadingImageLabels, i)
			table.insert(self._imageLabelPool, imageLabel)
		else
			i = i + 1
		end
	end
end

return ImageLoader
