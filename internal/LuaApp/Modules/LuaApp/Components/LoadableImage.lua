local Modules = game:GetService("CoreGui").RobloxGui.Modules
local ContentProvider = game:GetService("ContentProvider")

local Roact = require(Modules.Common.Roact)
local Immutable = require(Modules.Common.Immutable)

local LoadableImage = Roact.Component:extend("LoadableImage")

local LOADING_STATUS = {
	NOT_LOADED = 1,
	LOADING = 2,
	LOADED = 3,
}

function LoadableImage:init()
	self.state = { loadingStatus = LOADING_STATUS.NOT_LOADED }
end

function LoadableImage:render()
	local imageLabelProps = Immutable.RemoveFromDictionary(self.props, "loadingImage")
	imageLabelProps.Image = self.state.loadingStatus == LOADING_STATUS.LOADED and self.props.Image or self.props.loadingImage
	return Roact.createElement("ImageLabel", imageLabelProps)
end

function LoadableImage:didMount()
	return self:_loadImage()
end

function LoadableImage:didUpdate(oldProps, oldState)
	if oldProps.Image ~= self.props.Image and oldState.loadingStatus ~= LOADING_STATUS.NOT_LOADED then
		return self:setState({ loadingStatus = LOADING_STATUS.NOT_LOADED })
	end
	return self:_loadImage()
end

function LoadableImage:_loadImage()
	local image = self.props.Image
	if image ~= nil and image:len() > 0 and self.state.loadingStatus == LOADING_STATUS.NOT_LOADED then

		self:setState({ loadingStatus = LOADING_STATUS.LOADING })

		return spawn(function()
			local tmpDecal = Instance.new("Decal")
			tmpDecal.Texture = image

			ContentProvider:PreloadAsync({ tmpDecal })
			-- Note: ~99.9 computer years later, properties may have changed!

			tmpDecal:Destroy()

			-- Do a last check to make sure the image hasn't been updated
			if self.props.Image == image then
				return self:setState({ loadingStatus = LOADING_STATUS.LOADED })
			end
		end)
	end
end

return LoadableImage