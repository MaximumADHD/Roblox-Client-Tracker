--[[
		// Filename: PurchasePromptScript2.lua
		// Version 1.0
		// Release 186
		// Written by: jeditkacheff/jmargh
		// Description: Handles in game purchases
]]--

local success, result = pcall(function() return settings():GetFFlag('UsePurchasePromptLocalization') end)
local FFlagUsePurchasePromptLocalization = success and result

local FFlagThwartPurchasePromptScams = settings():GetFFlag("ThwartPurchasePromptScams")
local FFlagThwartPurchasePromptScamsGamepad = settings():GetFFlag("ThwartPurchasePromptScamsGamepad")
local FFlagDelayPurchasePromptActivation = settings():GetFFlag("DelayPurchasePromptActivation")
local FFlagWeDontWantAnyGoogleAnalyticsHerePlease = settings():GetFFlag("WeDontWantAnyGoogleAnalyticsHerePlease")

local AssetService = game:GetService('AssetService')
local GuiService = game:GetService('GuiService')
local HttpService = game:GetService('HttpService')
local HttpRbxApiService = game:GetService('HttpRbxApiService')
local InsertService = game:GetService('InsertService')
local MarketplaceService = game:GetService('MarketplaceService')
local Players = game:GetService('Players')
local UserInputService = game:GetService('UserInputService')
local RunService = game:GetService("RunService")
local AnalyticsService = game:GetService("AnalyticsService")

local RobloxGui = script.Parent
local ThirdPartyProductName = nil

local RobloxTranslator
local FFlagCoreScriptsUseLocalizationModule = settings():GetFFlag('CoreScriptsUseLocalizationModule')
if FFlagCoreScriptsUseLocalizationModule then
	RobloxTranslator = require(RobloxGui.Modules.RobloxTranslator)
end

local function LocalizedGetString(key, rtv)
	pcall(function()
		if FFlagCoreScriptsUseLocalizationModule then
			rtv = RobloxTranslator:FormatByKey(key)
		else
			local LocalizationService = game:GetService("LocalizationService")
			local CorescriptLocalization = LocalizationService:GetCorescriptLocalizations()[1]
			rtv = CorescriptLocalization:GetString(LocalizationService.RobloxLocaleId, key)
		end
	end)
	return rtv
end

local platform = UserInputService:GetPlatform()
local IsNativePurchasing = platform == Enum.Platform.XBoxOne or
							platform == Enum.Platform.IOS or
							platform == Enum.Platform.Android or
							platform == Enum.Platform.UWP

local IsCurrentlyPrompting = false
local IsCurrentlyPurchasing = false
local IsPurchasingConsumable = false
local IsPurchasingGamePass = false
local IsCheckingPlayerFunds = false
RobloxGui:WaitForChild("Modules"):WaitForChild("TenFootInterface")
local TenFootInterface = require(RobloxGui.Modules.TenFootInterface)
local isTenFootInterface = TenFootInterface:IsEnabled()
local freezeControllerActionName = "doNothingActionPrompt"
local freezeThumbstick1Name = "doNothingThumbstickPrompt"
local freezeThumbstick2Name = "doNothingThumbstickPrompt"
local _,largeFont = pcall(function() return Enum.FontSize.Size42 end)
largeFont = largeFont or Enum.FontSize.Size36
local scaleFactor = 3
local purchaseState = nil
local buttonsActive = false

local PurchaseData = {
	AssetId = nil,
	ProductId = nil,
	CurrencyType = nil,
	EquipOnPurchase = nil,
	ProductInfo = nil,
	ItemDescription = nil,
}

local BASE_URL = game:GetService('ContentProvider').BaseUrl:lower()
BASE_URL = string.gsub(BASE_URL, "/m.", "/www.")
local THUMBNAIL_URL = BASE_URL.."thumbs/asset.ashx?assetid="
-- Images
local BG_IMAGE = 'rbxasset://textures/ui/Modal.png'
local PURCHASE_BG = 'rbxasset://textures/ui/LoadingBKG.png'
local BUTTON_LEFT = 'rbxasset://textures/ui/ButtonLeft.png'
local BUTTON_LEFT_DOWN = 'rbxasset://textures/ui/ButtonLeftDown.png'
local BUTTON_RIGHT = 'rbxasset://textures/ui/ButtonRight.png'
local BUTTON_RIGHT_DOWN = 'rbxasset://textures/ui/ButtonRightDown.png'
local BUTTON = 'rbxasset://textures/ui/SingleButton.png'
local BUTTON_DOWN = 'rbxasset://textures/ui/SingleButtonDown.png'
local ROBUX_ICON = 'rbxasset://textures/ui/RobuxIcon.png'
local TIX_ICON = 'rbxasset://textures/ui/TixIcon.png'
local ERROR_ICON = 'rbxasset://textures/ui/ErrorIcon.png'
local A_BUTTON = "rbxasset://textures/ui/Settings/Help/AButtonDark.png"
local B_BUTTON = "rbxasset://textures/ui/Settings/Help/BButtonDark.png"
local DEFAULT_XBOX_IMAGE = 'rbxasset://textures/ui/Shell/Icons/ROBUXIcon@1080.png'

local CONTROLLER_CONFIRM_ACTION_NAME = "CoreScriptPurchasePromptControllerConfirm"
local CONTROLLER_CANCEL_ACTION_NAME = "CoreScriptPurchasePromptControllerCancel"
local GAMEPAD_BUTTONS = {}

local ERROR_MSG = {
	PURCHASE_DISABLED = "In-game purchases are temporarily disabled",
	INVALID_FUNDS = "your account does not have enough ROBUX",
	UNKNOWN = "ROBLOX is performing maintenance",
	UNKNWON_FAILURE = "something went wrong"
}
local PURCHASE_MSG = {
	SUCCEEDED = "Your purchase of itemName succeeded!",
	FAILED = "Your purchase of itemName failed because errorReason. Your account has not been charged. Please try again later.",
	PURCHASE = "Want to buy the assetType\nitemName for",
	PURCHASE_TIX = "Want to buy the assetType\nitemName for",
	FREE = "Would you like to take the assetType itemName for FREE?",
	FREE_BALANCE = "Your account balance will not be affected by this transaction.",
	BALANCE_FUTURE = "Your balance after this transaction will be ",
	BALANCE_NOW = "Your balance is now ",
	ALREADY_OWN = "You already own this item. Your account has not been charged.",
	MOCK_PURCHASE = "This is a test purchase; your account will not be charged.",
	MOCK_PURCHASE_SUCCESS = "This was a test purchase."
}
local PURCHASE_FAILED = {
	DEFAULT_ERROR = 0,
	IN_GAME_PURCHASE_DISABLED = 1,
	CANNOT_GET_BALANCE = 2,
	CANNOT_GET_ITEM_PRICE = 3,
	NOT_FOR_SALE = 4,
	NOT_ENOUGH_TIX = 5,
	UNDER_13 = 6,
	LIMITED = 7,
	DID_NOT_BUY_ROBUX = 8,
	PROMPT_PURCHASE_ON_GUEST = 9,
	THIRD_PARTY_DISABLED = 10,
}
local PURCHASE_STATE = {
	DEFAULT = 1,
	FAILED = 2,
	SUCCEEDED = 3,
	BUYITEM = 4,
	BUYROBUX = 5,
	BUYINGROBUX = 6,
	BUYBC = 7
}

local function studioMockPurchasesEnabled()
	local result = false
	pcall(function() result = game:GetService("RunService"):IsStudio() end)
	return result
end

local BC_LVL_TO_STRING = {
	"Builders Club",
	"Turbo Builders Club",
	"Outrageous Builders Club",
}
local ASSET_TO_STRING = {
	[1]  = "Image";
	[2]  = "T-Shirt";
	[3]  = "Audio";
	[4]  = "Mesh";
	[5]  = "Lua";
	[6]  = "HTML";
	[7]  = "Text";
	[8]  = "Hat";
	[9]  = "Place";
	[10] = "Model";
	[11] = "Shirt";
	[12] = "Pants";
	[13] = "Decal";
	[16] = "Avatar";
	[17] = "Head";
	[18] = "Face";
	[19] = "Gear";
	[21] = "Badge";
	[22] = "Group Emblem";
	[24] = "Animation";
	[25] = "Arms";
	[26] = "Legs";
	[27] = "Torso";
	[28] = "Right Arm";
	[29] = "Left Arm";
	[30] = "Left Leg";
	[31] = "Right Leg";
	[32] = "Package";
	[33] = "YouTube Video";
	[34] = "Game Pass";
	[38] = "Plugin";
	[39] = "SolidModel";
	[40] = "MeshPart";
	[41] = "Hair Accessory";
	[42] = "Face Accessory";
	[43] = "Neck Accessory";
	[44] = "Shoulder Accessory";
	[45] = "Front Accessory";
	[46] = "Back Accessory";
	[47] = "Waist Accessory";
	[48] = "Climb Animation";
	[50] = "Fall Animation";
	[51] = "Idle Animation";
	[52] = "Jump Animation";
	[53] = "Run Animation";
	[54] = "Swim Animation";
	[55] = "Walk Animation";
	[56] = "Pose Animation";
	[57] = "Ear Accessory";
	[58] = "Eye Accessory";
	[0]  = "Product";
	-- NOTE: GamePass and Plugin AssetTypeIds are now in sync on ST1, ST2 and ST3
}

local BC_ROBUX_PRODUCTS = { 90, 180, 270, 360, 450, 1000, 2750 }
local NON_BC_ROBUX_PRODUCTS = { 80, 160, 240, 320, 400, 800, 2000 }

local DIALOG_SIZE = UDim2.new(0, 324, 0, 180)
local DIALOG_SIZE_TENFOOT = UDim2.new(0, 324*scaleFactor, 0, 180*scaleFactor)
local SHOW_POSITION = UDim2.new(0.5, -162, 0.5, -90)
local SHOW_POSITION_TENFOOT = UDim2.new(0.5, -162*scaleFactor, 0.5, -90*scaleFactor)
local HIDE_POSITION = UDim2.new(0.5, -162, 0, -181)
local HIDE_POSITION_TENFOOT = UDim2.new(0.5, -162*scaleFactor, 0, -180*scaleFactor - 1)
local BTN_SIZE = UDim2.new(0, 162, 0, 44)
local BTN_SIZE_TENFOOT = UDim2.new(0, 162*scaleFactor, 0, 44*scaleFactor)
local BODY_SIZE = UDim2.new(0, 324, 0, 136)
local BODY_SIZE_TENFOOT = UDim2.new(0, 324*scaleFactor, 0, 136*scaleFactor)
local TWEEN_TIME = 0.3

