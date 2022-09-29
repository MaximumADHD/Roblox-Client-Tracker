--!nonstrict
local CoreGui = game:GetService("CoreGui")
local GuiService = game:GetService("GuiService")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local FaceAnimatorService = game:FindService("FaceAnimatorService")

local HIGHLIGHT_LOD_BG_COLOR = Color3.fromRGB(0, 196, 221)
local HIGHLIGHT_AUTO_BG_COLOR = Color3.fromRGB(18, 217, 40)
local DEFAULT_BG_COLOR = Color3.fromRGB(150, 150, 150)
local HIGHLIGHT_EXTRAPOLATION_BG_COLOR_MODE1 = Color3.fromRGB(128, 196, 128)
local HIGHLIGHT_EXTRAPOLATION_BG_COLOR_MODE2 = Color3.fromRGB(255, 196, 128)

local BUTTON_WIDTH = 160
local BUTTON_HEIGHT = 20
local BUTTON_PADDING = 10
local NUM_BUTTONS = 8

if not FaceAnimatorService then
	print("[FaceAnimatorUI] FaceAnimatorService is nil. UI disabled.")
	return
end

local lodController = FaceAnimatorService:GetTrackerLodController()
if not lodController then
	print("[FaceAnimatorUI] TrackerLodController is nil. UI disabled.")
	return
end

local lodFrame = Instance.new('Frame', RobloxGui)
lodFrame.Name = "LodFrame"
lodFrame.Position = UDim2.new(1.0, -190, 0.0, 10)
lodFrame.Size = UDim2.fromOffset(BUTTON_WIDTH + BUTTON_PADDING * 2, BUTTON_HEIGHT * NUM_BUTTONS + BUTTON_PADDING * (NUM_BUTTONS + 1))
lodFrame.BackgroundColor3 = Color3.fromRGB(0, 86, 158)
lodFrame.BorderColor3 = Color3.fromRGB(27, 42, 53)
local contentFrame = Instance.new('Frame', lodFrame)
contentFrame.Name = "ContentFrame"
contentFrame.Position = UDim2.fromOffset(BUTTON_PADDING, BUTTON_PADDING)
contentFrame.Size = UDim2.fromOffset(BUTTON_WIDTH, BUTTON_HEIGHT * NUM_BUTTONS + BUTTON_PADDING * (NUM_BUTTONS - 1))
contentFrame.BackgroundColor3 = lodFrame.BackgroundColor3
contentFrame.BorderColor3 = lodFrame.BorderColor3
contentFrame.BorderSizePixel = 0
local contentLayout = Instance.new('UIListLayout', contentFrame)
contentLayout.Padding = UDim.new(0, BUTTON_PADDING)
contentLayout.SortOrder = Enum.SortOrder.LayoutOrder

local function createLodTextButton(layoutOrder, name, text)
	local textButton = Instance.new('TextButton', contentFrame)
	textButton.Name = name
	textButton.Font = Enum.Font.SourceSans
	textButton.Text = text
	textButton.TextSize = 18
	textButton.Size = UDim2.fromOffset(BUTTON_WIDTH, BUTTON_HEIGHT)
	textButton.BackgroundColor3 = DEFAULT_BG_COLOR
	textButton.BorderColor3 = Color3.fromRGB(27, 42, 53)
	textButton.LayoutOrder = layoutOrder
	return textButton
end

local autoButton = createLodTextButton(1, "AutoButton", "Auto")
local videoAudioAccurateButton = createLodTextButton(2, "VideoAudioAccurateButton", "Video Audio Accurate")
local videoAudioFastButton = createLodTextButton(3, "VideoAudioFastButton", "Video Audio Fast")
local videoAccurateButton = createLodTextButton(4, "VideoAccurateButton", "Video Accurate")
local videoFastButton = createLodTextButton(5, "VideoFastButton", "Video Fast")
local audioButton = createLodTextButton(6, "AudioButton", "Audio")
local offButton = createLodTextButton(7, "OffButton", "Off")
local extrapolationButton = createLodTextButton(8, "ExtrapolationButton", "Extrapolation")

local lodButtons = {
	videoFastButton,
	videoAccurateButton,
	videoAudioFastButton,
	videoAudioAccurateButton,
	audioButton,
}

