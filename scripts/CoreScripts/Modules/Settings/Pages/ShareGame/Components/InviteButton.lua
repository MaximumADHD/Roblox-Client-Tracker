local CorePackages = game:GetService("CorePackages")
local AppTempCommon = CorePackages.AppTempCommon

local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local RobloxTranslator = require(RobloxGui.Modules.RobloxTranslator)

local Roact = require(CorePackages.Roact)

local ShareGame = RobloxGui.Modules.Settings.Pages.ShareGame
local Immutable = require(AppTempCommon.Common.Immutable)
local Constants = require(ShareGame.Constants)
local RectangleButton = require(ShareGame.Components.RectangleButton)

local INVITE_TEXT_FONT = Enum.Font.SourceSansSemibold
local INVITE_TEXT_SIZE = 19
local InviteStatus = Constants.InviteStatus

local INVITE_STATUS_TEXT = {
	[InviteStatus.Success] = "Feature.SettingsHub.Label.Invited",
	[InviteStatus.Moderated] = "Feature.SettingsHub.Label.Moderated",
	[InviteStatus.Pending] = "Feature.SettingsHub.Label.Sending",
}

local InviteButton = Roact.PureComponent:extend("InviteButton")

function InviteButton:render()
	local anchorPoint = self.props.anchorPoint
	local position = self.props.position
	local size = self.props.size
	local layoutOrder = self.props.layoutOrder
	local zIndex = self.props.zIndex
	local onInvite = self.props.onInvite

	local inviteStatus = self.props.inviteStatus

	if not inviteStatus or inviteStatus == InviteStatus.Failed then
		local buttonProps = Immutable.Set(self.props, "onClick", function()
			onInvite()
		end)

		return Roact.createElement(RectangleButton, buttonProps, {
			InviteText = Roact.createElement("TextLabel", {
				BackgroundTransparency = 1,
				Position = UDim2.new(0.5, 0, 0.5, 0),
				Font = INVITE_TEXT_FONT,
				Text = RobloxTranslator:FormatByKey("Feature.SettingsHub.Action.InviteFriend"),
				TextSize = INVITE_TEXT_SIZE,
				TextColor3 = Constants.Color.WHITE,
				ZIndex = zIndex,
			})
		})
	else
		local inviteText = INVITE_STATUS_TEXT[inviteStatus]

		return Roact.createElement("TextLabel", {
			BackgroundTransparency = 1,
			AnchorPoint = anchorPoint,
			Position = position,
			Size = size,
			Font = INVITE_TEXT_FONT,
			Text = RobloxTranslator:FormatByKey(inviteText),
			TextSize = INVITE_TEXT_SIZE,
			TextColor3 = Constants.Color.WHITE,
			LayoutOrder = layoutOrder,
			ZIndex = zIndex,
		})
	end
end

return InviteButton
