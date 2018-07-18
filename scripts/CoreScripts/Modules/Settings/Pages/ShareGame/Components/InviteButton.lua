local CorePackages = game:GetService("CorePackages")
local AppTempCommon = CorePackages.AppTempCommon

local Modules = game:GetService("CoreGui").RobloxGui.Modules

local Roact = require(CorePackages.Roact)

local ShareGame = Modules.Settings.Pages.ShareGame
local Immutable = require(AppTempCommon.Common.Immutable)
local Constants = require(ShareGame.Constants)
local RectangleButton = require(ShareGame.Components.RectangleButton)

local INVITE_TEXT_FONT = Enum.Font.SourceSansSemibold
local INVITE_TEXT_SIZE = 19
local INVITE_TEXT = "Invite"
local INVITE_SENT_TEXT = "Invited"

local InviteButton = Roact.PureComponent:extend("InviteButton")

function InviteButton:render()
	local anchorPoint = self.props.anchorPoint
	local position = self.props.position
	local size = self.props.size
	local layoutOrder = self.props.layoutOrder
	local zIndex = self.props.zIndex
	local onInvite = self.props.onInvite

	local alreadyInvited = self.props.alreadyInvited
	local inviteText = alreadyInvited and INVITE_SENT_TEXT or INVITE_TEXT

	if not alreadyInvited then
		local buttonProps = Immutable.Set(self.props, "onClick", function()
			onInvite()
		end)

		return Roact.createElement(RectangleButton, buttonProps, {
			InviteText = Roact.createElement("TextLabel", {
				BackgroundTransparency = 1,
				Position = UDim2.new(0.5, 0, 0.5, 0),
				Font = INVITE_TEXT_FONT,
				Text = inviteText,
				TextSize = INVITE_TEXT_SIZE,
				TextColor3 = Constants.Color.WHITE,
				ZIndex = zIndex,
			})
		})
	else
		return Roact.createElement("TextLabel", {
			BackgroundTransparency = 1,
			AnchorPoint = anchorPoint,
			Position = position,
			Size = size,
			Font = INVITE_TEXT_FONT,
			Text = inviteText,
			TextSize = INVITE_TEXT_SIZE,
			TextColor3 = Constants.Color.WHITE,
			LayoutOrder = layoutOrder,
			ZIndex = zIndex,
		})
	end
end

return InviteButton
