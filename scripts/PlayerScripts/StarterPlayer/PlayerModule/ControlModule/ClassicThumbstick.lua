--!nonstrict
local GuiService = game:GetService("GuiService")
local Players = game:GetService("Players")

local CommonUtils = require(script.Parent.Parent:WaitForChild("CommonUtils"))
local FlagUtil = CommonUtils.get("FlagUtil")
local FFlagUserPlayerScriptsCCLIntegrationD = FlagUtil.getUserFlag("UserPlayerScriptsCCLIntegrationD")
local FFlagUserPlayerScriptsClassicThumbstickRenameUI = FlagUtil.getUserFlag("UserPlayerScriptsClassicThumbstickRenameUI")
local FFlagUserPlayerScriptsFireThroughScriptableBindings = FlagUtil.getUserFlag("UserPlayerScriptsFireThroughScriptableBindings")
local FFlagUserPlayerScriptsSAuthDirectAPIs = FlagUtil.getUserFlag("UserPlayerScriptsSAuthDirectAPIs2")
local FFlagUserAbilitiesUserInterfaceC = FlagUtil.getUserFlag("UserAbilitiesUserInterfaceC")
local FFlagUserPlayerScriptsResetDTTouchOnCreate = FlagUtil.getUserFlag("UserPlayerScriptsResetDTTouchOnCreate")

local inputContexts = script.Parent.Parent:WaitForChild("InputContexts")
local transformerContext = inputContexts:WaitForChild("TransformerContext")
local thumbstickAction = transformerContext:WaitForChild("ThumbstickAction") :: InputAction

--[[ Constants ]]--
local TOUCH_CONTROL_SHEET = "rbxasset://textures/ui/TouchControlsSheet.png"
local INACTIVE_VIEWPORT_POSITION = Vector2.new(-1, -1)

local AvatarAbilitiesInterface = require(script.Parent:WaitForChild("AvatarAbilitiesInterface"))
local avatarAbilitiesInterface = if FFlagUserPlayerScriptsCCLIntegrationD
	then AvatarAbilitiesInterface.get(Players.LocalPlayer)
	else nil

--[[ The Module ]]--
local ActionController = require(script.Parent:WaitForChild("ActionController"))
local ClassicThumbstick = setmetatable({}, ActionController)
ClassicThumbstick.__index = ClassicThumbstick

function ClassicThumbstick.new(playerData)
	local self = setmetatable(ActionController.new() :: any, ClassicThumbstick)

	self.playerData = playerData -- DONT DO THIS THE MODULES SHOULD NOT BE STATEFUL
	self.enabled = false

	self.isTouchActive = false
	self.isFollowStick = false

	self.thumbstickFrame = nil
	self.screenPos = nil
	self.stickImage = nil
	self.thumbstickSize = nil -- Float

	return self
end

local function setupThumbstickInput(self)
	for _, child in thumbstickAction:GetChildren() do
		if child.Name == "DynamicTouchBinding" or child.Name == "ClassicTouchBinding" then
			child:Destroy()
		end
	end
	local touchBinding = Instance.new("InputBinding")
	touchBinding.Name = "ClassicTouchBinding"
	touchBinding.KeyCode = Enum.KeyCode.TouchPosition
	touchBinding.UIModifier = self.thumbstickButton
	touchBinding.Parent = thumbstickAction
end

local function enableThumbstickInput(self, enabled: boolean)
	if enabled then
		setupThumbstickInput(self)
		self.thumbstickStateChangedConn = thumbstickAction.StateChanged:Connect(self.onStateChanged)
		thumbstickAction.Enabled = true
	else
		thumbstickAction.Enabled = false
		if self.thumbstickStateChangedConn then
			self.thumbstickStateChangedConn:Disconnect()
			self.thumbstickStateChangedConn = nil
		end
	end
end

