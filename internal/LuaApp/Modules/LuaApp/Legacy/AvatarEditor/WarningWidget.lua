-------------- SERVICES --------------
local CoreGui = game:GetService('CoreGui')

------------ MODULES -------------------
local Modules = CoreGui:FindFirstChild("RobloxGui").Modules

local AppState = require(Modules.LuaApp.Legacy.AvatarEditor.AppState)
local TweenController = require(Modules.LuaApp.Legacy.AvatarEditor.TweenInstanceController)
local Categories = require(Modules.LuaApp.Legacy.AvatarEditor.Categories)
local Strings = require(Modules.LuaApp.Legacy.AvatarEditor.LocalizedStrings)
local Utilities = require(Modules.LuaApp.Legacy.AvatarEditor.Utilities)
local LayoutInfoConsole = require(Modules.LuaApp.Legacy.AvatarEditor.LayoutInfoConsole)

-------------- CONSTANTS --------------
local MAX_IMAGE_LENGTH = LayoutInfoConsole.WarningMaxLength
local TEXT_PADDING = LayoutInfoConsole.WarningTextPadding
local MAX_TEXT_LENGTH = MAX_IMAGE_LENGTH - TEXT_PADDING * 2
local DEFAULT_IMAGE_HEIGHT = LayoutInfoConsole.ButtonFontSize + TEXT_PADDING * 2
local WARNING_TYPE = {
	ANIMATION = "Animation";
	SCALE = "Scale";
	DEFAULT_CLOTHING = "Default Clothing";
}
local WARNING_STATE = {
	OPEN = "Open";
	CLOSED = "Closed";
}

------------ VARIABLES -------------------
local characterManager

local currentWarningCnt = 0
local currentWarningType = nil
local currentWarningState = WARNING_STATE.CLOSED
local warningsStack = {} -- For warnings need to display later

local hasAnimation = false
local inScalePage = false
local hasDefaultShirt = false
local hasDefaultPants = false
local defaultClothingWarningCnt = 0
local defaultWarningTiming = 5

local storeChangedCn = nil
local warningGUI = nil
local isConsole = false
local isFocusing = false
local this = {}

local function tweenMobileWarning(text, thisWarningCnt)
	if currentWarningState == WARNING_STATE.OPEN then
		local t = 0.3

		warningGUI.WarningText.TextTransparency = 1

		local tweenInfo = TweenInfo.new(t)

		local warningGoals = {
			Size = UDim2.new(0, 266, 0, 70);
			Position = UDim2.new(0.5, -133, 0.5, -35);
		}
		TweenController(warningGUI, tweenInfo, warningGoals)

		local warningIconGoals = {
			Rotation = -360;
			ImageTransparency = 0;
			Position = UDim2.new(0, 12, 0.5, -24);
		}
		local warningIconStarts = {
			Rotation = 0;
			ImageTransparency = 1;
		}
		TweenController(warningGUI.WarningIcon, tweenInfo, warningIconGoals, warningIconStarts)

		local backgroundGoals = {
			ImageTransparency = 0.25
		}
		local backgroundStarts = {
			ImageTransparency = 1
		}
		TweenController(warningGUI.BackgroundFill, tweenInfo, backgroundGoals, backgroundStarts)
		TweenController(warningGUI.RoundedEnd, tweenInfo, backgroundGoals, backgroundStarts)
		TweenController(warningGUI.RoundedStart, tweenInfo, backgroundGoals, backgroundStarts)

		warningGUI.WarningText.Text = text

		wait(t)

		if thisWarningCnt ~= currentWarningCnt then return end

		local textGoals = {
			TextTransparency = 0
		}
		local textStarts = {
			TextTransparency = 1
		}
		TweenController(warningGUI.WarningText, tweenInfo, textGoals, textStarts)
	else
		local tweenInfo = TweenInfo.new(0.3)
		local textTweenInfo = TweenInfo.new(0.1)

		TweenController(warningGUI.WarningText, textTweenInfo, { TextTransparency = 1 })

		TweenController(warningGUI, tweenInfo, {
			Size = UDim2.new(0, 70, 0, 70);
			Position = UDim2.new(0.5, -35, 0.5, -35);
		})
		TweenController(warningGUI.WarningIcon, tweenInfo, { Position = UDim2.new(0.5, -24, 0.5, -24) })
		TweenController(warningGUI.WarningIcon, tweenInfo, { ImageTransparency = 1 })
		TweenController(warningGUI.BackgroundFill, tweenInfo, { ImageTransparency = 1 })
		TweenController(warningGUI.RoundedEnd, tweenInfo, { ImageTransparency = 1 })
		TweenController(warningGUI.RoundedStart, tweenInfo, { ImageTransparency = 1 })
	end