local BTN_L_POS = UDim2.new(0, 0, 0, 136)
local BTN_L_POS_TENFOOT = UDim2.new(0, 0, 0, 136*scaleFactor)
local BTN_R_POS = UDim2.new(0.5, 0, 0, 136)
local BTN_R_POS_TENFOOT = UDim2.new(0.5, 0, 0, 136*scaleFactor)

local function lerp( start, finish, t)
	return (1 - t) * start + t * finish
end

local function formatNumber(value)
	return tostring(tostring(value):reverse():gsub("%d%d%d", "%1,"):reverse():gsub("^,", ""))
end

local function createFrame(name, size, position, bgTransparency, bgColor)
	local frame = Instance.new('Frame')
	frame.Name = name
	frame.Size = size
	frame.Position = position or UDim2.new(0, 0, 0, 0)
	frame.BackgroundTransparency = bgTransparency
	frame.BackgroundColor3 = bgColor or Color3.new()
	frame.BorderSizePixel = 0
	frame.ZIndex = 8

	return frame
end

local function createTextLabel(name, size, position, font, fontSize, text)
	local textLabel = Instance.new('TextLabel')
	textLabel.Name = name
	textLabel.Size = size or UDim2.new(0, 0, 0, 0)
	textLabel.Position = position
	textLabel.BackgroundTransparency = 1
	textLabel.Font = font
	textLabel.FontSize = fontSize
	textLabel.TextColor3 = Color3.new(1, 1, 1)
	textLabel.Text = text
	textLabel.ZIndex = 8

	return textLabel
end

local function createImageLabel(name, size, position, image)
	local imageLabel = Instance.new('ImageLabel')
	imageLabel.Name = name
	imageLabel.Size = size
	imageLabel.BackgroundTransparency = 1
	imageLabel.Position = position
	imageLabel.Image = image

	return imageLabel
end

local function createImageButtonWithText(name, position, image, imageDown, text, font)
	local imageButton = Instance.new('ImageButton')
	imageButton.Name = name
	imageButton.Size = isTenFootInterface and BTN_SIZE_TENFOOT or BTN_SIZE
	imageButton.Position = position
	imageButton.Image = image
	imageButton.BackgroundTransparency = 1
	imageButton.AutoButtonColor = false
	imageButton.ZIndex = 8
	imageButton.Modal = true

	local textLabel = nil
	if FFlagUsePurchasePromptLocalization then
		textLabel = createTextLabel(name.."Text", UDim2.new(0.6, 0, 0.8, 0), UDim2.new(0.2, 0, 0.1, 0), font, isTenFootInterface and largeFont or Enum.FontSize.Size24, text)
		textLabel.ZIndex = 9
		textLabel.Parent = imageButton
		textLabel.TextScaled = true
		textLabel.TextWrapped = true
		local textSizeConstraint = Instance.new("UITextSizeConstraint",textLabel)
		textSizeConstraint.MaxTextSize = textLabel.TextSize
	else
		textLabel = createTextLabel(name.."Text", UDim2.new(1, 0, 1, 0), UDim2.new(0, 0, 0, 0), font, isTenFootInterface and largeFont or Enum.FontSize.Size24, text)
		textLabel.ZIndex = 9
		textLabel.Parent = imageButton
	end

	imageButton.MouseEnter:connect(function()
		imageButton.Image = imageDown
	end)
	imageButton.MouseLeave:connect(function()
		imageButton.Image = image
	end)
	imageButton.MouseButton1Click:connect(function()
		imageButton.Image = image
	end)

	return imageButton
end

local PurchaseDialog = isTenFootInterface and createFrame("PurchaseDialog", DIALOG_SIZE_TENFOOT, HIDE_POSITION_TENFOOT, 1, nil) or createFrame("PurchaseDialog", DIALOG_SIZE, HIDE_POSITION, 1, nil)
PurchaseDialog.Visible = false
PurchaseDialog.Parent = RobloxGui

	local ContainerFrame = createFrame("ContainerFrame", UDim2.new(1, 0, 1, 0), nil, 1, nil)
	ContainerFrame.Parent = PurchaseDialog

		local ContainerImage = createImageLabel("ContainerImage", isTenFootInterface and BODY_SIZE_TENFOOT or BODY_SIZE, UDim2.new(0, 0, 0, 0), BG_IMAGE)
		ContainerImage.ZIndex = 8
		ContainerImage.Parent = ContainerFrame

		local ItemPreviewImage
		if isTenFootInterface then
			ItemPreviewImage = createImageLabel("ItemPreviewImage", UDim2.new(0, 64*scaleFactor, 0, 64*scaleFactor), UDim2.new(0, 27*scaleFactor, 0, 20*scaleFactor), "")
		else
			ItemPreviewImage = createImageLabel("ItemPreviewImage", UDim2.new(0, 64, 0, 64), UDim2.new(0, 27, 0, 20), "")
		end
		ItemPreviewImage.ZIndex = 9
		ItemPreviewImage.Parent = ContainerFrame

		local ItemDescriptionText_str = PURCHASE_MSG.PURCHASE
		if FFlagUsePurchasePromptLocalization then
			ItemDescriptionText_str = LocalizedGetString("PurchasePromptScript.PURCHASE_MSG.PURCHASE",ItemDescriptionText_str)
		end

		local ItemDescriptionText = createTextLabel(
			"ItemDescriptionText",
			isTenFootInterface and UDim2.new(0, 210*scaleFactor - 20, 0, 96*scaleFactor) or UDim2.new(0, 210, 0, 96),
			isTenFootInterface and UDim2.new(0, 110*scaleFactor, 0, 18*scaleFactor) or UDim2.new(0, 110, 0, 18),
			Enum.Font.SourceSans,
			isTenFootInterface and Enum.FontSize.Size48 or Enum.FontSize.Size18,
			ItemDescriptionText_str
		)
		ItemDescriptionText.TextXAlignment = Enum.TextXAlignment.Left
		ItemDescriptionText.TextYAlignment = Enum.TextYAlignment.Top
		ItemDescriptionText.TextWrapped = true
		ItemDescriptionText.Parent = ContainerFrame

		local RobuxIcon = createImageLabel("RobuxIcon", isTenFootInterface and UDim2.new(0, 20*scaleFactor, 0, 20*scaleFactor) or UDim2.new(0, 20, 0, 20), UDim2.new(0, 0, 0, 0), ROBUX_ICON)
		RobuxIcon.ZIndex = 9
		RobuxIcon.Visible = false
		RobuxIcon.Parent = ContainerFrame

		local TixIcon = createImageLabel("TixIcon", isTenFootInterface and UDim2.new(0, 20*scaleFactor, 0, 20*scaleFactor) or UDim2.new(0, 20, 0, 20), UDim2.new(0, 0, 0, 0), TIX_ICON)
		TixIcon.ZIndex = 9
		TixIcon.Visible = false
		TixIcon.Parent = ContainerFrame

		local CostText = createTextLabel("CostText", UDim2.new(0, 0, 0, 0), UDim2.new(0, 0, 0, 0),
			Enum.Font.SourceSansBold, isTenFootInterface and largeFont or Enum.FontSize.Size18, "")
		CostText.TextXAlignment = Enum.TextXAlignment.Left
		CostText.Visible = false
		CostText.Parent = ContainerFrame

		local PostBalanceText = createTextLabel("PostBalanceText", UDim2.new(1, -20, 0, 30), isTenFootInterface and UDim2.new(0, 10, 0, 100*scaleFactor) or UDim2.new(0, 10, 0, 100), Enum.Font.SourceSans,
			isTenFootInterface and Enum.FontSize.Size36 or Enum.FontSize.Size14, "")
		PostBalanceText.TextWrapped = true
		PostBalanceText.Parent = ContainerFrame

		local BuyButton = createImageButtonWithText("BuyButton", isTenFootInterface and BTN_L_POS_TENFOOT or BTN_L_POS, BUTTON_LEFT, BUTTON_LEFT_DOWN, "Buy Now", Enum.Font.SourceSansBold)
		BuyButton.Parent = ContainerFrame
		local BuyButtonText = BuyButton:FindFirstChild("BuyButtonText")

		local gamepadButtonXLocation = (BuyButton.AbsoluteSize.X/2 - BuyButtonText.TextBounds.X/2)/2
		local buyButtonGamepadImage = Instance.new("ImageLabel")
		if FFlagUsePurchasePromptLocalization then
			buyButtonGamepadImage.BackgroundTransparency = 1
			buyButtonGamepadImage.Image = A_BUTTON
			buyButtonGamepadImage.Size = UDim2.new(0.75, -8, 0.75, -8)
			buyButtonGamepadImage.SizeConstraint = Enum.SizeConstraint.RelativeYY
			buyButtonGamepadImage.Parent = BuyButton
			buyButtonGamepadImage.Position = UDim2.new(0, buyButtonGamepadImage.AbsoluteSize.x * 0.65, 0.5, 0)
			buyButtonGamepadImage.AnchorPoint = Vector2.new(0.5,0.5)
			buyButtonGamepadImage.Visible = false
			buyButtonGamepadImage.ZIndex = BuyButton.ZIndex
			table.insert(GAMEPAD_BUTTONS, buyButtonGamepadImage)
		else
			buyButtonGamepadImage.BackgroundTransparency = 1
			buyButtonGamepadImage.Image = A_BUTTON
			buyButtonGamepadImage.Size = UDim2.new(1, -8, 1, -8)
			buyButtonGamepadImage.SizeConstraint = Enum.SizeConstraint.RelativeYY
			buyButtonGamepadImage.Parent = BuyButton
			buyButtonGamepadImage.Position = UDim2.new(0, gamepadButtonXLocation - buyButtonGamepadImage.AbsoluteSize.X/2, 0, 5)
			buyButtonGamepadImage.Visible = false
			buyButtonGamepadImage.ZIndex = BuyButton.ZIndex
			table.insert(GAMEPAD_BUTTONS, buyButtonGamepadImage)
		end

		local CancelButton = createImageButtonWithText("CancelButton", isTenFootInterface and BTN_R_POS_TENFOOT or BTN_R_POS, BUTTON_RIGHT, BUTTON_RIGHT_DOWN, "Cancel", Enum.Font.SourceSans)
		CancelButton.Parent = ContainerFrame

		local cancelButtonGamepadImage = buyButtonGamepadImage:Clone()
		cancelButtonGamepadImage.Image = B_BUTTON
		cancelButtonGamepadImage.ZIndex = CancelButton.ZIndex
		cancelButtonGamepadImage.Parent = CancelButton
		table.insert(GAMEPAD_BUTTONS, cancelButtonGamepadImage)

		local BuyRobuxButton = createImageButtonWithText("BuyRobuxButton", isTenFootInterface and BTN_L_POS_TENFOOT or BTN_L_POS, BUTTON_LEFT, BUTTON_LEFT_DOWN, IsNativePurchasing and "Buy" or "Buy R$",
			Enum.Font.SourceSansBold)
		BuyRobuxButton.Visible = false
		BuyRobuxButton.Parent = ContainerFrame

		local buyRobuxGamepadImage = buyButtonGamepadImage:Clone()
		buyRobuxGamepadImage.ZIndex = BuyRobuxButton.ZIndex
		buyRobuxGamepadImage.Parent = BuyRobuxButton
		table.insert(GAMEPAD_BUTTONS, buyRobuxGamepadImage)

		local BuyBCButton = createImageButtonWithText("BuyBCButton", isTenFootInterface and BTN_L_POS_TENFOOT or BTN_L_POS, BUTTON_LEFT, BUTTON_LEFT_DOWN, "Upgrade", Enum.Font.SourceSansBold)
		BuyBCButton.Visible = false
		BuyBCButton.Parent = ContainerFrame

		local buyBCGamepadImage = buyButtonGamepadImage:Clone()
		buyBCGamepadImage.ZIndex = BuyBCButton.ZIndex
		buyBCGamepadImage.Parent = BuyBCButton
		table.insert(GAMEPAD_BUTTONS, buyBCGamepadImage)

		local FreeButton = createImageButtonWithText("FreeButton", isTenFootInterface and BTN_L_POS_TENFOOT or BTN_L_POS, BUTTON_LEFT, BUTTON_LEFT_DOWN, "Take Free", Enum.Font.SourceSansBold)
		FreeButton.Visible = false
		FreeButton.Parent = ContainerFrame

		local OkButton = createImageButtonWithText("OkButton", isTenFootInterface and UDim2.new(0, 2, 0, 136*scaleFactor) or UDim2.new(0, 2, 0, 136), BUTTON, BUTTON_DOWN, "OK", Enum.Font.SourceSans)
		OkButton.Size = isTenFootInterface and UDim2.new(0, 320*scaleFactor, 0, 44*scaleFactor) or UDim2.new(0, 320, 0, 44)
		OkButton.Visible = false
		OkButton.Parent = ContainerFrame

		local okButtonGamepadImage = buyButtonGamepadImage:Clone()
		okButtonGamepadImage.ZIndex = OkButton.ZIndex
		okButtonGamepadImage.Parent = OkButton
		table.insert(GAMEPAD_BUTTONS, okButtonGamepadImage)

		local OkPurchasedButton = createImageButtonWithText("OkPurchasedButton", isTenFootInterface and UDim2.new(0, 2, 0, 136*scaleFactor) or UDim2.new(0, 2, 0, 136), BUTTON, BUTTON_DOWN, "OK", Enum.Font.SourceSans)
		OkPurchasedButton.Size = isTenFootInterface and UDim2.new(0, 320*scaleFactor, 0, 44*scaleFactor) or UDim2.new(0, 320, 0, 44)
		OkPurchasedButton.Visible = false
		OkPurchasedButton.Parent = ContainerFrame

		local okPurchasedGamepadImage = buyButtonGamepadImage:Clone()
		okPurchasedGamepadImage.ZIndex = OkPurchasedButton.ZIndex
		okPurchasedGamepadImage.Parent = OkPurchasedButton
		table.insert(GAMEPAD_BUTTONS, okPurchasedGamepadImage)

	local PurchaseFrame = createImageLabel("PurchaseFrame", UDim2.new(1, 0, 1, 0), UDim2.new(0, 0, 0, 0), PURCHASE_BG)
	PurchaseFrame.ZIndex = 8
	PurchaseFrame.Visible = false
	PurchaseFrame.Parent = PurchaseDialog

		local PurchaseText = createTextLabel("PurchaseText", nil, UDim2.new(0.5, 0, 0.5, -36), Enum.Font.SourceSans,
			isTenFootInterface and largeFont or Enum.FontSize.Size36, "Purchasing")
		PurchaseText.Parent = PurchaseFrame

		local LoadingFrames = {}
		local xOffset = -40
		for i = 1, 3 do
			local frame = createFrame("Loading", UDim2.new(0, 16, 0, 16), UDim2.new(0.5, xOffset, 0.5, 0), 0, Color3.new(132/255, 132/255, 132/255))
			table.insert(LoadingFrames, frame)
			frame.Parent = PurchaseFrame
			xOffset = xOffset + 32
		end

