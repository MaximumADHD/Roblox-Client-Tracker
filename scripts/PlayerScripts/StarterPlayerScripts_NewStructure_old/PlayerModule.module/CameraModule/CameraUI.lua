local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")

local LocalPlayer = Players.LocalPlayer
if not LocalPlayer then
	Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
	LocalPlayer = Players.LocalPlayer
end

local function waitForChildOfClass(parent, class)
	local child = parent:FindFirstChildOfClass(class)
	while not child or child.ClassName ~= class do
		child = parent.ChildAdded:Wait()
	end
	return child
end

local PlayerGui = waitForChildOfClass(LocalPlayer, "PlayerGui")

local TOAST_OPEN_SIZE = UDim2.new(0, 326, 0, 58)
local TOAST_CLOSED_SIZE = UDim2.new(0, 80, 0, 58)
local TOAST_BACKGROUND_COLOR = Color3.fromRGB(32, 32, 32)
local TOAST_BACKGROUND_TRANS = 0.4
local TOAST_FOREGROUND_COLOR = Color3.fromRGB(200, 200, 200)
local TOAST_FOREGROUND_TRANS = 0

-- Convenient syntax for creating a tree of instanes
local function create(className)
	return function(props)
		local inst = Instance.new(className)
		local parent = props.Parent
		props.Parent = nil
		for name, val in pairs(props) do
			if type(name) == "string" then
				inst[name] = val
			else
				val.Parent = inst
			end
		end
		-- Only set parent after all other properties are initialized
		inst.Parent = parent
		return inst
	end
end

local initialized = false

local uiRoot
local toast
local toastIcon
local toastUpperText
local toastLowerText

local function initializeUI()
	assert(not initialized)

	uiRoot = create("ScreenGui"){
		Name = "RbxCameraUI",
		AutoLocalize = false,
		Enabled = true,
		DisplayOrder = -1, -- Appears behind default developer UI
		IgnoreGuiInset = false,
		ResetOnSpawn = false,
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling,

		create("ImageLabel"){
			Name = "Toast",
			Visible = false,
			AnchorPoint = Vector2.new(0.5, 0),
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			Position = UDim2.new(0.5, 0, 0, 8),
			Size = TOAST_CLOSED_SIZE,
			Image = "rbxasset://textures/ui/Camera/CameraToast9Slice.png",
			ImageColor3 = TOAST_BACKGROUND_COLOR,
			ImageRectSize = Vector2.new(6, 6),
			ImageTransparency = 1,
			ScaleType = Enum.ScaleType.Slice,
			SliceCenter = Rect.new(3, 3, 3, 3),
			ClipsDescendants = true,

			create("Frame"){
				Name = "IconBuffer",
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Position = UDim2.new(0, 0, 0, 0),
				Size = UDim2.new(0, 80, 1, 0),

				create("ImageLabel"){
					Name = "Icon",
					AnchorPoint = Vector2.new(0.5, 0.5),
					BackgroundTransparency = 1,
					Position = UDim2.new(0.5, 0, 0.5, 0),
					Size = UDim2.new(0, 48, 0, 48),
					ZIndex = 2,
					Image = "rbxasset://textures/ui/Camera/CameraToastIcon.png",
					ImageColor3 = TOAST_FOREGROUND_COLOR,
					ImageTransparency = 1,
				}
			},

			create("Frame"){
				Name = "TextBuffer",
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Position = UDim2.new(0, 80, 0, 0),
				Size = UDim2.new(1, -80, 1, 0),
				ClipsDescendants = true,

				create("TextLabel"){
					Name = "Upper",
					AnchorPoint = Vector2.new(0, 1),
					BackgroundTransparency = 1,
					Position = UDim2.new(0, 0, 0.5, 0),
					Size = UDim2.new(1, 0, 0, 19),
					Font = Enum.Font.GothamSemibold,
					Text = "Camera control enabled",
					TextColor3 = TOAST_FOREGROUND_COLOR,
					TextTransparency = 1,
					TextSize = 19,
					TextXAlignment = Enum.TextXAlignment.Left,
					TextYAlignment = Enum.TextYAlignment.Center,
				},

				create("TextLabel"){
					Name = "Lower",
					AnchorPoint = Vector2.new(0, 0),
					BackgroundTransparency = 1,
					Position = UDim2.new(0, 0, 0.5, 3),
					Size = UDim2.new(1, 0, 0, 15),
					Font = Enum.Font.Gotham,
					Text = "Right mouse button to toggle",
					TextColor3 = TOAST_FOREGROUND_COLOR,
					TextTransparency = 1,
					TextSize = 15,
					TextXAlignment = Enum.TextXAlignment.Left,
					TextYAlignment = Enum.TextYAlignment.Center,
				},
			},
		},

		Parent = PlayerGui,
	}

	toast = uiRoot.Toast
	toastIcon = toast.IconBuffer.Icon
	toastUpperText = toast.TextBuffer.Upper
	toastLowerText = toast.TextBuffer.Lower

	initialized = true
end

local CameraUI = {}

do
	-- Instantaneously disable the toast or enable for opening later on. Used when switching camera modes.
	function CameraUI.setCameraModeToastEnabled(enabled)
		if not enabled and not initialized then
			return
		end

		if not initialized then
			initializeUI()
		end

		toast.Visible = enabled
		if not enabled then
			CameraUI.setCameraModeToastOpen(false)
		end
	end

	local tweenInfo = TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)

	-- Tween the toast in or out. Toast must be enabled with setCameraModeToastEnabled.
	function CameraUI.setCameraModeToastOpen(open)
		assert(initialized)

		TweenService:Create(toast, tweenInfo, {
			Size = open and TOAST_OPEN_SIZE or TOAST_CLOSED_SIZE,
			ImageTransparency = open and TOAST_BACKGROUND_TRANS or 1,
		}):Play()

		TweenService:Create(toastIcon, tweenInfo, {
			ImageTransparency = open and TOAST_FOREGROUND_TRANS or 1,
		}):Play()

		TweenService:Create(toastUpperText, tweenInfo, {
			TextTransparency = open and TOAST_FOREGROUND_TRANS or 1,
		}):Play()

		TweenService:Create(toastLowerText, tweenInfo, {
			TextTransparency = open and TOAST_FOREGROUND_TRANS or 1,
		}):Play()
	end
end

return CameraUI
