-- VirtualKeyboard.lua --
-- Written by Kip Turner, copyright ROBLOX 2016 --


local CoreGui = game:GetService('CoreGui')
local RunService = game:GetService('RunService')
local UserInputService = game:GetService('UserInputService')
local GuiService = game:GetService('GuiService')
local HttpService = game:GetService('HttpService')
local ContextActionService = game:GetService('ContextActionService')
local PlayersService = game:GetService('Players')
local SoundService = game:GetService('SoundService')
local TextService = game:GetService('TextService')

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local Util = require(RobloxGui.Modules.Settings.Utility)

local BACKGROUND_OPACITY = 0.3
local NORMAL_KEY_COLOR = Color3.new(49/255,49/255,49/255)
local HOVER_KEY_COLOR = Color3.new(49/255,49/255,49/255)
local PRESSED_KEY_COLOR = Color3.new(0,162/255,1)
local SET_KEY_COLOR = Color3.new(0,162/255,1)

local KEY_TEXT_COLOR = Color3.new(1,1,1)
---------------------------------------- KEYBOARD LAYOUT --------------------------------------
local MINIMAL_KEYBOARD_LAYOUT = HttpService:JSONDecode([==[
[
  [
    {
      "a": 7,
      "w": 0.8
    },
    "*",
    "Q",
    "W",
    "E",
    "R",
    "T",
    "Y",
    "U",
    "I",
    "O",
    "P",
    {
      "w": 1.8
    },
    "Delete"
  ],
  [
    {
      "w": 1.6
    },
    "Caps",
    "A",
    "S",
    "D",
    "F",
    "G",
    "H",
    "J",
    "K",
    "L",
    "?",
    {
      "h": 2,
      "w2": 2.4,
      "h2": 1,
      "x2": -1.4,
      "y2": 1
    },
    "Enter"
  ],
  [
    {
      "w": 2.2
    },
    "Shift",
    "Z",
    "X",
    "C",
    "V",
    "B",
    "N",
    "M",
    "."
  ],
  [
    {
      "w": 2.2
    },
    "123/sym",
    {
      "w": 8
    },
    "",
    {
      "w": 2.4
    },
    "<Speaker>"
  ]
]
]==])

local MINIMAL_KEYBOARD_LAYOUT_SYMBOLS = HttpService:JSONDecode([==[
[
  [
    {
      "a": 7,
      "w": 0.8
    },
    "*",
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
    "0",
    {
      "w": 1.8
    },
    "Delete"
  ],
  [
    {
      "w": 1.6
    },
    "!",
    "@",
    "#",
    "$",
    "%",
    "^",
    "&",
    "(",
    ")",
    "=",
    "?",
    {
      "h": 2,
      "w2": 2.4,
      "h2": 1,
      "x2": -1.4,
      "y2": 1
    },
    "Enter"
  ],
  [
    {
      "w": 1.2
    },
    "/",
    "-",
    "+",
    "_",
    ":",
    ";",
    "'",
    "\"",
    ",",
    "."
  ],
  [
    {
      "w": 2.2
    },
    "abc",
    {
      "w": 8
    },
    "",
    {
      "w": 2.4
    },
    "<Speaker>"
  ]
]
]==])


---------------------------------------- END KEYBOARD LAYOUT --------------------------------------


local VOICE_STATUS_CODE_ENUM = {}
do
	local STATUS_CODES =
	{
	    'ASR_STATUS_OK',
	    'ASR_STATUS_CANCELLED',
	    'ASR_STATUS_UNKNOWN',
	    'ASR_STATUS_INVALID_ARGUMENTS',
	    'ASR_STATUS_DEADLINE_EXCEEDED',
	    'ASR_STATUS_NOT_FOUND',
	    'ASR_STATUS_ALREADY_EXISTS',
	    'ASR_STATUS_PERMISSION_DENIED',
	    'ASR_STATUS_UNAUTHENTICATED',
	    'ASR_STATUS_RESOURCE_EXHAUSTED',
	    'ASR_STATUS_FAILED_PRECONDITION',
	    'ASR_STATUS_ABORTED',
	    'ASR_STATUS_OUT_OF_RANGE',
	    'ASR_STATUS_UNIMPLEMENTED',
	    'ASR_STATUS_INTERNAL',
	    'ASR_STATUS_UNAVAILABLE',
	    'ASR_STATUS_DATA_LOSS',
	    -- last official google response

	    -- Roblox statuses
	    'ASR_STATUS_NOT_ENABLED',
	    'ASR_STATUS_LOW_CONFIDENCE',
	    'ASR_STATUS_INVALID_JSON'
	};

	for i, code in pairs(STATUS_CODES) do
		VOICE_STATUS_CODE_ENUM[code] = i-1
	end
end

local function tokenizeString(str, tokenChar)
	local words = {}
	for word in string.gmatch(str, '([^' .. tokenChar .. ']+)') do
	    table.insert(words, word)
	end
	return words
end

local function ConvertFontSizeEnumToInt(fontSizeEnum)
	local result = string.match(fontSizeEnum.Name, '%d+')
	return (result and tostring(result)) or 12
end


-- RayPlaneIntersection

-- http://www.siggraph.org/education/materials/HyperGraph/raytrace/rayplane_intersection.htm
local function RayPlaneIntersection(ray, planeNormal, pointOnPlane)
	planeNormal = planeNormal.unit
	ray = ray.Unit
	-- compute Pn (dot) Rd = Vd and check if Vd == 0 then we know ray is parallel to plane
	local Vd = planeNormal:Dot(ray.Direction)

	-- could fuzzy equals this a little bit to account for imprecision or very close angles to zero
	if Vd == 0 then -- parallel, no intersection
		return nil
	end

	local V0 = planeNormal:Dot(pointOnPlane - ray.Origin)
	local t = V0 / Vd

	if t < 0 then --plane is behind ray origin, and thus there is no intersection
		return nil
	end

	return ray.Origin + ray.Direction * t
