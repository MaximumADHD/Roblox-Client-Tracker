local FADE_DURATION = 0.03 * 5
local PULSE_DURATION = 0.03 * 20

local PULSE_SIZE = UDim2.new(1.1, 0, 1.1, 0)
local PULSE_TRANSPARENCY = 0.75
local PULSE_ORIGINAL_SIZE = UDim2.new(0.9, 0, 0.9, 0)
local PULSE_ORIGINAL_TRANSPARENCY = 0

local TweenService = game:GetService("TweenService")
local CorePackages = game:GetService("CorePackages")
local AppFonts = require(CorePackages.Workspace.Packages.Style).AppFonts

local RobloxTranslator = require(CorePackages.Workspace.Packages.RobloxTranslator)
local Create = require(CorePackages.Workspace.Packages.AppCommonLib).Create

-- animations presets
local fadeTweenInfo = TweenInfo.new(FADE_DURATION, Enum.EasingStyle.Sine)
local pulseTweenInfo = TweenInfo.new(PULSE_DURATION, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, -1, true)

local FFlagLocalizeGameplayPaused = game:DefineFastFlag("LocalizeGameplayPaused", false)
local FFlagNetworkPauseNotifTweenCancel = game:DefineFastFlag("NetworkPauseNotifTweenCancel", false)

-- gui builder
local function build()

	local initTransparency = 0 
	return Create "ImageLabel" {

		Name = "NetworkPause",
		Image = "rbxasset://textures/ui/PurchasePrompt/LoadingBG.png",
		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = Rect.new(8, 8, 12, 12),
		AnchorPoint = Vector2.new(0.5, 0.5),
		Size = UDim2.new(1, 0, 1, 0),
		Position = UDim2.new(0.5, 0, 0.5, 0),
		ImageColor3 = Color3.fromRGB(122, 122, 122),
		ImageTransparency = initTransparency,
		BackgroundTransparency = 1,
	
		Create "UISizeConstraint" {
			MaxSize = Vector2.new(312, 251)
		},
	
		Create "UIPadding" {
			PaddingTop = UDim.new(0, 24),
			PaddingLeft = UDim.new(0, 24),
			PaddingRight = UDim.new(0, 24),
			PaddingBottom = UDim.new(0, 24)
		},
	
		Create "Frame" {
			Name = "Accent",
			BorderSizePixel = 0,
			BackgroundColor3 = Color3.fromRGB(66, 66, 66),
			Size = UDim2.new(1, 0, 0, 1),
			Position = UDim2.new(0, 0, 0, 88),
			BackgroundTransparency = initTransparency
		},
	
		Create "Frame" {
	
			Name = "Upper",
			Size = UDim2.new(1, 0, 0, 88),
			BackgroundTransparency = 1,
	
			Create "Frame" {
	
				Name = "IconContainer",
				Size = UDim2.new(0, 40, 0, 37),
				AnchorPoint = Vector2.new(0.5, 0),
				Position = UDim2.new(0.5, 0, 0, 0),
				BackgroundTransparency = 1,
	
				Create "ImageLabel" {
					Name = "Icon",
					BackgroundTransparency = 1,
					Image = "rbxasset://textures/ui/NetworkPause/no connection.png",
					Size = PULSE_ORIGINAL_SIZE,
					Position = UDim2.new(0.5, 0, 0.88, 0),
					AnchorPoint = Vector2.new(0.5, 0.88),
					ImageTransparency = initTransparency
				}
	
			},
	
			Create "TextLabel" {
				Name = "Label",
				Font = AppFonts.default:getBold(),
				Text = FFlagLocalizeGameplayPaused and RobloxTranslator:FormatByKey("InGame.GameplayPaused.Title")
					or "Gameplay Paused",
				TextSize = 22,
				TextWrapped = true,
				Size = UDim2.new(1, 0, 0, 22),
				Position = UDim2.new(0, 0, 0, 54),
				BackgroundTransparency = 1,
				TextColor3 = Color3.fromRGB(255, 255, 255),
				TextTransparency = initTransparency
			}
	
		},
	
		Create "TextLabel" {
			Name = "Lower",
			Font = AppFonts.default:getDefault(),
			Text = FFlagLocalizeGameplayPaused and RobloxTranslator:FormatByKey("InGame.GameplayPaused.Body")
				or "Gameplay has been paused: please wait while the game content loads.",
			TextColor3 = Color3.fromRGB(190, 190, 190),
			TextSize = 18,
			TextWrapped = true,
			Position = UDim2.new(0, 0, 0, 89),
			Size = UDim2.new(1, 0, 1, -89),
			BackgroundTransparency = 1,
			TextTransparency = initTransparency
		}

	}

end

local Notification = {}
Notification.__index = Notification

function Notification.new()
	local self = setmetatable({}, Notification)
	local gui = build()

	local anim_showNotification = TweenService:Create(gui, fadeTweenInfo, { ImageTransparency = 0 })
	local anim_hideNotification = TweenService:Create(gui, fadeTweenInfo, { ImageTransparency = 1 })
	
	local anim_pulse = TweenService:Create(gui.Upper.IconContainer.Icon, pulseTweenInfo, {
		Size = PULSE_SIZE,
		ImageTransparency = PULSE_TRANSPARENCY
	})

	self.__gui = gui
	self.__guiParent = nil
	self.__show = false
	self.__animations = {
		show = anim_showNotification,
		hide = anim_hideNotification,
		pulse = anim_pulse
	}

	return self
end

function Notification:Show()
	self.__gui.Upper.IconContainer.Icon.Size = PULSE_ORIGINAL_SIZE
	self.__gui.Upper.IconContainer.Icon.ImageTransparency = PULSE_ORIGINAL_TRANSPARENCY
	self.__show = true
	self.__gui.Parent = self.__guiParent
	self.__animations.pulse:Play()
end

function Notification:Hide()
	self.__show = false
	self.__gui.Parent = nil
	self.__animations.pulse:Cancel()
end

function Notification:SetParent(parent)
	self.__guiParent = parent
	if self.__show then
		self.__gui.Parent = parent
	end
end

return Notification