local function noOpFunc() end

local function enableControllerMovement()
	game:GetService("ContextActionService"):UnbindCoreAction(freezeThumbstick1Name)
	game:GetService("ContextActionService"):UnbindCoreAction(freezeThumbstick2Name)
	game:GetService("ContextActionService"):UnbindCoreAction(freezeControllerActionName)
end

local function disableControllerMovement()
	game:GetService("ContextActionService"):BindCoreAction(freezeControllerActionName, noOpFunc, false, Enum.UserInputType.Gamepad1)
	game:GetService("ContextActionService"):BindCoreAction(freezeThumbstick1Name, noOpFunc, false, Enum.KeyCode.Thumbstick1)
	game:GetService("ContextActionService"):BindCoreAction(freezeThumbstick2Name, noOpFunc, false, Enum.KeyCode.Thumbstick2)
end

-- isClickerScam() returns true if any of the following conditions are met:
--   1. The user has pressed ButtonA or clicked on the buy button area `TRACKED_CLICKS` times in the past `REACTION_TIME` seconds
--   2. Mouse is over the button and UserInputService.MouseBehavior has changed to LockCurrentPosition in the past `REACTION_TIME` seconds
local isClickerScam do
	local REACTION_TIME = 1.1 -- Give the user this many seconds to stop clicking
	local TRACKED_CLICKS = 3 -- How many clicks recorded in the last `REACTION_TIME` will count as a clicker scam

	local isOverBuyButton do
		local btnPos0 = Vector2.new() -- Upper-left corner of BuyButton
		local btnPos1 = Vector2.new() -- Lower-right corner of BuyButton

		do -- Update btnPos0 & btnPos1
			local function getOffsetAxes(ud2)
				return Vector2.new(ud2.X.Offset, ud2.Y.Offset)
			end

			local function getScaleAxes(ud2)
				return Vector2.new(ud2.X.Scale, ud2.Y.Scale)
			end

			-- simulatePixelBounds calculates screen-space AABB corners from a hierarchy of gui sizes and positions
			local function simulatePixelBounds(absoluteSize, guis)
				local absolutePosition = Vector2.new()
				for _, elem in ipairs(guis) do
					absolutePosition = absolutePosition + getOffsetAxes(elem.Position) + getScaleAxes(elem.Position)*absoluteSize
					absoluteSize = getOffsetAxes(elem.Size) + getScaleAxes(elem.Size)*absoluteSize
				end
				return absolutePosition, absolutePosition + absoluteSize
			end

			local function updateBuyButtonBounds()
				btnPos0, btnPos1 = simulatePixelBounds(RobloxGui.AbsoluteSize, {
					{ -- PurchaseDialog
						Position = SHOW_POSITION,
						Size = DIALOG_SIZE,
					},
					{ -- BuyButton
						Position = BTN_L_POS,
						Size = BTN_SIZE,
					},
				})
			end

			RobloxGui:GetPropertyChangedSignal("AbsoluteSize"):Connect(updateBuyButtonBounds)
			updateBuyButtonBounds()
		end

		function isOverBuyButton(mousePos)
			local mouseX, mouseY = mousePos.X, mousePos.Y
			return mouseY >= btnPos0.Y and mouseY < btnPos1.Y and mouseX >= btnPos0.X and mouseX < btnPos1.X
		end
	end

	do
		local lastMouseBehaviorChange = 0 -- Timestamp of when the mouse was last locked into position over the buy button area
		local clickStack = {} -- Fixed-size array of timestamps from recent clicks in the BuyButton area, ordered from earliest to latest
		for i = 1, TRACKED_CLICKS do
			clickStack[i] = 0
		end

		do -- Input capturing
			local INPUT_MB1 = Enum.UserInputType.MouseButton1
			local INPUT_MMOVE = Enum.UserInputType.MouseMovement
			local INPUT_TOUCH = Enum.UserInputType.Touch
			local INPUT_BTN_A = Enum.KeyCode.ButtonA

			UserInputService.InputBegan:Connect(function(input, gpe)
				if buttonsActive then return end -- Don't capture input if the purchase prompt is active
				local inputType = input.UserInputType

				local isGamepad = FFlagThwartPurchasePromptScamsGamepad and input.KeyCode == INPUT_BTN_A
				local isMouseOrTouch = inputType == INPUT_MB1 or inputType == INPUT_TOUCH

				if isGamepad or (isMouseOrTouch and isOverBuyButton(input.Position)) then
					-- Push current timestamp to the click stack
					for i = 2, TRACKED_CLICKS do
						clickStack[i - 1] = clickStack[i]
					end
					clickStack[TRACKED_CLICKS] = tick()
				end
			end)

			UserInputService:GetPropertyChangedSignal("MouseBehavior"):Connect(function()
				local lastInputType = UserInputService:GetLastInputType()
				local isMouseInput = lastInputType == INPUT_MB1 or lastInputType == INPUT_MMOVE
				local mousePos = UserInputService:GetMouseLocation() - GuiService:GetGuiInset()
				if UserInputService.MouseBehavior == Enum.MouseBehavior.LockCurrentPosition and isMouseInput and isOverBuyButton(mousePos) then
					lastMouseBehaviorChange = tick()
				end
			end)
		end

		function isClickerScam()
			if not FFlagThwartPurchasePromptScams then
				return false
			end
			-- fastclick: User is told to click the buy button area rapidly.
			-- The purchase prompt slides down and they unwittingly confirm the purchase.
			local fastclick = tick() < REACTION_TIME + clickStack[1]
			-- lockmouse: User is told to click different parts of the screen rapidly.
			-- The mouse locks up over the buy button area, the purchase prompt slides down, and they unwittingly confirm the purchase.
			local lockmouse = tick() < REACTION_TIME + lastMouseBehaviorChange
			return fastclick or lockmouse
		end
	end
