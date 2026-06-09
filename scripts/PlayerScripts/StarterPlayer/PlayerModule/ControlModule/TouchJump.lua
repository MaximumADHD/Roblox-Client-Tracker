--!nonstrict
--[[
	// FileName: TouchJump
	// Version 1.0
	// Written by: jmargh
	// Description: Implements jump controls for touch devices. Use with Thumbstick and Thumbpad
--]]

local GuiService = game:GetService("GuiService")

local CommonUtils = require(script.Parent.Parent:WaitForChild("CommonUtils"))

local ConnectionUtil = CommonUtils.get("ConnectionUtil")
local CharacterUtil = CommonUtils.get("CharacterUtil")
local FlagUtil = CommonUtils.get("FlagUtil")
local FFlagUserPlayerScriptsCCLIntegrationB = FlagUtil.getUserFlag("UserPlayerScriptsCCLIntegrationB")
local FFlagUserPlayerScriptsRefactor1 = FlagUtil.getUserFlag("UserPlayerScriptsRefactor1")

local Players = game:GetService("Players")

local AvatarAbilitiesInterface = require(script.Parent:WaitForChild("AvatarAbilitiesInterface"))
local avatarAbilitiesInterface = if FFlagUserPlayerScriptsCCLIntegrationB
	then AvatarAbilitiesInterface.get(Players.LocalPlayer)
	else nil

local TOUCH_CONTROL_SHEET = "rbxasset://textures/ui/Input/TouchControlsSheetV2.png"
local JUMP_BUTTON_ZINDEX = 10
local JUMP_BUTTON_IMAGES = {
	"rbxasset://textures/ui/Input/JumpButtonRegular.png",
	"rbxasset://textures/ui/Input/JumpButtonPressed.png"}
local CONNECTIONS = {
	HUMANOID_STATE_ENABLED_CHANGED = "HUMANOID_STATE_ENABLED_CHANGED",
	HUMANOID_JUMP_POWER = "HUMANOID_JUMP_POWER",
	HUMANOID_JUMP_HEIGHT = "HUMANOID_JUMP_HEIGHT",
	HUMANOID = "HUMANOID",
	MENU_OPENED = "MENU_OPENED",
	ACTIONS_RELOADED = "ACTIONS_RELOADED",
}

type TouchJumpClass = {
	new: () -> TouchJump,

	-- resets the state of the class, does not affect enable/disable status.
	-- Does not disconnect or create new connections.
	_reset: (self: TouchJump) -> (),
	-- checks the relevant APIs that may change the state of the module and adds connects
	-- to checks for changes
	_setupConfigurations: (self: TouchJump) -> (),
}

export type TouchJump = typeof(setmetatable({} :: {
	-- holds any connections this module makes
	_connectionUtil: any, -- ConnectionUtil.ConnectionUtil,
	-- true if the jump is active including checks like humanoid state and if the module is active
	_active: boolean
}, {} :: TouchJumpClass))


--[[ The Module ]]--
local ActionController = require(script.Parent:WaitForChild("ActionController"))
local TouchJump = setmetatable({}, ActionController)
TouchJump.__index = TouchJump

function TouchJump.new(data, playerData)
	local self = setmetatable(ActionController.new() :: any, TouchJump)

	self.playerData = playerData -- DONT DO THIS THE MODULES SHOULD NOT BE STATEFUL
	data.eventBus:subscribe(CONNECTIONS.ACTIONS_RELOADED):Connect(function()
		self:Create()
	end)

	self.parentUIFrame = nil
	self.jumpButton = nil

	self.externallyEnabled = false
	self._active = false
	self._connectionUtil = ConnectionUtil.new()

	return self
end

function TouchJump:_reset()
	if self.playerData.actions.JumpAction then
		self.playerData.actions.JumpAction:Fire(false)
	end

	if self.jumpButton then
		local isCCLEnabled = if FFlagUserPlayerScriptsCCLIntegrationB then
			avatarAbilitiesInterface:isEnabled() else
			AvatarAbilitiesInterface.isEnabled()
		if isCCLEnabled then
			self.jumpButton.Image = JUMP_BUTTON_IMAGES[1]
		else
			self.jumpButton.ImageRectOffset = Vector2.new(1, 146)
		end
	end
