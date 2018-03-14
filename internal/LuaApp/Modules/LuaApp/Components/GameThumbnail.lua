-- A wrapper component to fetch thumbnail from store directly

local Modules = game:GetService("CoreGui").RobloxGui.Modules
local Roact = require(Modules.Common.Roact)
local RoactRodux = require(Modules.Common.RoactRodux)

local LoadableImage = require(Modules.LuaApp.Components.LoadableImage)

local GameThumbnail = Roact.Component:extend("GameThumbnail")

function GameThumbnail:render()
	local placeId = self.props.placeId
	local size = self.props.Size
	local position = self.props.Position
	local borderSizePixel = self.props.BorderSizePixel
	local backgroundColor3 = self.props.BackgroundColor3
	local loadingImage = self.props.loadingImage
	local gameThumbnails = self.props.gameThumbnails

	return Roact.createElement(LoadableImage, {
		Size = size,
		Position = position,
		Image = gameThumbnails[tostring(placeId)],
		BorderSizePixel = borderSizePixel,
		BackgroundColor3 = backgroundColor3,
		loadingImage = loadingImage,
	})
end

GameThumbnail = RoactRodux.connect(function(store, props)
	local state = store:GetState()
	return {
		gameThumbnails = state.GameThumbnails,
	}
end)(GameThumbnail)

return GameThumbnail