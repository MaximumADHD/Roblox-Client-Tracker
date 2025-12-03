local CorePackages = game:GetService("CorePackages")

local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local Roact = require(CorePackages.Packages.Roact)

local ShareGame = RobloxGui.Modules.Settings.Pages.ShareGame
local Immutable = require(CorePackages.Workspace.Packages.AppCommonLib).Immutable
local Constants = require(ShareGame.Constants)
local RectangleButton = require(ShareGame.Components.RectangleButton)
local Theme = require(RobloxGui.Modules.Settings.Theme)

local INVITE_TEXT_FONT = Theme.font(Enum.Font.SourceSansSemibold, "Semibold")
local INVITE_TEXT_SIZE = Theme.textSize(19)
local InviteStatus = Constants.InviteStatus

local MODERATED_TEXT = "Feature.SettingsHub.Label.Moderated"
local INVITE_STATUS_TEXT = {
	[InviteStatus.Success] = "Feature.SettingsHub.Label.Invited",
	[InviteStatus.Moderated] = MODERATED_TEXT,
	[InviteStatus.Pending] = "Feature.SettingsHub.Label.Sending",
}

local getTranslator = require(ShareGame.getTranslator)
local RobloxTranslator = getTranslator()

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
			}),
		})
	else
		local inviteText = INVITE_STATUS_TEXT[inviteStatus]
		if not inviteText then
			inviteText = MODERATED_TEXT
		end

		return Roact.createElement("TextLabel", {
			BackgroundTransparency = 1,
			AnchorPoint = anchorPoint,
			Position = position,
			Size = size,
			Font = INVITE_TEXT_FONT,
			Text = RobloxTranslator:FormatByKey(inviteText),
			TextSize = INVITE_TEXT_SIZE,
			TextColor3 = Constants.Color.WHITE,
			TextXAlignment = Enum.TextXAlignment.Center,
			LayoutOrder = layoutOrder,
			ZIndex = zIndex,
		})
	end
end

return InviteButton
