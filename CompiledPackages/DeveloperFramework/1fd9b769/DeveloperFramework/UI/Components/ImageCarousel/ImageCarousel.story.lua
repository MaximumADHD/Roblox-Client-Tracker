local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)
local ImageCarousel = require(Framework.UI.Components.ImageCarousel)

local imageStrings = {
	"rbxasset://textures/ui/common/robux_color@2x.png",
	"rbxasset://textures/ui/Chat/Chat.png",
	"rbxasset://textures/ui/Chat/MessageCounter.png",
}

return {
	stories = {
		AutoAdvanceOnHover = Roact.createElement(ImageCarousel, {
			AutoAdvanceTimer = 3000,
			ImageStrings = imageStrings,
			Size = UDim2.fromOffset(120, 80),
		}),
		AutoAdvanceOnHoverAndResetWhenHoveredOff = Roact.createElement(ImageCarousel, {
			AutoAdvanceTimer = 3000,
			ImageStrings = imageStrings,
			ResetWhenHoveredOff = true,
			Size = UDim2.fromOffset(120, 80),
		}),
		AutoAdvanceOnlyIfNotHovered = Roact.createElement(ImageCarousel, {
			AutoAdvance = true,
			AutoAdvanceTimer = 3000,
			ImageStrings = imageStrings,
			Size = UDim2.fromOffset(120, 80),
		}),
		AutoAdvanceOnlyIfNotHoveredWithNav = Roact.createElement(ImageCarousel, {
			AutoAdvance = true,
			AutoAdvanceTimer = 3000,
			ImageStrings = imageStrings,
			ShowNavigationOnHover = true,
			Size = UDim2.fromOffset(120, 80),
		}),
		AlwaysAutoAdvance = Roact.createElement(ImageCarousel, {
			AutoAdvance = true,
			AutoAdvanceTimer = 3000,
			DisableHoverToggle = true,
			ImageStrings = imageStrings,
			Size = UDim2.fromOffset(120, 80),
		}),
		AlwaysAutoAdvanceWithoutAnimations = Roact.createElement(ImageCarousel, {
			AutoAdvance = true,
			AutoAdvanceTimer = 3000,
			DisableAnimations = true,
			DisableHoverToggle = true,
			ImageStrings = imageStrings,
			Size = UDim2.fromOffset(120, 80),
		}),
	},
}