end

-- If called multiple times with the same enabled state, this function becomes a no-op
-- so that valid changes to jumping don't trigger a reset. Changes to state such as
-- humanoid death should explicitly call _reset() to reset the jump state.
function TouchJump:EnableButton(enable)
	if enable == self._active then
		return
	end

	if enable then
		if not self.jumpButton then
			self:Create()
		end
		self.jumpButton.Visible = true

		-- stop jumping on menu open
		self._connectionUtil:trackConnection(
			CONNECTIONS.MENU_OPENED,
			GuiService.MenuOpened:Connect(function()
				self:_reset()
			end)
		)
	else
		if self.jumpButton then
			self.jumpButton.Visible = false
		end
		self._connectionUtil:disconnect(CONNECTIONS.MENU_OPENED)
	end
	self:_reset()
	self._active = enable
end

function TouchJump:UpdateEnabled()
	local humanoid = CharacterUtil.getChild("Humanoid", "Humanoid")
	if humanoid and self.externallyEnabled and ((humanoid.UseJumpPower and humanoid.JumpPower > 0) or (not humanoid.UseJumpPower and humanoid.JumpHeight > 0)) and humanoid:GetStateEnabled(Enum.HumanoidStateType.Jumping) then
		self:EnableButton(true)
	else
		self:EnableButton(false)
	end
end

function TouchJump:_setupConfigurations()
	local function update()
		self:UpdateEnabled()
	end

	-- listen to jump APIs on the humanoid
	local humanoidConnection = CharacterUtil.onChild("Humanoid", "Humanoid", function(humanoid)
		update()
		self:_reset()
		self._connectionUtil:trackConnection(
			CONNECTIONS.HUMANOID_JUMP_POWER,
			humanoid:GetPropertyChangedSignal("JumpPower"):Connect(update)
		)
		self._connectionUtil:trackConnection(
			CONNECTIONS.HUMANOID_JUMP_HEIGHT,
			humanoid:GetPropertyChangedSignal("JumpHeight"):Connect(update)
		)
		self._connectionUtil:trackConnection(
			CONNECTIONS.HUMANOID_STATE_ENABLED_CHANGED,
			humanoid.StateEnabledChanged:Connect(function(state, isEnabled)
				-- The isEnabled ~= self._active check is necessary because there's currently a bug
				-- where the StateEnabledChanged event will fire even with no state changes
				if state == Enum.HumanoidStateType.Jumping and isEnabled ~= self._active then
					update()
				end
			end)
		)
	end)
	self._connectionUtil:trackConnection(CONNECTIONS.HUMANOID, humanoidConnection)
end

function TouchJump:Enable(enable, parentFrame)
	if parentFrame then
		self.parentUIFrame = parentFrame
	end

	if self.externallyEnabled == enable then return end
	self.externallyEnabled = enable
	ActionController.Enable(self, enable)

	self:UpdateEnabled()

	if enable then
		self:_setupConfigurations()
	else
		self._connectionUtil:disconnectAll()
	end
end