end

local function tweenConsoleWarning(warningLabel)
	local tweenInfo = TweenInfo.new(LayoutInfoConsole.DefaultTweenTime)
	if currentWarningType == WARNING_TYPE.DEFAULT_CLOTHING then
		local backgroundGoals = {
			ImageTransparency = 0
		}
		local backgroundStarts = {
			ImageTransparency = 1
		}
		TweenController(warningLabel, tweenInfo, backgroundGoals, backgroundStarts)

		local textGoals = {
			TextTransparency = 0
		}
		local textStarts = {
			TextTransparency = 1
		}
		TweenController(warningLabel.ToastText, tweenInfo, textGoals, textStarts)
	end
end

local function adjustWarningHeight(textLabel, warningImage)
	-- In case of stack overflow
	if not isFocusing then
		return
	end
	if textLabel.TextFits then
		textLabel.Size = UDim2.new(textLabel.Size.X.Scale, textLabel.TextBounds.X,
			textLabel.Size.Y.Scale, textLabel.TextBounds.Y)

		local warningImageLength = textLabel.TextBounds.X + TEXT_PADDING * 2
		local warningImageHeight = textLabel.TextBounds.Y + TEXT_PADDING * 2
		warningImage.Size = UDim2.new(warningImage.Size.X.Scale, warningImageLength,
			warningImage.Size.Y.Scale, warningImageHeight)
	else
		textLabel.Size = UDim2.new(textLabel.Size.X.Scale, textLabel.Size.X.Offset,
			textLabel.Size.Y.Scale, textLabel.Size.Y.Offset + LayoutInfoConsole.ButtonFontSize)

		warningImage.Size = UDim2.new(warningImage.Size.X.Scale, warningImage.Size.X.Offset,
			warningImage.Size.Y.Scale, warningImage.Size.Y.Offset + LayoutInfoConsole.ButtonFontSize)

		adjustWarningHeight(textLabel, warningImage)
	end
end

local function createTooltipsWarning(text)
	local indicatorPositionX = warningGUI.Parent.SwitchTypeContainer.AbsolutePosition.X
	local tooltipsWarningPositionX = indicatorPositionX - warningGUI.AbsolutePosition.X
	local tooltipsTipPositionX = tooltipsWarningPositionX + LayoutInfoConsole.TooltilsTipOffset

	local maxImageSizeX = MAX_IMAGE_LENGTH - tooltipsWarningPositionX
	local maxTextSizeX = maxImageSizeX - TEXT_PADDING * 2

	local tooltipsWarning = Utilities.create'ImageLabel'
	{
		Name = "Tooltips";
		AnchorPoint = Vector2.new(0, 1);
		Position = UDim2.new(0, tooltipsWarningPositionX, 1, -171);
		Size = UDim2.new(0, maxImageSizeX, 0, DEFAULT_IMAGE_HEIGHT);
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
		Image = 'rbxasset://textures/ui/Shell/AvatarEditor/graphic/gr-tooltips.png';
		ScaleType = Enum.ScaleType.Slice;
		SliceCenter = Rect.new(8, 8, 9, 9);
		ZIndex = LayoutInfoConsole.IndicatorLayer;
		Parent = warningGUI;
	}
	local tooltipsText = Utilities.create'TextLabel'
	{
		Name = "TooltipsText";
		AnchorPoint = Vector2.new(0, 0.5);
		Position = UDim2.new(0, TEXT_PADDING, 0.5, 0);
		Size = UDim2.new(0, maxTextSizeX, 0, LayoutInfoConsole.ButtonFontSize);
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
		Font = LayoutInfoConsole.RegularFont;
		TextSize = LayoutInfoConsole.ButtonFontSize;
		TextColor3 = LayoutInfoConsole.GrayTextColor;
		TextXAlignment = Enum.TextXAlignment.Left;
		TextYAlignment = Enum.TextYAlignment.Center;
		Text = text;
		TextWrapped = true;
		ZIndex = LayoutInfoConsole.IndicatorLayer;
		Parent = tooltipsWarning;
	}
	Utilities.create'ImageLabel'
	{
		Name = "Tip";
		AnchorPoint = Vector2.new(0, 1);
		Position = UDim2.new(0, tooltipsTipPositionX, 1, -155);
		Size = UDim2.new(0, 32, 0, 16);
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
		Image = 'rbxasset://textures/ui/Shell/AvatarEditor/graphic/gr-tip.png';
		ZIndex = LayoutInfoConsole.IndicatorLayer;
		Parent = warningGUI;
	}

	adjustWarningHeight(tooltipsText, tooltipsWarning)

	tweenConsoleWarning(tooltipsWarning)