end

local function getCurrencyString(currencyType)
	return currencyType == Enum.CurrencyType.Tix and "Tix" or "R$"
end

local function setInitialPurchaseData(assetId, productId, gamePassId, currencyType, equipOnPurchase)
	PurchaseData.AssetId = assetId
	PurchaseData.ProductId = productId
	PurchaseData.GamePassId = gamePassId
	PurchaseData.CurrencyType = currencyType
	PurchaseData.EquipOnPurchase = equipOnPurchase

	IsPurchasingConsumable = productId ~= nil
	IsPurchasingGamePass = gamePassId ~= nil
end

local function setCurrencyData(playerBalance)
	PurchaseData.CurrencyType = Enum.CurrencyType.Robux
	PurchaseData.CurrencyAmount = tonumber(PurchaseData.ProductInfo['PriceInRobux'])

	if PurchaseData.CurrencyAmount == nil then
		PurchaseData.CurrencyAmount = 0
	end
end

local function setPreviewImageXbox(productInfo, assetId)
	-- get the asset id we want
	local id = nil
	if IsPurchasingConsumable and productInfo and productInfo["IconImageAssetId"] then
		id = productInfo["IconImageAssetId"]
	elseif assetId then
		id = assetId
	else
		ItemPreviewImage.Image = DEFAULT_XBOX_IMAGE
		return
    end

    spawn(function()
		local imageUrl = nil
		local isGenerated = false
		local success, msg = pcall(function()
			imageUrl, isGenerated = AssetService:GetAssetThumbnailAsync(id, Vector2.new(100, 100))
		end)

		if success and isGenerated == true and imageUrl then
			ItemPreviewImage.Image = imageUrl
		else
			ItemPreviewImage.Image = DEFAULT_XBOX_IMAGE
		end
	end)
end

local function setPreviewImage(productInfo, assetId)
	-- For now let's only run this logic on Xbox
	if platform == Enum.Platform.XBoxOne then
		setPreviewImageXbox(productInfo, assetId)
		return
	end
	if IsPurchasingConsumable then
		if productInfo then
			ItemPreviewImage.Image = THUMBNAIL_URL..tostring(productInfo["IconImageAssetId"].."&x=100&y=100&format=png")
		end
	else
		if assetId then
			ItemPreviewImage.Image = THUMBNAIL_URL..tostring(assetId).."&x=100&y=100&format=png"
		end
	end
end

local function clearPurchaseData()
	for k,v in pairs(PurchaseData) do
		PurchaseData[k] = nil
	end
	RobuxIcon.Visible = false
	TixIcon.Visible = false
	CostText.Visible = false
end

local function setButtonsVisible(...)
	local args = {...}
	local argCount = select('#', ...)

	for _,child in pairs(ContainerFrame:GetChildren()) do
		if child:IsA('ImageButton') then
			child.Visible = false
			for i = 1, argCount do
				if child == args[i] then
					child.Visible = true
				end
			end
		end
	end
end

local function tweenBackgroundColor(frame, endColor, duration)
	local t = 0
	local prevTime = tick()
	local startColor = frame.BackgroundColor3
	while t < duration do
		local s = t / duration
		local r = lerp(startColor.r, endColor.r, s)
		local g = lerp(startColor.g, endColor.g, s)
		local b = lerp(startColor.b, endColor.b, s)
		frame.BackgroundColor3 = Color3.new(r, g, b)
		--
		t = t + (tick() - prevTime)
		prevTime = tick()
		wait()
	end
	frame.BackgroundColor3 = endColor
end

local isPurchaseAnimating = false
local function startPurchaseAnimation()
	if PurchaseFrame.Visible then return end
	--
	ContainerFrame.Visible = false
	PurchaseFrame.Visible = true
	--
	spawn(function()
		isPurchaseAnimating = true
		local i = 1
		while isPurchaseAnimating do
			local frame = LoadingFrames[i]
			local prevPosition = frame.Position
			local newPosition = UDim2.new(prevPosition.X.Scale, prevPosition.X.Offset, prevPosition.Y.Scale, prevPosition.Y.Offset - 2)
			spawn(function()
				tweenBackgroundColor(frame, Color3.new(0, 162/255, 1), 0.25)
			end)
			frame:TweenSizeAndPosition(UDim2.new(0, 16, 0, 20), newPosition, Enum.EasingDirection.InOut, Enum.EasingStyle.Quad, 0.25, true, function()
				spawn(function()
					tweenBackgroundColor(frame, Color3.new(132/255, 132/255, 132/255), 0.25)
				end)
				frame:TweenSizeAndPosition(UDim2.new(0, 16, 0, 16), prevPosition, Enum.EasingDirection.InOut, Enum.EasingStyle.Quad, 0.25, true)
			end)
			i = i + 1
			if i > 3 then
				i = 1
				wait(0.25)	-- small pause when starting from 1
			end
			wait(0.5)
		end
	end)
end

local function stopPurchaseAnimation()
	isPurchaseAnimating = false
	PurchaseFrame.Visible = false
	ContainerFrame.Visible = true
end

local function setPurchaseDataInGui(isFree, invalidBC)
	local descriptionText = PurchaseData.CurrencyType == Enum.CurrencyType.Tix and PURCHASE_MSG.PURCHASE_TIX or PURCHASE_MSG.PURCHASE
	if FFlagUsePurchasePromptLocalization then
		descriptionText = LocalizedGetString("PurchasePromptScript.PURCHASE_MSG.PURCHASE",descriptionText)
	end

	if isFree then
		descriptionText = PURCHASE_MSG.FREE
		if FFlagUsePurchasePromptLocalization then
			descriptionText = LocalizedGetString("PurchasePromptScript.PURCHASE_MSG.FREE",descriptionText)
		end

		PostBalanceText.Text = PURCHASE_MSG.FREE_BALANCE
	end

	local productInfo = PurchaseData.ProductInfo
	if not productInfo then
		return false
	end
	local itemDescription = ""
	if FFlagUsePurchasePromptLocalization then
		itemDescription = string.gsub(descriptionText, "{RBX_NAME2}", string.sub(productInfo["Name"], 1, 20))
		itemDescription = string.gsub(itemDescription, "{RBX_NAME1}", ASSET_TO_STRING[productInfo["AssetTypeId"]] or "Unknown")
	else
		itemDescription = string.gsub(descriptionText, "itemName", string.sub(productInfo["Name"], 1, 20))
		itemDescription = string.gsub(itemDescription, "assetType", ASSET_TO_STRING[productInfo["AssetTypeId"]] or "Unknown")
	end
	ItemDescriptionText.Text = itemDescription

	if not isFree then
		if PurchaseData.CurrencyType == Enum.CurrencyType.Tix then
			TixIcon.Visible = true
			TixIcon.Position = UDim2.new(0, isTenFootInterface and 110*scaleFactor or 110, 0, ItemDescriptionText.Position.Y.Offset + ItemDescriptionText.TextBounds.y + (isTenFootInterface and 6*scaleFactor or 6))
			CostText.TextColor3 = Color3.new(204/255, 158/255, 113/255)
		else
			RobuxIcon.Visible = true
			RobuxIcon.Position = UDim2.new(0, isTenFootInterface and 110*scaleFactor or 110, 0, ItemDescriptionText.Position.Y.Offset + ItemDescriptionText.TextBounds.y + (isTenFootInterface and 6*scaleFactor or 6))
			CostText.TextColor3 = Color3.new(2/255, 183/255, 87/255)
		end
		CostText.Text = formatNumber(PurchaseData.CurrencyAmount)
		CostText.Position = UDim2.new(0, isTenFootInterface and 134*scaleFactor or 134, 0, ItemDescriptionText.Position.Y.Offset + ItemDescriptionText.TextBounds.y + (isTenFootInterface and 15*scaleFactor or 15))
		CostText.Visible = true
	end

	setPreviewImage(productInfo, PurchaseData.AssetId)
	purchaseState = PURCHASE_STATE.BUYITEM
	setButtonsVisible(isFree and FreeButton or BuyButton, CancelButton)
	PostBalanceText.Visible = true

	if invalidBC then
		local neededBcLevel = PurchaseData.ProductInfo["MinimumMembershipLevel"]
		PostBalanceText.Text = "This item requires "..BC_LVL_TO_STRING[neededBcLevel]..".\nClick 'Upgrade' to upgrade your Builders Club!"
		if FFlagUsePurchasePromptLocalization then
			PostBalanceText.Text = LocalizedGetString("PurchasePromptScript.setPurchaseDataInGui.invalidBC",PostBalanceText.Text)
			PostBalanceText.Text = string.gsub(PostBalanceText.Text, "{RBX_NAME1}", BC_LVL_TO_STRING[neededBcLevel])
		end
		purchaseState = PURCHASE_STATE.BUYBC
		setButtonsVisible(BuyBCButton, CancelButton)
	end
	return true
end

local function getRobuxProduct(amountNeeded, isBCMember)
	local productArray = nil

	if platform == Enum.Platform.XBoxOne then
		productArray = {}
		local platformCatalogData = require(RobloxGui.Modules.Shell.PlatformCatalogData)

		local catalogInfo = platformCatalogData:GetCatalogInfoAsync()
		if catalogInfo then
			for _, productInfo in pairs(catalogInfo) do
				local robuxValue = platformCatalogData:ParseRobuxValue(productInfo)
				table.insert(productArray, robuxValue)
			end
		end
	else
		productArray = isBCMember and BC_ROBUX_PRODUCTS or NON_BC_ROBUX_PRODUCTS
	end

	table.sort(productArray, function(a,b) return a < b end)

	for i = 1, #productArray do
		if productArray[i] >= amountNeeded then
			return productArray[i]
		end
	end

	return nil
end

