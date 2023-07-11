--!strict
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")

local React = require(CorePackages.Packages.React)
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local ContactList = RobloxGui.Modules.ContactList
local dependencies = require(ContactList.dependencies)
local SocialLibraries = dependencies.SocialLibraries
local EnumPresenceType = dependencies.RoduxPresence.Enums.PresenceType
local UIBlox = dependencies.UIBlox
local getStandardSizeAvatarHeadShotRbxthumb = dependencies.getStandardSizeAvatarHeadShotRbxthumb
local FFlagLuaAppUnifyCodeToGenerateRbxThumb = dependencies.FFlagLuaAppUnifyCodeToGenerateRbxThumb

local IconButton = UIBlox.App.Button.IconButton
local IconSize = UIBlox.App.ImageSet.Enum.IconSize
local Images = UIBlox.App.ImageSet.Images

local ControlState = UIBlox.Core.Control.Enum.ControlState
local ImageSetLabel = UIBlox.Core.ImageSet.Label
local Interactable = UIBlox.Core.Control.Interactable
local useStyle = UIBlox.Core.Style.useStyle

export type Props = {
	user: {
		userId: number,
		username: string,
	}?,
	showDivider: boolean,
	presenceModel: {
		userPresenceType: number,
	}?,
	showParticipantSettings: boolean,
}

local defaultProps = {
	presenceModel = { userPresenceType = EnumPresenceType.Offline },
}

local function CallDetailsItem(props: Props)
	local user = props.user
	local style = useStyle()
	local theme = style.Theme
	local font = style.Font
	local userPresenceType = props.presenceModel and props.presenceModel.userPresenceType
		or defaultProps.presenceModel.userPresenceType

	local controlState, setControlState = React.useState(ControlState.Initialize)
	local onStateChanged = React.useCallback(function(oldState, newState)
		setControlState(newState)
	end)

	local interactableTheme
	if controlState == ControlState.Pressed then
		interactableTheme = "BackgroundOnPress"
	elseif controlState == ControlState.Hover then
		interactableTheme = "BackgroundOnHover"
	else
		interactableTheme = "BackgroundDefault"
	end

	local image
	if user then
		if FFlagLuaAppUnifyCodeToGenerateRbxThumb then
			image = getStandardSizeAvatarHeadShotRbxthumb(tostring(user.userId))
		else
			image = SocialLibraries.User.getUserAvatarImage(user.userId)
		end
	end

	return React.createElement(Interactable, {
		Position = UDim2.fromOffset(0, 0),
		Size = UDim2.new(1, 0, 0, 48),
		BackgroundColor3 = theme[interactableTheme].Color,
		BackgroundTransparency = theme[interactableTheme].Transparency,
		BorderSizePixel = 0,
		onStateChanged = onStateChanged,
	}, {
		UIPadding = React.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, 12),
			PaddingTop = UDim.new(0, 6),
		}),

		ProfileImage = React.createElement(ImageSetLabel, {
			Position = UDim2.fromOffset(0, 0),
			Size = UDim2.fromOffset(36, 36),
			Image = image,
		}, {
			UICorner = React.createElement("UICorner", {
				CornerRadius = UDim.new(1, 0),
			}),
		}),

		Content = React.createElement("Frame", {
			AutomaticSize = Enum.AutomaticSize.Y,
			Position = UDim2.fromOffset(48, 0),
			Size = UDim2.new(1, -48, 0, 0),
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
		}, {
			UIListLayout = React.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical,
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = UDim.new(0, 2),
			}),

			Username = React.createElement("TextLabel", {
				AutomaticSize = Enum.AutomaticSize.Y,
				Size = UDim2.new(1, 0, 0, 0),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Font = font.Header1.Font,
				LayoutOrder = 1,
				LineHeight = 1,
				Text = user and user.username,
				TextColor3 = theme.TextDefault.Color,
				TextSize = font.BaseSize * font.Body.RelativeSize,
				TextTransparency = theme.TextDefault.Transparency,
				TextTruncate = Enum.TextTruncate.AtEnd,
				TextXAlignment = Enum.TextXAlignment.Left,
			}),

			PresenceText = React.createElement("TextLabel", {
				AutomaticSize = Enum.AutomaticSize.Y,
				Size = UDim2.new(1, 0, 0, 0),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Font = font.CaptionBody.Font,
				LineHeight = 1,
				LayoutOrder = 2,
				Text = (userPresenceType == EnumPresenceType.Offline) and "Offline" or "Online",
				TextColor3 = theme.TextDefault.Color,
				TextSize = font.BaseSize * font.CaptionBody.RelativeSize,
				TextTransparency = theme.TextDefault.Transparency,
				TextTruncate = Enum.TextTruncate.AtEnd,
				TextXAlignment = Enum.TextXAlignment.Left,
			}),
		}),

		ParticipantSettings = props.showParticipantSettings and React.createElement(IconButton, {
			size = UDim2.fromOffset(21, 21),
			iconSize = IconSize.Medium,
			position = UDim2.new(1, -56, 0, 0),
			iconColor3 = theme.SystemPrimaryDefault.Color,
			iconTransparency = theme.SystemPrimaryDefault.Transparency,
			icon = Images["icons/common/more"],
			onActivated = function() end,
		}) or nil,

		Divider = props.showDivider and React.createElement("Frame", {
			Position = UDim2.new(0, 48, 1, -1),
			Size = UDim2.new(1, -48, 0, 1),
			BackgroundColor3 = theme.Divider.Color,
			BackgroundTransparency = theme.Divider.Transparency,
			BorderSizePixel = 0,
		}) or nil,
	})
end

return CallDetailsItem
