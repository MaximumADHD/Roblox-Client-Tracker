local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local VRService = game:GetService("VRService")
local AppStorageService = game:GetService("AppStorageService")

local Roact = require(CorePackages.Packages.Roact)
local RoactRodux = require(CorePackages.Packages.RoactRodux)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.Packages.UIBlox)
local SignalLib = require(CorePackages.Workspace.Packages.AppCommonLib)
local Signal = SignalLib.Signal

local withStyle = UIBlox.Core.Style.withStyle
local Badge = UIBlox.App.Indicator.Badge
local BadgeStates = UIBlox.App.Indicator.Enum.BadgeStates
local Images = UIBlox.App.ImageSet.Images

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local ChatSelector = require(RobloxGui.Modules.ChatSelector)
local TenFootInterface = require(RobloxGui.Modules.TenFootInterface)

local IconButton = require(script.Parent.IconButton)

local TopBar = script.Parent.Parent.Parent
local TopBarAnalytics = require(TopBar.Analytics)
local FFlagEnableChromeBackwardsSignalAPI = require(TopBar.Flags.GetFFlagEnableChromeBackwardsSignalAPI)()
local FFlagEnableTopBarAnalytics = require(TopBar.Flags.GetFFlagEnableTopBarAnalytics)()
local SetKeepOutArea = require(TopBar.Actions.SetKeepOutArea)
local RemoveKeepOutArea = require(TopBar.Actions.RemoveKeepOutArea)
local CoreGuiCommon = require(CorePackages.Workspace.Packages.CoreGuiCommon)
local FFlagTopBarSignalizeKeepOutAreas = CoreGuiCommon.Flags.FFlagTopBarSignalizeKeepOutAreas
local Constants = require(TopBar.Constants)

local AppChat = require(CorePackages.Workspace.Packages.AppChat)
local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local GetFFlagEnableAppChatInExperience = SharedFlags.GetFFlagEnableAppChatInExperience
local InExperienceAppChatExperimentation = AppChat.App.InExperienceAppChatExperimentation
local ChatIconFtuxTooltip = require(script.Parent.ChatIconFtuxTooltip)
local FFlagExpChatGetLabelAndIconFromUtilUnibarHoldout = game:DefineFastFlag("ExpChatGetLabelAndIconFromUtilUnibarHoldout", false)
local getExperienceChatVisualConfig = require(CorePackages.Workspace.Packages.ExpChat).getExperienceChatVisualConfig
local FIntInExperienceChatTooltipShowDelayMs = game:DefineFastInt("InExperienceChatTooltipShowDelayMs", 1000)
local FIntInExperienceChatTooltipDismissDelayMs = game:DefineFastInt("InExperienceChatTooltipDismissDelayMs", 7000)
local FFlagUnibarHoldoutChatIconUseNewIconSize = game:DefineFastFlag("UnibarHoldoutChatIconUseNewIconSize", false)

local shouldShowNewIcon = GetFFlagEnableAppChatInExperience()
	and InExperienceAppChatExperimentation.default.variant.ShowInExperienceChatNewIcon
local shouldShowIconTooltip = shouldShowNewIcon
	and InExperienceAppChatExperimentation.default.variant.ShowInExperienceChatTooltip

local GameSettings = UserSettings().GameSettings

local function shouldShowEmptyBadge()
	return game:GetService("TextChatService").ChatVersion == Enum.ChatVersion.TextChatService
end

local ChatIcon = Roact.PureComponent:extend("ChatIcon")

local CHAT_ICON_AREA_WIDTH = 44

local ICON_SIZE = 20
local NEW_ICON_SIZE = 30
local BADGE_OFFSET_X = 18
local BADGE_OFFSET_Y = 2
local EMPTY_BADGE_OFFSET_Y = 6

local TOOLTIP_LOCAL_STORAGE_KEY = "HasSeenExpChatFtuxTooltip"

ChatIcon.validateProps = t.strictInterface({
	layoutOrder = t.integer,

	chatVisible = t.boolean,
	unreadMessages = t.integer,

	topBarEnabled = t.boolean,
	chatEnabled = t.boolean,

	setKeepOutArea = if FFlagTopBarSignalizeKeepOutAreas then nil else t.callback,
	removeKeepOutArea = if FFlagTopBarSignalizeKeepOutAreas then nil else t.callback,
})

function ChatIcon:init()
	self.buttonRef = Roact.createRef()
	self.iconClickedSignal = if shouldShowIconTooltip then Signal.new() else nil

	self.chatIconActivated = function()
		ChatSelector:ToggleVisibility()
		GameSettings.ChatVisible = ChatSelector:GetVisibility()
		if FFlagEnableTopBarAnalytics then
			TopBarAnalytics.default:onChatButtonActivated(GameSettings.ChatVisible)
		end
		if shouldShowIconTooltip then
			(self.iconClickedSignal :: SignalLib.Signal):fire(GameSettings.ChatVisible)
			pcall(function()
				AppStorageService:SetItem(TOOLTIP_LOCAL_STORAGE_KEY, "true")
			end)
		end
	end

	if FFlagTopBarSignalizeKeepOutAreas and CoreGuiCommon.Stores.GetKeepOutAreasStore then 
		self.keepOutAreasStore = CoreGuiCommon.Stores.GetKeepOutAreasStore(false)
	end
end

