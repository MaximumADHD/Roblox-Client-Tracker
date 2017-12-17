--[[
	// FileName: TouchJump
	// Version 1.0
	// Written by: jmargh
	// Description: Implements jump controls for touch devices. Use with Thumbstick and Thumbpad
--]]

local Players = game:GetService('Players')
local GuiService = game:GetService('GuiService')

local TouchJump = {}

local MasterControl = require(script.Parent)

--[[ Script Variables ]]--
while not Players.LocalPlayer do
	wait()
end
local LocalPlayer = Players.LocalPlayer
local Humanoid = MasterControl:GetHumanoid()
local JumpButton = nil
local OnInputEnded = nil		-- defined in Create()
local CharacterAddedConnection = nil
local HumStateConnection = nil
local HumChangeConnection = nil
local ExternallyEnabled = false
local JumpPower = 0
local JumpStateEnabled = true

--[[ Constants ]]--
local TOUCH_CONTROL_SHEET = "rbxasset://textures/ui/TouchControlsSheet.png"

--[[ Private Functions ]]--

local function disableButton()
	JumpButton.Visible = false
	OnInputEnded()
end

local function enableButton()
	if Humanoid and ExternallyEnabled then
		if ExternallyEnabled then
			if Humanoid.JumpPower > 0 then
				JumpButton.Visible = true
			end
		end
	end
end

local function updateEnabled()
	if JumpPower > 0 and JumpStateEnabled then
		enableButton()
	else
		disableButton()
	end
end

local function humanoidChanged(prop)
	if prop == "JumpPower" then
		JumpPower =  Humanoid.JumpPower
		updateEnabled()
	elseif prop == "Parent" then
		if not Humanoid.Parent then
			HumChangeConnection:disconnect()
		end
	end
end

local function humandoidStateEnabledChanged(state, isEnabled)
	if state == Enum.HumanoidStateType.Jumping then
		JumpStateEnabled = isEnabled
		updateEnabled()
	end
end

local function characterAdded(newCharacter)
	if HumChangeConnection then
		HumChangeConnection:disconnect()
	end
	-- rebind event to new Humanoid
	Humanoid = nil
	repeat
		Humanoid = MasterControl:GetHumanoid()
		wait()
	until Humanoid and Humanoid.Parent == newCharacter
	HumChangeConnection = Humanoid.Changed:connect(humanoidChanged)
	HumStateConnection = Humanoid.StateEnabledChanged:connect(humandoidStateEnabledChanged)
	JumpPower = Humanoid.JumpPower
	JumpStateEnabled = Humanoid:GetStateEnabled(Enum.HumanoidStateType.Jumping)
	updateEnabled()
end

local function setupCharacterAddedFunction()
	CharacterAddedConnection = LocalPlayer.CharacterAdded:connect(characterAdded)
	if LocalPlayer.Character then
		characterAdded(LocalPlayer.Character)
	end
end

--[[ Public API ]]--
function TouchJump:Enable()
	ExternallyEnabled = true
	enableButton()
end

function TouchJump:Disable()
	ExternallyEnabled = false
	disableButton()
end

function TouchJump:Create(parentFrame)
	if JumpButton then
		JumpButton:Destroy()
		JumpButton = nil
	end
	
	local minAxis = math.min(parentFrame.AbsoluteSize.x, parentFrame.AbsoluteSize.y)
	local isSmallScreen = minAxis <= 500
	local jumpButtonSize = isSmallScreen and 70 or 120
	
	JumpButton = Instance.new('ImageButton')
	JumpButton.Name = "JumpButton"
	JumpButton.Visible = false
	JumpButton.BackgroundTransparency = 1
	JumpButton.Image = TOUCH_CONTROL_SHEET
	JumpButton.ImageRectOffset = Vector2.new(176, 222)
	JumpButton.ImageRectSize = Vector2.new(174, 174)
	JumpButton.Size = UDim2.new(0, jumpButtonSize, 0, jumpButtonSize)

    JumpButton.Position = isSmallScreen and UDim2.new(1, -(jumpButtonSize*1.5-10), 1, -jumpButtonSize - 20) or
        UDim2.new(1, -(jumpButtonSize*1.5-10), 1, -jumpButtonSize * 1.75)
	
	local touchObject = nil	
	JumpButton.InputBegan:connect(function(inputObject)
		--A touch that starts elsewhere on the screen will be sent to a frame's InputBegan event
		--if it moves over the frame. So we check that this is actually a new touch (inputObject.UserInputState ~= Enum.UserInputState.Begin)
		if touchObject or inputObject.UserInputType ~= Enum.UserInputType.Touch
			or inputObject.UserInputState ~= Enum.UserInputState.Begin then
			return
		end
		
		touchObject = inputObject
		JumpButton.ImageRectOffset = Vector2.new(0, 222)
		MasterControl:SetIsJumping(true)
	end)
	
	OnInputEnded = function()
		touchObject = nil
		MasterControl:SetIsJumping(false)
		JumpButton.ImageRectOffset = Vector2.new(176, 222)
	end
	
	JumpButton.InputEnded:connect(function(inputObject)
		if inputObject == touchObject then
			OnInputEnded()
		end
	end)
	
	GuiService.MenuOpened:connect(function()
		if touchObject then
			OnInputEnded()
		end
	end)
	
	if not CharacterAddedConnection then
		setupCharacterAddedFunction()
	end
	
	JumpButton.Parent = parentFrame
end

return TouchJump
