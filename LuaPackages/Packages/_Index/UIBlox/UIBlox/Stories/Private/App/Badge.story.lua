local UIBloxInternal = script.Parent.Parent.Parent.Parent
local Packages = UIBloxInternal.Parent
local Indicator = UIBloxInternal.App.Indicator

local Roact = require(Packages.Roact)

local Badge = require(Indicator.Badge)
local BadgeStates = require(Indicator.Enum.BadgeStates)
local Images = require(UIBloxInternal.App.ImageSet.Images)
local ImageSetComponent = require(UIBloxInternal.Core.ImageSet.ImageSetComponent)

local DarkTheme = require(Packages.UIBlox.App.Style.Themes.DarkTheme)

return {
	controls = {
		badgeValue = 12,
	},
	stories = {
		{
			name = "BadgeStory",
			story = function(props)
				local badgeValue = props.controls.badgeValue
				return Roact.createElement("Frame", {
					Size = UDim2.new(0, 200, 0, 100),
					BackgroundColor3 = Color3.fromRGB(128, 187, 219),
				}, {
					Icon = Roact.createElement(ImageSetComponent.Label, {
						Position = UDim2.new(0, 0, 0, 10),
						BackgroundTransparency = 1,
						Size = UDim2.new(0, 36, 0, 36),
						Image = Images["icons/common/notificationOn"],
					}, {
						Badge = badgeValue ~= 0 and Roact.createElement(Badge, {
							position = UDim2.new(0.5, 0, 0.5, 0),
							anchorPoint = Vector2.new(0, 1),
							value = badgeValue,
						}),
					}),
				})
			end,
		},
		{
			name = "DisabledBadgeStory",
			story = function(props)
				local badgeValue = props.controls.badgeValue
				return Roact.createElement("Frame", {
					Size = UDim2.new(0, 200, 0, 100),
					BackgroundColor3 = Color3.fromRGB(128, 187, 219),
				}, {
					Icon = Roact.createElement(ImageSetComponent.Label, {
						Position = UDim2.new(0, 0, 0, 10),
						BackgroundTransparency = 1,
						Size = UDim2.new(0, 36, 0, 36),
						ImageTransparency = 0.5,
						Image = Images["icons/common/notificationOn"],
					}, {
						Badge = badgeValue ~= 0 and Roact.createElement(Badge, {
							position = UDim2.new(0.5, 0, 0.5, 0),
							anchorPoint = Vector2.new(0, 1),
							disabled = true,
							value = badgeValue,
						}),
					}),
				})
			end,
		},
		{
			name = "BadgeTileStory",
			story = function(props)
				local badgeValue = props.controls.badgeValue
				return Roact.createElement("Frame", {
					Size = UDim2.fromOffset(160, 160),
					BackgroundTransparency = DarkTheme.BackgroundUIDefault.Transparency,
					BackgroundColor3 = DarkTheme.BackgroundUIDefault.Color,
				}, {
					Badge = badgeValue ~= 0 and Roact.createElement(Badge, {
						position = UDim2.new(1, -10, 0, 10),
						anchorPoint = Vector2.new(1, 0),
						value = badgeValue,
					}),
				})
			end,
		},
		{
			name = "BadgeShadowStory",
			story = function(props)
				local badgeValue = props.controls.badgeValue
				return Roact.createElement("Frame", {
					BackgroundColor3 = Color3.fromRGB(128, 187, 219),
					Size = UDim2.new(0, 200, 0, 100),
				}, {
					DropShadow = Roact.createElement(ImageSetComponent.Label, {
						BackgroundTransparency = 1,
						Position = UDim2.new(0.5, 0, 0.5, 0),
						AnchorPoint = Vector2.new(0.5, 0.5),
						Size = UDim2.new(0, 36, 0, 36),
						Image = Images["component_assets/dropshadow_chatOff"],
						ZIndex = 1,
					}),

					Icon = Roact.createElement(ImageSetComponent.Label, {
						BackgroundTransparency = 1,
						Position = UDim2.new(0.5, 0, 0.5, 0),
						AnchorPoint = Vector2.new(0.5, 0.5),
						Size = UDim2.new(0, 36, 0, 36),
						Image = Images["icons/menu/chat_off"],
						ZIndex = 2,
					}, {
						Badge = badgeValue ~= 0 and Roact.createElement(Badge, {
							position = UDim2.new(0, 24, 0.5, 0),
							anchorPoint = Vector2.new(0, 0.5),
							hasShadow = true,
							value = badgeValue,
						}),
					}),
				})
			end,
		},
		{
			name = "EmptyBadge",
			story = function()
				return Roact.createElement("Frame", {
					BackgroundColor3 = Color3.fromRGB(128, 187, 219),
					Size = UDim2.new(0, 200, 0, 100),
				}, {
					Icon = Roact.createElement(ImageSetComponent.Label, {
						BackgroundTransparency = 1,
						Position = UDim2.new(0.5, 0, 0.5, 0),
						AnchorPoint = Vector2.new(0.5, 0.5),
						Size = UDim2.new(0, 36, 0, 36),
						Image = Images["icons/menu/chat_off"],
						ZIndex = 2,
					}, {
						EmptyBadge = Roact.createElement(Badge, {
							position = UDim2.new(1, -14, 0, 9),
							anchorPoint = Vector2.new(0, 0.5),
							value = BadgeStates.isEmpty,
						}),
					}),
				})
			end,
		},
	},
}
