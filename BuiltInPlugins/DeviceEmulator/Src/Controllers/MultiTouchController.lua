--[[
	MultiTouch UI
]]

local Plugin = script.Parent.Parent.Parent
local Framework = require(Plugin.Packages.Framework)

local ServiceWrapper = Framework.TestHelpers.ServiceWrapper

local ContextItem = Framework.ContextServices.ContextItem

local MultiTouchController = ContextItem:extend("MultiTouchController")

function MultiTouchController.new(mock: boolean?)
	local self = setmetatable({
		_studioDeviceEmulatorService = ServiceWrapper.new("StudioDeviceEmulatorService", mock),

		_screenGui = nil,
		_pivot = nil,
		_touches = {},
		_connectingLines = {},

        _mock = mock,
	}, MultiTouchController)

	self._screenGui = self:initScreenGui()

	self._pivot = self:makeNewPivotCircle()
	for i = 1, self._studioDeviceEmulatorService:asService():GetMaxNumTouches() do
		self._touches[i] = self:makeNewControlCircle()
		self._connectingLines[i] = self:makeNewConnectingLine()
	end

    if not mock then
        self._isMultiTouchEnabledChanged = self._studioDeviceEmulatorService
            :asInstance()
            :GetPropertyChangedSignal("IsMultiTouchEnabled")
            :Connect(function()
                if self._studioDeviceEmulatorService:asService().IsMultiTouchEnabled then
                    self._screenGui.Enabled = true

                    local pivotPos = self._studioDeviceEmulatorService:asService().PivotPosition
                    self:updateControlCirclePos(self._pivot, pivotPos)

                    for i = 1, #self._touches do
                        self:updateControlCirclePos(
                            self._touches[i],
                            self._studioDeviceEmulatorService:asService():GetTouchPosition(i - 1)
                        )
                        self:updateConnectingLine(self._connectingLines[i], self._touches[i])
                    end
                else
                    self._screenGui.Enabled = false
                end
            end)

        self._pivotPositionChanged = self._studioDeviceEmulatorService
            :asInstance()
            :GetPropertyChangedSignal("PivotPosition")
            :Connect(function()
                local pivotPos = self._studioDeviceEmulatorService:asService().PivotPosition
                self:updateControlCirclePos(self._pivot, pivotPos)
				for i = 1, #self._touches do
					self:updateConnectingLine(self._connectingLines[i], self._touches[i])
				end
            end)

        self._touchPositionsChanged = self._studioDeviceEmulatorService:asService().TouchPositionsChanged:Connect(function()
            for i = 1, #self._touches do
                self:updateControlCirclePos(
                    self._touches[i],
                    self._studioDeviceEmulatorService:asService():GetTouchPosition(i - 1)
                )
                self:updateConnectingLine(self._connectingLines[i], self._touches[i])
            end
        end)

        self._touchInBoundsChanged = self._studioDeviceEmulatorService:asService().TouchInBoundsChanged:Connect(function()
            for i = 1, #self._touches do
                self:updateControlCircleColor(
                    self._touches[i],
                    self._studioDeviceEmulatorService:asService():GetTouchInBounds(i - 1)
                )
            end
        end)
    end

	return self
end

function MultiTouchController.mock()
	return MultiTouchController.new(true)
end

function MultiTouchController:destroy()
    if not self._mock then
        self._isMultiTouchEnabledChanged:Disconnect()
        self._pivotPositionChanged:Disconnect()
        self._touchPositionsChanged:Disconnect()
        self._touchInBoundsChanged:Disconnect()
    end

	if self._screenGui then
		self._screenGui:Destroy()
	end

	self._studioDeviceEmulatorService:destroy()
end

function MultiTouchController:initScreenGui()
	local screenGui = game.CoreGui:FindFirstChild("MultiTouchScreenGui")
	if screenGui then
		screenGui:ClearAllChildren()
	else
		screenGui = Instance.new("ScreenGui")
		screenGui.Name = "MultiTouchScreenGui"
		screenGui.IgnoreGuiInset = true
		screenGui.Enabled = false
		screenGui.Parent = game.CoreGui
	end

	return screenGui
end

function MultiTouchController:makeNewControlCircle()
	local circle = Instance.new("Frame")
	circle.Size = UDim2.new(0.05, 0, 0.05, 0)
	circle.AnchorPoint = Vector2.new(0.5, 0.5)
	circle.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	circle.BackgroundTransparency = 0.5
	circle.Parent = self._screenGui

	local ratio = Instance.new("UIAspectRatioConstraint")
	ratio.AspectRatio = 1
	ratio.Parent = circle

	local corner = Instance.new("UICorner")
	corner.CornerRadius = UDim.new(1, 0)
	corner.Parent = circle

	local border = Instance.new("UIStroke")
	border.Transparency = 0.5
	border.Parent = circle

	return circle
end

function MultiTouchController:makeNewPivotCircle()
	local circle = Instance.new("Frame")
	circle.Parent = self._screenGui
	circle.Size = UDim2.new(0.01, 0, 0.01, 0)
	circle.AnchorPoint = Vector2.new(0.5, 0.5)
	circle.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	circle.BackgroundTransparency = 0.5

	local ratio = Instance.new("UIAspectRatioConstraint")
	ratio.AspectRatio = 1
	ratio.Parent = circle

	local corner = Instance.new("UICorner")
	corner.CornerRadius = UDim.new(1, 0)
	corner.Parent = circle

	return circle
end

function MultiTouchController:makeNewConnectingLine()
	local line = Instance.new("Frame")
	line.Parent = self._screenGui
	line.AnchorPoint = Vector2.new(0.5, 0.5)
	line.BackgroundColor3 = Color3.fromRGB(0, 0, 0)

	return line
end

function MultiTouchController:updateControlCirclePos(circle, pos)
	circle.Position = UDim2.new(0, pos.x, 0, pos.y)
end

function MultiTouchController:updateControlCircleColor(circle, inBounds)
	if inBounds then
		circle.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	else
		circle.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
	end
end

function MultiTouchController:updateConnectingLine(line, circle)
	local pivotX = self._pivot.Position.X.Offset
	local pivotY = self._pivot.Position.Y.Offset
	local circleX = circle.Position.X.Offset
	local circleY = circle.Position.Y.Offset

	line.Size = UDim2.new(0, math.sqrt((circleX - pivotX) ^ 2 + (circleY - pivotY) ^ 2), 0, 0.5)
	line.Position = UDim2.new(0, (pivotX + circleX) / 2, 0, (pivotY + circleY) / 2)
	line.Rotation = math.deg(math.atan2((circleY - pivotY), (circleX - pivotX)))
end

return MultiTouchController
