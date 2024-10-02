local Chrome = script:FindFirstAncestor("Chrome")
local CorePackages = game:GetService("CorePackages")

local Cryo = require(CorePackages.Packages.Cryo)
local React = require(CorePackages.Packages.React)
local UIBlox = require(CorePackages.UIBlox)
local CommonIcon = require(Chrome.Integrations.CommonIcon)
local CommonFtuxTooltip = require(Chrome.Integrations.CommonFtuxTooltip)
local ChromeConstants = require(Chrome.Unibar.Constants)
local ChromeUtils = require(Chrome.Service.ChromeUtils)
local MappedSignal = ChromeUtils.MappedSignal
local useStyle = UIBlox.Core.Style.useStyle

local SubMenuContext = require(Chrome.Unibar.SubMenuContext)
local GetFFlagAnimateSubMenu = require(Chrome.Flags.GetFFlagAnimateSubMenu)

local AppChat = require(CorePackages.Workspace.Packages.AppChat)
local InExperienceAppChatModal = AppChat.App.InExperienceAppChatModal
local InExperienceAppChatExperimentation = AppChat.App.InExperienceAppChatExperimentation

local GetFStringConnectTooltipLocalStorageKey = require(Chrome.Flags.GetFStringConnectTooltipLocalStorageKey)
local FFlagEnableUnibarFtuxTooltips = require(Chrome.Parent.Flags.FFlagEnableUnibarFtuxTooltips)
local GetFIntRobloxConnectFtuxShowDelayMs = require(Chrome.Flags.GetFIntRobloxConnectFtuxShowDelayMs)
local GetFIntRobloxConnectFtuxDismissDelayMs = require(Chrome.Flags.GetFIntRobloxConnectFtuxDismissDelayMs)

local ICON_OFF = "icons/menu/platformChatOff"
local ICON_ON = "icons/menu/platformChatOn"
local ICON_SIZE = ChromeConstants.ICON_SIZE

-- TODO ROACTCHAT-1347: use BADGE_COLOR_PARTY if there's active: party Color3.fromRGB(57, 197, 130)
local BADGE_OFFSET = 2
local BADGE_STROKE_WIDTH = 2
local BADGE_SIZE = UDim2.fromOffset(10, 10)

export type Props = {
	isIconVisible: boolean,
	shouldShowCustomBadge: boolean,
}

local defaultProps = {
	shouldShowCustomBadge = true,
}

local function ConnectIcon(_props: Props)
	local props = Cryo.Dictionary.union(defaultProps, _props)
	local style = useStyle()

	local unreadMessageCount, setUnreadMessageCount = React.useState(InExperienceAppChatModal.default.unreadCount)

	if props.shouldShowCustomBadge then
		React.useEffect(function()
			local connection = InExperienceAppChatModal.default.unreadCountSignal.Event:Connect(function(newUnreadCount)
				setUnreadMessageCount(newUnreadCount)
			end)
			return function()
				connection:Disconnect()
			end
		end, { setUnreadMessageCount })
	else
		unreadMessageCount = 0
	end

	local visibilitySignal = MappedSignal.new(InExperienceAppChatModal.default.visibilitySignal.Event, function(visible)
		return InExperienceAppChatModal:getVisible()
	end)

	local icon = CommonIcon(ICON_OFF, ICON_ON, visibilitySignal)
	local tooltip = if FFlagEnableUnibarFtuxTooltips
			and InExperienceAppChatExperimentation.default.variant.ShowPlatformChatChromeUnibarEntryPoint
		then CommonFtuxTooltip({
			isIconVisible = props.isIconVisible,

			headerKey = "CoreScripts.FTUX.Heading.CheckOutRobloxConnect",
			bodyKey = "CoreScripts.FTUX.Label.ChatWithYourFriendsAnytime",
			localStorageKey = GetFStringConnectTooltipLocalStorageKey(),

			showDelay = GetFIntRobloxConnectFtuxShowDelayMs(),
			dismissDelay = GetFIntRobloxConnectFtuxDismissDelayMs(),
		})
		else nil

	-- to fix UI jank when dismissing
	local submenuTransition = React.useContext(SubMenuContext)
	local function getTransparencyFix(): any
		return if GetFFlagAnimateSubMenu() and submenuTransition
			then submenuTransition:map(function(v)
				return style.Theme.IconEmphasis.Transparency + (1 - style.Theme.IconEmphasis.Transparency) * (1 - v)
			end)
			else style.Theme.IconEmphasis.Transparency
	end

	return React.createElement("Frame", {
		Size = UDim2.new(0, ICON_SIZE, 0, ICON_SIZE),
		BorderSizePixel = 0,
		BackgroundTransparency = 1,
	}, {
		UICorner = React.createElement("UICorner", {
			CornerRadius = UDim.new(1, 0),
		}) :: any,
		Icon = icon,
		Tooltip = tooltip,
		Badge = if unreadMessageCount > 0
			then React.createElement("Frame", {
				BackgroundColor3 = style.Theme.IconEmphasis.Color,
				Position = UDim2.new(1, -BADGE_OFFSET, 0, BADGE_OFFSET),
				AnchorPoint = Vector2.new(1, 0),
				Size = BADGE_SIZE,
				Transparency = getTransparencyFix(),
			}, {
				UICorner = React.createElement("UICorner", {
					CornerRadius = UDim.new(1, 0),
				}) :: any,
				UIStroke = React.createElement("UIStroke", {
					Color = style.Tokens.Semantic.Color.Common.BadgeContent.Color3,
					Transparency = getTransparencyFix(),
					Thickness = BADGE_STROKE_WIDTH,
				}) :: any,
			})
			else nil,
	})
end

return ConnectIcon
