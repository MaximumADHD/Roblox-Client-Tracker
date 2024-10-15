local CorePackages = game:GetService("CorePackages")

local React = require(CorePackages.Packages.React)
local Roact = require(CorePackages.Roact)

local UIBlox = require(CorePackages.UIBlox)

local Foundation = require(CorePackages.Packages.Foundation)
local Badge = Foundation.Badge
local BadgeVariant = Foundation.Enums.BadgeVariant

local Images = UIBlox.App.ImageSet.Images

local IconButton = require(script.Parent.IconButton)

local TopBar = script.Parent.Parent.Parent
local Chrome = TopBar.Parent.Chrome
-- local TopBarAnalytics = require(TopBar.Analytics)
local FFlagEnableChromeBackwardsSignalAPI = require(TopBar.Flags.GetFFlagEnableChromeBackwardsSignalAPI)()
-- local FFlagEnableTopBarAnalytics = require(TopBar.Flags.GetFFlagEnableTopBarAnalytics)()
local Constants = require(TopBar.Constants)
local usePartyIcon = require(Chrome.Integrations.Party.usePartyIcon)

local AppChat = require(CorePackages.Workspace.Packages.AppChat)
local InExperienceAppChatExperimentation = AppChat.App.InExperienceAppChatExperimentation
local InExperienceAppChatModal = AppChat.App.InExperienceAppChatModal

local ICON_AREA_WIDTH = 30
local AVATAR_SIZE = 26

local ICON_OFF = Images["icons/menu/platformChatOff"]
local ICON_ON = Images["icons/menu/platformChatOn"]

local ICON_SIZE = 30
local BADGE_OFFSET_X = 19
local BADGE_OFFSET_Y = 8

type Props = {
	layoutOrder: number,
	setKeepOutArea: (areaId: string, position: Vector2, size: Vector2) -> (),
	removeKeepOutArea: (areaId: string) -> (),
}

function ConnectIcon(props: Props)
	local buttonRef = React.useRef(nil) :: { current: GuiObject? }
	local currentSquadId, setCurrentSquadId = React.useState(InExperienceAppChatModal.default.currentSquadId)
	local isAppChatOpened, setIsAppChatOpened = React.useState(InExperienceAppChatModal:getVisible())
	local isVisible = React.useCallback(function()
		return currentSquadId ~= "" and InExperienceAppChatExperimentation.default and InExperienceAppChatExperimentation.default.getShowPlatformChatInNonChrome()
	end, { currentSquadId })

	local partyIcon = usePartyIcon(ICON_SIZE, AVATAR_SIZE, if isAppChatOpened then ICON_ON else ICON_OFF)

	React.useEffect(function()
		local currentSquadIdConnection = InExperienceAppChatModal.default.currentSquadIdSignal.Event:Connect(
			function(currentSquadId)
				setCurrentSquadId(currentSquadId)
			end
		)
		local appChatVisibilityConnection = InExperienceAppChatModal.default.visibilitySignal.Event:Connect(
			function(isVisible)
				setIsAppChatOpened(isVisible)
			end
		)
		return function()
			currentSquadIdConnection:Disconnect()
			appChatVisibilityConnection:Disconnect()
		end
	end, { setCurrentSquadId, setIsAppChatOpened } :: { unknown })

	local onAreaChanged = React.useCallback(function(rbx: GuiObject)
		if isVisible and rbx then
			props.setKeepOutArea(Constants.ConnectIconKeepOutAreaId, rbx.AbsolutePosition, rbx.AbsoluteSize)
		else
			props.removeKeepOutArea(Constants.ConnectIconKeepOutAreaId)
		end
	end, { isVisible, props.setKeepOutArea, props.removeKeepOutArea } :: { unknown })

	local setButtonRef = function(rbx: GuiObject?)
		if rbx then
			buttonRef.current = rbx
			onAreaChanged(rbx)
		end
	end

	React.useEffect(function()
		if FFlagEnableChromeBackwardsSignalAPI then
			if buttonRef.current then
				onAreaChanged(buttonRef.current)
			end
		end
	end, { onAreaChanged })

	local onActivated = React.useCallback(function()
		InExperienceAppChatModal:toggleVisibility()
	end, {})

	return Roact.createElement("TextButton", {
		Text = "",
		Visible = isVisible,
		BackgroundTransparency = 1,
		Size = UDim2.new(0, ICON_AREA_WIDTH, 1, 0),
		LayoutOrder = props.layoutOrder,
		Selectable = false,
		[Roact.Change.AbsoluteSize] = if FFlagEnableChromeBackwardsSignalAPI then onAreaChanged else nil,
		[Roact.Change.AbsolutePosition] = if FFlagEnableChromeBackwardsSignalAPI then onAreaChanged else nil,
	}, {
		Background = Roact.createElement(IconButton, {
			backgroundTransparency = if partyIcon.image.backgroundColor == nil then 1 else 0,
			backgroundColor3 = partyIcon.image.backgroundColor,
			icon = partyIcon.image.thumbnail,
			backgroundCornerRadius = UDim.new(0, 6),
			iconSize = partyIcon.size:map(function(value)
				return UDim2.fromOffset(value, value)
			end),
			onActivated = onActivated,
			[Roact.Ref] = setButtonRef,
		}),

		BadgeContainer = Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			AnchorPoint = Vector2.new(0, 0),
			Position = UDim2.fromOffset(BADGE_OFFSET_X, BADGE_OFFSET_Y),
			ZIndex = 2,
		}, {
			Badge = Roact.createElement(Badge, {
				variant = BadgeVariant.Primary,
			})
		})
	})
end

return ConnectIcon
