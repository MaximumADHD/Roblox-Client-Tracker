local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local InspectAndBuyFolder = script.Parent.Parent
local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local Colors = require(InspectAndBuyFolder.Colors)
local RobloxTranslator = require(CoreGui.RobloxGui.Modules.RobloxTranslator)

local PlayerNameLabel = Roact.PureComponent:extend("PlayerNameLabel")

local INVENTORY_KEY = "InGame.InspectMenu.Label.Avatar"

function PlayerNameLabel:render()
	local locale = self.props.locale
	local view = self.props.view
	local viewMapping = self._context[view]
	local playerName = self.props.playerName
	local sizeX = viewMapping.AvatarHeadShotSize + (viewMapping.BorderPaddingSize * 2) + 10
	local playerNameText

	if playerName == "" then
		playerNameText = ""
	else
		playerNameText = RobloxTranslator:FormatByKeyForLocale(INVENTORY_KEY, locale, { PLAYER_NAME = playerName })
	end

	return Roact.createElement("TextLabel", {
		Size = UDim2.new(1, -sizeX, 0, viewMapping.TopSizeY),
		BackgroundTransparency = 1,
		TextColor3 = Colors.White,
		TextScaled = true,
		Text = playerNameText,
		TextSize = 36,
		Font = Enum.Font.GothamBlack,
		TextXAlignment = Enum.TextXAlignment.Left,
		LayoutOrder = 2,
	}, {
		TextSizeConstraint = Roact.createElement("UITextSizeConstraint", {
			MaxTextSize = 36,
		}),
	})
end

return RoactRodux.UNSTABLE_connect2(
	function(state, props)
		return {
			view = state.view,
			playerName = state.playerName,
			locale = state.locale
		}
	end
)(PlayerNameLabel)