local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux
local UIBlox = InGameMenuDependencies.UIBlox

local InGameMenu = script.Parent.Parent

local Assets = require(InGameMenu.Resources.Assets)

local AssetImage = require(InGameMenu.Components.AssetImage)
local ThemedTextLabel = require(InGameMenu.Components.ThemedTextLabel)

-- Request the closest size that we can get to 100.
local GAME_ICON_REQUEST_SIZE = 128
local GAME_ICON_RENDER_SIZE = 100

local EXTERIOR_PADDING = 24
local TEXT_ICON_PADDING = 12

local function GameIconHeader(props)
	local iconUrl = ("rbxthumb://type=GameIcon&id=%d&w=%d&h=%d"):format(
		game.GameId,
		GAME_ICON_REQUEST_SIZE,
		GAME_ICON_REQUEST_SIZE
	)

	local isPlaceholder = game.GameId == 0
	local gameIcon
	if isPlaceholder then
		gameIcon = UIBlox.Core.Style.withStyle(function(style)
			return Roact.createElement(AssetImage.Label, {
				imageKey = "RoundedRect",
				Size = UDim2.fromOffset(GAME_ICON_RENDER_SIZE, GAME_ICON_RENDER_SIZE),
				ImageColor3 = style.Theme.PlaceHolder.Color,
				ImageTransparency = style.Theme.PlaceHolder.Transparency,
			}, {
				PlaceholderIcon = Roact.createElement(UIBlox.Core.ImageSet.Label, {
					BackgroundTransparency = 1,
					Size = UDim2.fromOffset(44, 44),
					Position = UDim2.fromScale(0.5, 0.5),
					Image = Assets.Images.PlaceholderGameIcon,
					AnchorPoint = Vector2.new(0.5, 0.5),
				}),
			})
		end)
	else
		gameIcon = Roact.createElement("ImageLabel", {
			BackgroundTransparency = 1,
			Image = iconUrl,
			Size = UDim2.new(0, GAME_ICON_RENDER_SIZE, 0, GAME_ICON_RENDER_SIZE),
		})
	end

	return Roact.createElement("ImageLabel", {
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 0, GAME_ICON_RENDER_SIZE + EXTERIOR_PADDING * 2),
	}, {
		Padding = Roact.createElement("UIPadding", {
			PaddingBottom = UDim.new(0, EXTERIOR_PADDING),
			PaddingLeft = UDim.new(0, EXTERIOR_PADDING),
			PaddingRight = UDim.new(0, EXTERIOR_PADDING),
			PaddingTop = UDim.new(0, EXTERIOR_PADDING),
		}),
		GameIcon = gameIcon,
		GameName = Roact.createElement(ThemedTextLabel, {
			fontKey = "Title",
			themeKey = "TextEmphasis",

			Position = UDim2.new(0, GAME_ICON_RENDER_SIZE + TEXT_ICON_PADDING, 0, 0),
			Size = UDim2.new(1, -(GAME_ICON_RENDER_SIZE + TEXT_ICON_PADDING), 1, 0),
			Text = props.gameName,
			TextTruncate = Enum.TextTruncate.AtEnd,
			TextWrapped = true,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Top,
		}),
	})
end

return RoactRodux.UNSTABLE_connect2(function(state)
	return {
		gameName = state.localization.currentGameName,
	}
end)(GameIconHeader)