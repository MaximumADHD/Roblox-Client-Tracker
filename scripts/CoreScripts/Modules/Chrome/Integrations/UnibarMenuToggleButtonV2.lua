local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local React = require(CorePackages.Packages.React)
local UIBlox = require(CorePackages.UIBlox)
local useStyle = UIBlox.Core.Style.useStyle
local ImageSetLabel = UIBlox.Core.ImageSet.ImageSetLabel
local Images = UIBlox.App.ImageSet.Images

local SelfieViewModule = script.Parent.Parent.Parent.SelfieView
local SelfieView = require(SelfieViewModule)
local VoiceChatServiceManager = require(RobloxGui.Modules.VoiceChat.VoiceChatServiceManager).default
local ChromeService = require(script.Parent.Parent.Service)
local RedVoiceDot = require(script.Parent.RedVoiceDot)
local Constants = require(script.Parent.Parent.Unibar.Constants)
local GetFFlagSupportCompactUtility = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagSupportCompactUtility
local GetFFlagTweakedMicPinning = require(script.Parent.Parent.Flags.GetFFlagTweakedMicPinning)
local GetFFlagUseNewUnibarIcon = require(script.Parent.Parent.Flags.GetFFlagUseNewUnibarIcon)
local GetFFlagUsePolishedAnimations = require(script.Parent.Parent.Flags.GetFFlagUsePolishedAnimations)
local GetFFlagUseSelfieViewFlatIcon = require(script.Parent.Parent.Flags.GetFFlagUseSelfieViewFlatIcon)
local GetFFlagSelfieViewRedStatusDot = require(SelfieViewModule.Flags.GetFFlagSelfieViewRedStatusDot)

local UNIBAR_ICON = Images["icons/actions/overflow"]
local UNIBAR_ICON_SIZE = if GetFFlagUseNewUnibarIcon() then 32 else Constants.ICON_SIZE

local buttonPressed

function ToggleMenuButton(props)
	local toggleIconTransition = props.toggleTransition
	local style = useStyle()

	local hasCurrentUtility = false
	if GetFFlagSupportCompactUtility() then
		hasCurrentUtility = if ChromeService:getCurrentUtility():get() then true else false
	end

	local iconColor = style.Theme.IconEmphasis

	return React.createElement("Frame", {
		Size = UDim2.new(0, 36, 0, 36),
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
			Name = if GetFFlagUseNewUnibarIcon() then "Overflow" else "Cube",
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.new(0.5, 0, 0.5, 0),
			BackgroundTransparency = 1,
			Image = if GetFFlagUseNewUnibarIcon() then UNIBAR_ICON else Images["icons/menu/AR"],
			Size = toggleIconTransition:map(function(value: any): any
				value = 1 - value
				return UDim2.new(0, UNIBAR_ICON_SIZE * value, 0, UNIBAR_ICON_SIZE * value)
			end),
			Visible = if GetFFlagUsePolishedAnimations()
				then toggleIconTransition:map(function(value: any): any
					if value == 1 then
						buttonPressed = false
					end
					return buttonPressed or ChromeService:status():get() == ChromeService.MenuStatus.Closed
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
			AnchorPoint = if GetFFlagUseNewUnibarIcon() or GetFFlagUsePolishedAnimations()
				then Vector2.new(0.5, 0.5)
				else Vector2.new(0.5, 0),
			Size = toggleIconTransition:map(function(value: any): any
				return UDim2.new(0, 16 * value, 0, 2)
			end),
			Visible = if GetFFlagSupportCompactUtility() then not hasCurrentUtility else nil,
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
			AnchorPoint = if GetFFlagUseNewUnibarIcon() or GetFFlagUsePolishedAnimations()
				then Vector2.new(0.5, 0.5)
				else Vector2.new(0.5, 0),
			Size = toggleIconTransition:map(function(value: any): any
				return UDim2.new(0, 16 * value, 0, 2)
			end),
			Visible = if GetFFlagSupportCompactUtility() then not hasCurrentUtility else nil,
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
				return UDim2.new(0, 16 * value, 0, 16 * value)
			end),
			Visible = if GetFFlagUsePolishedAnimations()
				then toggleIconTransition:map(function(_)
					return not (buttonPressed or ChromeService:status():get() == ChromeService.MenuStatus.Closed)
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
					position = UDim2.new(1, -7, 1, -7),
				}),
			}) :: any,
		if GetFFlagUseSelfieViewFlatIcon()
			then React.createElement("Frame", {
				Name = if GetFFlagSelfieViewRedStatusDot()
					then "RedCameraDotVisibleContainer"
					else "GreenCameraDotVisibleContiner",

				Visible = toggleIconTransition:map(function(value: any): any
					return value < 0.5
				end),
				Size = UDim2.new(1, 0, 1, 0),
				BorderSizePixel = 0,
				BackgroundTransparency = 1,
			}, {
				SelfieView.useCameraOn() and React.createElement(SelfieView.CameraStatusDot, {
					Position = if GetFFlagSelfieViewRedStatusDot()
						then UDim2.new(1, -7, 1, -7)
						else if not GetFFlagTweakedMicPinning() and not VoiceChatServiceManager.localMuted
							then UDim2.new(1, -7, 1, -12)
							else UDim2.new(1, -7, 1, -8),
					ZIndex = 2,
				}),
			})
			else nil,
	})
end

return ChromeService:register({
	id = "chrome_toggle",
	label = "CoreScripts.TopBar.MenuToggle",
	hideNotificationCountWhileOpen = true,
	flashNotificationSource = true,
	activated = function()
		if GetFFlagSupportCompactUtility() and not GetFFlagUsePolishedAnimations() then
			local currentUtility = ChromeService:getCurrentUtility():get()
			if currentUtility then
				ChromeService:toggleCompactUtility(currentUtility)
			else
				ChromeService:toggleOpen()
			end
		else
			ChromeService:toggleOpen()
		end
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