end

function Clamp(low, high, input)
	return math.max(low, math.min(high, input))
end

-- No rotation as of yet
local function PointInGuiObject(object, x, y)
	local minPt = object.AbsolutePosition
	local maxPt = object.AbsolutePosition + object.AbsoluteSize
	if minPt.X <= x and maxPt.X >= x and minPt.Y <= y and maxPt.Y >= y then
		return true
	end
	return false
end

local function FindAncestorOfType(object, ancestorType)
	if not object then return nil end

	local parent = object.Parent
	if parent and  parent:IsA(ancestorType) then
		return parent
	end

	return FindAncestorOfType(parent, ancestorType)
end

local function ExtendedInstance(instance)
	local this = {}
	do
		local mt =
		{
			__index = function (t, k)
				return instance[k]
			end;

			__newindex = function (t, k, v)
				instance[k] = v
			end;
		}
		setmetatable(this, mt)
	end
	return this
end

local function IsVoiceToTextEnabled()
	local success, flagValue = pcall(function() return settings():GetFFlag("EnableVoiceRecording") end)
	return success and flagValue == true
end

local function CreateVRButton(instance)
	local newButton = ExtendedInstance(instance)

	rawset(newButton, "OnEnter", function(self)
	end)
	rawset(newButton, "OnLeave", function(self)
	end)
	rawset(newButton, "OnDown", function(self)
	end)
	rawset(newButton, "OnUp", function(self)
	end)
	rawset(newButton, "ContainsPoint", function(self, x, y)
		return PointInGuiObject(instance, x, y)
	end)
	rawset(newButton, "Update", function(self)
	end)

	return newButton
end

local selectionRing = Util:Create'ImageLabel'
{
	Name = 'SelectionRing';
	Size = UDim2.new(1, -6, 1, -6);
	Position = UDim2.new(0, 4, 0, 3);
	Image = 'rbxasset://textures/ui/menu/buttonHover.png';
	ScaleType = Enum.ScaleType.Slice;
	SliceCenter = Rect.new(94/2, 94/2, 94/2, 94/2);
	BackgroundTransparency = 1;
}

local KEY_ICONS =
{
	["<Speaker>"] = {Asset = "rbxasset://textures/ui/Keyboard/mic_icon.png", AspectRatio = 0.615};
}

