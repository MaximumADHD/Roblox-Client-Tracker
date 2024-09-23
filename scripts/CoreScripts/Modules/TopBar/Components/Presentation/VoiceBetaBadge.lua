--!nonstrict
local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local VRService = game:GetService("VRService")
local GamepadService = game:GetService("GamepadService")
local GuiService = game:GetService("GuiService")
local HttpService = game:GetService("HttpService")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.Packages.UIBlox)
local withStyle = UIBlox.Core.Style.withStyle

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local TenFootInterface = require(RobloxGui.Modules.TenFootInterface)
local isNewInGameMenuEnabled = require(RobloxGui.Modules.isNewInGameMenuEnabled)
local InGameMenuConstants = require(RobloxGui.Modules.InGameMenuConstants)
local VoiceChatServiceManager = require(RobloxGui.Modules.VoiceChat.VoiceChatServiceManager).default
local log = require(CorePackages.Workspace.Packages.CoreScriptsInitializer).CoreLogger:new(script.Name)

local AppFonts = require(CorePackages.Workspace.Packages.Style).AppFonts
local ExternalEventConnection = require(CorePackages.Workspace.Packages.RoactUtils).ExternalEventConnection

local VoiceBetaBadge = Roact.PureComponent:extend("MenuIcon")

local GetFStringVoiceBetaBadgeLearnMore = require(RobloxGui.Modules.Flags.GetFStringVoiceBetaBadgeLearnMore)
local GetFFlagBetaBadgeLearnMoreLinkFormview = require(RobloxGui.Modules.Flags.GetFFlagBetaBadgeLearnMoreLinkFormview)

local TopBar = script.Parent.Parent.Parent
local FFlagEnableChromeBackwardsSignalAPI = require(TopBar.Flags.GetFFlagEnableChromeBackwardsSignalAPI)()
local SetKeepOutArea = require(TopBar.Actions.SetKeepOutArea)
local RemoveKeepOutArea = require(TopBar.Actions.RemoveKeepOutArea)
local Constants = require(TopBar.Constants)

local GetFFlagFixChromeReferences = require(RobloxGui.Modules.Flags.GetFFlagFixChromeReferences)
local GetFFlagEnableAlwaysOpenUnibar = require(RobloxGui.Modules.Flags.GetFFlagEnableAlwaysOpenUnibar)

local Chrome = TopBar.Parent.Chrome
local ChromeEnabled = require(Chrome.Enabled)
local ChromeService = if GetFFlagFixChromeReferences() then 
	if ChromeEnabled() then require(Chrome.Service) else nil
	else if ChromeEnabled then require(Chrome.Service) else nil

VoiceBetaBadge.validateProps = t.strictInterface({
	layoutOrder = t.integer,
	Analytics = t.table,
	setKeepOutArea = t.optional(t.callback),
	removeKeepOutArea = t.optional(t.callback),
})

local CustomWebviewType: { [string]: number } = {
	FullScreen = 0,
	FormSheet = 2,
}

local STROKE_THICKNESS = 2

local BadgeSize = UDim2.fromOffset(31, 11)
local PopupPadding = UDim.new(0, 12)
local PopupSize = UDim2.fromOffset(330, 185)

local RobloxTranslator = require(RobloxGui.Modules.RobloxTranslator)

local noop = function() end
local eventContext = "voiceChat"

-- This isn't imported because the definitions are located in LuaApp
local OPEN_CUSTOM_WEBVIEW = 20
function openWebview(url)
	local notificationData = HttpService:JSONEncode({
		title = if game:GetEngineFeature("SetWebViewTitle") then "Help Center" else nil,
		presentationStyle = if GetFFlagBetaBadgeLearnMoreLinkFormview() then CustomWebviewType.FormSheet else nil,
		visible = true,
		url = url,
	})

	log:debug("Opening Webview with payload {}", notificationData)

	GuiService:BroadcastNotification(notificationData, OPEN_CUSTOM_WEBVIEW)
end

