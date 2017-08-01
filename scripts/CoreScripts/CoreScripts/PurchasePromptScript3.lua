--[[
	// Filename: PurchasePromptScript3.lua
	// Version 1.1
	// Release 255
	// Written by: jeditkacheff/jmargh/0xBAADF00D
	// Description: Handles in game purchases
]]--
local vrPurchasePromptsEnabledSuccess, vrPurchasePromptsEnabled = pcall(function() return settings():GetFFlag("VRPurchasePromptsEnabled") end)
vrPurchasePromptsEnabled = vrPurchasePromptsEnabled and vrPurchasePromptsEnabledSuccess
if not vrPurchasePromptsEnabled then
	return --Don't enable this file if the VR Purchase Prompts flag is OFF
end

--[[ Services ]]--
local GuiService = game:GetService('GuiService')
local HttpService = game:GetService('HttpService')
local HttpRbxApiService = game:GetService('HttpRbxApiService')
local InsertService = game:GetService('InsertService')
local MarketplaceService = game:GetService('MarketplaceService')
local Players = game:GetService('Players')
local UserInputService = game:GetService('UserInputService')
local RunService = game:GetService("RunService")
local TextService = game:GetService("TextService")

--[[ Script Variables ]]--
local RobloxGui = script.Parent
local ThirdPartyProductName = nil

local purchaseDialogVR = nil

--[[ Flags ]]--
local platform = UserInputService:GetPlatform()
local IsNativePurchasing = platform == Enum.Platform.XBoxOne or
							platform == Enum.Platform.IOS or
							platform == Enum.Platform.Android or
							platform == Enum.Platform.UWP

local IsCurrentlyPrompting = false
local IsCurrentlyPurchasing = false
local IsPurchasingConsumable = false
local IsCheckingPlayerFunds = false
local IsVRMode = false
RobloxGui:WaitForChild("Modules"):WaitForChild("TenFootInterface")
local TenFootInterface = require(RobloxGui.Modules.TenFootInterface)
local isTenFootInterface = TenFootInterface:IsEnabled()
local freezeControllerActionName = "doNothingActionPrompt"
local freezeThumbstick1Name = "doNothingThumbstickPrompt"
local freezeThumbstick2Name = "doNothingThumbstickPrompt"
local _,largeFont = pcall(function() return Enum.FontSize.Size42 end)
largeFont = largeFont or Enum.FontSize.Size36
local scaleFactor = isTenFootInterface and 2 or 1
local purchaseState = nil

--[[ Purchase Data ]]--
local PurchaseData = {
	AssetId = nil,
	ProductId = nil,
	CurrencyType = nil,
	EquipOnPurchase = nil,
	ProductInfo = nil,
	ItemDescription = nil,
}

--[[ Constants ]]--
local BASE_URL = game:GetService('ContentProvider').BaseUrl:lower()
BASE_URL = string.gsub(BASE_URL, "/m.", "/www.")
local THUMBNAIL_URL = BASE_URL.."thumbs/asset.ashx?assetid="
-- Images
local BUTTON = 'rbxasset://textures/ui/VR/button.png'
local BUTTON_DOWN = 'rbxasset://textures/ui/VR/buttonSelected.png'
local ROBUX_ICON = 'rbxasset://textures/ui/RobuxIcon.png'
local ERROR_ICON = 'rbxasset://textures/ui/ErrorIcon.png'
local A_BUTTON = "rbxasset://textures/ui/Settings/Help/AButtonDark.png"
local B_BUTTON = "rbxasset://textures/ui/Settings/Help/BButtonDark.png"
local DEFAULT_XBOX_IMAGE = 'rbxasset://textures/ui/Shell/Icons/ROBUXIcon@1080.png'
--Context Actions
local CONTROLLER_CONFIRM_ACTION_NAME = "CoreScriptPurchasePromptControllerConfirm"
local CONTROLLER_CANCEL_ACTION_NAME = "CoreScriptPurchasePromptControllerCancel"
local GAMEPAD_BUTTONS = {}
local BUTTON_TEXT_OBJECTS = {}

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
	pcall(function() result = settings():GetFFlag("StudioMockPurchasesEnabled") and settings():GetFFlag("StudioUseMarketplaceApiClient") and game:GetService("RunService"):IsStudio() end)
	return result
end

local function useNewMarketplaceMethods()
	if game:GetService("RunService"):IsStudio() then
		flagExists, flagValue = pcall(function() return settings():GetFFlag("StudioUseMarketplaceApiClient") end)
	else
		flagExists, flagValue = pcall(function() return settings():GetFFlag("RCCUseMarketplaceApiClient") end)
	end
	return flagExists and flagValue
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