local function getRobuxProductToBuyItem(amountNeeded)
	local isBCMember = Players.LocalPlayer.MembershipType ~= Enum.MembershipType.None

	local productCost = getRobuxProduct(amountNeeded, isBCMember)
	if not productCost then
		return nil
	end

	--todo: we should clean all this up at some point so all the platforms have the
	-- same product names, or at least names that are very similar

	local isUsingNewProductId = (platform == Enum.Platform.Android) or (platform == Enum.Platform.UWP)

	local prependStr, appendStr, appPrefix = "", "", ""
	if isUsingNewProductId then
		prependStr = "robux"
		if isBCMember then
			appendStr = "bc"
		end
		appPrefix = "com.roblox.client."
	elseif platform == Enum.Platform.XBoxOne then
		local platformCatalogData = require(RobloxGui.Modules.Shell.PlatformCatalogData)

		local catalogInfo = platformCatalogData:GetCatalogInfoAsync()
		if catalogInfo then
			for _, productInfo in pairs(catalogInfo) do
				if platformCatalogData:ParseRobuxValue(productInfo) == productCost then
					return productInfo.ProductId, productCost
				end
			end
		end
	elseif platform == Enum.Platform.IOS then
		appendStr = isBCMember and "RobuxBC" or "RobuxNonBC"
		appPrefix = "com.roblox.robloxmobile."
	else
		appendStr = isBCMember and "RobuxBCInvalid" or "RobuxNonBCInvalid"
		appPrefix = "com.roblox.INVALIDPLATFORM."
	end

	local productStr = appPrefix..prependStr..tostring(productCost)..appendStr
	return productStr, productCost
end

local function setBuyMoreRobuxDialog(playerBalance)
	local playerBalanceInt = tonumber(playerBalance["robux"])
	local neededRobux = PurchaseData.CurrencyAmount - playerBalanceInt
	local productInfo = PurchaseData.ProductInfo

	local descriptionText = "You need %s more ROBUX to buy the %s %s"
	descriptionText = string.format(descriptionText, formatNumber(neededRobux), productInfo["Name"], ASSET_TO_STRING[productInfo["AssetTypeId"]] or "")

	purchaseState = PURCHASE_STATE.BUYROBUX
	setButtonsVisible(BuyRobuxButton, CancelButton)

	if IsNativePurchasing then
		local productCost = nil
		ThirdPartyProductName, productCost = getRobuxProductToBuyItem(neededRobux)
		--
		if not ThirdPartyProductName then
			if isTenFootInterface then
				-- don't direct them to roblox.com on consoles.
				descriptionText = "This item cost more ROBUX than you have available. Please leave this game and go to the ROBUX screen to purchase more."
			else
				descriptionText = "This item cost more ROBUX than you can purchase. Please visit www.roblox.com to purchase more ROBUX."
			end
			purchaseState = PURCHASE_STATE.FAILED
			setButtonsVisible(OkButton)
		else
			local remainder = playerBalanceInt + productCost - PurchaseData.CurrencyAmount
			descriptionText = descriptionText..". Would you like to buy "..formatNumber(productCost).." ROBUX?"
			if FFlagUsePurchasePromptLocalization then
				descriptionText = LocalizedGetString("PurchasePromptScript.setBuyMoreRobuxDialog.descriptionText",descriptionText)
				descriptionText = string.gsub(descriptionText, "{RBX_NUMBER}", formatNumber(neededRobux))
				descriptionText = string.gsub(descriptionText, "{RBX_NAME1}", productInfo["Name"])
				descriptionText = string.gsub(descriptionText, "{RBX_NAME2}", ASSET_TO_STRING[productInfo["AssetTypeId"]])
			end

			PostBalanceText.Text = "The remaining "..formatNumber(remainder).." ROBUX will be credited to your balance."
			if FFlagUsePurchasePromptLocalization then
				PostBalanceText.Text = LocalizedGetString("PurchasePromptScript.setBuyMoreRobuxDialog.PostBalanceText",PostBalanceText.Text)
				PostBalanceText.Text = string.gsub(PostBalanceText.Text,"{RBX_NUMBER}",formatNumber(remainder))
			end
			PostBalanceText.Visible = true
		end
	else
		descriptionText = descriptionText..". Would you like to buy more ROBUX?"
		if FFlagUsePurchasePromptLocalization then
			descriptionText = LocalizedGetString("PurchasePromptScript.setBuyMoreRobuxDialog.descriptionText", descriptionText)
			descriptionText = string.gsub(descriptionText, "{RBX_NUMBER}", formatNumber(neededRobux))
			descriptionText = string.gsub(descriptionText, "{RBX_NAME1}", productInfo["Name"])
			descriptionText = string.gsub(descriptionText, "{RBX_NAME2}", ASSET_TO_STRING[productInfo["AssetTypeId"]])
		end
	end
	ItemDescriptionText.Text = descriptionText
	setPreviewImage(productInfo, PurchaseData.AssetId)
end

local function showPurchasePrompt()
	stopPurchaseAnimation()
	PurchaseDialog.Visible = true
	if isTenFootInterface then
		UserInputService.OverrideMouseIconBehavior = Enum.OverrideMouseIconBehavior.ForceHide
	end
	PurchaseDialog:TweenPosition(isTenFootInterface and SHOW_POSITION_TENFOOT or SHOW_POSITION, Enum.EasingDirection.InOut, Enum.EasingStyle.Quad, TWEEN_TIME, true, function(tweenStatus)
		if tweenStatus == Enum.TweenStatus.Completed then
			buttonsActive = true
		end
	end)
	disableControllerMovement()
	enableControllerInput()
end

local function onPurchaseFailed(failType)
	setButtonsVisible(OkButton)
	ItemPreviewImage.Image = ERROR_ICON
	PostBalanceText.Text = ""

	local itemName = PurchaseData.ProductInfo and PurchaseData.ProductInfo["Name"] or ""
	local failedText = ""

	if FFlagUsePurchasePromptLocalization then
		failedText = string.gsub(LocalizedGetString("PurchasePromptScript.PURCHASE_MSG.FAILED",PURCHASE_MSG.FAILED), "{RBX_NAME1}", string.sub(itemName, 1, 20))
		if itemName == "" then
			failedText = string.gsub(failedText, " of ", "")
		end

		if failType == PURCHASE_FAILED.DEFAULT_ERROR then
			failedText = string.gsub(failedText, "{RBX_NAME2}", LocalizedGetString("PurchasePromptScript.ERROR_MSG.UNKNOWN",ERROR_MSG.UNKNWON_FAILURE))
		elseif failType == PURCHASE_FAILED.IN_GAME_PURCHASE_DISABLED then
			failedText = string.gsub(failedText, "{RBX_NAME2}", LocalizedGetString("PurchasePromptScript.ERROR_MSG.PURCHASE_DISABLED",ERROR_MSG.PURCHASE_DISABLED))
		elseif failType == PURCHASE_FAILED.CANNOT_GET_BALANCE then
			failedText = LocalizedGetString(
				"PurchasePromptScript.PURCHASE_FAILED.CANNOT_GET_BALANCE",
				"Cannot retrieve your balance at this time. Your account has not been charged. Please try again later.")
		elseif failType == PURCHASE_FAILED.CANNOT_GET_ITEM_PRICE then
			failedText = LocalizedGetString(
				"PurchasePromptScript.PURCHASE_FAILED.CANNOT_GET_ITEM_PRICE",
				"We couldn't retrieve the price of the item at this time. Your account has not been charged. Please try again later.")
		elseif failType == PURCHASE_FAILED.NOT_FOR_SALE then
			failedText = LocalizedGetString(
				"PurchasePromptScript.PURCHASE_FAILED.NOT_FOR_SALE",
				"This item is not currently for sale. Your account has not been charged.")
			setPreviewImage(PurchaseData.ProductInfo, PurchaseData.AssetId)
		elseif failType == PURCHASE_FAILED.NOT_ENOUGH_TIX then
			failedText = LocalizedGetString(
				"PurchasePromptScript.PURCHASE_FAILED.NOT_ENOUGH_TIX",
				"This item cost more tickets than you currently have. Try trading currency on www.roblox.com to get more tickets.")
			setPreviewImage(PurchaseData.ProductInfo, PurchaseData.AssetId)
		elseif failType == PURCHASE_FAILED.UNDER_13 then
			failedText = LocalizedGetString(
				"PurchasePromptScript.PURCHASE_FAILED.UNDER_13",
				"Your account is under 13. Purchase of this item is not allowed. Your account has not been charged.")
		elseif failType == PURCHASE_FAILED.LIMITED then
			failedText = LocalizedGetString(
				"PurchasePromptScript.PURCHASE_FAILED.LIMITED",
				"This limited item has no more copies. Try buying from another user on www.roblox.com. Your account has not been charged.")
			setPreviewImage(PurchaseData.ProductInfo, PurchaseData.AssetId)
		elseif failType == PURCHASE_FAILED.DID_NOT_BUY_ROBUX then
			failedText = string.gsub(failedText, "{RBX_NAME2}", LocalizedGetString("PurchasePromptScript.ERROR_MSG.INVALID_FUNDS",ERROR_MSG.INVALID_FUNDS))
		elseif failType == PURCHASE_FAILED.PROMPT_PURCHASE_ON_GUEST then
			failedText = LocalizedGetString(
				"PurchasePromptScript.PURCHASE_FAILED.PROMPT_PURCHASE_ON_GUEST",
				"You need to create a ROBLOX account to buy items, visit www.roblox.com for more info.")
		elseif failType == PURCHASE_FAILED.THIRD_PARTY_DISABLED then
			failedText = LocalizedGetString(
				"PurchasePromptScript.PURCHASE_FAILED.THIRD_PARTY_DISABLED",
				"Third-party item sales have been disabled for this place. Your account has not been charged.")
			setPreviewImage(PurchaseData.ProductInfo, PurchaseData.AssetId)
		end

	else --FFlagUsePurchasePromptLocalization == false

		failedText = string.gsub(PURCHASE_MSG.FAILED, "itemName", string.sub(itemName, 1, 20))
		if itemName == "" then
			failedText = string.gsub(failedText, " of ", "")
		end

		if failType == PURCHASE_FAILED.DEFAULT_ERROR then
			failedText = string.gsub(failedText, "errorReason", ERROR_MSG.UNKNWON_FAILURE)
		elseif failType == PURCHASE_FAILED.IN_GAME_PURCHASE_DISABLED then
			failedText = string.gsub(failedText, "errorReason", ERROR_MSG.PURCHASE_DISABLED)
		elseif failType == PURCHASE_FAILED.CANNOT_GET_BALANCE then
			failedText = "Cannot retrieve your balance at this time. Your account has not been charged. Please try again later."
		elseif failType == PURCHASE_FAILED.CANNOT_GET_ITEM_PRICE then
			failedText = "We couldn't retrieve the price of the item at this time. Your account has not been charged. Please try again later."
		elseif failType == PURCHASE_FAILED.NOT_FOR_SALE then
			failedText = "This item is not currently for sale. Your account has not been charged."
			setPreviewImage(PurchaseData.ProductInfo, PurchaseData.AssetId)
		elseif failType == PURCHASE_FAILED.NOT_ENOUGH_TIX then
			failedText = "This item cost more tickets than you currently have. Try trading currency on www.roblox.com to get more tickets."
			setPreviewImage(PurchaseData.ProductInfo, PurchaseData.AssetId)
		elseif failType == PURCHASE_FAILED.UNDER_13 then
			failedText = "Your account is under 13. Purchase of this item is not allowed. Your account has not been charged."
		elseif failType == PURCHASE_FAILED.LIMITED then
			failedText = "This limited item has no more copies. Try buying from another user on www.roblox.com. Your account has not been charged."
			setPreviewImage(PurchaseData.ProductInfo, PurchaseData.AssetId)
		elseif failType == PURCHASE_FAILED.DID_NOT_BUY_ROBUX then
			failedText = string.gsub(failedText, "errorReason", ERROR_MSG.INVALID_FUNDS)
		elseif failType == PURCHASE_FAILED.PROMPT_PURCHASE_ON_GUEST then
			failedText = "You need to create a ROBLOX account to buy items, visit www.roblox.com for more info."
		elseif failType == PURCHASE_FAILED.THIRD_PARTY_DISABLED then
			failedText = "Third-party item sales have been disabled for this place. Your account has not been charged."
			setPreviewImage(PurchaseData.ProductInfo, PurchaseData.AssetId)
		end
	end

	RobuxIcon.Visible = false
	TixIcon.Visible = false
	CostText.Visible = false

	purchaseState = PURCHASE_STATE.FAILED

	ItemDescriptionText.Text = failedText
	showPurchasePrompt()
