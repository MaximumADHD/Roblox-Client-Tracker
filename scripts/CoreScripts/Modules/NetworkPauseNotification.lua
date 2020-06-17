local FADE_DURATION = 0.03 * 5
local PULSE_DURATION = 0.03 * 20

local PULSE_SIZE = UDim2.new(1.1, 0, 1.1, 0)
local PULSE_TRANSPARENCY = 0.75
local PULSE_ORIGINAL_SIZE = UDim2.new(0.9, 0, 0.9, 0)
local PULSE_ORIGINAL_TRANSPARENCY = 0

local TweenService = game:GetService("TweenService")
local CoreGuiService = game:GetService("CoreGui")
local RobloxGui = CoreGuiService:WaitForChild("RobloxGui")
local CoreGuiModules = RobloxGui:WaitForChild("Modules")

local RobloxTranslator = require(CoreGuiModules.RobloxTranslator)
local create = require(CoreGuiModules.Common.Create)

-- animations presets
local fadeTweenInfo = TweenInfo.new(FADE_DURATION, Enum.EasingStyle.Sine)
local pulseTweenInfo = TweenInfo.new(PULSE_DURATION, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, -1, true)

local FFlagLocalizeGameplayPaused = game:DefineFastFlag("LocalizeGameplayPaused", false)

-- gui builder
local function build()

	return create "ImageLabel" {

		Name = "NetworkPause",
		Image = "rbxasset://textures/ui/PurchasePrompt/LoadingBG.png",
		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = Rect.new(8, 8, 12, 12),
		AnchorPoint = Vector2.new(0.5, 0.5),
		Size = UDim2.new(1, 0, 1, 0),
		Position = UDim2.new(0.5, 0, 0.5, 0),
		ImageColor3 = Color3.fromRGB(122, 122, 122),
		ImageTransparency = 1,
		BackgroundTransparency = 1,
	
		create "UISizeConstraint" {
			MaxSize = Vector2.new(312, 251)
		},
	
		create "UIPadding" {
			PaddingTop = UDim.new(0, 24),
			PaddingLeft = UDim.new(0, 24),
			PaddingRight = UDim.new(0, 24),
			PaddingBottom = UDim.new(0, 24)
		},
	
		create "Frame" {
			Name = "Accent",
			BorderSizePixel = 0,
			BackgroundColor3 = Color3.fromRGB(66, 66, 66),
			Size = UDim2.new(1, 0, 0, 1),
			Position = UDim2.new(0, 0, 0, 88),
			BackgroundTransparency = 1
		},
	
		create "Frame" {
	
			Name = "Upper",
			Size = UDim2.new(1, 0, 0, 88),
			BackgroundTransparency = 1,
	
			create "Frame" {
	
				Name = "IconContainer",
				Size = UDim2.new(0, 40, 0, 37),
				AnchorPoint = Vector2.new(0.5, 0),
				Position = UDim2.new(0.5, 0, 0, 0),
				BackgroundTransparency = 1,
	
				create "ImageLabel" {
					Name = "Icon",
					BackgroundTransparency = 1,
					Image = "rbxasset://textures/ui/NetworkPause/no connection.png",
					Size = PULSE_ORIGINAL_SIZE,
					Position = UDim2.new(0.5, 0, 0.88, 0),
					AnchorPoint = Vector2.new(0.5, 0.88),
					ImageTransparency = 1
				}
	
			},
	
			create "TextLabel" {
				Name = "Label",
				Font = Enum.Font.GothamBold,
				Text = FFlagLocalizeGameplayPaused and RobloxTranslator:FormatByKey("InGame.GameplayPaused.Title")
					or "Gameplay Paused",
				TextSize = 22,
				TextWrapped = true,
				Size = UDim2.new(1, 0, 0, 22),
				Position = UDim2.new(0, 0, 0, 54),
				BackgroundTransparency = 1,
				TextColor3 = Color3.fromRGB(255, 255, 255),
				TextTransparency = 1
			}
	
		},
	
		create "TextLabel" {
			Name = "Lower",
			Font = Enum.Font.Gotham,
			Text = FFlagLocalizeGameplayPaused and RobloxTranslator:FormatByKey("InGame.GameplayPaused.Body")
				or "Gameplay has been paused: please wait while the game content loads.",
			TextColor3 = Color3.fromRGB(190, 190, 190),
			TextSize = 18,
			TextWrapped = true,
			Position = UDim2.new(0, 0, 0, 89),
			Size = UDim2.new(1, 0, 1, -89),
			BackgroundTransparency = 1,
			TextTransparency = 1
		}

	}

end

local Notification = {}
Notification.__index = Notification

function Notification.new()
	local self = setmetatable({}, Notification)
	local gui = build()

	gui:GetPropertyChangedSignal("ImageTransparency"):Connect(function ()
		local transparency = gui.ImageTransparency
		gui.Lower.TextTransparency = transparency
		gui.Accent.BackgroundTransparency = transparency
		gui.Upper.Label.TextTransparency = transparency
		gui.Upper.IconContainer.Icon.ImageTransparency = transparency
	end)

	local anim_showNotification = TweenService:Create(gui, fadeTweenInfo, { ImageTransparency = 0 })
	local anim_hideNotification = TweenService:Create(gui, fadeTweenInfo, { ImageTransparency = 1 })
	
	local anim_pulse = TweenService:Create(gui.Upper.IconContainer.Icon, pulseTweenInfo, {
		Size = PULSE_SIZE,
		ImageTransparency = PULSE_TRANSPARENCY
	})

	anim_showNotification.Completed:Connect(function (state)
		if state == Enum.PlaybackState.Completed then
			gui.Upper.IconContainer.Icon.ImageTransparency = PULSE_ORIGINAL_TRANSPARENCY
			anim_pulse:Play()
		end
	end)

	self.__gui = gui
	self.__animations = {
		show = anim_showNotification,
		hide = anim_hideNotification,
		pulse = anim_pulse
	}

	return self
end

function Notification:Show()
	self.__gui.Upper.IconContainer.Icon.Size = PULSE_ORIGINAL_SIZE
	self.__animations.show:Play()
end

function Notification:Hide()
	self.__animations.pulse:Cancel()
	self.__animations.hide:Play()
end

function Notification:SetParent(parent)
	self.__gui.Parent = parent
end

return Notification
