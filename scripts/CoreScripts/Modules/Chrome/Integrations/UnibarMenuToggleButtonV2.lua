local Chrome = script:FindFirstAncestor("Chrome")

local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagAdaptUnibarAndTiltSizing = SharedFlags.GetFFlagAdaptUnibarAndTiltSizing()

local React = require(CorePackages.Packages.React)
local UIBlox = require(CorePackages.Packages.UIBlox)
local useStyle = UIBlox.Core.Style.useStyle
local ImageSetLabel = UIBlox.Core.ImageSet.ImageSetLabel
local Images = UIBlox.App.ImageSet.Images
local ChromeShared = script.Parent.Parent.ChromeShared
local GetStyleTokens = if FFlagAdaptUnibarAndTiltSizing
	then require(ChromeShared.Utility.GetStyleTokens)
	else nil :: never

local SelfieViewModule = Chrome.Parent.SelfieView
local SelfieView = require(SelfieViewModule)
local VoiceChatServiceManager = require(RobloxGui.Modules.VoiceChat.VoiceChatServiceManager).default
local ChromeService = require(Chrome.Service)
local RedVoiceDot = require(Chrome.Integrations.RedVoiceDot)
local StyleTokens = if FFlagAdaptUnibarAndTiltSizing then GetStyleTokens() else nil :: never
local UnibarStyle = require(Chrome.ChromeShared.Unibar.UnibarStyle)

local ChromeSharedFlags = require(Chrome.ChromeShared.Flags)
local FFlagTokenizeUnibarConstantsWithStyleProvider = ChromeSharedFlags.FFlagTokenizeUnibarConstantsWithStyleProvider

local GetFFlagTweakedMicPinning = require(Chrome.Flags.GetFFlagTweakedMicPinning)
local GetFFlagUsePolishedAnimations = SharedFlags.GetFFlagUsePolishedAnimations

local UNIBAR_ICON = Images["icons/actions/overflow"]
local TOGGLE_MENU_SIZE = if FFlagAdaptUnibarAndTiltSizing
	then UDim2.new(0, StyleTokens.Size.Size_900, 0, StyleTokens.Size.Size_900)
	else UDim2.new(0, 36, 0, 36)
local RED_VOICE_DOT_POSITION = if FFlagAdaptUnibarAndTiltSizing
	then UDim2.new(1, StyleTokens.Config.UI.Scale * -7, 1, StyleTokens.Config.UI.Scale * -7)
	else UDim2.new(1, -7, 1, -7)
local GREEN_VOICE_DOT_POSITION = if FFlagAdaptUnibarAndTiltSizing
	then if not GetFFlagTweakedMicPinning() and not VoiceChatServiceManager.localMuted
		then UDim2.new(1, StyleTokens.Config.UI.Scale * -7, 1, -StyleTokens.Size.Size_300)
		else UDim2.new(1, StyleTokens.Config.UI.Scale * -7, 1, -StyleTokens.Size.Size_200)
	else if not GetFFlagTweakedMicPinning() and not VoiceChatServiceManager.localMuted
		then UDim2.new(1, -7, 1, -12)
		else UDim2.new(1, -7, 1, -8)

local buttonPressed