function ClassicThumbstick:Enable(enable: boolean?, uiParentFrame)
	if enable == nil then return false end			-- If nil, return false (invalid argument)
	enable = enable and true or false				-- Force anything non-nil to boolean before comparison
	if self.enabled == enable then return true end	-- If no state change, return true indicating already in requested state
	ActionController.Enable(self, enable)

	self.isJumping = false

	if enable then
		-- Enable
		if not self.thumbstickFrame then
			self:Create(uiParentFrame)
		end
		if FFlagUserPlayerScriptsResetDTTouchOnCreate then
			enableThumbstickInput(self, true)
		else
			self.thumbstickStateChangedConn = thumbstickAction.StateChanged:Connect(self.onStateChanged)
			thumbstickAction.Enabled = true
		end
		self.thumbstickFrame.Visible = true
	else
		-- Disable
		if FFlagUserPlayerScriptsResetDTTouchOnCreate then
			enableThumbstickInput(self, false)
		else
			thumbstickAction.Enabled = false
			if self.thumbstickStateChangedConn then
				self.thumbstickStateChangedConn:Disconnect()
				self.thumbstickStateChangedConn = nil
			end
		end
		self.thumbstickFrame.Visible = false
		self:OnInputEnded()
	end
	self.enabled = enable
end


function ClassicThumbstick:OnInputEnded()
	self.isTouchActive = false
	self.thumbstickFrame.Position = self.screenPos
	self.stickImage.Position = UDim2.new(0, self.thumbstickFrame.Size.X.Offset/2 - self.thumbstickSize/4, 0, self.thumbstickFrame.Size.Y.Offset/2 - self.thumbstickSize/4)

	if FFlagUserPlayerScriptsSAuthDirectAPIs then
		local binding = self.playerData.actions.MoveAction:FindFirstChild("ClassicThumbstickScriptableBinding")
		if binding then
			binding:Fire(Vector2.zero)
		end
	elseif FFlagUserPlayerScriptsFireThroughScriptableBindings then
		local binding = self.playerData.actions.MoveAction:FindFirstChild("ClassicThumbstickScriptableBinding")
		if binding then
			local success, result = pcall(function()
				binding.Type = Enum.InputBindingType.Scriptable
				binding:Fire(Vector2.zero)
			end)
			if not success then
				self.playerData.actions.MoveAction:Fire(Vector2.zero)
			end
		else
			self.playerData.actions.MoveAction:Fire(Vector2.zero)
		end
	else
		self.playerData.actions.MoveAction:Fire(Vector2.zero)
	end

	self.isJumping = false
	self.thumbstickFrame.Position = self.screenPos
