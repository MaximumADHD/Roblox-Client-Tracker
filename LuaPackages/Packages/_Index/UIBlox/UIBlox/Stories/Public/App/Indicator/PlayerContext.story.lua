local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Packages = ReplicatedStorage.Packages

local Roact = require(Packages.Roact)
local UIBlox = require(Packages.UIBlox)

local PlayerContext = UIBlox.App.Indicator.PlayerContext
local Images = UIBlox.App.ImageSet.Images

local PlayerContextStory = Roact.PureComponent:extend("PlayerContextStory")

function PlayerContextStory:render()
	return Roact.createElement("Frame", {
		BackgroundTransparency = 1,
		Size = UDim2.new(0, 150, 0, 150),
	}, {
		PlayerContext = Roact.createElement(PlayerContext, {
			text = "hello there!",
			onActivated = function() end,
			icon = Images["component_assets/vignette_246"],
		}),
	})
end

return PlayerContext
