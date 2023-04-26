--!nonstrict
--[[ Constants ]]--
local TOUCH_CONTROLS_SHEET = "rbxasset://textures/ui/Input/TouchControlsSheetV2.png"
local DD_INDICATOR_ACTION_NAME = "DDIndicatorActionFilter"
local DD_INDICATOR_ACTION_PRIORITY = -9000

local FADE_TWEEN_INFO = TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut)
local INDICATOR_IMAGE_SIZE = 68

local GuiService = game:GetService("GuiService")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local ContextActionService = game:GetService("ContextActionService")

--[[ The Module ]] --
local DragDetectorTouchIndicator = {}
DragDetectorTouchIndicator.__index = DragDetectorTouchIndicator

function DragDetectorTouchIndicator.new()
	local self = setmetatable({}, DragDetectorTouchIndicator)

	self.indicatorFrame = nil
	self.indicators = {}
	self.unusedIndicatorPool = {}
	self.touchInputBeganNotSunkByUI = {}

	self.touchStartedConnection = nil
	self.trackingTouches = 0
	self.tempConnections = {}

	return self
end

function DragDetectorTouchIndicator:EnsureIndicatorsInThePool()
	if #self.unusedIndicatorPool > 0 then
		return
	end

	local imageSize = INDICATOR_IMAGE_SIZE

	local screenSize = self.indicatorFrame.Parent.AbsoluteSize
	local isBigScreen = math.min(screenSize.X, screenSize.Y) > 500
	if isBigScreen then
		imageSize *= 2
	end

	local indicatorImage = Instance.new("ImageLabel")
	table.insert(self.unusedIndicatorPool, { image = indicatorImage })
	indicatorImage.Name = `DragDetectorTouchIndicatorImage_{#self.unusedIndicatorPool}`
	indicatorImage.Visible = false
	indicatorImage.BackgroundTransparency = 1
	indicatorImage.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
	indicatorImage.ImageTransparency = 1
	indicatorImage.Image = TOUCH_CONTROLS_SHEET
	indicatorImage.ImageRectOffset = Vector2.new(1, 1)
	indicatorImage.ImageRectSize = Vector2.new(144, 144)
	indicatorImage.AnchorPoint = Vector2.new(0.5, 0.5)
	indicatorImage.ZIndex = 10
	indicatorImage.Parent = self.indicatorFrame
	indicatorImage.Size = UDim2.new(0, imageSize, 0, imageSize)
	indicatorImage.ImageColor3 = Color3.new(0, 0, 0)
end

function DragDetectorTouchIndicator:Enable(enable: boolean, uiParentFrame)
	if enable then
		if not self.indicatorFrame then
			-- this is just transparent UI parent for indicators
			self.indicatorFrame = Instance.new("Frame")
			self.indicatorFrame.BorderSizePixel = 0
			self.indicatorFrame.Name = "DragDetectorTouchIndicatorFrame"
			self.indicatorFrame.BackgroundTransparency = 1.0
			self.indicatorFrame.Active = false
			self.indicatorFrame.Parent = uiParentFrame

			self:EnsureIndicatorsInThePool()
		end
		self.indicatorFrame.Visible = true

		if not self.touchStartedConnection then
			ContextActionService:BindActionAtPriority(DD_INDICATOR_ACTION_NAME, function(name: string, state: Enum.UserInputState, inputObject: InputObject) : Enum.ContextActionResult
				if state == Enum.UserInputState.Begin then
					self.touchInputBeganNotSunkByUI[inputObject] = true
				else
					self.touchInputBeganNotSunkByUI[inputObject] = nil
				end
				return Enum.ContextActionResult.Pass
			end, false, DD_INDICATOR_ACTION_PRIORITY, Enum.UserInputType.Touch)
			self.touchStartedConnection = UserInputService.TouchStarted:Connect(function(inputObject: InputObject, sunk: boolean)
				if sunk and self.touchInputBeganNotSunkByUI[inputObject] then
					self:IndicatorShow(inputObject)
				end
			end)
		end
	elseif self.indicatorFrame then
		self.indicatorFrame.Visible = false
		ContextActionService:UnbindAction(DD_INDICATOR_ACTION_NAME)
		self.touchStartedConnection:Disconnect()
		self.touchStartedConnection = nil
		self:IndicatorEnd()
	end
end

local function fadeIndicator(indicator: any, visible: boolean)
	if not indicator then return end

	if indicator.tween then
		indicator.tween:Cancel()
	elseif not visible then
		return -- we start with invisible object so we don't have to do anything here
	end

	local target = if visible then 0.2 else 1
	indicator.tween = TweenService:Create(indicator.image, FADE_TWEEN_INFO, { ImageTransparency = target })
	indicator.tween:Play()
end

function DragDetectorTouchIndicator:IndicatorShow(inputObject: InputObject)
	self:EnsureIndicatorsInThePool()

	local indicator = table.remove(self.unusedIndicatorPool)
	indicator.image.Visible = true
	self.indicators[inputObject] = indicator

	self:IndicatorMove(inputObject)
	fadeIndicator(indicator, --[[ visible = ]] true)

	self.trackingTouches += 1

	if #self.tempConnections == 0 then
		table.insert(self.tempConnections, UserInputService.TouchMoved:Connect(function(inputObject, sunk)
			self:IndicatorMove(inputObject)
		end))
		table.insert(self.tempConnections, UserInputService.TouchEnded:Connect(function(inputObject, sunk)
			self:IndicatorEnd(inputObject)
		end))
		table.insert(self.tempConnections, GuiService.MenuOpened:Connect(function()
			self:IndicatorEnd()
		end))
	end
end

function DragDetectorTouchIndicator:IndicatorMove(inputObject: InputObject)
	local indicator = self.indicators[inputObject]
	if not indicator then return end

	local pos = inputObject.Position
	local endPos = Vector2.new(pos.X, pos.Y) - self.indicatorFrame.AbsolutePosition
	indicator.image.Position = UDim2.new(0, endPos.X, 0, endPos.Y)
end

function DragDetectorTouchIndicator:IndicatorEnd(inputObject: InputObject?)
	if inputObject then
		local indicator = self.indicators[inputObject]
		if not indicator then return end

		fadeIndicator(indicator, --[[ visible = ]] false)
		self.indicators[inputObject] = nil
		table.insert(self.unusedIndicatorPool, indicator)
		self.trackingTouches -= 1
	else -- empty inputObject clears all Input Indicators
		for _, indicator in self.indicators do
			indicator.image.Visible = false
			indicator.tween:Cancel()
			table.insert(self.unusedIndicatorPool, indicator)
		end
		table.clear(self.indicators)
		table.clear(self.touchInputBeganNotSunkByUI)
		self.trackingTouches = 0
	end
	if self.trackingTouches <= 0 then
		self.trackingTouches = 0
		for _, c in self.tempConnections do
			c:Disconnect()
		end
		table.clear(self.tempConnections)
	end
end

--[[ Instance ]]--
local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local instance = DragDetectorTouchIndicator.new()
instance:Enable(UserInputService.TouchEnabled, RobloxGui)

return instance