local DIALOG_SIZE = UDim2.new(0, 324, 0, 240)
local DIALOG_SIZE_TENFOOT = UDim2.new(0, 324*scaleFactor, 0, 240*scaleFactor)
local SHOW_POSITION = UDim2.new(0.5, -162, 0.5, -120)
local SHOW_POSITION_TENFOOT = UDim2.new(0.5, -162*scaleFactor, 0.5, -120*scaleFactor)
local HIDE_POSITION = UDim2.new(0.5, -162, 0, -181)
local HIDE_POSITION_TENFOOT = UDim2.new(0.5, -162*scaleFactor, 0, -180*scaleFactor - 1)

local BODY_SIZE = UDim2.new(0, 324, 0, 136)
local BODY_SIZE_TENFOOT = UDim2.new(0, 324*scaleFactor, 0, 136*scaleFactor)
local TWEEN_TIME = 0.3

local TITLE_HEIGHT = 40
local TITLE_FONTSIZE = Enum.FontSize.Size24
local TITLE_HEIGHT_TENFOOT = 80
local TITLE_FONTSIZE_TENFOOT = Enum.FontSize.Size48

local BTN_WIDTH, BTN_HEIGHT = 0.5, 0.225
local BTN_MARGIN = 20
local BTN_SIZE = UDim2.new(BTN_WIDTH, -BTN_MARGIN * 1.25, BTN_HEIGHT, 0)

local BTN_1_POS = UDim2.new(0.25, 0, 1 - BTN_HEIGHT, -BTN_MARGIN)
local BTN_1_POS_TENFOOT = BTN_1_POS

local BTN_1_SIZE = BTN_SIZE
local BTN_1_SIZE_TENFOOT = BTN_1_SIZE

local BTN_L_POS = UDim2.new(0, BTN_MARGIN, 1 - BTN_HEIGHT, -BTN_MARGIN)
local BTN_R_POS = UDim2.new(0.5, BTN_MARGIN * 0.25, 1 - BTN_HEIGHT, -BTN_MARGIN)

local BTN_MARGIN_TENFOOT = 20 * scaleFactor
local BTN_SIZE_TENFOOT = UDim2.new(BTN_WIDTH, -BTN_MARGIN_TENFOOT * 1.25, BTN_HEIGHT, 0)
local BTN_L_POS_TENFOOT = UDim2.new(0, BTN_MARGIN_TENFOOT, 1 - BTN_HEIGHT, -BTN_MARGIN_TENFOOT)
local BTN_R_POS_TENFOOT = UDim2.new(0.5, BTN_MARGIN_TENFOOT * 0.25, 1 - BTN_HEIGHT, -BTN_MARGIN_TENFOOT)

--[[ Utility Functions ]]--
local function lerp( start, finish, t)
	return (1 - t) * start + t * finish
end

local function formatNumber(value)
	return tostring(value):reverse():gsub("%d%d%d", "%1,"):reverse():gsub("^,", "")
end

--[[ Gui Creation Functions ]]--
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
	imageButton.SelectionImageObject = Instance.new("ImageLabel")
	imageButton.SelectionImageObject.Name = "EmptySelectionImage"
	imageButton.SelectionImageObject.BackgroundTransparency = 1
	imageButton.SelectionImageObject.Image = ""

	local textLabel = createTextLabel(name.."Text", UDim2.new(1, 0, 1, 0), UDim2.new(0, 0, 0, 0), font, isTenFootInterface and largeFont or Enum.FontSize.Size24, text)
	textLabel.ZIndex = 9
	textLabel.Parent = imageButton
	table.insert(BUTTON_TEXT_OBJECTS, textLabel)

	imageButton.MouseEnter:connect(function()
		imageButton.Image = imageDown
	end)
	imageButton.MouseLeave:connect(function()
		imageButton.Image = image
	end)
	imageButton.MouseButton1Click:connect(function()
		imageButton.Image = image
	end)
	imageButton.SelectionGained:connect(function()
		imageButton.Image = imageDown
	end)
	imageButton.SelectionLost:connect(function()
		imageButton.Image = image
	end)

	return imageButton
end

local function setFrameBackground(frame, backgroundColor3, backgroundTransparency)
	--ugly workaround alert
	--remove this check when antialiasing for SurfaceGui.AlwaysOnTop is added
	local smooth = frame:FindFirstChild("Smooth3D")
	if not smooth then
		frame.BackgroundColor3 = backgroundColor3
		frame.BackgroundTransparency = backgroundTransparency
	else
		smooth.ImageColor3 = backgroundColor3
		smooth.ImageTransparency = backgroundTransparency
	end