function TouchJump:Create()
	if not self.parentUIFrame then
		return
	end

	if self.jumpButton then
		self.jumpButton:Destroy()
		self.jumpButton = nil
	end

	if self.absoluteSizeChangedConn then
		self.absoluteSizeChangedConn:Disconnect()
		self.absoluteSizeChangedConn = nil
	end
	
	if self.avatarAbilitiesEnabledChangedConn then
		self.avatarAbilitiesEnabledChangedConn:Disconnect()
		self.avatarAbilitiesEnabledChangedConn = nil
	end

	self.jumpButton = Instance.new("ImageButton")
	self.jumpButton.Name = "JumpButton"
	self.jumpButton.Visible = false
	self.jumpButton.BackgroundTransparency = 1
	if FFlagUserPlayerScriptsRefactor1 then
		self.jumpButton.ZIndex = JUMP_BUTTON_ZINDEX
	end

	local isCCLEnabled = if FFlagUserPlayerScriptsCCLIntegrationB then
		avatarAbilitiesInterface:isEnabled() else
		AvatarAbilitiesInterface.isEnabled()
	if isCCLEnabled then		
		self.jumpButton.Image = JUMP_BUTTON_IMAGES[1]
	else
		self.jumpButton.Image = TOUCH_CONTROL_SHEET
		self.jumpButton.ImageRectOffset = Vector2.new(1, 146)
		self.jumpButton.ImageRectSize = Vector2.new(144, 144)
	end

	local function ResizeJumpButton()
		local minAxis = math.min(self.parentUIFrame.AbsoluteSize.x, self.parentUIFrame.AbsoluteSize.y)
		local isSmallScreen = minAxis <= 500

		local isCCLEnabled = if FFlagUserPlayerScriptsCCLIntegrationB then
			avatarAbilitiesInterface:isEnabled() else
			AvatarAbilitiesInterface.isEnabled()
		if isCCLEnabled then
			local jumpButtonSize = isSmallScreen and 72 or 120
			local buttonInsetX = isSmallScreen and 64 or 100
			local buttonInsetY = isSmallScreen and 64 or 112

			local jumpButtonPositionFromEdgeX = -jumpButtonSize - buttonInsetX
			local jumpButtonPositionFromEdgeY = -jumpButtonSize - buttonInsetY

			self.jumpButton.Image = JUMP_BUTTON_IMAGES[1]
			self.jumpButton.ImageRectOffset = Vector2.new(0, 0)
			self.jumpButton.ImageRectSize = Vector2.new(0, 0)
			self.jumpButton.Size = UDim2.new(0, jumpButtonSize, 0, jumpButtonSize)
			self.jumpButton.Position = UDim2.new(1, jumpButtonPositionFromEdgeX, 1, jumpButtonPositionFromEdgeY)
		else
			local jumpButtonSize = isSmallScreen and 70 or 120

			self.jumpButton.Image = TOUCH_CONTROL_SHEET
			self.jumpButton.ImageRectOffset = Vector2.new(1, 146)
			self.jumpButton.ImageRectSize = Vector2.new(144, 144)
			self.jumpButton.Size = UDim2.new(0, jumpButtonSize, 0, jumpButtonSize)
			self.jumpButton.Position = isSmallScreen and UDim2.new(1, -(jumpButtonSize*1.5-10), 1, -jumpButtonSize - 20) or
				UDim2.new(1, -(jumpButtonSize*1.5-10), 1, -jumpButtonSize * 1.75)
		end
	end

	ResizeJumpButton()
	self.absoluteSizeChangedConn = self.parentUIFrame:GetPropertyChangedSignal("AbsoluteSize"):Connect(ResizeJumpButton)
	if FFlagUserPlayerScriptsCCLIntegrationB then
		self.avatarAbilitiesEnabledChangedConn = avatarAbilitiesInterface:GetEnabledChangedSignal():Connect(ResizeJumpButton)
	else
		self.avatarAbilitiesEnabledChangedConn = AvatarAbilitiesInterface.GetEnabledChangedSignal():Connect(ResizeJumpButton)
	end

	self.jumpButton.Parent = self.parentUIFrame

	if not self.playerData.actions.JumpAction then
		return
	end
	self.playerData.actions.JumpAction:WaitForChild("TouchBinding").UIButton = self.jumpButton

	self.playerData.actions.JumpAction.Pressed:Connect(function()
		if not self.jumpButton then
			return
		end

		local isCCLEnabled = if FFlagUserPlayerScriptsCCLIntegrationB then
			avatarAbilitiesInterface:isEnabled() else
			AvatarAbilitiesInterface.isEnabled()
		if isCCLEnabled then
			self.jumpButton.Image = JUMP_BUTTON_IMAGES[2]
		else
			self.jumpButton.ImageRectOffset = Vector2.new(146, 146)
		end
	end)

	self.playerData.actions.JumpAction.Released:Connect(function()
		if not self.jumpButton then
			return
		end

		local isCCLEnabled = if FFlagUserPlayerScriptsCCLIntegrationB then
			avatarAbilitiesInterface:isEnabled() else
			AvatarAbilitiesInterface.isEnabled()
		if isCCLEnabled then
			self.jumpButton.Image = JUMP_BUTTON_IMAGES[1]
		else
			self.jumpButton.ImageRectOffset = Vector2.new(1, 146)
		end
	end)

end

return TouchJump
