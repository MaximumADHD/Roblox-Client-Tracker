local SquadWidget = script:FindFirstAncestor("SquadWidget")
local Packages = SquadWidget.Parent
local dependencies = require(SquadWidget.dependencies)
local Roact = dependencies.Roact
local React = dependencies.React
local useLocalization = dependencies.Hooks.useLocalization
local UIBlox = dependencies.UIBlox
local ExternalContentSharingProtocol = dependencies.ExternalContentSharingProtocol
local Images = UIBlox.App.ImageSet.Images
local useStyle = UIBlox.Core.Style.useStyle
local ImageSetLabel = UIBlox.Core.ImageSet.Label
local Constants = require(SquadWidget.SquadLobby.Common.Constants)
local isSubjectToDesktopPolicies = require(Packages.SharedFlags).isSubjectToDesktopPolicies

local GetFFlagLuaAppNewShareSheet = require(Packages.ExternalContentSharingProtocol).Flags.GetFFlagLuaAppNewShareSheet

local BUTTON_PADDING = 12
local SHARE_ICON_SIZE = Vector2.new(28, 28)

type Props = {
	-- Share link url
	shareLinkUrl: string,
	-- Layout order
	layoutOrder: number?,
}

-- Share invite link button for squad invite
local SquadInviteShareLinkButton = function(props: Props)
	local isDisabled, setIsDisabled = React.useState(false)
	local showCopiedText, setShowCopiedText = React.useState(false)

	local style = useStyle()
	local localizedStrings = useLocalization({
		shareSquadLinkText = "Feature.Squads.Label.ShareInviteLinkWithFriends",
		copiedText = "Feature.SocialShare.Label.Copied",
	})
	return Roact.createElement("ImageButton", {
		Size = UDim2.new(1, 0, 0, 62),
		Active = not isDisabled and not showCopiedText,
		AutoButtonColor = not isDisabled and not showCopiedText,
		BackgroundColor3 = style.Theme.BackgroundUIDefault.Color,
		BackgroundTransparency = if isDisabled or showCopiedText then 0.5 else 0,
		LayoutOrder = props.layoutOrder,
		[Roact.Event.Activated] = function()
			setIsDisabled(true)
			if ExternalContentSharingProtocol then
				if GetFFlagLuaAppNewShareSheet() then
					ExternalContentSharingProtocol:shareUrl({
						url = props.shareLinkUrl,
						-- TODO (Analytics): Add analytics context
						context = "",
					})
				else
					ExternalContentSharingProtocol:shareText({
						text = props.shareLinkUrl,
						-- TODO (Analytics): Add analytics context
						context = "",
					})
				end

				if isSubjectToDesktopPolicies() then
					setShowCopiedText(true)

					delay(1, function()
						setShowCopiedText(false)
					end)
				end
			end
			setIsDisabled(false)
		end,
	}, {
		UIPadding = Roact.createElement("UIPadding", {
			PaddingTop = UDim.new(0, BUTTON_PADDING),
			PaddingRight = UDim.new(0, BUTTON_PADDING),
			PaddingBottom = UDim.new(0, BUTTON_PADDING),
			PaddingLeft = UDim.new(0, BUTTON_PADDING),
		}),
		UIStroke = Roact.createElement("UIStroke", {
			Color = style.Theme.Divider.Color,
			Thickness = 1,
			Transparency = 0.8,
		}),
		UICorner = Roact.createElement("UICorner", {
			CornerRadius = UDim.new(0, 8),
		}),
		Layout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal,
			Padding = UDim.new(0, BUTTON_PADDING),
			SortOrder = Enum.SortOrder.LayoutOrder,
			VerticalAlignment = Enum.VerticalAlignment.Center,
		}),
		ShareIcon = Roact.createElement(ImageSetLabel, {
			Size = UDim2.fromOffset(SHARE_ICON_SIZE.X, SHARE_ICON_SIZE.Y),
			BackgroundTransparency = 1,
			Image = Images[Constants.SHARE_ICON],
			ImageTransparency = if isDisabled or showCopiedText then 0.5 else 0,
			LayoutOrder = 0,
		}),
		TextContainer = Roact.createElement("Frame", {
			Size = UDim2.fromScale(1, 1),
			BackgroundTransparency = 1,
			LayoutOrder = 1,
		}, {
			TextContainerLayout = Roact.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical,
				Padding = UDim.new(0, 4),
				SortOrder = Enum.SortOrder.LayoutOrder,
				VerticalAlignment = Enum.VerticalAlignment.Center,
			}),
			CopiedText = if showCopiedText
				then Roact.createElement("TextLabel", {
					Size = UDim2.new(1, -SHARE_ICON_SIZE.X - BUTTON_PADDING, 0, 0),
					AutomaticSize = Enum.AutomaticSize.Y,
					BackgroundTransparency = 1,
					Font = style.Font.Header2.Font,
					Text = localizedStrings.copiedText,
					TextColor3 = style.Theme.TextEmphasis.Color,
					TextSize = 16,
					TextTransparency = 0.5,
					TextTruncate = Enum.TextTruncate.AtEnd,
					TextXAlignment = Enum.TextXAlignment.Left,
				})
				else nil,
			Title = if not showCopiedText
				then Roact.createElement("TextLabel", {
					Size = UDim2.new(1, -SHARE_ICON_SIZE.X - BUTTON_PADDING, 0, 0),
					AutomaticSize = Enum.AutomaticSize.Y,
					BackgroundTransparency = 1,
					Font = style.Font.Header2.Font,
					LayoutOrder = 0,
					Text = localizedStrings.shareSquadLinkText,
					TextColor3 = style.Theme.TextEmphasis.Color,
					TextSize = 16,
					TextTransparency = if isDisabled or showCopiedText then 0.5 else 0,
					TextTruncate = Enum.TextTruncate.AtEnd,
					TextXAlignment = Enum.TextXAlignment.Left,
				})
				else nil,
			Link = if not showCopiedText
				then Roact.createElement("TextLabel", {
					Size = UDim2.new(1, -SHARE_ICON_SIZE.X - BUTTON_PADDING, 0, 0),
					AutomaticSize = Enum.AutomaticSize.Y,
					BackgroundTransparency = 1,
					Font = style.Font.CaptionBody.Font,
					LayoutOrder = 1,
					Text = props.shareLinkUrl,
					TextColor3 = style.Theme.TextDefault.Color,
					TextSize = 12,
					TextTransparency = if isDisabled or showCopiedText then 0.5 else 0,
					TextTruncate = Enum.TextTruncate.AtEnd,
					TextXAlignment = Enum.TextXAlignment.Left,
				})
				else nil,
		}),
	})
end

return SquadInviteShareLinkButton