end

local function getFrameBackground(frame)
	local smooth = frame:FindFirstChild("Smooth3D")
	if not smooth then
		return frame.BackgroundColor3, frame.BackgroundTransparency
	else
		return smooth.ImageColor3, smooth.ImageTransparency
	end
end

--[[ Begin Gui Creation ]]--
local PurchaseDialog = isTenFootInterface and createFrame("PurchaseDialog", DIALOG_SIZE_TENFOOT, HIDE_POSITION_TENFOOT, 1, nil) or createFrame("PurchaseDialog", DIALOG_SIZE, HIDE_POSITION, 1, nil)
PurchaseDialog.Visible = false
PurchaseDialog.Parent = RobloxGui

	local ContainerFrame = createFrame("ContainerFrame", UDim2.new(1, 0, 1, 0), nil, 0.5, Color3.new(31/255,31/255,31/255))
	ContainerFrame.ZIndex = 8
	ContainerFrame.Parent = PurchaseDialog

		local WindowTitle = createTextLabel("WindowTitle", UDim2.new(1, 0, 0, isTenFootInterface and TITLE_HEIGHT_TENFOOT or TITLE_HEIGHT), UDim2.new(0, 0, 0, 0), Enum.Font.SourceSansBold, isTenFootInterface and TITLE_FONTSIZE_TENFOOT or TITLE_FONTSIZE, "Confirm Purchase")
		WindowTitle.Parent = ContainerFrame
		WindowTitle.ZIndex = 9

		local ColorStripe = createFrame("ColorStripe", UDim2.new(1, 0, 0, 2), nil, 0, Color3.new(0.01, 0.72, 0.34))
		ColorStripe.Position = UDim2.new(0, 0, 0, isTenFootInterface and TITLE_HEIGHT_TENFOOT or TITLE_HEIGHT)
		ColorStripe.ZIndex = 9
		ColorStripe.Parent = ContainerFrame

		local ItemPreviewImage = createImageLabel("ItemPreviewImage", UDim2.new(0, 64*scaleFactor, 0, 64*scaleFactor), UDim2.new(0, 27*scaleFactor, 0, 60*scaleFactor), "")
		ItemPreviewImage.ZIndex = 9
		ItemPreviewImage.Parent = ContainerFrame

		local ItemDescriptionText = createTextLabel("ItemDescriptionText", UDim2.new(0, 210*scaleFactor - 20, 0, 96*scaleFactor), UDim2.new(0, 110*scaleFactor, 0, 58*scaleFactor),
			Enum.Font.SourceSansBold, isTenFootInterface and Enum.FontSize.Size36 or Enum.FontSize.Size18, PURCHASE_MSG.PURCHASE)
		ItemDescriptionText.TextXAlignment = Enum.TextXAlignment.Left
		ItemDescriptionText.TextYAlignment = Enum.TextYAlignment.Top
		ItemDescriptionText.TextWrapped = true
		ItemDescriptionText.Parent = ContainerFrame

		local RobuxIcon = createImageLabel("RobuxIcon", isTenFootInterface and UDim2.new(0, 20*scaleFactor, 0, 20*scaleFactor) or UDim2.new(0, 20, 0, 20), UDim2.new(0, 0, 0, 0), ROBUX_ICON)
		RobuxIcon.ZIndex = 9
		RobuxIcon.Visible = false
		RobuxIcon.Parent = ContainerFrame

		local CostText = createTextLabel("CostText", UDim2.new(0, 0, 0, 0), UDim2.new(0, 0, 0, 0),
			Enum.Font.SourceSansBold, isTenFootInterface and largeFont or Enum.FontSize.Size18, "")
		CostText.TextXAlignment = Enum.TextXAlignment.Left
		CostText.Visible = false
		CostText.Parent = ContainerFrame

		local PostBalanceText = createTextLabel("PostBalanceText", UDim2.new(1, -20, 0, 50), isTenFootInterface and UDim2.new(0, 10, 0, 140*scaleFactor) or UDim2.new(0, 10, 0, 140), Enum.Font.SourceSans,
			isTenFootInterface and Enum.FontSize.Size24 or Enum.FontSize.Size14, "")
		PostBalanceText.TextYAlignment = Enum.TextYAlignment.Top
		PostBalanceText.TextWrapped = true
		PostBalanceText.ZIndex = 9
		PostBalanceText.Parent = ContainerFrame

		local buttonSliceCenter = Rect.new(8, 8, 64 - 8, 64 - 8)
		local buttonScaleType = Enum.ScaleType.Slice

		local BuyButton = createImageButtonWithText("BuyButton", isTenFootInterface and BTN_L_POS_TENFOOT or BTN_L_POS, BUTTON, BUTTON_DOWN, "Buy Now", Enum.Font.SourceSansBold)
		BuyButton.Parent = ContainerFrame
		BuyButton.ScaleType = buttonScaleType
		BuyButton.SliceCenter = buttonSliceCenter
		local BuyButtonText = BuyButton:FindFirstChild("BuyButtonText")

		local buyButtonGamepadImage = Instance.new("ImageLabel")
		buyButtonGamepadImage.BackgroundTransparency = 1
		buyButtonGamepadImage.Image = A_BUTTON
		buyButtonGamepadImage.Size = UDim2.new(1, -16, 1, -16)
		buyButtonGamepadImage.SizeConstraint = Enum.SizeConstraint.RelativeYY
		buyButtonGamepadImage.Parent = BuyButton
		buyButtonGamepadImage.Position = UDim2.new(0, 8, 0, 8)
		buyButtonGamepadImage.Visible = false
		buyButtonGamepadImage.ZIndex = BuyButton.ZIndex
		table.insert(GAMEPAD_BUTTONS, buyButtonGamepadImage)

		local CancelButton = createImageButtonWithText("CancelButton", isTenFootInterface and BTN_R_POS_TENFOOT or BTN_R_POS, BUTTON, BUTTON_DOWN, "Cancel", Enum.Font.SourceSans)
		CancelButton.Parent = ContainerFrame
		CancelButton.ScaleType = buttonScaleType
		CancelButton.SliceCenter = buttonSliceCenter

		local cancelButtonGamepadImage = buyButtonGamepadImage:Clone()
		cancelButtonGamepadImage.Image = B_BUTTON
		cancelButtonGamepadImage.ZIndex = CancelButton.ZIndex
		cancelButtonGamepadImage.Parent = CancelButton
		table.insert(GAMEPAD_BUTTONS, cancelButtonGamepadImage)

		local BuyRobuxButton = createImageButtonWithText("BuyRobuxButton", isTenFootInterface and BTN_L_POS_TENFOOT or BTN_L_POS, BUTTON, BUTTON_DOWN, IsNativePurchasing and "Buy" or "Buy R$",
			Enum.Font.SourceSansBold)
		BuyRobuxButton.Visible = false
		BuyRobuxButton.Parent = ContainerFrame
		BuyRobuxButton.ScaleType = buttonScaleType
		BuyRobuxButton.SliceCenter = buttonSliceCenter

		local buyRobuxGamepadImage = buyButtonGamepadImage:Clone()
		buyRobuxGamepadImage.ZIndex = BuyRobuxButton.ZIndex
		buyRobuxGamepadImage.Parent = BuyRobuxButton
		table.insert(GAMEPAD_BUTTONS, buyRobuxGamepadImage)

		local BuyBCButton = createImageButtonWithText("BuyBCButton", isTenFootInterface and BTN_L_POS_TENFOOT or BTN_L_POS, BUTTON, BUTTON_DOWN, "Upgrade", Enum.Font.SourceSansBold)
		BuyBCButton.Visible = false
		BuyBCButton.Parent = ContainerFrame
		BuyBCButton.ScaleType = buttonScaleType
		BuyBCButton.SliceCenter = buttonSliceCenter

		local buyBCGamepadImage = buyButtonGamepadImage:Clone()
		buyBCGamepadImage.ZIndex = BuyBCButton.ZIndex
		buyBCGamepadImage.Parent = BuyBCButton
		table.insert(GAMEPAD_BUTTONS, buyBCGamepadImage)

		local FreeButton = createImageButtonWithText("FreeButton", isTenFootInterface and BTN_L_POS_TENFOOT or BTN_L_POS, BUTTON, BUTTON_DOWN, "Take Free", Enum.Font.SourceSansBold)
		FreeButton.Visible = false
		FreeButton.Parent = ContainerFrame
		FreeButton.ScaleType = buttonScaleType
		FreeButton.SliceCenter = buttonSliceCenter

		local OkButton = createImageButtonWithText("OkButton", isTenFootInterface and BTN_1_POS_TENFOOT or BTN_1_POS, BUTTON, BUTTON_DOWN, "OK", Enum.Font.SourceSans)
		OkButton.Size = isTenFootInterface and BTN_1_SIZE_TENFOOT or BTN_1_SIZE
		OkButton.Visible = false
		OkButton.Parent = ContainerFrame
		OkButton.ScaleType = buttonScaleType
		OkButton.SliceCenter = buttonSliceCenter

		local okButtonGamepadImage = buyButtonGamepadImage:Clone()
		okButtonGamepadImage.ZIndex = OkButton.ZIndex
		okButtonGamepadImage.Parent = OkButton
		table.insert(GAMEPAD_BUTTONS, okButtonGamepadImage)

		local OkPurchasedButton = createImageButtonWithText("OkPurchasedButton", isTenFootInterface and BTN_1_POS_TENFOOT or BTN_1_POS, BUTTON, BUTTON_DOWN, "OK", Enum.Font.SourceSans)
		OkPurchasedButton.Size = isTenFootInterface and BTN_1_SIZE_TENFOOT or BTN_1_SIZE
		OkPurchasedButton.Visible = false
		OkPurchasedButton.Parent = ContainerFrame
		OkPurchasedButton.ScaleType = buttonScaleType
		OkPurchasedButton.SliceCenter = buttonSliceCenter

		local okPurchasedGamepadImage = buyButtonGamepadImage:Clone()
		okPurchasedGamepadImage.ZIndex = OkPurchasedButton.ZIndex
		okPurchasedGamepadImage.Parent = OkPurchasedButton
		table.insert(GAMEPAD_BUTTONS, okPurchasedGamepadImage)

	local PurchaseFrame = createFrame("PurchaseFrame", UDim2.new(1, 0, 1, 0), nil, 0.5, Color3.new(31/255,31/255,31/255))
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

