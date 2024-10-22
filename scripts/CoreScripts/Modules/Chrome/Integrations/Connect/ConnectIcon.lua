local Chrome = script:FindFirstAncestor("Chrome")
local CorePackages = game:GetService("CorePackages")

local Cryo = require(CorePackages.Packages.Cryo)
local Foundation = require(CorePackages.Packages.Foundation)
local React = require(CorePackages.Packages.React)
local UIBlox = require(CorePackages.UIBlox)
local CommonIcon = require(Chrome.Integrations.CommonIcon)
local CommonFtuxTooltip = require(Chrome.Integrations.CommonFtuxTooltip)
local ChromeConstants = require(Chrome.Unibar.Constants)
local ChromeUtils = require(Chrome.Service.ChromeUtils)
local useMappedSignal = require(Chrome.Hooks.useMappedSignal)
local usePartyIcon = require(Chrome.Integrations.Party.usePartyIcon)

local MappedSignal = ChromeUtils.MappedSignal
local useStyle = UIBlox.Core.Style.useStyle
local useTokens = Foundation.Hooks.useTokens

local SubMenuContext = require(Chrome.Unibar.SubMenuContext)
local GetFFlagAnimateSubMenu = require(Chrome.Flags.GetFFlagAnimateSubMenu)

local AppChat = require(CorePackages.Workspace.Packages.AppChat)
local InExperienceAppChatModal = AppChat.App.InExperienceAppChatModal
local InExperienceAppChatExperimentation = AppChat.App.InExperienceAppChatExperimentation

local FFlagEnableUnibarFtuxTooltips = require(Chrome.Parent.Flags.FFlagEnableUnibarFtuxTooltips)
local GetFFlagAppChatInExpConnectIconEnableSquadIndicator =
	require(Chrome.Flags.GetFFlagAppChatInExpConnectIconEnableSquadIndicator)
local GetFFlagAppChatInExpConnectIconRedesign = require(Chrome.Flags.GetFFlagAppChatInExpConnectIconRedesign)
local GetFStringConnectTooltipLocalStorageKey = require(Chrome.Flags.GetFStringConnectTooltipLocalStorageKey)
local GetFIntRobloxConnectFtuxShowDelayMs = require(Chrome.Flags.GetFIntRobloxConnectFtuxShowDelayMs)
local GetFIntRobloxConnectFtuxDismissDelayMs = require(Chrome.Flags.GetFIntRobloxConnectFtuxDismissDelayMs)

local AVATAR_SIZE = 24

local ICON_OFF = "icons/menu/platformChatOff"
local ICON_ON = "icons/menu/platformChatOn"
local ICON_SIZE = ChromeConstants.ICON_SIZE

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

local function ConnectIcon(_props: Props): React.ReactElement
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

	local currentSquadId, setCurrentSquadId, badgeColor

	if GetFFlagAppChatInExpConnectIconEnableSquadIndicator() then
		currentSquadId, setCurrentSquadId = React.useState(InExperienceAppChatModal.default.currentSquadId)

		React.useEffect(function()
			local connection = InExperienceAppChatModal.default.currentSquadIdSignal.Event:Connect(
				function(currentSquadId)
					setCurrentSquadId(currentSquadId)
				end
			)
			return function()
				connection:Disconnect()
			end
		end, { setCurrentSquadId })

		if GetFFlagAppChatInExpConnectIconRedesign() then
			local tokens = useTokens()
			if currentSquadId ~= "" then
				badgeColor = tokens.Color.System.Success
			elseif unreadMessageCount > 0 then
				badgeColor = tokens.Color.System.Contrast
			end
		else
			if currentSquadId ~= "" then
				badgeColor = style.Theme.OnlineStatus.Color
			elseif unreadMessageCount > 0 then
				badgeColor = style.Theme.IconEmphasis.Color
			end
		end
	end

	local shouldShowBadge = if GetFFlagAppChatInExpConnectIconEnableSquadIndicator()
		then badgeColor
		else unreadMessageCount > 0

	local visibilitySignal = MappedSignal.new(InExperienceAppChatModal.default.visibilitySignal.Event, function(visible)
		return InExperienceAppChatModal:getVisible()
	end)

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

	if GetFFlagAppChatInExpConnectIconRedesign() then
		local tokens = useTokens()

		local visible = useMappedSignal(visibilitySignal)
		local icon = usePartyIcon(ICON_SIZE, AVATAR_SIZE, if visible then ICON_ON else ICON_OFF)

		local submenuTransition = React.useContext(SubMenuContext)
		local function getTransparency(transparency: number): any
			return if GetFFlagAnimateSubMenu() and submenuTransition
				then submenuTransition:map(function(v)
					return transparency + (1 - transparency) * (1 - v)
				end)
				else transparency
		end

		return React.createElement(Foundation.View, {
			Size = UDim2.new(0, ICON_SIZE, 0, ICON_SIZE),
		}, {
			Icon = React.createElement(Foundation.Image, {
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.fromScale(0.5, 0.5),
				Size = icon.size:map(function(value)
					return UDim2.fromOffset(value, value)
				end),
				backgroundStyle = if icon.image.backgroundColor
					then {
						Color3 = icon.image.backgroundColor,
						Transparency = getTransparency(0),
					}
					else tokens.Color.None,
				cornerRadius = UDim.new(0, tokens.Radius.Circle),
				Image = icon.image.thumbnail,
				imageStyle = {
					Color3 = tokens.Color.Content.Emphasis.Color3,
					Transparency = getTransparency(tokens.Color.Content.Emphasis.Transparency),
				},
			}),
			Tooltip = tooltip,
			Badge = if shouldShowBadge
				then React.createElement(Foundation.View, {
					Position = UDim2.new(1, -tokens.Stroke.Thicker, 0, tokens.Stroke.Thicker),
					backgroundStyle = if GetFFlagAppChatInExpConnectIconEnableSquadIndicator()
						then {
							Color3 = badgeColor.Color3,
							Transparency = getTransparency(badgeColor.Transparency),
						}
						else {
							Color3 = tokens.Color.System.Contrast.Color3,
							Transparency = getTransparency(tokens.Color.System.Contrast.Transparency),
						},
					stroke = {
						Color = tokens.Color.Surface.Surface_0.Color3,
						Transparency = getTransparency(tokens.Color.Surface.Surface_0.Transparency),
						Thickness = tokens.Stroke.Thicker,
					},
					tag = "anchor-top-right radius-circle size-200 stroke-thicker",
					ZIndex = 2,
				})
				else nil,
		})
	else
		local icon = CommonIcon(ICON_OFF, ICON_ON, visibilitySignal)

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
			Badge = if shouldShowBadge
				then React.createElement("Frame", {
					BackgroundColor3 = if GetFFlagAppChatInExpConnectIconEnableSquadIndicator()
						then badgeColor
						else style.Theme.IconEmphasis.Color,
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
end

return ConnectIcon