function VoiceBetaBadge:init()
	self.buttonRef = Roact.createRef()

	self:setState({
		chromeMenuOpen = ChromeService and ChromeService:status():get() == ChromeService.MenuStatus.Open,
		vrShowMenuIcon = VRService.VREnabled and GamepadService.GamepadCursorEnabled,
		voiceChatServiceConnected = false,
		showPopup = false,
	})

	if game:GetEngineFeature("VoiceChatSupported") then
		VoiceChatServiceManager:asyncInit()
			:andThen(function()
				self:setState({
					voiceChatServiceConnected = true,
				})
			end)
			:catch(noop)
	end

	self.menuIconActivated = function()
		self:setState({
			showPopup = not self.state.showPopup,
		})
		self.props.Analytics.EventStream:setRBXEvent(
			eventContext,
			if not self.state.showPopup then "openBetaBadge" else "closeBetaBadge"
		)
	end

	self.learnMore = function()
		local url = GetFStringVoiceBetaBadgeLearnMore()

		openWebview(url)
		self.props.Analytics.EventStream:setRBXEvent(eventContext, "clickBetaBadgeLearnMore")
	end
end

function VoiceBetaBadge:didMount()
	if ChromeService then
		self.chromeMenuStatusConn = ChromeService:status():connect(function()
			self:setState({
				chromeMenuOpen = ChromeService:status():get() == ChromeService.MenuStatus.Open
			})
		end)
	end
end

function VoiceBetaBadge:onUnmount()
	if self.chromeMenuStatusConn then
		self.chromeMenuStatusConn:Disconnect()
		self.chromeMenuStatusConn = nil
	end
end