--Gui State Control
local function setItemDescriptionText(text)
	if not text or type(text) ~= "string" then
		ItemDescriptionText.Visible = false
		ItemDescriptionText.Text = ""
	else
		ItemDescriptionText.Visible = true
		ItemDescriptionText.Text = text
	end
end

local function setPostBalanceText(text)
	if not text or type(text) ~= "string" then
		PostBalanceText.Visible = false
		PostBalanceText.Text = ""
	else
		local y = 140*scaleFactor
		if CostText.Visible then
			y = CostText.Position.Y.Offset + CostText.TextBounds.y + 6*scaleFactor
		end
		PostBalanceText.Visible = true
		PostBalanceText.Position = UDim2.new(0, 10*scaleFactor, 0, y)
		PostBalanceText.Text = text
	end
end

local function setCostText(amount)
	if not amount or type(amount) ~= "number" then
		RobuxIcon.Visible = false
		CostText.Visible = false
		CostText.Text = ""
	else
		local textSize = TextService:GetTextSize(
			ItemDescriptionText.Text,
			isTenFootInterface and 36 or 18,
			ItemDescriptionText.Font,
			ItemDescriptionText.AbsoluteSize)

		RobuxIcon.Visible = true
		RobuxIcon.Position = UDim2.new(0, 110*scaleFactor, 0, ItemDescriptionText.Position.Y.Offset + textSize.y + 6*scaleFactor)

		CostText.Visible = true
		CostText.Position = UDim2.new(0, 134*scaleFactor, 0, ItemDescriptionText.Position.Y.Offset + textSize.y + 15*scaleFactor)
		CostText.TextColor3 = Color3.new(2/255, 183/255, 87/255)
		CostText.Text = formatNumber(amount)
	end
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

