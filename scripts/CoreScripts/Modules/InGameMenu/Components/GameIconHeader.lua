local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux

local InGameMenu = script.Parent.Parent

local ThemedTextLabel = require(InGameMenu.Components.ThemedTextLabel)
local GameIcon = require(InGameMenu.Components.GameIcon)

local GAME_ICON_RENDER_SIZE = 100

local EXTERIOR_PADDING = 24
local TEXT_ICON_PADDING = 12

local function GameIconHeader(props)
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
		GameIcon = Roact.createElement(GameIcon, {
			gameId = game.GameId,
			iconSize = 100,
		}),
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