local function CreateKeyboardKey(keyboard, layoutData, keyData)
	local isSpecialShapeKey = layoutData['width2'] and layoutData['height2'] and layoutData['x2'] and layoutData['y2']

	local newKeyElement = Util:Create'ImageButton'
	{
		Name = keyData[1];
		Position = UDim2.new(layoutData['x'], 0, layoutData['y'], 0);
		Size = UDim2.new(layoutData['width'], 0, layoutData['height'], 0);
		BorderSizePixel = 0;
		Image = "";
		BackgroundTransparency = 1;
		ZIndex = 1;
	}
	local keyText = Util:Create'TextLabel'
	{
		Name = "KeyText";
		Text = keyData[#keyData];
		Position = UDim2.new(0, -10, 0, -10);
		Size = UDim2.new(1, 0, 1, 0);
		Font = Enum.Font.SourceSansBold;
		FontSize = Enum.FontSize.Size96;
		TextColor3 = KEY_TEXT_COLOR;
		BackgroundTransparency = 1;
		Selectable = true;
		ZIndex = 2;
		Parent = newKeyElement;
	}
	local backgroundImage = Util:Create'Frame'
	{
		Name = 'KeyBackground';
		Size = UDim2.new(1,-10,1,-10);
		Position = UDim2.new(0,-5,0,-5);
		BackgroundColor3 = NORMAL_KEY_COLOR;
		BackgroundTransparency = BACKGROUND_OPACITY;
		BorderSizePixel = 0;
		Parent = newKeyElement;
	}

	local selectionObject = Util:Create'ImageLabel'
	{
		Name = 'SelectionObject';
		Size = UDim2.new(1,0,1,0);
		BackgroundTransparency = 1;
		Image = "rbxasset://textures/ui/Keyboard/key_selection_9slice.png";
		ImageTransparency = 0;
		ScaleType = Enum.ScaleType.Slice;
		SliceCenter = Rect.new(12,12,52,52);
		BorderSizePixel = 0;
	}

	newKeyElement.SelectionImageObject = Util:Create'ImageLabel'
	{
		Visible = false;
	}

 	-- Special silly enter key nonsense
	local secondBackgroundImage = nil
	local specialSelectionObject, specialSelectionObject2, specialSelectionObject3 = nil, nil, nil
	if isSpecialShapeKey then
		secondBackgroundImage = Util:Create'ImageButton'
		{
			Name = 'KeyBackground';
			Position = UDim2.new(layoutData['x2'] / layoutData['width'], -5, layoutData['y2'] / layoutData['height'], -5);
			Size = UDim2.new(layoutData['width2'] / layoutData['width'], 0, layoutData['height2'] / layoutData['height'], -10);
			BackgroundColor3 = NORMAL_KEY_COLOR;
			BackgroundTransparency = BACKGROUND_OPACITY;
			BorderSizePixel = 0;
			AutoButtonColor = false;
			SelectionImageObject = newKeyElement.SelectionImageObject;
			Parent = newKeyElement;
		}
		if layoutData['x2'] <= 0 then
			keyText.Size = secondBackgroundImage.Size - UDim2.new(0,10,0,0)
			keyText.Position = secondBackgroundImage.Position
			secondBackgroundImage.Size = secondBackgroundImage.Size - UDim2.new(1,0,0,0)
		end

		do
			specialSelectionObject = Util:Create'Frame'
			{
				Name = 'SpecialSelectionObject';
				Size = UDim2.new(1,0,0.5,0);
				Position = UDim2.new(0,0,0.5,0);
				BackgroundTransparency = 1;
				ClipsDescendants = true;
				Util:Create'ImageLabel'
				{
					Name = 'Borders';
					Position = UDim2.new(-1,0,-1,0);
					Size = UDim2.new(2,0,2,0);
					BackgroundTransparency = 1;
					Image = "rbxasset://textures/ui/Keyboard/key_selection_9slice.png";
					ImageTransparency = 0;
					ScaleType = Enum.ScaleType.Slice;
					SliceCenter = Rect.new(12,12,52,52);
				};
			}
			specialSelectionObject2 = specialSelectionObject:Clone()
			specialSelectionObject2.Size = UDim2.new(1,0,0.5,5)
			specialSelectionObject2.Position = UDim2.new(0,0,0,0)
			specialSelectionObject2.Borders.Size = UDim2.new(1,0,1,30)
			specialSelectionObject2.Borders.Position = UDim2.new(0,0,0,0)

			specialSelectionObject3 = specialSelectionObject:Clone()
			specialSelectionObject3.Size = UDim2.new(1,5,1,0)
			specialSelectionObject3.Position = UDim2.new(0,0,0,0)
			specialSelectionObject3.Borders.Size = UDim2.new(1,30,1,0)
			specialSelectionObject3.Borders.Position = UDim2.new(0,0,0,0)
		end
		-- End of nonsense
	end

	local newKey = CreateVRButton(newKeyElement)

	local hovering = false
	local pressed = false
	local isAlpha = #keyData == 1 and type(keyData[1]) == 'string' and #keyData[1] == 1 and
	                string.byte(keyData[1]) >= string.byte("A") and string.byte(keyData[1]) <= string.byte("z")

	local icon = nil
	if keyData[1] and KEY_ICONS[keyData[1]] then
		keyText.Visible = false
		icon = Util:Create'ImageLabel'
		{
			Name = 'KeyIcon';
			Size = UDim2.new(KEY_ICONS[keyData[1]].AspectRatio, -20, 1, -20);
			SizeConstraint = Enum.SizeConstraint.RelativeYY;
			BackgroundTransparency = 1;
			Image = KEY_ICONS[keyData[1]].Asset;
			Parent = backgroundImage;
		}

		local function onChanged(prop)
			if prop == 'AbsoluteSize' then
				icon.Position = UDim2.new(0.5,-icon.AbsoluteSize.X/2,0.5,-icon.AbsoluteSize.Y/2);
			end
		end
		icon.Changed:connect(onChanged)
		onChanged('AbsoluteSize')
	end

	local function isEnabled()
		if newKey:GetCurrentKeyValue() == "<Speaker>" then
			return IsVoiceToTextEnabled()
		end
		return true
	end

	local function onClicked()
		local keyValue = nil
		local currentKeySetting = newKey:GetCurrentKeyValue()

		if currentKeySetting == 'Shift' then
			keyboard:SetShift(not keyboard:GetShift())
		elseif currentKeySetting == 'Caps' then
			keyboard:SetCaps(not keyboard:GetCaps())
		elseif currentKeySetting == 'Enter' then
			keyboard:SubmitText(true, true)
		elseif currentKeySetting == 'Delete' then
			keyboard:BackspaceAtCursor()
		elseif currentKeySetting == "123/sym" then
			keyboard:SetCurrentKeyset(2)
		elseif currentKeySetting == "abc" then
			keyboard:SetCurrentKeyset(1)
		elseif currentKeySetting == "<Speaker>" then
			keyboard:SetVoiceMode(true)
		elseif currentKeySetting == 'Tab' then
			keyValue = '\t'
		else
			keyValue = currentKeySetting
		end

		if keyValue ~= nil then
			keyboard:SubmitCharacter(keyValue, isAlpha)
		end
	end

	local function setKeyColor(newColor, hovering)
		backgroundImage.BackgroundColor3 = newColor
		if secondBackgroundImage then
			secondBackgroundImage.BackgroundColor3 = newColor
		end
		if isSpecialShapeKey then
			specialSelectionObject.Parent = hovering and backgroundImage or nil
			specialSelectionObject2.Parent = hovering and backgroundImage or nil
			specialSelectionObject3.Parent = hovering and secondBackgroundImage or nil
		else
			selectionObject.Parent = hovering and backgroundImage or nil
		end
	end

	local function update()
		local currentKey = newKey:GetCurrentKeyValue()

		if pressed then
			setKeyColor(PRESSED_KEY_COLOR, false)
		elseif hovering then
			setKeyColor(HOVER_KEY_COLOR, true)
		elseif currentKey == 'Caps' and keyboard:GetCaps() then
			setKeyColor(SET_KEY_COLOR, false)
		elseif currentKey == 'Shift' and keyboard:GetShift() then
			setKeyColor(SET_KEY_COLOR, false)
		elseif currentKey == 'abc' then
			setKeyColor(SET_KEY_COLOR, false)
		else
			setKeyColor(NORMAL_KEY_COLOR, false)
		end

		if icon then
			icon.ImageTransparency = isEnabled() and 0 or 0.5
		end

		keyText.Text = newKey:GetCurrentKeyValue()
	end

	local hoveringGuiElements = {}

	rawset(newKey, "OnEnter", function(self)
		hovering = true
		update()
	end)
	rawset(newKey, "OnLeave", function(self)
		if not next(hoveringGuiElements) then
			hovering = false
			pressed = false
			update()
		end
	end)
	rawset(newKey, "OnDown", function(self)
		pressed = true
		update()
		-- Fire the onclick when pressing down on the button;
		-- pressing down and up on the same button is difficult
		-- in VR because your head is constantly moving around
		onClicked()
	end)
	rawset(newKey, "OnUp", function(self)
		pressed = false
		update()
	end)
	rawset(newKey, "GetCurrentKeyValue", function(self)
		local shiftEnabled = keyboard:GetShift()
		local capsEnabled = keyboard:GetCaps()

		if isAlpha then
			if capsEnabled and shiftEnabled then
				return string.lower(keyData[#keyData])
			elseif capsEnabled or shiftEnabled then
				return keyData[1]
			else
				return string.lower(keyData[#keyData])
			end
		end

		if shiftEnabled then
			return keyData[1]
		end

		return keyData[#keyData]
	end)
	rawset(newKey, "ContainsPoint", function(self, x, y)
		return PointInGuiObject(backgroundImage, x, y) or
		       (secondBackgroundImage and PointInGuiObject(secondBackgroundImage, x, y))
	end)
	rawset(newKey, "Update", function(self)
		update()
	end)
	rawset(newKey, "GetInstance", function(self)
		return newKeyElement
	end)

	newKeyElement.MouseButton1Down:connect(function() newKey:OnDown() end)
	newKeyElement.MouseButton1Up:connect(function() newKey:OnUp() end)
	newKeyElement.SelectionGained:connect(function() hoveringGuiElements[newKeyElement] = true newKey:OnEnter() end)
	newKeyElement.SelectionLost:connect(function() hoveringGuiElements[newKeyElement] = nil newKey:OnLeave() end)
	-- For the time being, we will simulate onClick events in the OnDown() event
	-- newKeyElement.MouseButton1Click:connect(function() onClicked() end)
	if secondBackgroundImage then
		-- For the time being, we will simulate onClick events in the OnDown() event
		-- secondBackgroundImage.MouseButton1Click:connect(onClicked)
		secondBackgroundImage.MouseButton1Down:connect(function() newKey:OnDown() end)
		secondBackgroundImage.MouseButton1Up:connect(function() newKey:OnUp() end)
		secondBackgroundImage.SelectionGained:connect(function()
			hoveringGuiElements[secondBackgroundImage] = true
			newKey:OnEnter()
		end)
		secondBackgroundImage.SelectionLost:connect(function()
			hoveringGuiElements[secondBackgroundImage] = nil
			newKey:OnLeave()
		end)
	end

	update()

	return newKey
end

local function CreateBaseVoiceState()
	local this = {}
	this.Name = "Base"

	function this:TransitionFrom()
	end
	function this:TransitionTo()
	end

	return this
end

local function CreateListeningVoiceState()
	local this = CreateBaseVoiceState()

	this.Name = "Listening"

	function this:TransitionTo()
		pcall(function() SoundService:BeginRecording() end)
	end

	return this
end

local function CreateProcessingVoiceState()
	local this = CreateBaseVoiceState()

	this.Name = "Processing"

	local finished = false
	local result = nil

	function this:TransitionTo()
		coroutine.wrap(function()
			pcall(function() result = SoundService:EndRecording() end)
			finished = true
		end)()
	end

	function this:GetResultAsync()
		while not finished do
			wait()
		end
		return result
	end

	return this
end

local function CreateWaitingVoiceState()
	local this = CreateBaseVoiceState()

	this.Name = "Waiting"

	return this
end

local VoiceTransitions = {Listening = {Processing = true}, Processing = {Waiting = true}, Waiting = {Listening = true}}

local VoiceToTextFSM = {}
do
	VoiceToTextFSM.CurrentState = CreateWaitingVoiceState()

	local stateTransitionedSignal = Instance.new('BindableEvent')

	function VoiceToTextFSM:TransitionState(newState)
		-- If it is a new state then lets cleanup and activate it
		if VoiceTransitions[self.CurrentState.Name][newState.Name] then
			self.CurrentState:TransitionFrom()
			self.CurrentState = newState
			self.CurrentState:TransitionTo()
			stateTransitionedSignal:Fire(self.CurrentState)
			return true
		end
		return false
	end

	function VoiceToTextFSM:GetCurrentState()
		return self.CurrentState
	end

	VoiceToTextFSM.StateTransitionedEvent = stateTransitionedSignal.Event
end



local function ConstructKeyboardUI(keyboardLayoutDefinitions)
	local Panel3D = require(RobloxGui.Modules.VR.Panel3D)
	local panel = Panel3D.Get("Keyboard")
	panel:SetVisible(false)

	local buttons = {}

	local keyboardContainer = Util:Create'Frame'
	{
		Name = 'VirtualKeyboard';
		Size = UDim2.new(1, 0, 1, 0);
		Position = UDim2.new(0, 0, 0, 0);
		BackgroundTransparency = 1;
		Active = true;
		Visible = false;
	};

	local textEntryBackground = Util:Create'ImageLabel'
	{
		Name = 'TextEntryBackground';
		Size = UDim2.new(0.5,0,0.125,0);
		Position = UDim2.new(0.25,0,0,0);
		Image = "";
		BackgroundTransparency = 0.5;
		BackgroundColor3 = Color3.new(31/255,31/255,31/255);
		BorderSizePixel = 0;
		ClipsDescendants = true;
		Parent = keyboardContainer;
	}
		local textfieldBackground = Util:Create'Frame'
		{
			Name = 'TextfieldBackground';
			Position = UDim2.new(0,2,0,2);
			Size = UDim2.new(1, -4, 1, -4);
			BackgroundTransparency = 0;
			BackgroundColor3 = Color3.new(209/255,216/255,221/255);
			BorderSizePixel = 0;
			Visible = true;
			Parent = textEntryBackground;
		};
			local textEntryField = Util:Create'TextButton'
			{
				Name = "TextEntryField";
				Text = "";
				Position = UDim2.new(0,4,0,4);
				Size = UDim2.new(1, -8, 1, -8);
				Font = Enum.Font.SourceSans;
				FontSize = Enum.FontSize.Size60;
				TextXAlignment = Enum.TextXAlignment.Left;
				BackgroundTransparency = 1;
				BorderSizePixel = 0;
				Parent = textfieldBackground;
			}
				local textfieldCursor = Util:Create'Frame'
				{
					Name = 'TextfieldCursor';
					Size = UDim2.new(0, 5, 0.9, 0);
					Position = UDim2.new(0, 0, 0.05, 0);
					BackgroundTransparency = 0;
					BackgroundColor3 = SET_KEY_COLOR;
					BorderSizePixel = 0;
					Visible = true;
					ZIndex = 2;
					Parent = textEntryField;
				};

	local closeButtonElement = Util:Create'ImageButton'
	{
		Name = 'CloseButton';
		Size = UDim2.new(0.075,-10,0.198,-10);
		Position = UDim2.new(0,-5,0,-35);
		Image = "rbxasset://textures/ui/Keyboard/close_button_background.png";
		BackgroundTransparency = 1;
		AutoButtonColor = false;
		Parent = keyboardContainer;
	}
	do
		closeButtonElement.SelectionImageObject = Util:Create'ImageLabel'
		{
			Name = 'Selection';
			Size = UDim2.new(0.9,0,0.9,0);
			Position = UDim2.new(0.05,0,0.05,0);
			Image = "rbxasset://textures/ui/Keyboard/close_button_selection.png";
			BackgroundTransparency = 1;
		}
		Util:Create'ImageLabel'
		{
			Name = 'Icon';
			Size = UDim2.new(0.5,0,0.5,0);
			Position = UDim2.new(0.25,0,0.25,0);
			Image = "rbxasset://textures/ui/Keyboard/close_button_icon.png";
			BackgroundTransparency = 1;
			Parent = closeButtonElement;
		}
	end
	local closeButton = CreateVRButton(closeButtonElement)
	table.insert(buttons, closeButton)

	local voiceRecognitionContainer = Util:Create'Frame'
	{
		Name = 'VoiceRecognitionContainer';
		Size = UDim2.new(1, 0, 0.85, 0);
		Position = UDim2.new(0, 0, 0.15, 0);
		BackgroundTransparency = 1;
		Active = true;
		Visible = false;
		Parent = keyboardContainer;
	};
	do
		local voiceRecognitionBackground1 = Util:Create'Frame'
		{
			Name = 'voiceRecognitionBackground1';
			Size = UDim2.new(1, 0, 0.75, 0);
			Position = UDim2.new(0, 0, 0, 0);
			BackgroundColor3 = NORMAL_KEY_COLOR;
			BackgroundTransparency = BACKGROUND_OPACITY;
			BorderSizePixel = 0;
			Active = true;
			Parent = voiceRecognitionContainer;
		};
		local voiceRecognitionBackground2 = voiceRecognitionBackground1:Clone()
		voiceRecognitionBackground2.Size = UDim2.new(1 - 0.2, 0, 0.25, 0)
		voiceRecognitionBackground2.Position = UDim2.new(0, 0, 0.75, 0)
		voiceRecognitionBackground2.Parent = voiceRecognitionContainer
	end

	local voiceDoneButton = CreateVRButton(Util:Create'TextButton'
	{
		Name = 'DoneButton';
		Size = UDim2.new(0.2, -5, 0.25, -5);
		Position = UDim2.new(1 - 0.2, 5, 0.75, 5);
		Text = "Done";
		BackgroundColor3 = SET_KEY_COLOR;
		Font = Enum.Font.SourceSansBold;
		FontSize = Enum.FontSize.Size96;
		TextColor3 = KEY_TEXT_COLOR;
		BackgroundTransparency = 0;
		AutoButtonColor = false;
		BorderSizePixel = 0;
		Parent = voiceRecognitionContainer;
	})
	table.insert(buttons, voiceDoneButton)

	local voiceProcessingStatus = Util:Create'TextLabel'
	{
		Name = 'VoiceProcessingStatus';
		Size = UDim2.new(0, 0, 0, 0);
		Position = UDim2.new(0.5, 0, 0.33, 0);
		Text = "";
		Font = Enum.Font.SourceSansBold;
		FontSize = Enum.FontSize.Size96;
		TextColor3 = KEY_TEXT_COLOR;
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
		Parent = voiceRecognitionContainer;
	}

	local function CreateVoiceVisualizerWidget()
		local this = {}

		local bars = {}

		local numOfBars = 50
		local numOfWaves = 4
		local waveSpeed = 2.5

		local container = Util:Create'Frame'
		{
			Name = 'VoiceVisualizerContainer';
			Size = UDim2.new(1, 0, 1, 0);
			BackgroundTransparency = 1;
		}
		this.Container = container

		for i = 1, numOfBars do
			local bar = Util:Create'Frame'
			{
				Name = 'Bar';
				Size = UDim2.new(1/numOfBars, -4, 1, 0);
				Position = UDim2.new(i/numOfBars, 0, 0, 0);
				BackgroundTransparency = 0;
				BackgroundColor3 = KEY_TEXT_COLOR;
				Parent = container;
			}
			table.insert(bars, bar)
		end

		function this:StartAnimation()
			RunService:UnbindFromRenderStep("VoiceVisualizerWidget")
			RunService:BindToRenderStep("VoiceVisualizerWidget", Enum.RenderPriority.First.Value,
				function()
					local movementPerBar = (numOfWaves*2*math.pi) / numOfBars
					for i, bar in pairs(bars) do
						local height = math.abs(math.sin(tick() * waveSpeed + i * movementPerBar)) + math.abs(math.cos(tick() * waveSpeed + i * movementPerBar))
						height = ((height / 2) - 0.3) * (1/(1-0.3))
						bar.Size = UDim2.new(1/numOfBars, -4, height, 0)
						bar.Position = UDim2.new(i/numOfBars, 0, (1-height) / 2, 0)
					end
				end)
		end

		function this:StopAnimation()
			RunService:UnbindFromRenderStep("VoiceVisualizerWidget")
		end

		return this
	end

	local voiceVisualizer = CreateVoiceVisualizerWidget()
	voiceVisualizer.Container.Parent = voiceRecognitionContainer
	voiceVisualizer.Container.Size = UDim2.new(0.5,0,0.4,0)
	voiceVisualizer.Container.Position = UDim2.new(0.25,0,0.4,0)

	local newKeyboard = ExtendedInstance(keyboardContainer)

	local keyboardOptions = nil
	local keysets = {}

	local capsLockEnabled = false
	local shiftEnabled = false

	local textfieldCursorPosition = 0

	local openedEvent = Instance.new('BindableEvent')
	local closedEvent = Instance.new('BindableEvent')
	local opened = false

	local function SetTextFieldCursorPosition(newPosition)
		textfieldCursorPosition = Clamp(0, #textEntryField.Text, newPosition)
		if not textEntryField.TextFits then
			textfieldCursorPosition = #textEntryField.Text
		end

		local textSize = TextService:GetTextSize(
			string.sub(textEntryField.Text, 1, textfieldCursorPosition),
			ConvertFontSizeEnumToInt(textEntryField.FontSize),
			textEntryField.Font,
			textEntryField.AbsoluteSize)
		textfieldCursor.Position = UDim2.new(0, textSize.x, textfieldCursor.Position.Y.Scale, textfieldCursor.Position.Y.Offset)
	end

	local function UpdateTextEntryFieldText(newText)
		textEntryField:SetTextFromInput(newText)
		SetTextFieldCursorPosition(textfieldCursorPosition)
	end

	local buffer = ""
	local function getBufferText()
		if keyboardOptions and keyboardOptions.TextBox then
			return keyboardOptions.TextBox.Text
		end
		return buffer
	end
	local function setBufferText(newBufferText)
		if keyboardOptions and keyboardOptions.TextBox then
			keyboardOptions.TextBox.Text = newBufferText
		elseif buffer ~= newBufferText then
			buffer = newBufferText
			UpdateTextEntryFieldText(buffer)
		end
	end

	local function calculateTextCursorPosition(x, y)
		x = x - textEntryField.AbsolutePosition.x
		y = y - textEntryField.AbsolutePosition.y

		for i = 1, #textEntryField.Text do
			local textSize = TextService:GetTextSize(
				string.sub(textEntryField.Text, 1, i),
				ConvertFontSizeEnumToInt(textEntryField.FontSize),
				textEntryField.Font,
				textEntryField.AbsoluteSize)
			if textSize.x > x then
				return i - 1
			end
		end

		return #textEntryField.Text
	end

	local currentKeyset = nil

	rawset(newKeyboard, "OpenedEvent",  openedEvent.Event)
	rawset(newKeyboard, "ClosedEvent",  closedEvent.Event)

	rawset(newKeyboard, "GetCurrentKeyset", function(self)
		return keysets[currentKeyset]
	end)

	rawset(newKeyboard, "SetCurrentKeyset", function(self, newKeyset)
		if newKeyset ~= currentKeyset and keysets[newKeyset] ~= nil then
			if keysets[currentKeyset] and keysets[currentKeyset].container then
				keysets[currentKeyset].container.Visible = false
			end

			currentKeyset = newKeyset

			if keysets[currentKeyset] and keysets[currentKeyset].container then
				keysets[currentKeyset].container.Visible = true
			end
		end
	end)

	rawset(newKeyboard, "SetVoiceMode", function(self, inVoiceMode)
		inVoiceMode = inVoiceMode and IsVoiceToTextEnabled()

		local currentKeysetObject = self:GetCurrentKeyset()
		if currentKeysetObject and currentKeysetObject.container then
			currentKeysetObject.container.Visible = not inVoiceMode
		end

		voiceRecognitionContainer.Visible = inVoiceMode

		if inVoiceMode then
			VoiceToTextFSM:TransitionState(CreateListeningVoiceState())
		end
	end)

	rawset(newKeyboard, "GetCaps", function(self)
		return capsLockEnabled
	end)

	rawset(newKeyboard, "SetCaps", function(self, newCaps)
		capsLockEnabled = newCaps
		for _, key in pairs(self:GetCurrentKeyset().keys) do
			key:Update()
		end
	end)

	rawset(newKeyboard, "GetShift", function(self)
		return shiftEnabled
	end)

	rawset(newKeyboard, "SetShift", function(self, newShift)
		shiftEnabled = newShift
		for _, key in pairs(self:GetCurrentKeyset().keys) do
			key:Update()
		end
	end)

	local ignoreFocusedLost = false

	local textChangedConn = nil
	local textBoxFocusLostConn = nil
	local panelClosedConn = nil

	local function disconnectKeyboardEvents()
		if textChangedConn then textChangedConn:disconnect() end
		textChangedConn = nil
		if textBoxFocusLostConn then textBoxFocusLostConn:disconnect() end
		textBoxFocusLostConn = nil
		if panelClosedConn then panelClosedConn:disconnect() end
		panelClosedConn = nil
	end

	rawset(newKeyboard, "Open", function(self, options)
		if opened then return end
		opened = true

		keyboardOptions = options

		self:SetCurrentKeyset(1)
		self:SetVoiceMode(false)
		keyboardContainer.Visible = true

		panel:ResizeStuds(5.9, 2.25, 320)

		local localCF = CFrame.new()

		disconnectKeyboardEvents()
		if options.TextBox then
			textChangedConn = options.TextBox.Changed:connect(function(prop)
				if prop == 'Text' then
					UpdateTextEntryFieldText(options.TextBox.Text)
				end
			end)
			textBoxFocusLostConn = options.TextBox.FocusLost:connect(function(submitted)
				if not ignoreFocusedLost then
					self:Close(submitted)
				end
			end)
			if options.TextBox.ClearTextOnFocus then
				setBufferText("")
			else
				UpdateTextEntryFieldText(options.TextBox.Text)
			end

			-- Find panel for 2d ui?
			local textboxPanel = Panel3D.FindContainerOf(options.TextBox)
			if textboxPanel then
				panelClosedConn = Panel3D.OnPanelClosed.Event:connect(function(closedPanelName)
					if closedPanelName == textboxPanel.name then
						self:Close(false)
					end
				end)

				local textboxPosition = options.TextBox.AbsolutePosition + (Vector2.new(0.5, 1) * options.TextBox.AbsoluteSize)
				local panelCF = textboxPanel:GetCFrameInCameraSpace()
				localCF = panelCF * CFrame.new(textboxPanel:GetGuiPositionInPanelSpace(textboxPosition)) * CFrame.new(0, -panel.height * 0.65, 0.5) * CFrame.Angles(math.rad(-22.5), 0, 0)
			else -- no panel!
				local headForwardCF = Panel3D.GetHeadLookXZ(true)
				localCF = headForwardCF * CFrame.Angles(math.rad(22.5), 0, 0) * CFrame.new(0, -1, -5)
			end
		else
			setBufferText("")
		end

		ContextActionService:BindCoreAction("VirtualKeyboardControllerInput",
			function(actionName, inputState, inputObject)
				if inputState == Enum.UserInputState.End then
					if inputObject.KeyCode == Enum.KeyCode.ButtonL1 then
						SetTextFieldCursorPosition(textfieldCursorPosition - 1)
					elseif inputObject.KeyCode == Enum.KeyCode.ButtonR1 then
						SetTextFieldCursorPosition(textfieldCursorPosition + 1)
					elseif inputObject.KeyCode == Enum.KeyCode.ButtonX then
						self:BackspaceAtCursor()
					elseif inputObject.KeyCode == Enum.KeyCode.ButtonY then
						self:SubmitCharacter(" ", false)
					elseif inputObject.KeyCode == Enum.KeyCode.ButtonL2 then
						if currentKeyset then
							-- Go to the next keyset
							self:SetCurrentKeyset((currentKeyset % #keysets) + 1)
						end
					elseif inputObject.KeyCode == Enum.KeyCode.ButtonL3 then
						self:SetCaps(not self:GetCaps())
					elseif inputObject.KeyCode == Enum.KeyCode.ButtonB then
						self:Close(false)
					end
				end
			end,
			false,
			Enum.KeyCode.ButtonL1, Enum.KeyCode.ButtonR1, Enum.KeyCode.ButtonL2, Enum.KeyCode.ButtonL3, Enum.KeyCode.ButtonX, Enum.KeyCode.ButtonY, Enum.KeyCode.ButtonR2, Enum.KeyCode.ButtonB)

		self.Parent = panel:GetGUI()

		panel:SetType(Panel3D.Type.Fixed, { CFrame = localCF })
		panel:SetCanFade(false)
		panel:SetVisible(true, true)
		panel:ForceShowUntilLookedAt()

		function panel:OnUpdate()
		end

		openedEvent:Fire()
	end)

	rawset(newKeyboard, "Close", function(self, submit)
		submit = (submit == true)

		if not opened then return end
		opened = false

		disconnectKeyboardEvents()

		ContextActionService:UnbindCoreAction("VirtualKeyboardControllerInput")
		-- Clean-up
		panel:OnMouseLeave()
		panel:SetVisible(false, true)
		keyboardContainer.Visible = false

		Panel3D.Get("Topbar3D"):SetVisible(true)

		self:SubmitText(submit, false)
		closedEvent:Fire()
	end)

	rawset(newKeyboard, "SubmitText", function(self, submit, keepKeyboardOpen)
		local keyboardTextbox = keyboardOptions and keyboardOptions.TextBox
		if keyboardTextbox then
			if submit then
				keyboardTextbox.Text = getBufferText()
			end
			-- Only keep text boxes open for coreguis, such as chat
			local textboxPanel = Panel3D.FindContainerOf(keyboardTextbox)
			local reopenKeyboard = keepKeyboardOpen and textboxPanel and textboxPanel.linkedTo == panel

			if reopenKeyboard then
				ignoreFocusedLost = true
			end

			keyboardTextbox:ReleaseFocus(submit)

			if reopenKeyboard then
				keyboardTextbox:CaptureFocus()
				ignoreFocusedLost = false
			end
		end
	end)

	rawset(newKeyboard, "GetCurrentOptions", function(self)
		return keyboardOptions
	end)

	rawset(newKeyboard, "BackspaceAtCursor", function(self)
		if textfieldCursorPosition >= 1 then
			local bufferText = getBufferText()
			local newBufferText = string.sub(bufferText, 1, textfieldCursorPosition - 1) .. string.sub(bufferText, textfieldCursorPosition + 1, #bufferText)
			local newCursorPosition = textfieldCursorPosition - 1
			setBufferText(newBufferText)
			SetTextFieldCursorPosition(newCursorPosition)
		end
	end)

	rawset(newKeyboard, "SubmitCharacter", function(self, character, isAnAlphaKey)
		local bufferText = getBufferText()
		local newBufferText = string.sub(bufferText, 1, textfieldCursorPosition) .. character .. string.sub(bufferText, textfieldCursorPosition + 1, #bufferText)
		setBufferText(newBufferText)
		SetTextFieldCursorPosition(textfieldCursorPosition + #character)

		if isAnAlphaKey and self:GetShift() then
			self:SetShift(false)
		end
	end)

	do -- Parse input definition
		for _, keyboardKeyset in pairs(keyboardLayoutDefinitions) do
			local keys = {}
			local keyboardSizeConstrainer = Util:Create'Frame'
			{
				Name = 'KeyboardSizeConstrainer';
				Size = UDim2.new(1, 0, 1, -20);
				Position = UDim2.new(0, 0, 0, 20);
				BackgroundTransparency = 1;
				Parent = keyboardContainer;
			};

			local maxWidth = 0
			local maxHeight = 0
			local y = 0
			for rowNum, rowData in pairs(keyboardKeyset) do
				local x = 0
				local width = 1
				local height = 1
				local width2, height2, x2, y2;
				for columnNum, columnData in pairs(rowData) do
					if type(columnData) == 'table' then
						if columnData['w'] then width = columnData['w'] end
						if columnData['h'] then height = columnData['h'] end
						if columnData['x'] then x = x + columnData['x'] end
						if columnData['y'] then y = y + columnData['y'] end
						if columnData['x2'] then x2 = columnData['x2'] end
						if columnData['y2'] then y2 = columnData['y2'] end
						if columnData['w2'] then width2 = columnData['w2'] end
						if columnData['h2'] then height2 = columnData['h2'] end
					elseif type(columnData) == 'string' then
						if columnData == "" then
							columnData = " "
						end
						-- put key
						local key = CreateKeyboardKey(
							newKeyboard,
							{x = x, y = y, width = width, height = height, x2 = x2, y2 = y2, width2 = width2, height2 = height2},
							tokenizeString(columnData, '\n'))
						table.insert(keys, key)

						x = x + width
						maxWidth = math.max(maxWidth, x)
						maxHeight = math.max(maxHeight, y + height)
						-- reset for the next key
						width = 1
						height = 1
						width2, height2, x2, y2 = nil, nil, nil, nil
					end
				end
				y = y + 1
			end

			-- Fix the positions and sizes to fit in our KeyboardContainer
			for _, element in pairs(keys) do
				element.Position = UDim2.new(element.Position.X.Scale / maxWidth, 0, element.Position.Y.Scale / maxHeight, 0)
				element.Size = UDim2.new(element.Size.X.Scale / maxWidth, 0, element.Size.Y.Scale / maxHeight, 0)
				element.Parent = keyboardSizeConstrainer
			end

			keyboardSizeConstrainer.SizeConstraint = Enum.SizeConstraint.RelativeXX
			keyboardSizeConstrainer.Size = UDim2.new(1, 0, -maxHeight / maxWidth, 0)
			keyboardSizeConstrainer.Position = UDim2.new(0, 0, 1, 0)
			keyboardSizeConstrainer.Visible = false

			table.insert(keysets, {keys = keys, container = keyboardSizeConstrainer})
		end
		newKeyboard:SetCurrentKeyset(1)
	end

	textEntryField.MouseButton1Click:connect(function()
		SetTextFieldCursorPosition(calculateTextCursorPosition(panel.lookAtPixel.X, panel.lookAtPixel.Y))
	end)

	closeButton.MouseButton1Click:connect(function()
		newKeyboard:Close(false)
	end)

	voiceDoneButton.MouseButton1Click:connect(function()
		if VoiceToTextFSM:GetCurrentState().Name == "Listening" then
			VoiceToTextFSM:TransitionState(CreateProcessingVoiceState())
		end
	end)

	local function onVoiceProcessingStateChanged(newState)
		if newState.Name == "Listening" then
			voiceProcessingStatus.Text = "Listening..."
		elseif newState.Name == "Processing" then
			voiceProcessingStatus.Text = "Processing..."
		elseif newState.Name == "Waiting" then
			voiceProcessingStatus.Text = "Done"
		end

		-- Get the result and put it into the textfield
		if newState.Name == "Processing" then
			coroutine.wrap(function()
				voiceVisualizer:StopAnimation()
				local result = newState:GetResultAsync()
				if result and result["Status"] == VOICE_STATUS_CODE_ENUM.ASR_STATUS_OK  then
					setBufferText(result["Response"])
				else
					voiceProcessingStatus.Text = "An error occurred, please try again."
					wait(2)
				end
				VoiceToTextFSM:TransitionState(CreateWaitingVoiceState())
			end)()
		elseif newState.Name == "Listening" then
			voiceVisualizer:StartAnimation()
		elseif newState.Name == "Waiting" then
			newKeyboard:SetVoiceMode(false)
		end
	end
	VoiceToTextFSM.StateTransitionedEvent:connect(onVoiceProcessingStateChanged)
	onVoiceProcessingStateChanged(VoiceToTextFSM:GetCurrentState())


	return newKeyboard
end


local Keyboard = nil;
local function GetKeyboard()
	if Keyboard == nil then
		Keyboard = ConstructKeyboardUI({MINIMAL_KEYBOARD_LAYOUT, MINIMAL_KEYBOARD_LAYOUT_SYMBOLS})
	end
	return Keyboard
end



local VirtualKeyboardClass = {}

function VirtualKeyboardClass:CreateVirtualKeyboardOptions(textbox)
	local keyboardOptions = {}

	keyboardOptions.TextBox = textbox

	return keyboardOptions
end

local VirtualKeyboardPlatform = false
do
	-- iOS, Android and Xbox already have platform specific keyboards
	local platform = UserInputService:GetPlatform()
	VirtualKeyboardPlatform = platform == Enum.Platform.Windows or
	                          platform == Enum.Platform.OSX or
	                          platform == Enum.Platform.IOS or
	                          platform == Enum.Platform.Android
end


function VirtualKeyboardClass:ShowVirtualKeyboard(virtualKeyboardOptions)
	if VirtualKeyboardPlatform and UserInputService.VREnabled then
		GetKeyboard():Open(virtualKeyboardOptions)
	end
end

function VirtualKeyboardClass:CloseVirtualKeyboard()
	if VirtualKeyboardPlatform and UserInputService.VREnabled then
		local currentKeyboard = GetKeyboard()
		currentKeyboard:Close(false)
	end
end

VirtualKeyboardClass.OpenedEvent = GetKeyboard().OpenedEvent
VirtualKeyboardClass.ClosedEvent = GetKeyboard().ClosedEvent


if VirtualKeyboardPlatform then
	UserInputService.TextBoxFocused:connect(function(textbox)
		VirtualKeyboardClass:ShowVirtualKeyboard(VirtualKeyboardClass:CreateVirtualKeyboardOptions(textbox))
	end)
	-- Don't have to hook up to TextBoxFocusReleased because we are already listening to that in keyboard
end


return VirtualKeyboardClass
