local Modules = game:GetService("CoreGui").RobloxGui.Modules
local Roact = require(Modules.Common.Roact)
local RoactRodux = require(Modules.Common.RoactRodux)

local LoadableImage = require(Modules.LuaApp.Components.LoadableImage)

local GameThumbnail = Roact.PureComponent:extend("GameThumbnail")

function GameThumbnail:render()
	local images = self.props.images
	local placeId = self.props.placeId
	local loadingImage = self.props.loadingImage

	local size = self.props.Size
	local position = self.props.Position
	local borderSizePixel = self.props.BorderSizePixel
	local backgroundColor3 = self.props.BackgroundColor3

	return Roact.createElement(LoadableImage, {
		Image = images[tostring(placeId)],
		Size = size,
		Position = position,
		BorderSizePixel = borderSizePixel,
		BackgroundColor3 = backgroundColor3,
		loadingImage = loadingImage,
	})
end

return RoactRodux.connect(function(store)
	local state = store:GetState()
	return {
		images = state.GameThumbnails,
	}
end)(GameThumbnail)