function ToggleMenuButton(props)
	local toggleIconTransition = props.toggleTransition
	local style = useStyle()
	local unibarStyle
	local unibarIconSize
	if FFlagTokenizeUnibarConstantsWithStyleProvider then
		unibarStyle = UnibarStyle.use()
		unibarIconSize = unibarStyle.UNIBAR_ICON_SIZE
	else
		unibarIconSize = 32
	end

	local hasCurrentUtility = false
	hasCurrentUtility = if ChromeService:getCurrentUtility():get() then true else false

	local iconColor = style.Theme.IconEmphasis

	return React.createElement("Frame", {
		Size = TOGGLE_MENU_SIZE,
		BorderSizePixel = 0,
		BackgroundColor3 = style.Theme.BackgroundOnHover.Color,
		BackgroundTransparency = toggleIconTransition:map(function(value): any
			return 1 - ((1 - style.Theme.BackgroundOnHover.Transparency) * value)
		end),
	}, {
		React.createElement("UICorner", {
			Name = "Corner",
			CornerRadius = UDim.new(1, 0),
		}) :: any,
		React.createElement(ImageSetLabel, {
			Name = "Overflow",
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.new(0.5, 0, 0.5, 0),
			BackgroundTransparency = 1,
			Image = UNIBAR_ICON,
			Size = toggleIconTransition:map(function(value: any): any
				value = 1 - value
				return UDim2.new(0, unibarIconSize * value, 0, unibarIconSize * value)
			end),
			Visible = if GetFFlagUsePolishedAnimations()
				then toggleIconTransition:map(function(value: any): any
					if value == 1 then
						buttonPressed = false
					end
					return buttonPressed
				end)
				else nil,
			ImageColor3 = style.Theme.IconEmphasis.Color,
			ImageTransparency = style.Theme.IconEmphasis.Transparency,
		}) :: any,
		React.createElement("Frame", {
			Name = "X1",
			Position = toggleIconTransition:map(function(value): any
				return UDim2.new(0.5, 0, 0.5, 0)
			end),
			AnchorPoint = Vector2.new(0.5, 0.5),
			Size = toggleIconTransition:map(function(value: any): any
				local xOffset = 16
				local yOffset = 2
				if FFlagAdaptUnibarAndTiltSizing then
					xOffset = StyleTokens.Size.Size_400
					yOffset = StyleTokens.Size.Size_50
				end
				return UDim2.new(0, xOffset * value, 0, yOffset)
			end),
			Visible = not hasCurrentUtility,
			BorderSizePixel = 0,
			BackgroundColor3 = iconColor.Color,
			BackgroundTransparency = if GetFFlagUsePolishedAnimations()
				then toggleIconTransition:map(function(value: any): any
					return 1 - value
				end)
				else iconColor.Transparency,
			Rotation = 45,
		}) :: any,
		React.createElement("Frame", {
			Name = "X2",
			Position = toggleIconTransition:map(function(value): any
				return UDim2.new(0.5, 0, 0.5, 0)
			end),
			AnchorPoint = Vector2.new(0.5, 0.5),
			Size = toggleIconTransition:map(function(value: any): any
				local xOffset = 16
				local yOffset = 2
				if FFlagAdaptUnibarAndTiltSizing then
					xOffset = StyleTokens.Size.Size_400
					yOffset = StyleTokens.Size.Size_50
				end
				return UDim2.new(0, xOffset * value, 0, yOffset)
			end),
			Visible = not hasCurrentUtility,
			BorderSizePixel = 0,
			BackgroundColor3 = iconColor.Color,
			BackgroundTransparency = if GetFFlagUsePolishedAnimations()
				then toggleIconTransition:map(function(value: any): any
					return 1 - value
				end)
				else iconColor.Transparency,
			Rotation = -45,
		}) :: any,
		React.createElement(ImageSetLabel, {
			Name = "Arrow",
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = toggleIconTransition:map(function(value): any
				return UDim2.new(0.5, 0, 0.5, 0)
			end),
			BackgroundTransparency = 1,
			Image = Images["icons/actions/truncationCollapse_small"],
			Size = toggleIconTransition:map(function(value: any): any
				value = if GetFFlagUsePolishedAnimations() then 1 - value else value
				local xOffset = 16
				local yOffset = 16
				if FFlagAdaptUnibarAndTiltSizing then
					xOffset = StyleTokens.Size.Size_400
					yOffset = StyleTokens.Size.Size_400
				end
				return UDim2.new(0, xOffset * value, 0, yOffset * value)
			end),
			Visible = if GetFFlagUsePolishedAnimations()
				then toggleIconTransition:map(function(_)
					return not buttonPressed
				end)
				else hasCurrentUtility,
			ImageColor3 = style.Theme.IconEmphasis.Color,
			ImageTransparency = style.Theme.IconEmphasis.Transparency,
			Rotation = 270,
		}) :: any,
		if GetFFlagTweakedMicPinning()
			then nil
			else React.createElement("Frame", {
					Name = "RedVoiceDotVisibleContiner",
					-- If MicToggle isn't always visible in Unibar we'll need to make this more advanced
					-- ie. a signal from ChromeService to say if MicToggle is visible
					Visible = toggleIconTransition:map(function(value: any): any
						return value < 0.5
					end),
					Size = UDim2.new(1, 0, 1, 0),
					BorderSizePixel = 0,
					BackgroundTransparency = 1,
				}, {
					React.createElement(RedVoiceDot, {
						position = RED_VOICE_DOT_POSITION,
					}),
				}) :: any,
		React.createElement("Frame", {
			Name = "GreenCameraDotVisibleContiner",

			Visible = toggleIconTransition:map(function(value: any): any
				return value < 0.5
			end),
			Size = UDim2.new(1, 0, 1, 0),
			BorderSizePixel = 0,
			BackgroundTransparency = 1,
		}, {
			SelfieView.useCameraOn() and React.createElement(SelfieView.CameraStatusDot, {
				Position = GREEN_VOICE_DOT_POSITION,
				ZIndex = 2,
			}),
		}),
	})
end

return ChromeService:register({
	id = "chrome_toggle",
	label = "CoreScripts.TopBar.MenuToggle",
	hideNotificationCountWhileOpen = true,
	flashNotificationSource = true,
	activated = function()
		buttonPressed = true
	end,
	components = {
		Icon = function(props)
			return React.createElement(ToggleMenuButton, props)
		end,
	},
	notification = ChromeService:totalNotifications(),
	initialAvailability = ChromeService.AvailabilitySignal.Pinned,
})
