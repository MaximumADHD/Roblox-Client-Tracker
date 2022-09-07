local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)

local UIBlox = require(CorePackages.UIBlox)
local ImageSetLabel = UIBlox.Core.ImageSet.Label
local UIBloxIconSize = UIBlox.App.Constant.IconSize
local Images = UIBlox.App.ImageSet.Images

local PresenceType = {
	Offline = "OFFLINE",
	Online = "ONLINE",
	InGame = "IN_GAME",
	InStudio = "IN_STUDIO",
}

local IconFormat: {
	[string]: {
		Image: string,
		Color: Color3?,
		Size: UDim2?
	}
} = {
	[PresenceType.Online] = {
		Image = "component_assets/circle_16",
		Color = Color3.fromRGB(0, 180, 109),
		Size = UDim2.new(0, 12, 0, 12),
	},
	[PresenceType.InGame] = {
		Image = "icons/menu/games_small",
	},
	[PresenceType.InStudio] = {
		Image = "icons/logo/studiologo_small",
	},
}

local function GetIcon(presence: string)
	local format = IconFormat[presence]
	if not format then return end
	return React.createElement(ImageSetLabel, {
		Image = Images[format.Image],
		BackgroundTransparency = 1,
		ImageColor3 = format.Color,
		Size = format.Size or UDim2.new(0, UIBloxIconSize.Small, 0, UIBloxIconSize.Small),
	})
end

return {
	PresenceType = PresenceType,
	GetIcon = GetIcon
}