end

local function createToastWarning(text)
	local toastWarning = Utilities.create'ImageLabel'
	{
		Name = "Toast";
		AnchorPoint = Vector2.new(0.5, 1);
		Position = UDim2.new(0.5, 0, 1, -191);
		Size = UDim2.new(0, MAX_IMAGE_LENGTH, 0, DEFAULT_IMAGE_HEIGHT);
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
		Image = 'rbxasset://textures/ui/Shell/AvatarEditor/graphic/gr-toast.png';
		ScaleType = Enum.ScaleType.Slice;
		SliceCenter = Rect.new(10, 10, 11, 11);
		ZIndex = LayoutInfoConsole.IndicatorLayer;
		Parent = warningGUI;
	}
	local toastText = Utilities.create'TextLabel'
	{
		Name = "ToastText";
		AnchorPoint = Vector2.new(0, 0.5);
		Position = UDim2.new(0, TEXT_PADDING, 0.5, 0);
		Size = UDim2.new(0, MAX_TEXT_LENGTH, 0, LayoutInfoConsole.ButtonFontSize);
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
		Font = LayoutInfoConsole.RegularFont;
		TextSize = LayoutInfoConsole.ButtonFontSize;
		TextColor3 = LayoutInfoConsole.WhiteTextColor;
		TextXAlignment = Enum.TextXAlignment.Center;
		TextYAlignment = Enum.TextYAlignment.Center;
		Text = text;
		TextWrapped = true;
		ZIndex = LayoutInfoConsole.IndicatorLayer;
		Parent = toastWarning;
	}

	adjustWarningHeight(toastText, toastWarning)

	tweenConsoleWarning(toastWarning)
end

local function clearStack()
	warningsStack = {}
end

local function removeFromStack(warningType)
	for i = #warningsStack, 1, -1 do
		if warningsStack[i] == warningType then
			table.remove(warningsStack, i)
		end
	end
end

local function addToStack(warningType)
	table.insert(warningsStack, warningType)
end

local function moveWarningToTop(warningType)
	removeFromStack(warningType)
	addToStack(warningType)
end

local function findInStack(warningType)
	for i = 1, #warningsStack do
		if warningsStack[i] == warningType then
			return true
		end
	end
	return false
end

