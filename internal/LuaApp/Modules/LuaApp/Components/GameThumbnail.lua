local Modules = game:GetService("CoreGui").RobloxGui.Modules
local RoactRodux = require(Modules.Common.RoactRodux)

local LoadableImage = require(Modules.LuaApp.Components.LoadableImage)

local GameThumbnail = RoactRodux.connect(function(store, props)
	local state = store:GetState()
	return {
		Image = state.GameThumbnails[tostring(props.placeId)],
	}
end)(LoadableImage)

return GameThumbnail