function VoiceBetaBadge:render()
	local visible = (not VRService.VREnabled or self.state.vrShowMenuIcon) and self.state.voiceChatServiceConnected

	if not GetFFlagEnableAlwaysOpenUnibar() and self.state.chromeMenuOpen then
		visible = false
	end
	local onAreaChanged = function(rbx)
		if visible and rbx then
			-- Need to recalculate the position as stroke is not part of AbsolutePosition/AbsoluteSize
			local strokePosition =
				Vector2.new(rbx.AbsolutePosition.X - STROKE_THICKNESS, rbx.AbsolutePosition.Y - STROKE_THICKNESS)
			local strokeSize =
				Vector2.new(rbx.AbsoluteSize.X + 2 * STROKE_THICKNESS, rbx.AbsoluteSize.Y + 2 * STROKE_THICKNESS)
			self.props.setKeepOutArea(Constants.VoiceBetaBadgeKeepOutAreaId, strokePosition, strokeSize)
		else
			self.props.removeKeepOutArea(Constants.VoiceBetaBadgeKeepOutAreaId)
		end
	end

	if FFlagEnableChromeBackwardsSignalAPI then
		if self.buttonRef.current then
			onAreaChanged(self.buttonRef.current)
		end
	end

	return withStyle(function(style)
		local fontStyle = style.Font.Footer
		local font = fontStyle.Font
		local popupTextSize = style.Font.BaseSize * fontStyle.RelativeSize
		local popupTheme = style.Theme.BackgroundUIContrast
		local textTheme = style.Theme.TextEmphasis
		local linkTheme = style.Theme.TextLink
		local Yellow = Color3.fromRGB(238, 206, 83)

		return Roact.createFragment({
			PopupWrapper = Roact.createElement("Frame", {
				Visible = visible and self.state.showPopup,
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.XY,
				LayoutOrder = self.props.layoutOrder + 1,
			}, {
				Popup = Roact.createElement("Frame", {
					Size = PopupSize,
					Position = UDim2.fromOffset(0, 10),
					BackgroundTransparency = popupTheme.Transparency,
					BackgroundColor3 = popupTheme.Color,
				}, {
					Layout = Roact.createElement("UIListLayout", {
						Padding = UDim.new(0, 8),
						FillDirection = Enum.FillDirection.Vertical,
						HorizontalAlignment = Enum.HorizontalAlignment.Left,
						SortOrder = Enum.SortOrder.LayoutOrder,
					}),
					Popup = Roact.createElement("Frame", {
						AutomaticSize = Enum.AutomaticSize.XY,
						BackgroundTransparency = 1,
						LayoutOrder = 0,
					}, {
						Layout = Roact.createElement("UIListLayout", {
							Padding = UDim.new(0, 0),
							FillDirection = Enum.FillDirection.Vertical,
							HorizontalAlignment = Enum.HorizontalAlignment.Left,
							SortOrder = Enum.SortOrder.LayoutOrder,
						}),
						Starter = Roact.createElement("TextLabel", {
							Text = RobloxTranslator:FormatByKey("InGame.CommonUI.Badge.Popup.HeaderList"),
							TextSize = popupTextSize,
							Font = font,
							LayoutOrder = 0,
							TextXAlignment = Enum.TextXAlignment.Left,
							TextColor3 = textTheme.Color,
							AutomaticSize = Enum.AutomaticSize.XY,
							BackgroundTransparency = 1,
						}),
						FirstBullet = Roact.createElement("TextLabel", {
							Text = "• "
								.. RobloxTranslator:FormatByKey("InGame.CommonUI.Badge.Popup.VoiceChatBullet"),
							TextSize = popupTextSize,
							Font = font,
							LayoutOrder = 2,
							TextXAlignment = Enum.TextXAlignment.Left,
							TextColor3 = textTheme.Color,
							AutomaticSize = Enum.AutomaticSize.XY,
							BackgroundTransparency = 1,
						}),
					}),
					Text = Roact.createElement("TextLabel", {
						Text = RobloxTranslator:FormatByKey("InGame.CommonUI.Badge.Popup.DisclaimerText2"),
						TextSize = popupTextSize,
						Font = font,
						LayoutOrder = 0,
						TextXAlignment = Enum.TextXAlignment.Left,
						TextColor3 = textTheme.Color,
						AutomaticSize = Enum.AutomaticSize.XY,
						TextWrapped = true,
						BackgroundTransparency = 1,
					}),
					LearnMoreLink = Roact.createElement("TextButton", {
						Text = RobloxTranslator:FormatByKey("InGame.CommonUI.Badge.Popup.LearnMoreLink"),
						TextSize = popupTextSize,
						Font = font,
						LayoutOrder = 1,
						TextXAlignment = Enum.TextXAlignment.Left,
						TextColor3 = linkTheme.Color,
						AutomaticSize = Enum.AutomaticSize.XY,
						BackgroundTransparency = 1,
						[Roact.Event.Activated] = self.learnMore,
					}),
					UICorner = Roact.createElement("UICorner", {
						CornerRadius = UDim.new(0, 8),
					}),
					UIPadding = Roact.createElement("UIPadding", {
						PaddingLeft = PopupPadding,
						PaddingRight = PopupPadding,
						PaddingBottom = PopupPadding,
						PaddingTop = PopupPadding,
					}),
				}),
			}),
			Button = Roact.createElement("Frame", {
				Visible = visible,
				AutomaticSize = Enum.AutomaticSize.XY,
				LayoutOrder = self.props.layoutOrder,
				BackgroundTransparency = 1,
				Size = UDim2.fromScale(0, 1),
				[Roact.Change.AbsoluteSize] = if FFlagEnableChromeBackwardsSignalAPI then onAreaChanged else nil,
				[Roact.Change.AbsolutePosition] = if FFlagEnableChromeBackwardsSignalAPI then onAreaChanged else nil,
				[Roact.Ref] = self.buttonRef,
			}, {
				Layout = Roact.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Vertical,
					VerticalAlignment = Enum.VerticalAlignment.Center,
					SortOrder = Enum.SortOrder.LayoutOrder,
				}),
				ActualButton = Roact.createElement("Frame", {
					Visible = visible,
					BackgroundTransparency = 0,
					Size = BadgeSize,
					BackgroundColor3 = Yellow,
				}, {
					Button = Roact.createElement("TextButton", {
						Text = RobloxTranslator:FormatByKey("InGame.CommonUI.Badge.BadgeText"),
						Font = AppFonts.default:getBold(),
						TextSize = 8,
						BackgroundTransparency = 1,
						BorderSizePixel = 0,
						Size = BadgeSize,
						TextColor3 = popupTheme.Color,
						[Roact.Event.Activated] = self.menuIconActivated,
					}),
					UICorner = Roact.createElement("UICorner", {
						CornerRadius = UDim.new(0, 3),
					}),
					UIStroke = Roact.createElement("UIStroke", {
						Thickness = STROKE_THICKNESS,
						Color = textTheme.Color,
					}),
					VREnabledListener = GamepadService and Roact.createElement(ExternalEventConnection, {
						event = GamepadService:GetPropertyChangedSignal("GamepadCursorEnabled"),
						callback = function()
							self:setState({
								vrShowMenuIcon = VRService.VREnabled and GamepadService.GamepadCursorEnabled,
							})
						end or nil,
					}),
				}),
			}),
		})
	end)
end

if FFlagEnableChromeBackwardsSignalAPI then
	local function mapDispatchToProps(dispatch)
		return {
			setKeepOutArea = function(id, position, size)
				return dispatch(SetKeepOutArea(id, position, size))
			end,
			removeKeepOutArea = function(id)
				return dispatch(RemoveKeepOutArea(id))
			end,
		}
	end

	return RoactRodux.UNSTABLE_connect2(nil, mapDispatchToProps)(VoiceBetaBadge)
end

return VoiceBetaBadge
