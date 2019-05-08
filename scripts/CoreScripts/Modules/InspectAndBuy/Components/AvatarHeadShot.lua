local CorePackages = game:GetService("CorePackages")
local InspectAndBuyFolder = script.Parent.Parent
local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local Colors = require(InspectAndBuyFolder.Colors)

local AvatarHeadShot = Roact.PureComponent:extend("AvatarHeadShot")

local HEAD_SHOT_URL = "https://www.roblox.com/headshot-thumbnail/image?userId=%s&width=48&height=48&format=png"

function AvatarHeadShot:render()
	local playerId = self.props.playerId

	return Roact.createElement("ImageLabel", {
		Size = UDim2.new(0, 48, 0, 48),
		BackgroundColor3 = Colors.GrayBackground,
		BorderSizePixel = 0,
		Image = HEAD_SHOT_URL:format(playerId),
		LayoutOrder = 1,
	}, {
		MaskFrame = Roact.createElement("ImageLabel", {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			Image = "rbxasset://textures/ui/LuaApp/graphic/gr-avatar mask-90x90.png",
			ImageColor3 = Colors.Carbon,
		}),
	})
end

return RoactRodux.UNSTABLE_connect2(
	function(state, props)
		return {
			playerId = state.playerId,
		}
	end
)(AvatarHeadShot)