local function updateButtonsState()
	if not FaceAnimatorService:IsStarted() then
		offButton.BackgroundColor3 = HIGHLIGHT_LOD_BG_COLOR
		print("[FaceAnimatorUI] FaceAnimatorService not started or LodController not enabled. UI not active.")
	else
		local audioAuto = (lodController.AudioMode == (Enum::any).TrackerLodFlagMode.Auto)
		local videoAuto = (lodController.VideoMode == (Enum::any).TrackerLodFlagMode.Auto)
		local lodAuto = (lodController.VideoLodMode == (Enum::any).TrackerLodValueMode.Auto)

		local extrapolation = lodController:getExtrapolation()
		local audioEnabled = lodController:isAudioEnabled()
		local videoEnabled = lodController:isVideoEnabled()
		local lod = lodController:getVideoLod()

		if not audioEnabled and not videoEnabled then
			offButton.BackgroundColor3 = HIGHLIGHT_LOD_BG_COLOR
			autoButton.BackgroundColor3 = DEFAULT_BG_COLOR
		else
			offButton.BackgroundColor3 = DEFAULT_BG_COLOR
			if audioAuto or videoAuto or lodAuto then
				autoButton.BackgroundColor3 = HIGHLIGHT_AUTO_BG_COLOR
			else
				autoButton.BackgroundColor3 = DEFAULT_BG_COLOR
			end
		end
		if extrapolation == 1 then
			extrapolationButton.BackgroundColor3 = HIGHLIGHT_EXTRAPOLATION_BG_COLOR_MODE1
		elseif extrapolation == 2 then
			extrapolationButton.BackgroundColor3 = HIGHLIGHT_EXTRAPOLATION_BG_COLOR_MODE2
		else
			extrapolationButton.BackgroundColor3 = DEFAULT_BG_COLOR
		end
		-- Highlight currently selected LOD button --
		local activeButton = nil
		if videoEnabled then
			local bool_to_number = { [true]=1, [false]=0 }
			activeButton = lodButtons[1 + bool_to_number[audioEnabled]*2 + lod]
		elseif audioEnabled then
			activeButton = lodButtons[5]
		end

		for _, button in ipairs(lodButtons) do
			if button == activeButton then
				button.BackgroundColor3 = HIGHLIGHT_LOD_BG_COLOR
			else
				button.BackgroundColor3 = DEFAULT_BG_COLOR
			end
		end
	end
end

lodController.UpdateState:connect(updateButtonsState)

local function onAutoButtonActivated()
	lodController.VideoMode = (Enum::any).TrackerLodFlagMode.Auto
	lodController.AudioMode = (Enum::any).TrackerLodFlagMode.Auto
	lodController.VideoLodMode = (Enum::any).TrackerLodValueMode.Auto
	lodController.VideoExtrapolationMode = (Enum::any).TrackerExtrapolationFlagMode.Auto
end

local function onOffButtonActivated()
	lodController.VideoMode = (Enum::any).TrackerLodFlagMode.ForceFalse
	lodController.AudioMode = (Enum::any).TrackerLodFlagMode.ForceFalse
	lodController.VideoLodMode = (Enum::any).TrackerLodValueMode.Auto
	lodController.VideoExtrapolationMode = (Enum::any).TrackerExtrapolationFlagMode.Auto
end

local function makeOnButtonActivated(videoEnabled, audioEnabled, videoLod)
	local bool_to_mode = { [true] = (Enum::any).TrackerLodFlagMode.ForceTrue, [false] = (Enum::any).TrackerLodFlagMode.ForceFalse }
	local int_to_mode = { [0] = (Enum::any).TrackerLodValueMode.Force0, [1] = (Enum::any).TrackerLodValueMode.Force1 }

	return function()
		lodController.VideoMode = bool_to_mode[videoEnabled]
		lodController.AudioMode = bool_to_mode[audioEnabled]
		lodController.VideoLodMode = int_to_mode[videoLod]
	end
end
local function onExtrapolationButtonActivated()
	local extrapolation = lodController.VideoExtrapolationMode
	if extrapolation == (Enum::any).TrackerExtrapolationFlagMode.ForceDisabled then
		lodController.VideoExtrapolationMode = (Enum::any).TrackerExtrapolationFlagMode.ExtrapolateFacsAndPose
	elseif extrapolation == (Enum::any).TrackerExtrapolationFlagMode.ExtrapolateFacsAndPose then
		lodController.VideoExtrapolationMode = (Enum::any).TrackerExtrapolationFlagMode.ExtrapolateFacsOnly
	else
		lodController.VideoExtrapolationMode = (Enum::any).TrackerExtrapolationFlagMode.ForceDisabled
	end
end

autoButton.Activated:Connect(onAutoButtonActivated)
offButton.Activated:Connect(onOffButtonActivated)
extrapolationButton.Activated:Connect(onExtrapolationButtonActivated)
videoFastButton.Activated:Connect(makeOnButtonActivated(true, false, 0))
videoAccurateButton.Activated:Connect(makeOnButtonActivated(true, false, 1))
videoAudioFastButton.Activated:Connect(makeOnButtonActivated(true, true, 0))
videoAudioAccurateButton.Activated:Connect(makeOnButtonActivated(true, true, 1))
audioButton.Activated:Connect(makeOnButtonActivated(false, true, 1))
