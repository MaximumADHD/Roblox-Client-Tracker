--!nonstrict
-- This package is DEPRECATED, per https://roblox.atlassian.net/browse/UIBLOX-2597
-- Virtual Cursor has been moved to lua-apps/modules/app-common/virtual-cursor, this location's VC will be deleted after rollout of FFlagUseAppCommonVirtualCursorWithFixes

-- module to contain methods related to managing ui and ui effects.
local VirtualCursorFolder = script.Parent

local CoreGui = game:GetService("CoreGui")
local TweenService = game:GetService("TweenService")

local VRService = game:GetService("VRService")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui.RobloxGui
local properties = require(VirtualCursorFolder.Properties)

local getFFlagPointAndClickCursor = require(VirtualCursorFolder.getFFlagPointAndClickCursor)
local FFlagPointAndClickCursor = getFFlagPointAndClickCursor()

local Interface = {}

-- assets
local imageStateDict = { -- store images related to the cursor here (if there are sprite animations, store data related to that here as well)
	Default = "rbxasset://textures/ui/VirtualCursor/cursorDefault.png",
	Hover = "rbxasset://textures/ui/VirtualCursor/cursorHover.png",
	Pressed = "rbxasset://textures/ui/VirtualCursor/cursorPressed.png",
	Arrow = "rbxasset://textures/ui/VirtualCursor/cursorArrow.png",
}

-- ui elements for cursor
local virtualCursorContainer = nil
local cursorIndicator = nil

-- tweens for selection
local activeSelectionTweenIn = nil
local activeSelectionTweenOut = nil

-- tweens for preview
local activePreviewPositionTween = nil

-- tweens for enabling and disabling the virtual cursor
local activePreviewOpacityTween = nil
local activeOpacityTweenCompletedConnection = nil

local cursorMultiplierTable =
{
	Default = 2,
	Activated = 1.7,
}

local function getCursorSize(state)
	local cursorSize = cursorMultiplierTable[state] * properties.CursorRadius
	return UDim2.fromOffset(cursorSize, cursorSize)
end

local function setCursorHighlight(highlighted)
	if highlighted then
		cursorIndicator.Image = imageStateDict.Hover
	else
		cursorIndicator.Image = imageStateDict.Default
	end
end

local function setCursorPosition(position)
	cursorIndicator.Position = UDim2.fromOffset(position.x, position.y)
end

local function getOrCreateVirtualCursorContainer()
	if virtualCursorContainer == nil then
		-- create ui lazily
		virtualCursorContainer = Instance.new("ScreenGui")
		virtualCursorContainer.Enabled = false
		virtualCursorContainer.IgnoreGuiInset = true
		virtualCursorContainer.DisplayOrder = 100
		virtualCursorContainer.Name = "VirtualCursorGui"

		cursorIndicator = Instance.new("ImageLabel")
		cursorIndicator.Active = false
		cursorIndicator.AnchorPoint = Vector2.new(0.5,0.5)
		cursorIndicator.Size = getCursorSize("Default")
		cursorIndicator.Image = imageStateDict.Default
		cursorIndicator.Visible = false
		cursorIndicator.BackgroundTransparency = 1

		if FFlagPointAndClickCursor then
		    cursorIndicator.Transparency = 1
		end

		cursorIndicator.Parent = virtualCursorContainer
		virtualCursorContainer.Parent = CoreGui

		local selectTweenInfo = TweenInfo.new(0.15, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0)
		activeSelectionTweenIn = TweenService:Create(cursorIndicator, selectTweenInfo, {Size = getCursorSize("Activated")})
		activeSelectionTweenOut = TweenService:Create(cursorIndicator, selectTweenInfo, {Size = getCursorSize("Default")})
	end
	return virtualCursorContainer
end

local function tweenCursorOpacity(visible)
    assert(FFlagPointAndClickCursor, "tweenCursorOpacity should only be called when FFlagPointAndClickCursor is true")

	if activeOpacityTweenCompletedConnection then
		activeOpacityTweenCompletedConnection:Disconnect()
		activeOpacityTweenCompletedConnection = nil
	end

	local opacityTweenInfo = TweenInfo.new(0.15, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0)
	activePreviewOpacityTween =
		TweenService:Create(cursorIndicator, opacityTweenInfo, { ImageTransparency = if visible then 0 else 1 })
	activeOpacityTweenCompletedConnection = activePreviewOpacityTween.Completed:Connect(function()
		cursorIndicator.Visible = visible
		getOrCreateVirtualCursorContainer().Enabled = visible
	end)

	activePreviewOpacityTween:Play()
end

local function tweenCursorPosition(position)
    assert(FFlagPointAndClickCursor, "tweenCursorPosition should only be called when FFlagPointAndClickCursor is true")

	local positionTweenInfo = TweenInfo.new(0.15, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0)
	activePreviewPositionTween =
		TweenService:Create(cursorIndicator, positionTweenInfo, { Position = UDim2.fromOffset(position.x, position.y) })
	activePreviewPositionTween:Play()
end

function Interface:GetCursorSize(state)
	return getCursorSize(state)
end

function Interface:PlayCursorTweenActivate()
	activeSelectionTweenIn:Play()
end

function Interface:PlayCursorTweenDefault()
	activeSelectionTweenOut:Play()
end

function Interface:SetCursorHighlight(state)
	setCursorHighlight(state)
end

function Interface:SetCursorPosition(position)
	setCursorPosition(position)
end

function Interface:TweenCursorPosition(position)
	assert(FFlagPointAndClickCursor, "TweenCursorPosition should only be called when FFlagPointAndClickCursor is true")

	tweenCursorPosition(position)
end

function Interface:TweenCursorOpacity(visible)
    assert(FFlagPointAndClickCursor, "TweenCursorPosition should only be called when FFlagPointAndClickCursor is true")

	tweenCursorOpacity(visible)
end

function Interface:SetArrow(x, y)
	if x == -1 and y == 0 then
		cursorIndicator.Rotation = 90
	elseif y == 0 then
		cursorIndicator.Rotation = 270
	end

	if x == 0 and y == 1 then
		cursorIndicator.Rotation = 0
	elseif x == 0 then
		cursorIndicator.Rotation = 180
	end

	cursorIndicator.Image = imageStateDict.Arrow
end

function Interface:EnableUI(defaultPosition)
	local showInterface = not VRService.VREnabled
	
	getOrCreateVirtualCursorContainer().Enabled = showInterface
	cursorIndicator.Size = getCursorSize("Default")
	setCursorPosition(defaultPosition)
	cursorIndicator.Visible = showInterface

    if FFlagPointAndClickCursor then
	    Interface:TweenCursorOpacity(true)
    end
end

function Interface:DisableUI()
	setCursorHighlight(false)

    if FFlagPointAndClickCursor then
	    Interface:TweenCursorOpacity(false)
	else
		getOrCreateVirtualCursorContainer().Enabled = false
		cursorIndicator.Visible = false
    end
end

return Interface
