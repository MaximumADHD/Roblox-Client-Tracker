local CorePackages = game:GetService("CorePackages")

local Modules = game:GetService("CoreGui").RobloxGui.Modules
local ShareGame = Modules.Settings.Pages.ShareGame

local Roact = require(CorePackages.Roact)
local Constants = require(ShareGame.Constants)

local ShareGameIcons = require(ShareGame.Spritesheets.ShareGameIcons)
local FRIENDS_ICON_FRAME = ShareGameIcons:GetFrame("friends")
local SHARE_GAME_ICONS_IMAGE = ShareGameIcons:GetImagePath()

local ICON_TO_SUBTITLE_PADDING = 34

local NoFriendsPage = Roact.PureComponent:extend("NoFriendsPage")

function NoFriendsPage:render()
	local layoutOrder = self.props.LayoutOrder
	local zIndex = self.props.ZIndex

	local incrementingLayoutOrder = 0
	local function incrementLayoutOrder()
		incrementingLayoutOrder = incrementingLayoutOrder + 1
		return incrementingLayoutOrder
	end

	return Roact.createElement("Frame", {
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 1, 0),
		LayoutOrder = layoutOrder,
		ZIndex = zIndex,
	}, {
		listLayout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			VerticalAlignment = Enum.VerticalAlignment.Center,
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),
		friendsIcon = Roact.createElement("ImageLabel", {
			BackgroundTransparency = 1,
			Image = SHARE_GAME_ICONS_IMAGE,
			ImageRectOffset = FRIENDS_ICON_FRAME.offset,
			ImageRectSize = FRIENDS_ICON_FRAME.size,
			Size = UDim2.new(0, 72, 0, 72),
			LayoutOrder = incrementLayoutOrder(),
			ZIndex = zIndex,
		}),
		iconToSubtitleSpacer = Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			Size = UDim2.new(0, 0, 0, ICON_TO_SUBTITLE_PADDING),
			LayoutOrder = incrementLayoutOrder(),
			ZIndex = zIndex,
		}),
		subtitle = Roact.createElement("TextLabel", {
			BackgroundTransparency = 1,
			Text = "Make friends so you can invite them to play with you!",
			TextColor3 = Constants.Color.GRAY5,
			TextTransparency = 0.22,
			TextSize = 21,
			TextWrapped = true,
			Font = Enum.Font.SourceSans,
			LayoutOrder = incrementLayoutOrder(),
			Size = UDim2.new(0, 280, 0, 42),
			TextYAlignment = Enum.TextYAlignment.Top,
			ZIndex = zIndex,
		}),
		bottomSpacer = Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			Size = UDim2.new(0, 0, 0, 120),
			LayoutOrder = incrementLayoutOrder(),
			ZIndex = zIndex,
		}),
	})
end

return NoFriendsPage
