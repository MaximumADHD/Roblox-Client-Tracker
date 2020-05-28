local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")

local InspectAndBuyFolder = script.Parent.Parent
local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local Colors = require(InspectAndBuyFolder.Colors)

local AvatarHeadShot = Roact.PureComponent:extend("AvatarHeadShot")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local CoreGuiModules = RobloxGui:WaitForChild("Modules")

local LegacyThumbnailUrls = require(CoreGuiModules.Common.LegacyThumbnailUrls)

local HEADSHOT_THUMBNAIL_SIZE = 48
local HEAD_SHOT_URL = LegacyThumbnailUrls.Headshot

function AvatarHeadShot:render()
	local playerId = self.props.playerId

	local headshotUrl = HEAD_SHOT_URL:format(HEADSHOT_THUMBNAIL_SIZE, HEADSHOT_THUMBNAIL_SIZE, playerId)

	return Roact.createElement("ImageLabel", {
		Size = UDim2.new(0, 48, 0, 48),
		BackgroundColor3 = Colors.GrayBackground,
		BorderSizePixel = 0,
		Image = headshotUrl,
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