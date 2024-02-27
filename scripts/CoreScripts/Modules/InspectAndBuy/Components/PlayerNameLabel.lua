--!nonstrict
local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local InspectAndBuyFolder = script.Parent.Parent
local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local AppFonts = require(CorePackages.Workspace.Packages.Style).AppFonts
local Colors = require(InspectAndBuyFolder.Colors)
local RobloxTranslator = require(CoreGui.RobloxGui.Modules.RobloxTranslator)
local VerifiedBadges = require(CorePackages.Workspace.Packages.VerifiedBadges)

local InspectAndBuyContext = require(InspectAndBuyFolder.Components.InspectAndBuyContext)

local PlayerNameLabel = Roact.PureComponent:extend("PlayerNameLabel")

local INVENTORY_KEY = "InGame.InspectMenu.Label.Avatar"
local VERIFIED_INVENTORY_KEY = "InGame.InspectMenu.Label.VerifiedAvatar"
local VERIFIED_BADGE_TEXT = VerifiedBadges.emoji.verified

function PlayerNameLabel:render()
	local locale = self.props.locale
	local view = self.props.view
	local playerName = self.props.playerName
	local playerId = tonumber(self.props.playerId)
	local player = playerId and Players:GetPlayerByUserId(playerId)
	local hasVerifiedBadge = if player then VerifiedBadges.isPlayerVerified(player) else false
	local playerNameText

	if playerName == "" then
		playerNameText = ""
	elseif hasVerifiedBadge then
		playerNameText = RobloxTranslator:FormatByKeyForLocale(VERIFIED_INVENTORY_KEY, locale, { PLAYER_NAME = playerName, VERIFIED_BADGE = VERIFIED_BADGE_TEXT })
	else
		playerNameText = RobloxTranslator:FormatByKeyForLocale(INVENTORY_KEY, locale, { PLAYER_NAME = playerName })
	end

	return Roact.createElement(InspectAndBuyContext.Consumer, {
		render = function(views)
			local viewMapping = views[view]
			local sizeX = viewMapping.AvatarHeadShotSize + (viewMapping.BorderPaddingSize * 2) + 10

			return Roact.createElement("TextLabel", {
				Size = UDim2.new(1, -sizeX, 0, viewMapping.TopSizeY),
				BackgroundTransparency = 1,
				TextColor3 = Colors.White,
				TextScaled = true,
				Text = playerNameText,
				TextSize = 36,
				Font = AppFonts.default:getBlack(),
				TextXAlignment = Enum.TextXAlignment.Left,
				LayoutOrder = 2,
			}, {
				TextSizeConstraint = Roact.createElement("UITextSizeConstraint", {
					MaxTextSize = 36,
				}),
			})
		end
	})
end

return RoactRodux.UNSTABLE_connect2(
	function(state, props)
		return {
			view = state.view,
			playerName = state.playerName,
			playerId = state.playerId,
			locale = state.locale
		}
	end
)(PlayerNameLabel)
