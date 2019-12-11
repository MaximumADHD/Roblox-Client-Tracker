--[[
    The topbar button that opens the in-game menu.
]]

local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local t = InGameMenuDependencies.t
local UIBlox = InGameMenuDependencies.UIBlox

local InGameMenu = script.Parent.Parent

local Assets = require(InGameMenu.Resources.Assets)

local ImageSetButton = UIBlox.Core.ImageSet.Button

local GlobalConfig = require(InGameMenu.GlobalConfig)

local validateProps = t.strictInterface({
	onClick = t.callback,
})

local function OpenMenuButton(props)
	if GlobalConfig.propValidation then
		assert(validateProps(props))
	end

	return Roact.createElement(ImageSetButton, {
		AnchorPoint = Vector2.new(0.5, 0.5),
		BackgroundTransparency = 1,
		Image = Assets.Images.RobloxLogo,
		Position = UDim2.new(0, 50, 0.5, 0),
		Size = UDim2.new(0, 32, 0, 32),
		[Roact.Event.Activated] = props.onClick,
	})
end

return OpenMenuButton