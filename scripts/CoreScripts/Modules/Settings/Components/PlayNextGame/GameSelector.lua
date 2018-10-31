--[[
		A Roact play next game selector.
		Props:
			position : UDim2 - Position of the button.
			anchorPoint : UDim2 - The anchor point of the button.
			imageTransparency : number - The transparency of the image.
]]
local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Roact)
local Settings = script.Parent.Parent.Parent
local Constants = require(Settings.Pages.LeaveGameScreen.Constants)

local GameSelector = Roact.PureComponent:extend("GameSelector")

function GameSelector:render()
	return Roact.createElement("ImageLabel", {
		Size = UDim2.new(0, 248, 0, 269),
		Position = self.props.position,
		AnchorPoint = self.props.anchorPoint,
		Image = Constants.Image.PLAY_NEXT_SELECTOR,
		ImageTransparency = self.props.imageTransparency,
		BackgroundTransparency = 1,
		ZIndex = self.props.ZIndex,
	})
end

return GameSelector