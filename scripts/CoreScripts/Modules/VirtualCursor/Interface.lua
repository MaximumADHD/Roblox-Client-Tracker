-- module to contain methods related to managing ui and ui effects.
local VirtualCursorFolder = script.Parent

local CoreGui = game:GetService("CoreGui")
local TweenService = game:GetService("TweenService")

local properties = require(VirtualCursorFolder.Properties)

local Interface = {}

-- assets
local imageStateDict = { -- store images related to the cursor here (if there are sprite animations, store data related to that here as well)
	Default = "rbxasset://textures/ui/VirtualCursor/cursorDefault.png",
	Hover = "rbxasset://textures/ui/VirtualCursor/cursorHover.png",
	Pressed = "rbxasset://textures/ui/VirtualCursor/cursorPressed.png",
}

-- ui elements for cursor
local virtualCursorContainer = nil
local cursorIndicator = nil

-- tweens for selection
local activeSelectionTweenIn = nil
local activeSelectionTweenOut = nil

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
		virtualCursorContainer.DisplayOrder = 69
		virtualCursorContainer.Name = "VirtualCursorGui"

		cursorIndicator = Instance.new("ImageLabel")
		cursorIndicator.Active = false
		cursorIndicator.AnchorPoint = Vector2.new(0.5,0.5)
		cursorIndicator.Size = getCursorSize("Default")
		cursorIndicator.Image = imageStateDict.Default
		cursorIndicator.Visible = false
		cursorIndicator.BackgroundTransparency = 1

		cursorIndicator.Parent = virtualCursorContainer
		virtualCursorContainer.Parent = CoreGui

		local selectTweenInfo = TweenInfo.new(0.15, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0)
		activeSelectionTweenIn = TweenService:Create(cursorIndicator, selectTweenInfo, {Size = getCursorSize("Activated")})
		activeSelectionTweenOut = TweenService:Create(cursorIndicator, selectTweenInfo, {Size = getCursorSize("Default")})
	end

	return virtualCursorContainer
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

function Interface:EnableUI(defaultPosition)
	getOrCreateVirtualCursorContainer().Enabled = true
	cursorIndicator.Size = getCursorSize("Default")
	setCursorPosition(defaultPosition)
	cursorIndicator.Visible = true
end

function Interface:DisableUI()
	setCursorHighlight(false)
	getOrCreateVirtualCursorContainer().Enabled = false
	cursorIndicator.Visible = false
end

return Interface