function ChatIcon:render()
	return withStyle(function(style)
		local chatEnabled = self.props.topBarEnabled
			and self.props.chatEnabled
			and not TenFootInterface:IsEnabled()
			and not VRService.VREnabled

		local iconSize = nil :: never
		local chatIcon = nil :: never

		if FFlagExpChatGetLabelAndIconFromUtilUnibarHoldout then
			local visualConfig = getExperienceChatVisualConfig()
			iconSize = visualConfig.iconSize
			chatIcon = Images[visualConfig.icon.on]
			if not self.props.chatVisible then
				chatIcon = Images[visualConfig.icon.off]
			end
		else
			iconSize = ICON_SIZE
			chatIcon = "rbxasset://textures/ui/TopBar/chatOn.png"
			if not self.props.chatVisible then
				chatIcon = "rbxasset://textures/ui/TopBar/chatOff.png"
			end

			if shouldShowNewIcon then
				iconSize = NEW_ICON_SIZE
				chatIcon = Images["icons/menu/publicChatOn"]
				if not self.props.chatVisible then
					chatIcon = Images["icons/menu/publicChatOff"]
				end
			end
		end

		local onAreaChanged = function(rbx)
			if chatEnabled and rbx then
				if FFlagTopBarSignalizeKeepOutAreas then 
					self.keepOutAreasStore.setKeepOutArea(Constants.ChatIconKeepOutAreaId, rbx.AbsolutePosition, rbx.AbsoluteSize)
				else 
					self.props.setKeepOutArea(Constants.ChatIconKeepOutAreaId, rbx.AbsolutePosition, rbx.AbsoluteSize)
				end
			else
				if FFlagTopBarSignalizeKeepOutAreas then
					self.keepOutAreasStore.removeKeepOutArea(Constants.ChatIconKeepOutAreaId)
				else
					self.props.removeKeepOutArea(Constants.ChatIconKeepOutAreaId)
				end
			end
		end

		local setButtonRef = function(rbx)
			if rbx then
				self.buttonRef.current = rbx
				onAreaChanged(self.buttonRef.current)
			end
		end

		if FFlagEnableChromeBackwardsSignalAPI then
			if self.buttonRef.current then
				onAreaChanged(self.buttonRef.current)
			end
		end

		local iconButton = Roact.createElement(IconButton, {
			icon = chatIcon,
			iconSize = if GetFFlagEnableAppChatInExperience() or FFlagUnibarHoldoutChatIconUseNewIconSize then iconSize else ICON_SIZE,
			onActivated = self.chatIconActivated,
			[Roact.Change.AbsoluteSize] = if FFlagEnableChromeBackwardsSignalAPI then onAreaChanged else nil,
			[Roact.Change.AbsolutePosition] = if FFlagEnableChromeBackwardsSignalAPI then onAreaChanged else nil,
			[Roact.Ref] = setButtonRef,
		})

		return Roact.createElement("TextButton", {
			Text = "",
			Visible = chatEnabled,
			BackgroundTransparency = 1,
			Size = UDim2.new(0, CHAT_ICON_AREA_WIDTH, 1, 0),
			LayoutOrder = self.props.layoutOrder,
			Selectable = false,
		}, {
			IconAndTooltipContainer = if shouldShowIconTooltip
				then Roact.createElement("Frame", {
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					AutomaticSize = Enum.AutomaticSize.XY,
					Size = UDim2.fromScale(0, 0),
					Position = UDim2.fromScale(0, 1),
				}, {
					Background = iconButton,
					Tooltip = Roact.createElement(ChatIconFtuxTooltip, {
						iconClickedSignal = self.iconClickedSignal,

						headerKey = "CoreScripts.FTUX.Heading.NewIconUpdate",
						bodyKey = "CoreScripts.FTUX.Label.ChatWithOthersInExperienceChat",
						localStorageKey = TOOLTIP_LOCAL_STORAGE_KEY,

						showDelay = FIntInExperienceChatTooltipShowDelayMs,
						dismissDelay = FIntInExperienceChatTooltipDismissDelayMs,
					}),
				})
				else nil,
			Background = if shouldShowIconTooltip then nil else iconButton,

			BadgeContainer = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.fromScale(1, 1),
				ZIndex = 2,
			}, {
				Badge = self.props.unreadMessages > 0 and Roact.createElement(Badge, {
					position = UDim2.fromOffset(
						BADGE_OFFSET_X,
						shouldShowEmptyBadge() and EMPTY_BADGE_OFFSET_Y or BADGE_OFFSET_Y
					),
					anchorPoint = Vector2.new(0, 0),

					hasShadow = false,
					value = shouldShowEmptyBadge() and BadgeStates.isEmpty or self.props.unreadMessages,
				}),
			}),
		})
	end)
end

local function mapStateToProps(state)
	return {
		chatVisible = state.chat.visible,
		unreadMessages = state.chat.unreadMessages,

		topBarEnabled = state.displayOptions.topbarEnabled,
		chatEnabled = state.coreGuiEnabled[Enum.CoreGuiType.Chat],
	}
end

local function mapDispatchToProps(dispatch)
	if FFlagTopBarSignalizeKeepOutAreas then 
		return {} 
	end 
	return {
		setKeepOutArea = function(id, position, size)
			return dispatch(SetKeepOutArea(id, position, size))
		end,
		removeKeepOutArea = function(id)
			return dispatch(RemoveKeepOutArea(id))
		end,
	}
end

return RoactRodux.UNSTABLE_connect2(mapStateToProps, if FFlagTopBarSignalizeKeepOutAreas then nil else mapDispatchToProps)(ChatIcon)
