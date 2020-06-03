local ReplicatedStorage = game:GetService("ReplicatedStorage")

local StoryView = require(ReplicatedStorage.Packages.StoryComponents.StoryView)

local Button = script.Parent.Parent
local Core = Button.Parent
local UIBlox = Core.Parent
local App = UIBlox.App
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)

local IconButton = require(Button.IconButton)
local Images = require(App.ImageSet.Images)
local withStyle = require(UIBlox.Core.Style.withStyle)

local IconButtonStory = Roact.PureComponent:extend("IconButtonStory")

function IconButtonStory:render()
	return withStyle(function(stylePalette)

		local icon = Images["icons/common/robux"]

		return Roact.createElement(IconButton, {
			icon = icon,
			onActivated = function() print("icon clicked") end,
			iconTransparency = 0.5,
			iconColor = Color3.fromRGB(22, 255, 255),
		})
	end)
end

return function(target)
	local handle = Roact.mount(Roact.createElement(StoryView, {}, {
		Story = Roact.createElement(IconButtonStory),
	}), target, "IconButtonStory")
	return function()
		Roact.unmount(handle)
	end
end