end

local function closePurchaseDialog()
	buttonsActive = false
	purchaseState = PURCHASE_STATE.DEFAULT
	if isTenFootInterface then
		UserInputService.OverrideMouseIconBehavior = Enum.OverrideMouseIconBehavior.None
	end
	PurchaseDialog:TweenPosition(isTenFootInterface and HIDE_POSITION_TENFOOT or HIDE_POSITION, Enum.EasingDirection.InOut, Enum.EasingStyle.Quad, TWEEN_TIME, true, function(tweenStatus)
		if tweenStatus == Enum.TweenStatus.Completed then
			PurchaseDialog.Visible = false
			IsCurrentlyPrompting = false
			IsCurrentlyPurchasing = false
			IsCheckingPlayerFunds = false
		end
	end)
end

-- Main exit point
local function onPromptEnded(isSuccess)
	local didPurchase = (purchaseState == PURCHASE_STATE.SUCCEEDED)

	closePurchaseDialog()
	if IsPurchasingConsumable then
		MarketplaceService:SignalPromptProductPurchaseFinished(Players.LocalPlayer.UserId, PurchaseData.ProductId, didPurchase)
	elseif IsPurchasingGamePass then
		MarketplaceService:SignalPromptGamePassPurchaseFinished(Players.LocalPlayer, PurchaseData.GamePassId, didPurchase)
	else
		MarketplaceService:SignalPromptPurchaseFinished(Players.LocalPlayer, PurchaseData.AssetId, didPurchase)
	end
	clearPurchaseData()
	enableControllerMovement()
	disableControllerInput()
end

local function isMarketplaceDown() 		-- FFlag
	local success, result = pcall(function() return settings():GetFFlag('Order66') end)
	if not success then
		print("PurchasePromptScript: isMarketplaceDown failed because", result)
		return false
	end

	return result
end

local function checkMarketplaceAvailable() 	-- FFlag
	local success, result = pcall(function() return settings():GetFFlag("CheckMarketplaceAvailable") end)
	if not success then
		print("PurchasePromptScript: checkMarketplaceAvailable failed because", result)
		return false
	end

	return result
end

local function areThirdPartySalesRestricted() 	-- FFlag
	return settings():GetFFlag("RestrictSales2")
end


-- return success and isAvailable
local function isMarketplaceAvailable()
	local success, result = pcall(function()
		return HttpRbxApiService:GetAsync("my/economy-status",
			Enum.ThrottlingPriority.Extreme,
            Enum.HttpRequestType.MarketplaceService)
	end)
	if not success then
		print("PurchasePromptScript: isMarketplaceAvailable() failed because", result)
		return false
	end
	result = HttpService:JSONDecode(result)
	if result["isMarketplaceEnabled"] ~= nil then
		if result["isMarketplaceEnabled"] == false then
			return true, false
		end
	end
	return true, true
end

local function getProductInfo()
	local success, result = nil, nil
	if IsPurchasingConsumable then
		success, result = pcall(function()
			return MarketplaceService:GetProductInfo(PurchaseData.ProductId, Enum.InfoType.Product)
		end)
	elseif IsPurchasingGamePass then
		success, result = pcall(function()
			return MarketplaceService:GetProductInfo(PurchaseData.GamePassId, Enum.InfoType.GamePass)
		end)
	else
		success, result = pcall(function()
			return MarketplaceService:GetProductInfo(PurchaseData.AssetId)
		end)
	end

	if not success or not result then
		warn("PurchasePromptScript: getProductInfo failed because", result, "Make sure a valid ID was specified")
		return nil
	end

	if type(result) ~= 'table' then
		result = HttpService:JSONDecode(result)
	end

	return result
end

local function doesPlayerOwnGamePass()
	if (not PurchaseData.GamePassId) or (PurchaseData.GamePassId <= 0) then
		return false, nil
	end

	local success, result = pcall(function()
		return MarketplaceService:UserOwnsGamePassAsync(Players.LocalPlayer.UserId, PurchaseData.GamePassId)
	end)

	if not success then
		print("PurchasePromptScript: doesPlayerOwnGamePass() failed because", result)
		return false, nil
	end

	return true, (result == true) or (result == "true")
end

-- returns success, doesOwnItem
local function doesPlayerOwnItem()
	if not PurchaseData.AssetId or PurchaseData.AssetId <= 0 then
		if PurchaseData.GamePassId then
			return doesPlayerOwnGamePass()
		else
			return false, nil
		end
	end

	local success, result = pcall(function()
		return MarketplaceService:PlayerOwnsAsset(Players.LocalPlayer, PurchaseData.AssetId)
	end)

	if not success then
		print("PurchasePromptScript: doesPlayerOwnItem() failed because", result)
		return false, nil
	end

	return true, result == true or result == 'true'
end

local function isFreeItem()
	return PurchaseData.ProductInfo and PurchaseData.ProductInfo["IsPublicDomain"] == true
end

local getPlayerBalance

getPlayerBalance = function()
    local success, result = pcall(function()
        return MarketplaceService:GetRobuxBalance()
    end)

    if not success then
        print("PurchasePromptScript: GetRobuxBalance() failed because", result)
        return nil
    end

    local balance = {}
    balance.robux = result
    balance.tickets = 0
    return balance
end

local function isNotForSale()
	return PurchaseData.ProductInfo['IsForSale'] == false and PurchaseData.ProductInfo["IsPublicDomain"] == false
end

local function playerHasFundsForPurchase(playerBalance)
	local currencyTypeStr = nil
	if PurchaseData.CurrencyType == Enum.CurrencyType.Robux then
		currencyTypeStr = "robux"
	elseif PurchaseData.CurrencyType == Enum.CurrencyType.Tix then
		currencyTypeStr = "tickets"
	else
		return false
	end

	local playerBalanceInt = tonumber(playerBalance[currencyTypeStr])
	if not playerBalanceInt then
		return false
	end

	local afterBalanceAmount = playerBalanceInt - PurchaseData.CurrencyAmount
	local currencyStr = getCurrencyString(PurchaseData.CurrencyType)
	if afterBalanceAmount < 0 and PurchaseData.CurrencyType == Enum.CurrencyType.Robux then
		PostBalanceText.Visible = false
		return true, false
	elseif afterBalanceAmount < 0 and PurchaseData.CurrencyType == Enum.CurrencyType.Tix then
		PostBalanceText.Visible = true
		PostBalanceText.Text = "You need "..formatNumber(-afterBalanceAmount).." more "..currencyStr.." to buy this item."
		return true, false
	end

	if PurchaseData.CurrencyType == Enum.CurrencyType.Tix then
		PostBalanceText.Text = PURCHASE_MSG.BALANCE_FUTURE..formatNumber(afterBalanceAmount).." "..currencyStr.."."
	else
		PostBalanceText.Text = PURCHASE_MSG.BALANCE_FUTURE..currencyStr..formatNumber(afterBalanceAmount).."."
	end

	if FFlagUsePurchasePromptLocalization then
		PostBalanceText.Text = LocalizedGetString("PurchasePromptScript.PURCHASE_MSG.BALANCE_FUTURE",PostBalanceText.Text)
		PostBalanceText.Text = string.gsub(PostBalanceText.Text, "{RBX_NUMBER}", currencyStr..formatNumber(afterBalanceAmount))
	end

	if studioMockPurchasesEnabled() then
		PostBalanceText.Text = PURCHASE_MSG.MOCK_PURCHASE
	end

	return true, true
end

local function isUnder13()
	if PurchaseData.ProductInfo["ContentRatingTypeId"] == 1 then
		if Players.LocalPlayer:GetUnder13() then
			return true
		end
	end
	return false
end

local function isLimitedUnique()
	local productInfo = PurchaseData.ProductInfo
	if productInfo then
		if (productInfo["IsLimited"] or productInfo["IsLimitedUnique"]) and
			(productInfo["Remaining"] == "" or productInfo["Remaining"] == 0 or productInfo["Remaining"] == nil or productInfo["Remaining"] == "null") then
			return true
		end
	end
	return false
end