end
function ClassicThumbstick:Create(parentFrame)
	if self.thumbstickFrame then
		thumbstickAction.Enabled = false
		if self.thumbstickStateChangedConn then
			self.thumbstickStateChangedConn:Disconnect()
			self.thumbstickStateChangedConn = nil
		end
		self.thumbstickFrame:Destroy()
		self.thumbstickFrame = nil
		if self.absoluteSizeChangedConn then
			self.absoluteSizeChangedConn:Disconnect()
			self.absoluteSizeChangedConn = nil
		end
		if self.avatarAbilitiesEnabledChangedConn then
			self.avatarAbilitiesEnabledChangedConn:Disconnect()
			self.avatarAbilitiesEnabledChangedConn = nil
		end
	end

	self.thumbstickFrame = Instance.new("Frame")
	self.thumbstickFrame.Name = if FFlagUserPlayerScriptsClassicThumbstickRenameUI
		then "ClassicThumbstickFrame"
		else "ThumbstickFrame"
	self.thumbstickFrame.Active = true
	self.thumbstickFrame.Visible = false
	self.thumbstickFrame.BackgroundTransparency = 1

	local outerImage = Instance.new("ImageLabel")
	outerImage.Name = "OuterImage"
	outerImage.Image = TOUCH_CONTROL_SHEET
	outerImage.ImageRectOffset = Vector2.new()
	outerImage.ImageRectSize = Vector2.new(220, 220)
	outerImage.BackgroundTransparency = 1
	outerImage.Position = UDim2.new(0, 0, 0, 0)

	self.stickImage = Instance.new("ImageLabel")
	self.stickImage.Name = "StickImage"
	self.stickImage.Image = TOUCH_CONTROL_SHEET
	self.stickImage.ImageRectOffset = Vector2.new(220, 0)
	self.stickImage.ImageRectSize = Vector2.new(111, 111)
	self.stickImage.BackgroundTransparency = 1
	self.stickImage.ZIndex = 2

	local function ResizeThumbstick()
		local minAxis = math.min(parentFrame.AbsoluteSize.X, parentFrame.AbsoluteSize.Y)
		local isSmallScreen = minAxis <= 500

		local isCCLEnabled = if FFlagUserPlayerScriptsCCLIntegrationD then
			avatarAbilitiesInterface:isEnabled() else
			AvatarAbilitiesInterface.isEnabled()
		if isCCLEnabled then
			local buttonInsetX = isSmallScreen and 64 or 100
			local buttonInsetY = isSmallScreen and 64 or 112
			self.thumbstickSize = isSmallScreen and 72 or 120
			self.screenPos = UDim2.new(0, buttonInsetX, 1, -self.thumbstickSize - buttonInsetY)
		else
			self.thumbstickSize = isSmallScreen and 70 or 120
			self.screenPos = isSmallScreen and UDim2.new(0, (self.thumbstickSize/2) - 10, 1, -self.thumbstickSize - 20) or
				UDim2.new(0, self.thumbstickSize/2, 1, -self.thumbstickSize * 1.75)
		end

		self.thumbstickFrame.Size = UDim2.new(0, self.thumbstickSize, 0, self.thumbstickSize)
		self.thumbstickFrame.Position = self.screenPos
		outerImage.Size = UDim2.new(0, self.thumbstickSize, 0, self.thumbstickSize)
		self.stickImage.Size = UDim2.new(0, self.thumbstickSize/2, 0, self.thumbstickSize/2)
		self.stickImage.Position = UDim2.new(0, self.thumbstickSize/2 - self.thumbstickSize/4, 0, self.thumbstickSize/2 - self.thumbstickSize/4)
	end

	ResizeThumbstick()
	self.absoluteSizeChangedConn = parentFrame:GetPropertyChangedSignal("AbsoluteSize"):Connect(ResizeThumbstick)
	if FFlagUserPlayerScriptsCCLIntegrationD then
		self.avatarAbilitiesEnabledChangedConn = avatarAbilitiesInterface:GetEnabledChangedSignal():Connect(ResizeThumbstick)
	else
		self.avatarAbilitiesEnabledChangedConn = AvatarAbilitiesInterface.GetEnabledChangedSignal():Connect(ResizeThumbstick)
	end

	outerImage.Parent = self.thumbstickFrame
	self.stickImage.Parent = self.thumbstickFrame

	self.thumbstickButton = Instance.new("ImageButton")
	self.thumbstickButton.Name = "ClassicThumbstickUIModifier"
	self.thumbstickButton.BackgroundTransparency = 1
	self.thumbstickButton.ImageTransparency = 1
	self.thumbstickButton.AutoButtonColor = false
	self.thumbstickButton.Size = UDim2.new(1, 0, 1, 0)
	self.thumbstickButton.ZIndex = self.thumbstickFrame.ZIndex
	self.thumbstickButton.Visible = true
	self.thumbstickButton.Active = false
	self.thumbstickButton.Parent = self.thumbstickFrame

	if not FFlagUserPlayerScriptsResetDTTouchOnCreate then
		local touchBinding = Instance.new("InputBinding")
		touchBinding.Name = "ClassicTouchBinding"
		touchBinding.KeyCode = Enum.KeyCode.TouchPosition
		touchBinding.UIModifier = self.thumbstickButton
		touchBinding.Parent = thumbstickAction
	end

	local centerPosition = nil
	local deadZone = 0.05

	local function DoMove(direction: Vector2)
		local currentMoveVector = direction / (self.thumbstickSize/2)

		-- Scaled Radial Dead Zone
		local inputAxisMagnitude = currentMoveVector.magnitude
		if inputAxisMagnitude < deadZone then
			currentMoveVector = Vector2.new()
		else
			-- NOTE: Making currentMoveVector a unit vector will cause the player to instantly go max speed
			-- must check for zero length vector is using unit
			currentMoveVector = currentMoveVector.unit * math.min(1, (inputAxisMagnitude - deadZone) / (1 - deadZone))
		end

		currentMoveVector = Vector2.new(currentMoveVector.X, -currentMoveVector.Y)
		if FFlagUserPlayerScriptsSAuthDirectAPIs then
			local binding = self.playerData.actions.MoveAction:FindFirstChild("ClassicThumbstickScriptableBinding")
			if binding then
				binding:Fire(currentMoveVector)
			end
		elseif FFlagUserPlayerScriptsFireThroughScriptableBindings then
			local binding = self.playerData.actions.MoveAction:FindFirstChild("ClassicThumbstickScriptableBinding")
			if binding then
				local success, result = pcall(function()
					binding.Type = Enum.InputBindingType.Scriptable
					binding:Fire(currentMoveVector)
				end)
				if not success then
					self.playerData.actions.MoveAction:Fire(currentMoveVector)
				end
			else
				self.playerData.actions.MoveAction:Fire(currentMoveVector)
			end
		else
			self.playerData.actions.MoveAction:Fire(currentMoveVector)
		end
	end

	local function MoveStick(pos: Vector3)
		local relativePosition = Vector2.new(pos.X - centerPosition.X, pos.Y - centerPosition.Y)
		local length = relativePosition.magnitude
		local maxLength = self.thumbstickFrame.AbsoluteSize.X/2
		if self.isFollowStick and length > maxLength then
			local offset = relativePosition.unit * maxLength
			if FFlagUserAbilitiesUserInterfaceC then
				local parentPos = parentFrame.AbsolutePosition
				self.thumbstickFrame.Position = UDim2.new(
					0, pos.X - parentPos.X - self.thumbstickFrame.AbsoluteSize.X/2 - offset.X,
					0, pos.Y - parentPos.Y - self.thumbstickFrame.AbsoluteSize.Y/2 - offset.Y)
			else
				self.thumbstickFrame.Position = UDim2.new(
					0, pos.X - self.thumbstickFrame.AbsoluteSize.X/2 - offset.X,
					0, pos.Y - self.thumbstickFrame.AbsoluteSize.Y/2 - offset.Y)
			end
		else
			length = math.min(length, maxLength)
			relativePosition = relativePosition.unit * length
		end
		self.stickImage.Position = UDim2.new(0, relativePosition.X + self.stickImage.AbsoluteSize.X/2, 0, relativePosition.Y + self.stickImage.AbsoluteSize.Y/2)
	end

	self.onStateChanged = function(newPos: Vector2)
		if newPos ~= INACTIVE_VIEWPORT_POSITION then
			local guiInsetMin = GuiService:GetInsetArea(Enum.ScreenInsets.None).Min
			local screenPos = Vector3.new(newPos.X + guiInsetMin.X, newPos.Y + guiInsetMin.Y, 0)

			if not self.isTouchActive then
				self.isTouchActive = true
				if FFlagUserAbilitiesUserInterfaceC then
					local parentPos = parentFrame.AbsolutePosition
					self.thumbstickFrame.Position = UDim2.new(
						0, screenPos.X - parentPos.X - self.thumbstickFrame.Size.X.Offset / 2,
						0, screenPos.Y - parentPos.Y - self.thumbstickFrame.Size.Y.Offset / 2
					)
				else
					self.thumbstickFrame.Position = UDim2.new(
						0, screenPos.X - self.thumbstickFrame.Size.X.Offset / 2,
						0, screenPos.Y - self.thumbstickFrame.Size.Y.Offset / 2
					)
				end
				centerPosition = Vector2.new(
					self.thumbstickFrame.AbsolutePosition.X + self.thumbstickFrame.AbsoluteSize.X / 2,
					self.thumbstickFrame.AbsolutePosition.Y + self.thumbstickFrame.AbsoluteSize.Y / 2
				)
			else
				centerPosition = Vector2.new(
					self.thumbstickFrame.AbsolutePosition.X + self.thumbstickFrame.AbsoluteSize.X / 2,
					self.thumbstickFrame.AbsolutePosition.Y + self.thumbstickFrame.AbsoluteSize.Y / 2
				)
				local direction = Vector2.new(screenPos.X - centerPosition.X, screenPos.Y - centerPosition.Y)
				DoMove(direction)
				MoveStick(screenPos)
			end
		else
			if self.isTouchActive then
				self:OnInputEnded()
			end
		end
	end

	GuiService.MenuOpened:Connect(function()
		if self.isTouchActive then
			self:OnInputEnded()
		end
	end)

	self.thumbstickFrame.Parent = parentFrame
end
return ClassicThumbstick