local function popWarningsTop()
	if #warningsStack > 0 then
		local top = warningsStack[#warningsStack]
		table.remove(warningsStack)
		return top
	end
	return nil
end

local function resetWarning()
	if isConsole then
		warningGUI:ClearAllChildren()
	else
		warningGUI.WarningText.TextTransparency = 1
		warningGUI.Size = UDim2.new(0, 70, 0, 70)
		warningGUI.Position = UDim2.new(0.5, -35, 0.5, -35)
		warningGUI.WarningIcon.Position = UDim2.new(0.5, -24, 0.5, -24)
		warningGUI.WarningIcon.ImageTransparency = 1
		warningGUI.BackgroundFill.ImageTransparency = 1
		warningGUI.RoundedEnd.ImageTransparency = 1
		warningGUI.RoundedStart.ImageTransparency = 1
	end
end

local displayWarning = function() end

local function closeWarning(warningType)
	if warningType then
		if warningType == WARNING_TYPE.DEFAULT_CLOTHING then
			defaultClothingWarningCnt = defaultClothingWarningCnt + 1
		end
		removeFromStack(warningType)
		if currentWarningType ~= warningType then return end
	else
		if findInStack(WARNING_TYPE.DEFAULT_CLOTHING) then
			defaultClothingWarningCnt = defaultClothingWarningCnt + 1
		end
		clearStack()
	end

	if currentWarningState == WARNING_STATE.CLOSED then return end

	currentWarningState = WARNING_STATE.CLOSED
	currentWarningCnt = currentWarningCnt + 1
	currentWarningType = nil

	Utilities.fastSpawn(function()
		if isConsole then
			warningGUI:ClearAllChildren()
		else
			tweenMobileWarning()
		end
		if warningType then
			local warningsTop = popWarningsTop()
			if warningsTop then
				displayWarning(warningsTop, true)
			end
		end
	end)
end

displayWarning = function (warningType, fromStack)
	removeFromStack(warningType)
	if currentWarningType == warningType and
		currentWarningType ~= WARNING_TYPE.DEFAULT_CLOTHING then
		return
	end

	currentWarningState = WARNING_STATE.OPEN
	resetWarning()

	currentWarningCnt = currentWarningCnt + 1

	if currentWarningType ~= nil and
		currentWarningType ~=  WARNING_TYPE.SCALE and
		currentWarningType ~= warningType then
		moveWarningToTop(currentWarningType)
	end
	currentWarningType = warningType

	local thisDefaultClothingWarningCnt = defaultClothingWarningCnt
	local warningText = ""

	if warningType == WARNING_TYPE.DEFAULT_CLOTHING then
		if not fromStack then
			defaultClothingWarningCnt = defaultClothingWarningCnt + 1
			thisDefaultClothingWarningCnt = defaultClothingWarningCnt
		end
		warningText = Strings:LocalizedString("DefaultClothingAppliedPhrase")
	elseif warningType == WARNING_TYPE.ANIMATION then
		warningText = isConsole and
			Strings:LocalizedString("AnimationsForR15ConsolePhrase") or
			Strings:LocalizedString("AnimationsForR15Phrase")
	elseif warningType == WARNING_TYPE.SCALE then
		warningText = isConsole and
			Strings:LocalizedString("ScalingForR15ConsolePhrase") or
			Strings:LocalizedString("ScalingForR15Phrase")
	end

	Utilities.fastSpawn(function()
		if isConsole then
			if currentWarningType == WARNING_TYPE.DEFAULT_CLOTHING then
				createToastWarning(warningText)
			else
				createTooltipsWarning(warningText)
			end
		else
			tweenMobileWarning(warningText, currentWarningCnt)
		end

		if warningType == WARNING_TYPE.DEFAULT_CLOTHING and
			not fromStack and
			thisDefaultClothingWarningCnt == defaultClothingWarningCnt then
			wait(defaultWarningTiming)
			if thisDefaultClothingWarningCnt == defaultClothingWarningCnt then
				closeWarning(WARNING_TYPE.DEFAULT_CLOTHING)
			end
		end
	end)
end


local function updateState(newState, oldState)

	warningGUI.Visible = not newState.FullView

	local avatarTypeChanged = false
	if newState.Character.AvatarType ~= oldState.Character.AvatarType then
		avatarTypeChanged = true
	end

	local hasAnimationChanged = false
	if newState.Character.Assets ~= oldState.Character.Assets then
		local newHasAnimation = false

		for assetType, _ in pairs(newState.Character.Assets) do
			if next(newState.Character.Assets[assetType]) ~= nil and
				string.find(assetType, 'Animation') then
				newHasAnimation = true
				break
			end
		end

		if newHasAnimation ~= hasAnimation then
			hasAnimationChanged = true
			hasAnimation = newHasAnimation
		end
	end

	local inScalePageChanged = false
	if newState.Category.CategoryIndex ~= oldState.Category.CategoryIndex
		or newState.Category.TabsInfo ~= oldState.Category.TabsInfo then

		local categoryIndex = newState.Category.CategoryIndex or 1
		local tabInfo = categoryIndex and newState.Category.TabsInfo[categoryIndex]
		local tabIndex = tabInfo and tabInfo.TabIndex or 1
		local currentPageName = Categories[categoryIndex].pages[tabIndex].name

		local newInScalePage = (currentPageName == 'Scale')

		if newInScalePage ~= inScalePage then
			inScalePageChanged = true
			inScalePage = newInScalePage
		end
	end

	local addedDefaultClothes = false
	local destroyedDefaultClothes = false

	if newState.Character ~= oldState.Character then
		local newHasDefaultShirt = characterManager.hasDefaultShirt()
		local newHasDefaultPants = characterManager.hasDefaultPants()

		if (newHasDefaultShirt ~= hasDefaultShirt and newHasDefaultShirt) or
			(newHasDefaultPants ~= hasDefaultPants and newHasDefaultPants) then
			addedDefaultClothes = true
		end

		if (newHasDefaultShirt ~= hasDefaultShirt and not newHasDefaultShirt) or
			(newHasDefaultPants ~= hasDefaultPants and not newHasDefaultPants) then
			destroyedDefaultClothes = true
		end

		hasDefaultShirt = newHasDefaultShirt
		hasDefaultPants = newHasDefaultPants
	end

	if avatarTypeChanged then
		if newState.Character.AvatarType == 'R15' then
			closeWarning(WARNING_TYPE.ANIMATION)
			closeWarning(WARNING_TYPE.SCALE)
		else
			if hasAnimation then
				displayWarning(WARNING_TYPE.ANIMATION)
			end
			if inScalePage then
				displayWarning(WARNING_TYPE.SCALE)
			end
		end
	elseif newState.Character.AvatarType == 'R6' then
		if hasAnimationChanged then
			if hasAnimation then
				displayWarning(WARNING_TYPE.ANIMATION)
			else
				closeWarning(WARNING_TYPE.ANIMATION)
			end
		end
		if inScalePageChanged then
			if inScalePage then
				displayWarning(WARNING_TYPE.SCALE)
			else
				closeWarning(WARNING_TYPE.SCALE)
			end
		end
	end

	if addedDefaultClothes then
		displayWarning(WARNING_TYPE.DEFAULT_CLOTHING)
	elseif destroyedDefaultClothes then
		closeWarning(WARNING_TYPE.DEFAULT_CLOTHING)
	end
end

local function initWarning()
	local state = AppState.Store:GetState()

	local categoryIndex = state.Category.CategoryIndex or 1
	local tabInfo = categoryIndex and state.Category.TabsInfo[categoryIndex]
	local tabIndex = tabInfo and tabInfo.TabIndex or 1
	local currentPageName = Categories[categoryIndex].pages[tabIndex].name
	inScalePage = (currentPageName == 'Scale')

	for assetType, _ in pairs(state.Character.Assets) do
		if next(state.Character.Assets[assetType]) ~= nil and
			string.find(assetType, 'Animation') then
			hasAnimation = true
			break
		end
	end

	if state.Character.AvatarType == 'R6' then
		if hasAnimation then
			displayWarning(WARNING_TYPE.ANIMATION)
		else
			closeWarning(WARNING_TYPE.ANIMATION)
		end
		if inScalePage then
			displayWarning(WARNING_TYPE.SCALE)
		else
			closeWarning(WARNING_TYPE.SCALE)
		end
	end

	hasDefaultShirt = characterManager.hasDefaultShirt()
	hasDefaultPants = characterManager.hasDefaultPants()

	if hasDefaultShirt or hasDefaultPants then
		displayWarning(WARNING_TYPE.DEFAULT_CLOTHING)
	else
		closeWarning(WARNING_TYPE.DEFAULT_CLOTHING)
	end
end


function this:Focus()
	isFocusing = true
	storeChangedCn = AppState.Store.Changed:Connect(updateState)
	initWarning()
end

function this:RemoveFocus()
	isFocusing = false
	storeChangedCn = Utilities.disconnectEvent(storeChangedCn)
end

function this:Hide()
	closeWarning()
end

return function(inWarningGUI, inCharacterManager, inIsConsole)
	warningGUI = inWarningGUI
	characterManager = inCharacterManager
	isConsole = inIsConsole

	defaultWarningTiming = isConsole and 10 or 5
	hasAnimation = false
	inScalePage = false
	hasDefaultShirt = false
	hasDefaultPants = false

	resetWarning()

	return this
end