-- main validation function
local function canPurchase(disableUpsell)
    if not MarketplaceService:PlayerCanMakePurchases(Players.LocalPlayer) then
        onPurchaseFailed(PURCHASE_FAILED.PROMPT_PURCHASE_ON_GUEST)
        return false
    end

	if isMarketplaceDown() then 	-- FFlag
		onPurchaseFailed(PURCHASE_FAILED.IN_GAME_PURCHASE_DISABLED)
		return false
	end

	if checkMarketplaceAvailable() then 	-- FFlag
		local success, isAvailable = isMarketplaceAvailable()
		if success then
			if not isAvailable then
				onPurchaseFailed(PURCHASE_FAILED.IN_GAME_PURCHASE_DISABLED)
				return false
			end
		else
			onPurchaseFailed(PURCHASE_FAILED.DEFAULT_ERROR)
			return false
		end
	end

	PurchaseData.ProductInfo = getProductInfo()
	if not PurchaseData.ProductInfo then
		onPurchaseFailed(PURCHASE_FAILED.DEFAULT_ERROR)
		return false
	end

	if isNotForSale() then
		onPurchaseFailed(PURCHASE_FAILED.NOT_FOR_SALE)
		return false
	end

	-- check if owned by player; dev products are not owned
	local isRestrictedThirdParty = false
	local thirdPartyRestrictions = areThirdPartySalesRestricted()
	if not IsPurchasingConsumable then
		local success, doesOwnItem = doesPlayerOwnItem()
		if not success then
			onPurchaseFailed(PURCHASE_FAILED.DEFAULT_ERROR)
			return false
		elseif doesOwnItem then
			if not PurchaseData.ProductInfo then
				onPurchaseFailed(PURCHASE_FAILED.DEFAULT_ERROR)
				return false
			end
			purchaseState = PURCHASE_STATE.FAILED
			setPreviewImage(PurchaseData.ProductInfo, PurchaseData.AssetId)
			ItemDescriptionText.Text = PURCHASE_MSG.ALREADY_OWN
			PostBalanceText.Visible = false
			setButtonsVisible(OkButton)
			return true
		end

		-- most places will not need to sell third party assets.
		if thirdPartyRestrictions  and not game:GetService("Workspace").AllowThirdPartySales then
			local isGroupGame = (game.CreatorType == Enum.CreatorType.Group)
			local isGroupAsset = (PurchaseData.ProductInfo["Creator"]["CreatorType"] == "Group")
			local RobloxCreator = 1
			local ProductCreator = tonumber(PurchaseData.ProductInfo["Creator"]["CreatorTargetId"])
			if (ProductCreator == RobloxCreator) then
				isRestrictedThirdParty = false
			elseif (isGroupGame == isGroupAsset) then
				if (ProductCreator ~= game.CreatorId) then
					isRestrictedThirdParty = true
					warn(("AllowThirdPartySales has blocked the purchase prompt for "
						.. PurchaseData.ProductInfo["AssetId"] .. " created by " .. ProductCreator
						.. ".  To sell this asset made by a different ") .. (isGroupGame and "group" or "user") 
						.. ", you will need to enable AllowThirdPartySales.")
				end
			else
				isRestrictedThirdParty = true
				warn(("AllowThirdPartySales has blocked the purchase prompt for "
					.. PurchaseData.ProductInfo["AssetId"] .. " created by " .. ProductCreator
					.. ".  To sell this asset made by a different ") .. (isGroupGame and "group" or "user")
					.. ", you will need to enable AllowThirdPartySales.")
			end
		end
	end

	local isFree = isFreeItem()

	if isRestrictedThirdParty then
		onPurchaseFailed(PURCHASE_FAILED.THIRD_PARTY_DISABLED)
		return false
	end

	local playerBalance = getPlayerBalance()
	if not playerBalance then
		onPurchaseFailed(PURCHASE_FAILED.CANNOT_GET_BALANCE)
		return false
	end

	-- validate item price
	setCurrencyData(playerBalance)
	if not PurchaseData.CurrencyAmount and not isFree then
		onPurchaseFailed(PURCHASE_FAILED.CANNOT_GET_ITEM_PRICE)
		return false
	end

	-- check player funds
	local hasFunds = nil
	if not isFree then
		local success = nil
		success, hasFunds = playerHasFundsForPurchase(playerBalance)
		if success then
			if not hasFunds then
				if PurchaseData.CurrencyType == Enum.CurrencyType.Tix then
					onPurchaseFailed(PURCHASE_FAILED.NOT_ENOUGH_TIX)
					return false
				elseif not disableUpsell then
					setBuyMoreRobuxDialog(playerBalance)
				end
			end
		else
			onPurchaseFailed(PURCHASE_FAILED.CANNOT_GET_BALANCE)
			return false
		end
	end

	-- check membership type
	local invalidBCLevel = PurchaseData.ProductInfo["MinimumMembershipLevel"] > Players.LocalPlayer.MembershipType.Value

	-- check under 13
	if isUnder13() then
		onPurchaseFailed(PURCHASE_FAILED.UNDER_13)
		return false
	end

	if isLimitedUnique() then
		onPurchaseFailed(PURCHASE_FAILED.LIMITED)
		return false
	end

	if (hasFunds or isFree or invalidBCLevel) then
		if not setPurchaseDataInGui(isFree, invalidBCLevel) then
			onPurchaseFailed(PURCHASE_FAILED.DEFAULT_ERROR)
			return false
		end
	end

	return true
end

local function getToolAsset(assetId)
	local tool = InsertService:LoadAsset(assetId)
	if not tool then return nil end
	--
	if tool:IsA("Tool") then
		return tool
	end

	local children = tool:GetChildren()
	for i = 1, #children do
		if children[i]:IsA("Tool") then
			return children[i]
		end
	end
end

local function onPurchaseSuccess()
	IsCheckingPlayerFunds = false
	local descriptionText = PURCHASE_MSG.SUCCEEDED
	if FFlagUsePurchasePromptLocalization then
		descriptionText = LocalizedGetString("PurchasePromptScript.PURCHASE_MSG.SUCCEEDED", descriptionText)
		descriptionText = string.gsub(descriptionText, "{RBX_NAME1}", string.sub(PurchaseData.ProductInfo["Name"], 1, 20))
	else
		descriptionText = string.gsub(descriptionText, "itemName", string.sub(PurchaseData.ProductInfo["Name"], 1, 20))
	end

	ItemDescriptionText.Text = descriptionText

	local playerBalance = getPlayerBalance()
	local currencyType = PurchaseData.CurrencyType == Enum.CurrencyType.Tix and "tickets" or "robux"
	local newBalance = playerBalance[currencyType]

	if currencyType == "robux" then
		PostBalanceText.Text = PURCHASE_MSG.BALANCE_NOW..getCurrencyString(PurchaseData.CurrencyType)..formatNumber(newBalance).."."
	else
		PostBalanceText.Text = PURCHASE_MSG.BALANCE_NOW..formatNumber(newBalance).." "..getCurrencyString(PurchaseData.CurrencyType).."."
	end
	if FFlagUsePurchasePromptLocalization then
		PostBalanceText.Text = LocalizedGetString("PurchasePromptScript.PURCHASE_MSG.BALANCE_NOW",PostBalanceText.Text)
		PostBalanceText.Text = string.gsub(PostBalanceText.Text, "{RBX_NUMBER}", getCurrencyString(PurchaseData.CurrencyType) .. formatNumber(newBalance))
	end

	if studioMockPurchasesEnabled() then
		PostBalanceText.Text = PURCHASE_MSG.MOCK_PURCHASE_SUCCESS
	elseif isFreeItem() then
		PostBalanceText.Visible = false
	end

	purchaseState = PURCHASE_STATE.SUCCEEDED

	setButtonsVisible(OkPurchasedButton)
	stopPurchaseAnimation()
end

local function onAcceptPurchase()
	if not buttonsActive and FFlagDelayPurchasePromptActivation then return end
	if IsCurrentlyPurchasing then return end
	if isClickerScam() then return end

	if purchaseState ~= PURCHASE_STATE.BUYITEM then
		return
	end

	--
	disableControllerInput()
	IsCurrentlyPurchasing = true
	startPurchaseAnimation()
	local startTime = tick()
	local apiPath = nil
	local params = nil
	local currencyTypeInt = nil
	if PurchaseData.CurrencyType == Enum.CurrencyType.Robux or PurchaseData.CurrencyType == Enum.CurrencyType.Default then
		currencyTypeInt = 1
	elseif PurchaseData.CurrencyType == Enum.CurrencyType.Tix then
		currencyTypeInt = 2
	end

	local productId = PurchaseData.ProductInfo["ProductId"]
	if IsPurchasingConsumable then
		apiPath = "marketplace/submitpurchase"
		params = "productId="..tostring(productId).."&currencyTypeId="..tostring(currencyTypeInt)..
			"&expectedUnitPrice="..tostring(PurchaseData.CurrencyAmount).."&placeId="..tostring(game.PlaceId)
		params = params.."&requestId="..HttpService:UrlEncode(HttpService:GenerateGUID(false))
	else
		apiPath = "marketplace/purchase"
		params = "productId="..tostring(productId).."&currencyTypeId="..tostring(currencyTypeInt)..
			"&purchasePrice="..tostring(PurchaseData.CurrencyAmount or 0).."&locationType=Game&locationId="..tostring(game.PlaceId)
	end

	local submitPurchase

    local requestId = HttpService:GenerateGUID(false)
    submitPurchase = function()
        return game:GetService("MarketplaceService"):PerformPurchase(IsPurchasingConsumable and Enum.InfoType.Product or Enum.InfoType.Asset, productId, PurchaseData.CurrencyAmount or 0, requestId)
    end

	local success, result = pcall(submitPurchase)
	-- retry
	if IsPurchasingConsumable then
		local retries = 3
		local wasSuccess = success and result and result ~= ''
		while retries > 0 and not wasSuccess do
			wait(1)
			retries = retries - 1
			success, result = pcall(submitPurchase)
			wasSuccess = success and result and result ~= ''
		end
		--
		if FFlagWeDontWantAnyGoogleAnalyticsHerePlease then
			AnalyticsService:TrackEvent("Developer Product", "Purchase",
				wasSuccess and ("success. Retries = "..(3 - retries)) or ("failure: " .. tostring(result)), 1)
		else
			game:ReportInGoogleAnalytics("Developer Product", "Purchase",
				wasSuccess and ("success. Retries = "..(3 - retries)) or ("failure: " .. tostring(result)), 1)
		end
	end

	if tick() - startTime < 1 then wait(1) end 		-- artifical delay to show spinner for at least 1 second

	enableControllerInput()

	if not success then
		print("PurchasePromptScript: onAcceptPurchase() failed because", result)
		onPurchaseFailed(PURCHASE_FAILED.DEFAULT_ERROR)
		return
	end

	if type(result) == "string" then
		result = HttpService:JSONDecode(result)
	end
	if result then
		if result["success"] == false then
			if result["status"] ~= "AlreadyOwned" then
				print("PurchasePromptScript: onAcceptPurchase() response failed because", tostring(result["status"]))
				if result["status"] == "EconomyDisabled" then
					onPurchaseFailed(PURCHASE_FAILED.IN_GAME_PURCHASE_DISABLED)
				else
					onPurchaseFailed(PURCHASE_FAILED.DEFAULT_ERROR)
				end
				return
			end
		end
	else
		print("PurchasePromptScript: onAcceptPurchase() failed to parse JSON of", productId)
		onPurchaseFailed(PURCHASE_FAILED.DEFAULT_ERROR)
		return
	end

	if PurchaseData.EquipOnPurchase and PurchaseData.AssetId and tonumber(PurchaseData.ProductInfo["AssetTypeId"]) == 19 then
		local tool = getToolAsset(tonumber(PurchaseData.AssetId))
		if tool then
			tool.Parent = Players.LocalPlayer.Backpack
		end
	end

	if IsPurchasingConsumable then
		if not result["receipt"] then
			print("PurchasePromptScript: onAcceptPurchase() failed because no dev product receipt was returned for", tostring(productId))
			onPurchaseFailed(PURCHASE_FAILED.DEFAULT_ERROR)
			return
		end
		MarketplaceService:SignalClientPurchaseSuccess(tostring(result["receipt"]), Players.LocalPlayer.UserId, productId)
	elseif IsPurchasingGamePass then
		onPurchaseSuccess()
		MarketplaceService:ReportAssetSale(PurchaseData.GamePassId, PurchaseData.CurrencyAmount)
	else
		onPurchaseSuccess()
		if PurchaseData.CurrencyType == Enum.CurrencyType.Robux then
			MarketplaceService:ReportAssetSale(PurchaseData.AssetId, PurchaseData.CurrencyAmount)
		end
	end