--[[ Purchase Data Functions ]]--
local function getCurrencyString(currencyType)
	return "R$"
end

local function setInitialPurchaseData(assetId, productId, currencyType, equipOnPurchase)
	PurchaseData.AssetId = assetId
	PurchaseData.ProductId = productId
	PurchaseData.CurrencyType = currencyType
	PurchaseData.EquipOnPurchase = equipOnPurchase

	IsPurchasingConsumable = productId ~= nil
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

	local path = 'asset-thumbnail/json?assetId=%d&width=100&height=100&format=png'
	path = BASE_URL..string.format(path, id)
	spawn(function()
		-- check if thumb has been generated, if not generated or if anything fails
		-- set to the default image
		local success, result = pcall(function()
			return game:HttpGetAsync(path)
		end)
		if not success then
			ItemPreviewImage.Image = DEFAULT_XBOX_IMAGE
			return
		end

		local decodeSuccess, decodeResult = pcall(function()
			return HttpService:JSONDecode(result)
		end)
		if not decodeSuccess then
			ItemPreviewImage.Image = DEFAULT_XBOX_IMAGE
			return
		end

		if decodeResult["Final"] == true then
			ItemPreviewImage.Image = THUMBNAIL_URL..tostring(id).."&x=100&y=100&format=png"
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
	setCostText(false)
end

--[[ Show Functions ]]--
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
	local startColor, startTransparency = getFrameBackground(frame)
	while t < duration do
		local s = t / duration
		setFrameBackground(frame, startColor:lerp(endColor, s))
		--
		t = t + (tick() - prevTime)
		prevTime = tick()
		wait()
	end
	setFrameBackground(frame, endColor, frame.BackgroundTransparency)
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
	local descriptionText = PURCHASE_MSG.PURCHASE
	if isFree then
		descriptionText = PURCHASE_MSG.FREE
		setPostBalanceText(PURCHASE_MSG.FREE_BALANCE)
	end

	local productInfo = PurchaseData.ProductInfo
	if not productInfo then
		return false
	end
	local itemDescription = string.gsub(descriptionText, "itemName", string.sub(productInfo["Name"], 1, 20))
	itemDescription = string.gsub(itemDescription, "assetType", ASSET_TO_STRING[productInfo["AssetTypeId"]] or "Unknown")
	setItemDescriptionText(itemDescription)

	if isFree then
		setCostText(false)
	else
		setCostText(PurchaseData.CurrencyAmount)
	end

	setPreviewImage(productInfo, PurchaseData.AssetId)
	purchaseState = PURCHASE_STATE.BUYITEM
	setButtonsVisible(isFree and FreeButton or BuyButton, CancelButton)

	if invalidBC then
		local neededBcLevel = PurchaseData.ProductInfo["MinimumMembershipLevel"]
		setPostBalanceText("This item requires "..BC_LVL_TO_STRING[neededBcLevel]..".\nClick 'Upgrade' to upgrade your Builders Club!")
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
			descriptionText = ("%s. Would you like to buy %s ROBUX?"):format(descriptionText, formatNumber(productCost))
			setPostBalanceText(("The remaining %s ROBUX will be credited to your balance."):format(formatNumber(remainder)))
		end
	else
		descriptionText = descriptionText .. ". Would you like to buy more ROBUX?"
	end
	setItemDescriptionText(descriptionText)
	setPreviewImage(productInfo, PurchaseData.AssetId)
end

local function showPurchasePrompt()
	stopPurchaseAnimation()
	PurchaseDialog.Visible = true
	if isTenFootInterface then
		UserInputService.OverrideMouseIconBehavior = Enum.OverrideMouseIconBehavior.ForceHide
	end
	if IsVRMode then
		PurchaseDialog.Position = SHOW_POSITION
		purchaseDialogVR:SetContent(PurchaseDialog)
		purchaseDialogVR:Show(true)
		disableControllerMovement()
	else
		PurchaseDialog:TweenPosition(isTenFootInterface and SHOW_POSITION_TENFOOT or SHOW_POSITION, Enum.EasingDirection.InOut, Enum.EasingStyle.Quad, TWEEN_TIME, true)
		disableControllerMovement()
		enableControllerInput()
	end

end

--[[ Close and Cancel Functions ]]--
local function onPurchaseFailed(failType)
	setButtonsVisible(OkButton)
	ItemPreviewImage.Image = ERROR_ICON --todo

	setPostBalanceText(false)
	setCostText(false)

	local itemName = PurchaseData.ProductInfo and PurchaseData.ProductInfo["Name"] or ""
	local failedText = string.gsub(PURCHASE_MSG.FAILED, "itemName", string.sub(itemName, 1, 20))

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

	purchaseState = PURCHASE_STATE.FAILED

	showPurchasePrompt()
	setItemDescriptionText(failedText)

end

local function closePurchaseDialog()
	local function onClosed()
		PurchaseDialog.Visible = false
		IsCurrentlyPrompting = false
		IsCurrentlyPurchasing = false
		IsCheckingPlayerFunds = false
		purchaseState = PURCHASE_STATE.DEFAULT
		if isTenFootInterface then
			UserInputService.OverrideMouseIconBehavior = Enum.OverrideMouseIconBehavior.None
		end
	end
	if IsVRMode then
		PurchaseDialog.Position = HIDE_POSITION
		purchaseDialogVR:Close()
		onClosed()
	else
		PurchaseDialog:TweenPosition(isTenFootInterface and HIDE_POSITION_TENFOOT or HIDE_POSITION, Enum.EasingDirection.InOut, Enum.EasingStyle.Quad, TWEEN_TIME, true, onClosed)
	end
end

-- Main exit point
local function onPromptEnded(isSuccess)
	local didPurchase = (purchaseState == PURCHASE_STATE.SUCCEEDED)

	closePurchaseDialog()
	if IsPurchasingConsumable then
		MarketplaceService:SignalPromptProductPurchaseFinished(Players.LocalPlayer.UserId, PurchaseData.ProductId, didPurchase)
	else
		MarketplaceService:SignalPromptPurchaseFinished(Players.LocalPlayer, PurchaseData.AssetId, didPurchase)
	end
	clearPurchaseData()
	enableControllerMovement()
	disableControllerInput()
end

--[[ Purchase Validation ]]--
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
	local success, result = pcall(function() return settings():GetFFlag("RestrictSales") end)
	if not success then
		print("PurchasePromptScript: areThirdPartySalesRestricted failed because", result)
		return false
	end

	return result
end


-- return success and isAvailable
local function isMarketplaceAvailable()
	local success, result = pcall(function()
		return HttpRbxApiService:GetAsync("my/economy-status",
			Enum.ThrottlingPriority.Extreme, Enum.HttpRequestType.MarketplaceService)
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

-- returns success, doesOwnItem
local function doesPlayerOwnItem()
	if not PurchaseData.AssetId or PurchaseData.AssetId <= 0 then
		return false, nil
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
if useNewMarketplaceMethods() then
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
		return balance
	end
else
	getPlayerBalance = function()
		local apiPath = platform == Enum.Platform.XBoxOne and 'my/platform-currency-budget' or 'currency/balance'

		local success, result = pcall(function()
			return HttpRbxApiService:GetAsync(apiPath, 
                Enum.ThrottlingPriority.Default, 
                Enum.HttpRequestType.MarketplaceService)
		end)

		if not success then
			print("PurchasePromptScript: getPlayerBalance() failed because", result)
			return nil
		end

		if result == '' then return end

		result = HttpService:JSONDecode(result)
		if platform == Enum.Platform.XBoxOne then
			result["robux"] = result["Robux"]
			result["tickets"] = "0"
		end

		return result
	end
end

local function isNotForSale()
	return PurchaseData.ProductInfo['IsForSale'] == false and PurchaseData.ProductInfo["IsPublicDomain"] == false
end

local function playerHasFundsForPurchase(playerBalance)
	local currencyTypeStr = "robux"

	local playerBalanceInt = tonumber(playerBalance[currencyTypeStr])
	if not playerBalanceInt then
		return false
	end
	local afterBalanceAmount = playerBalanceInt - PurchaseData.CurrencyAmount
	local currencyStr = getCurrencyString(PurchaseData.CurrencyType)
	if afterBalanceAmount < 0 then
		setPostBalanceText(false)
		return true, false
	end


	if studioMockPurchasesEnabled() then
		setPostBalanceText(PURCHASE_MSG.MOCK_PURCHASE)
	else
		setPostBalanceText(("%s%s%s."):format(PURCHASE_MSG.BALANCE_FUTURE, currencyStr, formatNumber(afterBalanceAmount)))
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
	if useNewMarketplaceMethods() then
		if not MarketplaceService:PlayerCanMakePurchases(Players.LocalPlayer) then
			onPurchaseFailed(PURCHASE_FAILED.PROMPT_PURCHASE_ON_GUEST)
			return false
		end
	else
		if Players.LocalPlayer.UserId < 0 then
			onPurchaseFailed(PURCHASE_FAILED.PROMPT_PURCHASE_ON_GUEST)
			return false
		end
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
			setItemDescriptionText(PURCHASE_MSG.ALREADY_OWN)
			setPostBalanceText(false)
			setButtonsVisible(OkButton)
			return true
		end

		-- most places will not need to sell third party assets.
		if areThirdPartySalesRestricted() and not game:GetService("Workspace").AllowThirdPartySales then
			local ProductCreator = tonumber(PurchaseData.ProductInfo["Creator"]["Id"])
			local RobloxCreator = 1
			if ProductCreator ~= game.CreatorId and ProductCreator ~= RobloxCreator then
				isRestrictedThirdParty = true
			end
		end
	end

	local isFree = isFreeItem()

	if not isFree and isRestrictedThirdParty then
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
			if not hasFunds and not disableUpsell then
				setBuyMoreRobuxDialog(playerBalance)
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

--[[ Purchase Functions ]]--
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

	descriptionText = string.gsub(descriptionText, "itemName", string.sub(PurchaseData.ProductInfo["Name"], 1, 20))
	setItemDescriptionText(descriptionText)
	setCostText(PurchaseData.CurrencyAmount)

	local playerBalance = getPlayerBalance()
	local newBalance = playerBalance.robux

	setPostBalanceText(("%s%s%s."):format(PURCHASE_MSG.BALANCE_NOW, getCurrencyString(PurchaseData.CurrencyType), formatNumber(newBalance)))

	if studioMockPurchasesEnabled() then
		setPostBalanceText(PURCHASE_MSG.MOCK_PURCHASE_SUCCESS)
	elseif isFreeItem() then
		setPostBalanceText(false)
	end

	purchaseState = PURCHASE_STATE.SUCCEEDED

	setButtonsVisible(OkPurchasedButton)
	stopPurchaseAnimation()
end

local function onAcceptPurchase()
	if IsCurrentlyPurchasing then return end

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
	local currencyTypeInt = 1 --ROBUX

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
	if useNewMarketplaceMethods() then
		local requestId = HttpService:GenerateGUID(false)
		submitPurchase = function()
			return game:GetService("MarketplaceService"):PerformPurchase(IsPurchasingConsumable and Enum.InfoType.Product or Enum.InfoType.Asset, productId, PurchaseData.CurrencyAmount or 0, requestId)
		end
	else
		submitPurchase = function()
			return HttpRbxApiService:PostAsync(apiPath, params, 
                Enum.ThrottlingPriority.Default, Enum.HttpContentType.ApplicationUrlEncoded,
                Enum.HttpRequestType.MarketplaceService)
		end
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
		game:ReportInGoogleAnalytics("Developer Product", "Purchase",
			wasSuccess and ("success. Retries = "..(3 - retries)) or ("failure: " .. tostring(result)), 1)
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
	else
		onPurchaseSuccess()
		if PurchaseData.CurrencyType == Enum.CurrencyType.Robux then
			MarketplaceService:ReportAssetSale(PurchaseData.AssetId, PurchaseData.CurrencyAmount)
		end
	end
end

-- main entry point
local function onPurchasePrompt(player, assetId, equipIfPurchased, currencyType, productId)
	if player == Players.LocalPlayer and not IsCurrentlyPrompting then
		IsCurrentlyPrompting = true
		setInitialPurchaseData(assetId, productId, currencyType, equipIfPurchased)
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

	for _,buttonText in pairs(BUTTON_TEXT_OBJECTS) do
		local inset = buttonText.AbsoluteSize.Y - 15
		buttonText.Position = UDim2.new(0, inset, 0, 0)
		buttonText.Size = UDim2.new(1, -inset, 1, 0)
	end
end

function hideGamepadButtons()
	for _, button in pairs(GAMEPAD_BUTTONS) do
		button.Visible = false
	end
	for _,buttonText in pairs(BUTTON_TEXT_OBJECTS) do
		buttonText.Position = UDim2.new(0, 0, 0, 0)
		buttonText.Size = UDim2.new(1, 0, 1, 0)
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
	if not IsVRMode and valueInTable(input, {inputs.Gamepad1, inputs.Gamepad2, inputs.Gamepad3, inputs.Gamepad4}) then
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

--[[ Event Connections ]]--
CancelButton.MouseButton1Click:connect(function()
	if IsCurrentlyPurchasing then return end
	onPromptEnded(false)
end)
BuyButton.MouseButton1Click:connect(onAcceptPurchase)
FreeButton.MouseButton1Click:connect(onAcceptPurchase)
OkButton.MouseButton1Click:connect(function()
	if purchaseState == PURCHASE_STATE.FAILED then
		onPromptEnded(false)
	end
end)
OkPurchasedButton.MouseButton1Click:connect(function()
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
		retryPurchase(4)
	end

	onPurchaseFailed(PURCHASE_FAILED.DID_NOT_BUY_ROBUX)
	stopPurchaseAnimation()
end)

if IsNativePurchasing then
	MarketplaceService.NativePurchaseFinished:connect(function(player, productId, wasPurchased)
		nativePurchaseFinished(wasPurchased)
	end)
end

local function onVREnabled(vrEnabled)
	if vrEnabled then
		local Dialog = require(RobloxGui.Modules.VR.Dialog)
		if not purchaseDialogVR then
			purchaseDialogVR = Dialog.new()
		end
		purchaseDialogVR:SetContent(PurchaseDialog)
		IsVRMode = true
	else
		IsVRMode = false
		if purchaseDialogVR then
			purchaseDialogVR:SetContent(nil)
		end
		PurchaseDialog.Parent = RobloxGui
	end
end

spawn(function()
	onVREnabled(UserInputService.VREnabled)
end)

UserInputService.Changed:connect(function(prop)
	if prop == "VREnabled" then
		onVREnabled(UserInputService.VREnabled)
	end
end)
