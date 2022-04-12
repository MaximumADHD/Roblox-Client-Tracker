local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local VRService = game:GetService("VRService")
local GamepadService = game:GetService("GamepadService")
local GuiService = game:GetService("GuiService")

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

local ExternalEventConnection = require(CorePackages.RoactUtilities.ExternalEventConnection)

local VoiceBetaBadge = Roact.PureComponent:extend("MenuIcon")

local FFlagEnableNewVrSystem = require(RobloxGui.Modules.Flags.FFlagEnableNewVrSystem)

VoiceBetaBadge.validateProps = t.strictInterface({
	layoutOrder = t.integer,
})

local BadgeSize = UDim2.fromOffset(31, 11)
local PopupPadding = UDim.new(0, 12)
local PopupSize = UDim2.fromOffset(330, 180)

local noop = function() end

function VoiceBetaBadge:init()
	self:setState({
		vrShowMenuIcon = FFlagEnableNewVrSystem and VRService.VREnabled and GamepadService.GamepadCursorEnabled,
		voiceChatServiceConnected = false,
		showPopup = false
	})

	if game:GetEngineFeature("VoiceChatSupported") then
		VoiceChatServiceManager:asyncInit():andThen(function()
			self:setState({
				voiceChatServiceConnected = true,
			})
		end):catch(noop)
	end
	
	self.menuIconActivated = function()
		self:setState({
			showPopup = not self.state.showPopup
		})
	end

	self.learnMore = function()
		local url = ("https://en.help.roblox.com/hc/en-us/articles/203313410-Roblox-Community-Standards")

		GuiService:OpenBrowserWindow(url)
	end
end

function VoiceBetaBadge:render()
	local visible = not TenFootInterface:IsEnabled() and self.state.voiceChatServiceConnected
	if FFlagEnableNewVrSystem then
		visible = (not VRService.VREnabled or self.state.vrShowMenuIcon) and self.state.voiceChatServiceConnected
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
						LayoutOrder = 0
					}, {
						Layout = Roact.createElement("UIListLayout", {
							Padding = UDim.new(0, 0),
							FillDirection = Enum.FillDirection.Vertical,
							HorizontalAlignment = Enum.HorizontalAlignment.Left,
							SortOrder = Enum.SortOrder.LayoutOrder,
						}),
						Starter = Roact.createElement("TextLabel", {
							Text = "You have opted in to one or more of our beta features:",
							TextSize = popupTextSize,
							Font = font,
							LayoutOrder = 0,
							TextXAlignment = Enum.TextXAlignment.Left,
							TextColor3 = textTheme.Color,
							AutomaticSize = Enum.AutomaticSize.XY,
							BackgroundTransparency = 1,
						}),
						FirstBullet = Roact.createElement("TextLabel", {
							Text = "• Open text chat",
							TextSize = popupTextSize,
							Font = font,
							LayoutOrder = 1,
							TextXAlignment = Enum.TextXAlignment.Left,
							TextColor3 = textTheme.Color,
							AutomaticSize = Enum.AutomaticSize.XY,
							BackgroundTransparency = 1,
						}),
						SecondBullet = Roact.createElement("TextLabel", {
							Text = "• Voice chat",
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
						Text = "Please report abuse if you encounter people breaking our Community Guidelines. If you have opted-in to voice chat, Roblox may record voice audio anywhere on the platform for moderation and safety purposes. By continuing to use the voice chat feature, you consent to Roblox's collection, use, and storage of your voice recording for moderation and safety purposes.  You can opt-out of spatial voice at any time. ",
						TextSize = popupTextSize,
						Font = font,
						LayoutOrder = 0,
						TextXAlignment = Enum.TextXAlignment.Left,
						TextColor3 = textTheme.Color,
						AutomaticSize = Enum.AutomaticSize.XY,
						TextWrapped = true,
						BackgroundTransparency = 1,
					}),
					TextLink = Roact.createElement("TextButton", {
						Text = "Learn More",
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
						CornerRadius = UDim.new(0, 8)
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
						Text = "BETA",
						Font = Enum.Font.GothamBold,
						TextSize = 8,
						BackgroundTransparency = 1,
						BorderSizePixel = 0,
						Size = BadgeSize,
						TextColor3 = popupTheme.Color,
						[Roact.Event.Activated] = self.menuIconActivated,
					}),
					UICorner = Roact.createElement("UICorner", {
						CornerRadius = UDim.new(0, 3)
					}),
					UIStroke = Roact.createElement("UIStroke", {
						Thickness = 2,
						Color = textTheme.Color,
					}),
					VREnabledListener = FFlagEnableNewVrSystem and GamepadService and Roact.createElement(ExternalEventConnection, {
						event = GamepadService:GetPropertyChangedSignal("GamepadCursorEnabled"),
						callback = function()
							self:setState({
								vrShowMenuIcon = VRService.VREnabled and GamepadService.GamepadCursorEnabled,
							})
						end or nil,
					})
				})
			})
		})
	end)
end

return VoiceBetaBadge