end

-- main entry point
local function onPurchasePrompt(player, assetId, equipIfPurchased, currencyType, productId, gamePassId)
	if player == Players.LocalPlayer and not IsCurrentlyPrompting then
		IsCurrentlyPrompting = true
		setInitialPurchaseData(assetId, productId, gamePassId, currencyType, equipIfPurchased)
		if canPurchase() then
			showPurchasePrompt()
		end
	end
end

function hasEnoughMoneyForPurchase()
	local playerBalance = getPlayerBalance()
	if playerBalance then
		local success, hasFunds = nil
		success, hasFunds = playerHasFundsForPurchase(playerBalance)
		return success and hasFunds
	end

	return false
end

function retryPurchase(overrideRetries)
	local canMakePurchase = canPurchase(true) and hasEnoughMoneyForPurchase()
	if not canMakePurchase then
		local retries = 40
		if overrideRetries then
			retries = overrideRetries
		end
		while retries > 0 and not canMakePurchase do
			wait(0.5)
			canMakePurchase = canPurchase(true) and hasEnoughMoneyForPurchase()
			retries = retries - 1
		end
	end

	return canMakePurchase
end

function nativePurchaseFinished(wasPurchased)
	if wasPurchased then
		local isPurchasing = retryPurchase()
		if isPurchasing then
			onAcceptPurchase()
		else
			onPurchaseFailed(PURCHASE_FAILED.DEFAULT_ERROR)
		end
	else
		onPurchaseFailed(PURCHASE_FAILED.DID_NOT_BUY_ROBUX)
		stopPurchaseAnimation()
	end
end

local function onBuyRobuxPrompt()
	if not buttonsActive and FFlagDelayPurchasePromptActivation then return end
	if purchaseState ~= PURCHASE_STATE.BUYROBUX then
		return
	end
	if RunService:IsStudio() then
		return
	end

	purchaseState = PURCHASE_STATE.BUYINGROBUX

	startPurchaseAnimation()
	if IsNativePurchasing then
		if platform == Enum.Platform.XBoxOne then
			spawn(function()
				local PlatformService = nil
				pcall(function() PlatformService = Game:GetService('PlatformService') end)
				if PlatformService then
					local platformPurchaseReturnInt = -1
					local purchaseCallSuccess, purchaseErrorMsg = pcall(function()
						platformPurchaseReturnInt = PlatformService:BeginPlatformStorePurchase(ThirdPartyProductName)
					end)
					if purchaseCallSuccess then
						nativePurchaseFinished(platformPurchaseReturnInt == 0)
					else
						nativePurchaseFinished(purchaseCallSuccess)
					end
				end
			end)
		else
			MarketplaceService:PromptNativePurchase(Players.LocalPlayer, ThirdPartyProductName)
		end
	else
		IsCheckingPlayerFunds = true
		GuiService:OpenBrowserWindow(BASE_URL.."Upgrades/Robux.aspx")
	end
	MarketplaceService:ReportRobuxUpsellStarted()
end

local function onUpgradeBCPrompt()
	if not buttonsActive and FFlagDelayPurchasePromptActivation then return end
	if purchaseState ~= PURCHASE_STATE.BUYBC then
		return
	end

	IsCheckingPlayerFunds = true
	GuiService:OpenBrowserWindow(BASE_URL.."Upgrades/BuildersClubMemberships.aspx")
end

function enableControllerInput()
	local cas = game:GetService("ContextActionService")

	--accept the purchase when the user presses the a button
	cas:BindCoreAction(
		CONTROLLER_CONFIRM_ACTION_NAME,
		function(actionName, inputState, inputObject)
			if inputState ~= Enum.UserInputState.Begin then return end

			if purchaseState == PURCHASE_STATE.SUCCEEDED then
				onPromptEnded()
			elseif purchaseState == PURCHASE_STATE.FAILED then
				onPromptEnded()
			elseif purchaseState == PURCHASE_STATE.BUYITEM then
				onAcceptPurchase()
			elseif purchaseState == PURCHASE_STATE.BUYROBUX then
				onBuyRobuxPrompt()
			elseif  purchaseState == PURCHASE_STATE.BUYBC then
				onUpgradeBCPrompt()
			end
		end,
		false,
		Enum.KeyCode.ButtonA
	)

	--cancel the purchase when the user presses the b button
	cas:BindCoreAction(
		CONTROLLER_CANCEL_ACTION_NAME,
		function(actionName, inputState, inputObject)
			if inputState ~= Enum.UserInputState.Begin then return end

			if (OkPurchasedButton.Visible or OkButton.Visible or CancelButton.Visible) and (not PurchaseFrame.Visible) then
				onPromptEnded(false)
			end
		end,
		false,
		Enum.KeyCode.ButtonB
	)
end

function disableControllerInput()
	local cas = game:GetService("ContextActionService")
	cas:UnbindCoreAction(CONTROLLER_CONFIRM_ACTION_NAME)
	cas:UnbindCoreAction(CONTROLLER_CANCEL_ACTION_NAME)
end

function showGamepadButtons()
	for _, button in pairs(GAMEPAD_BUTTONS) do
		button.Visible = true
	end
end

function hideGamepadButtons()
	for _, button in pairs(GAMEPAD_BUTTONS) do
		button.Visible = false
	end
end

function valueInTable(val, tab)
	for _, v in pairs(tab) do
		if v == val then
			return true
		end
	end
	return false
end

function onInputChanged(inputObject)
	local input = inputObject.UserInputType
	local inputs = Enum.UserInputType
	if valueInTable(input, {inputs.Gamepad1, inputs.Gamepad2, inputs.Gamepad3, inputs.Gamepad4}) then
		if inputObject.KeyCode == Enum.KeyCode.Thumbstick1 or inputObject.KeyCode == Enum.KeyCode.Thumbstick2 then
			if math.abs(inputObject.Position.X) > 0.1 or math.abs(inputObject.Position.Z) > 0.1 or math.abs(inputObject.Position.Y) > 0.1 then
				showGamepadButtons()
			end
		else
			showGamepadButtons()
		end
	else
		hideGamepadButtons()
	end
end
UserInputService.InputChanged:connect(onInputChanged)
UserInputService.InputBegan:connect(onInputChanged)
hideGamepadButtons()

CancelButton.MouseButton1Click:connect(function()
	if not buttonsActive and FFlagDelayPurchasePromptActivation then return end
	if IsCurrentlyPurchasing then return end
	onPromptEnded(false)
end)
BuyButton.MouseButton1Click:connect(onAcceptPurchase)
FreeButton.MouseButton1Click:connect(onAcceptPurchase)
OkButton.MouseButton1Click:connect(function()
	if not buttonsActive and FFlagDelayPurchasePromptActivation then return end
	if purchaseState == PURCHASE_STATE.FAILED then
		onPromptEnded(false)
	end
end)
OkPurchasedButton.MouseButton1Click:connect(function()
	if not buttonsActive and FFlagDelayPurchasePromptActivation then return end
	if purchaseState == PURCHASE_STATE.SUCCEEDED then
		onPromptEnded(true)
	end
end)
BuyRobuxButton.MouseButton1Click:connect(onBuyRobuxPrompt)
BuyBCButton.MouseButton1Click:connect(onUpgradeBCPrompt)

MarketplaceService.PromptProductPurchaseRequested:connect(function(player, productId, equipIfPurchased, currencyType)
	onPurchasePrompt(player, nil, equipIfPurchased, currencyType, productId)
end)
MarketplaceService.PromptPurchaseRequested:connect(function(player, assetId, equipIfPurchased, currencyType)
	onPurchasePrompt(player, assetId, equipIfPurchased, currencyType, nil)
end)
MarketplaceService.PromptGamePassPurchaseRequested:connect(function(player, gamePassId)
	onPurchasePrompt(player, nil, false, Enum.CurrencyType.Default, nil, gamePassId)
end)
MarketplaceService.ServerPurchaseVerification:connect(function(serverResponseTable)
	if not serverResponseTable then
		onPurchaseFailed(PURCHASE_FAILED.DEFAULT_ERROR)
		return
	end

	if serverResponseTable["playerId"] and tonumber(serverResponseTable["playerId"]) == Players.LocalPlayer.UserId then
		onPurchaseSuccess()
	end
end)

GuiService.BrowserWindowClosed:connect(function()
	if IsCheckingPlayerFunds then
		local isPurchasing = retryPurchase(4)
		if isPurchasing then
			onAcceptPurchase()
		else
			onPurchaseFailed(PURCHASE_FAILED.DEFAULT_ERROR)
		end
	else
		onPurchaseFailed(PURCHASE_FAILED.DID_NOT_BUY_ROBUX)
	end

	stopPurchaseAnimation()
end)

if IsNativePurchasing then
	MarketplaceService.NativePurchaseFinished:connect(function(player, productId, wasPurchased)
		nativePurchaseFinished(wasPurchased)
	end)
end
