--[[
		Filename: Utility.lua
		Written by: jeditkacheff
		Version 1.0
		Description: Utility module for CoreScripts
--]]

------------------ CONSTANTS --------------------
local SELECTED_COLOR = Color3.fromRGB(0,162,255)
local NON_SELECTED_COLOR = Color3.fromRGB(78,84,96)

local ARROW_COLOR = Color3.fromRGB(204, 204, 204)
local ARROW_COLOR_HOVER = Color3.fromRGB(255, 255, 255)
local ARROW_COLOR_TOUCH = ARROW_COLOR_HOVER
local ARROW_COLOR_INACTIVE = Color3.fromRGB(150, 150, 150)

local SELECTED_LEFT_IMAGE = "rbxasset://textures/ui/Settings/Slider/SelectedBarLeft.png"
local NON_SELECTED_LEFT_IMAGE = "rbxasset://textures/ui/Settings/Slider/BarLeft.png"
local SELECTED_RIGHT_IMAGE = "rbxasset://textures/ui/Settings/Slider/SelectedBarRight.png"
local NON_SELECTED_RIGHT_IMAGE= "rbxasset://textures/ui/Settings/Slider/BarRight.png"

local CONTROLLER_SCROLL_DELTA = 0.2
local CONTROLLER_THUMBSTICK_DEADZONE = 0.8

local DROPDOWN_BG_TRANSPARENCY = 0.2

------------- SERVICES ----------------
local HttpService = game:GetService("HttpService")
local UserInputService = game:GetService("UserInputService")
local GuiService = game:GetService("GuiService")
local RunService = game:GetService("RunService")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:FindFirstChild("RobloxGui")
local ContextActionService = game:GetService("ContextActionService")
local VRService = game:GetService("VRService")

--------------- FLAGS ----------------

local success, result = pcall(function() return settings():GetFFlag('UseNotificationsLocalization') end)
local FFlagUseNotificationsLocalization = success and result

local FFlagFixInactiveSelectorArrowsSuccess, FFlagFixInactiveSelectorArrowsResult = pcall(function() return settings():GetFFlag("FixInactiveSelectorArrows") end)
local FFlagFixInactiveSelectorArrows = FFlagFixInactiveSelectorArrowsSuccess and FFlagFixInactiveSelectorArrowsResult

------------------ VARIABLES --------------------
local tenFootInterfaceEnabled = require(RobloxGui.Modules:WaitForChild("TenFootInterface")):IsEnabled()

----------- UTILITIES --------------
local Util = {}
do
	function Util.Create(instanceType)
		return function(data)
			local obj = Instance.new(instanceType)
			local parent = nil
			for k, v in pairs(data) do
				if type(k) == 'number' then
					v.Parent = obj
				elseif k == 'Parent' then
					parent = v
				else
					obj[k] = v
				end
			end
			if parent then
				obj.Parent = parent
			end
			return obj
		end
	end
end

local onResizedCallbacks = {}
setmetatable(onResizedCallbacks, { __mode = 'k' })

-- used by several guis to show no selection adorn
local noSelectionObject = Util.Create'ImageLabel'
{
	Image = "",
	BackgroundTransparency = 1
};


-- MATH --
function clamp(low, high, input)
	return math.max(low, math.min(high, input))
end

function ClampVector2(low, high, input)
	return Vector2.new(clamp(low.x, high.x, input.x), clamp(low.y, high.y, input.y))
end

---- TWEENZ ----
local function Linear(t, b, c, d)
	if t >= d then
		return b + c
	end

	return c*t/d + b
end

local function EaseOutQuad(t, b, c, d)
	if t >= d then
		return b + c
	end

	t = t/d
	return b - c*t*(t - 2)
end

local function EaseInOutQuad(t, b, c, d)
	if t >= d then
		return b + c
	end

	t = t/d
	if t < 1/2 then
		return 2*c*t*t + b
	end
	return b + c*(2*(2 - t)*t - 1)
end

function PropertyTweener(instance, prop, start, final, duration, easingFunc, cbFunc)
	local this = {}
	this.StartTime = tick()
	this.EndTime = this.StartTime + duration
	this.Cancelled = false

	local finished = false
	local percentComplete = 0

	local function finalize()
		if instance then
			instance[prop] = easingFunc(1, start, final - start, 1)
		end
		finished = true
		percentComplete = 1
		if cbFunc then
			cbFunc()
		end
	end

	-- Initial set
	instance[prop] = easingFunc(0, start, final - start, duration)
	coroutine.wrap(function()
		local now = tick()
		while now < this.EndTime and instance do
			if this.Cancelled then
				return
			end
			instance[prop] = easingFunc(now - this.StartTime, start, final - start, duration)
			percentComplete = clamp(0, 1, (now - this.StartTime) / duration)
			RunService.RenderStepped:wait()
			now = tick()
		end
		if this.Cancelled == false and instance then
			finalize()
		end
	end)()

	function this:GetFinal()
		return final
	end

	function this:GetPercentComplete()
		return percentComplete
	end

	function this:IsFinished()
		return finished
	end

	function this:Finish()
		if not finished then
			self:Cancel()
			finalize()
		end
	end

	function this:Cancel()
		this.Cancelled = true
	end

	return this
end

----------- CLASS DECLARATION --------------

local function CreateSignal()
	local sig = {}

	local mSignaler = Instance.new('BindableEvent')

	local mArgData = nil
	local mArgDataCount = nil

	function sig:fire(...)
		mArgData = {...}
		mArgDataCount = select('#', ...)
		mSignaler:Fire()
	end

	function sig:connect(f)
		if not f then error("connect(nil)", 2) end
		return mSignaler.Event:Connect(function()
			f(unpack(mArgData, 1, mArgDataCount))
		end)
	end

	function sig:wait()
		mSignaler.Event:wait()
		if not mArgData then
			error("Missing arg data, likely due to :TweenSize/Position corrupting threadrefs.")
		end
		return unpack(mArgData, 1, mArgDataCount)
	end

	return sig
end

local function getViewportSize()
	while not workspace.CurrentCamera do
		workspace.Changed:wait()
	end

	-- ViewportSize is initally set to 1, 1 in Camera.cpp constructor.
	-- Also check against 0, 0 incase this is changed in the future.
	while workspace.CurrentCamera.ViewportSize == Vector2.new(0,0) or
		workspace.CurrentCamera.ViewportSize == Vector2.new(1,1) do
		workspace.CurrentCamera.Changed:wait()
	end

	return workspace.CurrentCamera.ViewportSize
end

local function isSmallTouchScreen()
	local viewportSize = getViewportSize()
	return UserInputService.TouchEnabled and (viewportSize.Y < 500 or viewportSize.X < 700)
end

local function isPortrait()
	local viewport = getViewportSize()
	return viewport.Y > viewport.X
end

local function isTenFootInterface()
	return tenFootInterfaceEnabled
end

local function usesSelectedObject()
	--VR does not use selected objects (in the same way as gamepad)
	if VRService.VREnabled then return false end
	--Touch does not use selected objects unless there's also a gamepad
	if UserInputService.TouchEnabled and not UserInputService.GamepadEnabled then return false end
	--PC with gamepad, console... does use selected objects
	return true
end

local function isPosOverGui(pos, gui, debug) -- does not account for rotation
	local ax, ay = gui.AbsolutePosition.x, gui.AbsolutePosition.y
	local sx, sy = gui.AbsoluteSize.x, gui.AbsoluteSize.y
	local bx, by = ax+sx, ay+sy

	return pos.x > ax and pos.x < bx and pos.y > ay and pos.y < by
end

local function isPosOverGuiWithClipping(pos, gui) -- isPosOverGui, accounts for clipping and visibility, does not account for rotation
	if not isPosOverGui(pos, gui) then
		return false
	end

	local clipping = false
	local check = gui
	while true do
		if check == nil or (not check:IsA'GuiObject' and not check:IsA'LayerCollector') then
			clipping = true
			if check and check:IsA'CoreGui' then
				clipping = false
			end
			break
		end

		if check:IsA'GuiObject' and not check.Visible then
			clipping = true
			break
		end
		if check:IsA'LayerCollector' or check.ClipsDescendants then
			if not isPosOverGui(pos, check) then
				clipping = true
				break
			end
		end

		check = check.Parent
	end

	return not clipping
end

local function areGuisIntersecting(a, b) -- does not account for rotation
	local aax, aay = a.AbsolutePosition.x, a.AbsolutePosition.y
	local asx, asy = a.AbsoluteSize.x, a.AbsoluteSize.y
	local abx, aby = aax+asx, aay+asy
	local bax, bay = b.AbsolutePosition.x, b.AbsolutePosition.y
	local bsx, bsy = b.AbsoluteSize.x, b.AbsoluteSize.y
	local bbx, bby = bax+bsx, bay+bsy

	local intersectingX = aax < bbx and abx > bax
	local intersectingY = aay < bby and aby > bay
	local intersecting = intersectingX and intersectingY

	return intersecting
end

local function isGuiVisible(gui, debug) -- true if any part of the gui is visible on the screen, considers clipping, does not account for rotation
	local clipping = false
	local check = gui
	while true do
		if check == nil or not check:IsA'GuiObject' and not check:IsA'LayerCollector' then
			clipping = true
			if check and check:IsA'CoreGui' then
				clipping = false
			end
			break
		end

		if check:IsA'GuiObject' and not check.Visible then
			clipping = true
			break
		end
		if check:IsA'LayerCollector' or check.ClipsDescendants then
			if not areGuisIntersecting(check, gui) then
				clipping = true
				break
			end
		end

		check = check.Parent
	end

	return not clipping
end

local function addHoverState(button, instance, onNormalButtonState, onHoverButtonState)
	local function onNormalButtonStateCallback() 
		if FFlagFixInactiveSelectorArrows then
			if button.Active then 
				onNormalButtonState(instance) 
			end
		else
			onNormalButtonState(instance)
		end
	end
	local function onHoverButtonStateCallback() 
		if FFlagFixInactiveSelectorArrows then
			if button.Active then 
				onHoverButtonState(instance) 
			end
		else
			onHoverButtonState(instance)
		end
	end

	button.MouseEnter:Connect(onHoverButtonStateCallback)
	button.SelectionGained:Connect(onHoverButtonStateCallback)
	button.MouseLeave:Connect(onNormalButtonStateCallback)
	button.SelectionLost:Connect(onNormalButtonStateCallback)

	onNormalButtonState(instance)
end

local function addOnResizedCallback(key, callback)
	onResizedCallbacks[key] = callback
	callback(getViewportSize(), isPortrait())
end

local gamepadSet = {
	[Enum.UserInputType.Gamepad1] = true;
	[Enum.UserInputType.Gamepad2] = true;
	[Enum.UserInputType.Gamepad3] = true;
	[Enum.UserInputType.Gamepad4] = true;
	[Enum.UserInputType.Gamepad5] = true;
	[Enum.UserInputType.Gamepad6] = true;
	[Enum.UserInputType.Gamepad7] = true;
	[Enum.UserInputType.Gamepad8] = true;
}

local function MakeDefaultButton(name, size, clickFunc, pageRef, hubRef)
	local SelectionOverrideObject = Util.Create'ImageLabel'
	{
		Image = "",
		BackgroundTransparency = 1,
	};

	local button = Util.Create'ImageButton'
	{
		Name = name .. "Button",
		Image = "rbxasset://textures/ui/Settings/MenuBarAssets/MenuButton.png",
		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = Rect.new(8,6,46,44),
		AutoButtonColor = false,
		BackgroundTransparency = 1,
		Size = size,
		ZIndex = 2,
		SelectionImageObject = SelectionOverrideObject
	};

	local enabled = Util.Create'BoolValue'
	{
		Name = 'Enabled',
		Parent = button,
		Value = true
	}

	if clickFunc then
		button.MouseButton1Click:Connect(function()
			clickFunc(gamepadSet[UserInputService:GetLastInputType()] or false)
		end)
	end

	local function isPointerInput(inputObject)
		return inputObject.UserInputType == Enum.UserInputType.MouseMovement or inputObject.UserInputType == Enum.UserInputType.Touch
	end

	local rowRef = nil
	local function setRowRef(ref)
		rowRef = ref
	end

	local function selectButton()
		local hub = hubRef
		if hub == nil then
			if pageRef then
				hub = pageRef.HubRef
			end
		end

		if (hub and hub.Active) or hub == nil then
			button.Image = "rbxasset://textures/ui/Settings/MenuBarAssets/MenuButtonSelected.png"

			local scrollTo = button
			if rowRef then
				scrollTo = rowRef
			end
			if hub then
				hub:ScrollToFrame(scrollTo)
			end
		end
	end

	local function deselectButton()
		button.Image = "rbxasset://textures/ui/Settings/MenuBarAssets/MenuButton.png"
	end

	button.InputBegan:Connect(function(inputObject)
		if button.Selectable and isPointerInput(inputObject) then
			selectButton()
		end
	end)
	button.InputEnded:Connect(function(inputObject)
		if button.Selectable and GuiService.SelectedCoreObject ~= button and isPointerInput(inputObject) then
			deselectButton()
		end
	end)


	button.SelectionGained:Connect(function()
		selectButton()
	end)
	button.SelectionLost:Connect(function()
		deselectButton()
	end)

	local guiServiceCon = GuiService.Changed:Connect(function(prop)
		if prop ~= "SelectedCoreObject" then return end
		if not usesSelectedObject() then return end

		if GuiService.SelectedCoreObject == nil or GuiService.SelectedCoreObject ~= button then
			deselectButton()
			return
		end

		if button.Selectable then
			selectButton()
		end
	end)

	return button, setRowRef
end

local function MakeButton(name, text, size, clickFunc, pageRef, hubRef)
	local button, setRowRef = MakeDefaultButton(name, size, clickFunc, pageRef, hubRef)

	local textLabel = Util.Create'TextLabel'
	{
		Name = name .. "TextLabel",
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		Size = UDim2.new(1, 0, 1, -8),
		Position = UDim2.new(0,0,0,0),
		TextColor3 = Color3.fromRGB(255,255,255),
		TextYAlignment = Enum.TextYAlignment.Center,
		Font = Enum.Font.SourceSansBold,
		TextSize = 24,
		Text = text,
		TextScaled = true,
		TextWrapped = true,
		ZIndex = 2,
		Parent = button
	};
	local constraint = Instance.new("UITextSizeConstraint",textLabel)

	if isSmallTouchScreen() then
		textLabel.TextSize = 18
	elseif isTenFootInterface() then
		textLabel.TextSize = 36
	end
	constraint.MaxTextSize = textLabel.TextSize

	return button, textLabel, setRowRef
end

local function MakeImageButton(name, image, size, imageSize, clickFunc, pageRef, hubRef)
	local button, setRowRef = MakeDefaultButton(name, size, clickFunc, pageRef, hubRef)

	local imageLabel = Util.Create'ImageLabel'
	{
		Name = name .. "ImageLabel",
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		Size = imageSize,
		Position = UDim2.new(0.5, 0, 0.5, 0),
		AnchorPoint = Vector2.new(0.5, 0.5),
		Image = image,
		ZIndex = 2,
		Parent = button
	};

	return button, imageLabel, setRowRef
end

local function AddButtonRow(pageToAddTo, name, text, size, clickFunc, hubRef)
	local button, textLabel, setRowRef = MakeButton(name, text, size, clickFunc, pageToAddTo, hubRef)
	local row = Util.Create'Frame'
	{
		Name = name .. "Row",
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, size.Y.Scale, size.Y.Offset),
		Parent = pageToAddTo.Page
	}
	button.Parent = row
	button.AnchorPoint = Vector2.new(1, 0)
	button.Position = UDim2.new(1, -20, 0, 0)
	return row, button, textLabel, setRowRef
end

local function CreateDropDown(dropDownStringTable, startPosition, settingsHub)
	-------------------- CONSTANTS ------------------------
	local DEFAULT_DROPDOWN_TEXT = "Choose One"
	local SCROLLING_FRAME_PIXEL_OFFSET = 25
	local SELECTION_TEXT_COLOR_NORMAL = Color3.fromRGB(178,178,178)
	local SELECTION_TEXT_COLOR_NORMAL_VR = Color3.fromRGB(229,229,229)
	local SELECTION_TEXT_COLOR_HIGHLIGHTED = Color3.fromRGB(255,255,255)

	-------------------- VARIABLES ------------------------
	local lastSelectedCoreObject = nil

	-------------------- SETUP ------------------------
	local this = {}
	this.CurrentIndex = nil

	local indexChangedEvent = Instance.new("BindableEvent")
	indexChangedEvent.Name = "IndexChanged"

	if type(dropDownStringTable) ~= "table" then
		error("CreateDropDown dropDownStringTable (first arg) is not a table", 2)
		return this
	end

	local indexChangedEvent = Instance.new("BindableEvent")
	indexChangedEvent.Name = "IndexChanged"

	local interactable = true
	local guid = HttpService:GenerateGUID(false)
	local dropDownButtonEnabled
	local lastStringTable = dropDownStringTable

	this.CurrentIndex = 0

	----------------- GUI SETUP ------------------------
	local DropDownFullscreenFrame = Util.Create'ImageButton'
	{
		Name = "DropDownFullscreenFrame",
		BackgroundTransparency = DROPDOWN_BG_TRANSPARENCY,
		BorderSizePixel = 0,
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundColor3 = Color3.fromRGB(0,0,0),
		ZIndex = 10,
		Active = true,
		Visible = false,
		Selectable = false,
		AutoButtonColor = false,
		Parent = CoreGui.RobloxGui
	};

	local function onVREnabled(prop)
		if prop ~= "VREnabled" then
			return
		end
		if VRService.VREnabled then
			local Panel3D = require(CoreGui.RobloxGui.Modules.VR.Panel3D)
			DropDownFullscreenFrame.Parent = Panel3D.Get("SettingsMenu"):GetGUI()
			DropDownFullscreenFrame.BackgroundTransparency = 1
		else
			DropDownFullscreenFrame.Parent = CoreGui.RobloxGui
			DropDownFullscreenFrame.BackgroundTransparency = DROPDOWN_BG_TRANSPARENCY
		end

		--Force the gui to update, but only if onVREnabled is fired later on
		if this.UpdateDropDownList then
			this:UpdateDropDownList(lastStringTable)
		end
	end
	VRService.Changed:Connect(onVREnabled)
	onVREnabled("VREnabled")

	local DropDownSelectionFrame = Util.Create'ImageLabel'
	{
		Name = "DropDownSelectionFrame",
		Image = "rbxasset://textures/ui/Settings/MenuBarAssets/MenuButton.png",
		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = Rect.new(8,6,46,44),
		BackgroundTransparency = 1,
		Size = UDim2.new(0.6, 0, 0.9, 0),
		Position = UDim2.new(0.5, 0, 0.5, 0),
		AnchorPoint = Vector2.new(0.5, 0.5),
		ZIndex = 10,
		Parent = DropDownFullscreenFrame
	};

	local DropDownScrollingFrame = Util.Create'ScrollingFrame'
	{
		Name = "DropDownScrollingFrame",
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		Size = UDim2.new(1, -20, 1, -SCROLLING_FRAME_PIXEL_OFFSET),
		Position = UDim2.new(0, 10, 0, 10),
		ZIndex = 10,
		Parent = DropDownSelectionFrame
	};

	local guiServiceChangeCon = nil
	local active = false
	local hideDropDownSelection = function(name, inputState)
		if name ~= nil and inputState ~= Enum.UserInputState.Begin then return end
		this.DropDownFrame.Selectable = interactable

		--Make sure to set the hub to Active again so selecting the
		--dropdown button will highlight it
		settingsHub:SetActive(true)

		if DropDownFullscreenFrame.Visible and usesSelectedObject() then
			GuiService.SelectedCoreObject = lastSelectedCoreObject
		end
		DropDownFullscreenFrame.Visible = false
		if guiServiceChangeCon then guiServiceChangeCon:Disconnect() end
		ContextActionService:UnbindCoreAction(guid .. "Action")
		ContextActionService:UnbindCoreAction(guid .. "FreezeAction")

		dropDownButtonEnabled.Value = interactable
		active = false

		if VRService.VREnabled then
			local Panel3D = require(CoreGui.RobloxGui.Modules.VR.Panel3D)
			Panel3D.Get("SettingsMenu"):SetSubpanelDepth(DropDownFullscreenFrame, 0)
		end
	end
	local noOpFunc = function() end

	local DropDownFrameClicked = function()
		if not interactable then return end

		this.DropDownFrame.Selectable = false
		active = true

		DropDownFullscreenFrame.Visible = true
		if VRService.VREnabled then
			local Panel3D = require(CoreGui.RobloxGui.Modules.VR.Panel3D)
			Panel3D.Get("SettingsMenu"):SetSubpanelDepth(DropDownFullscreenFrame, 0.5)
		end
		if not this.CurrentIndex then this.CurrentIndex = 1 end
		if this.CurrentIndex <= 0 then this.CurrentIndex = 1 end

		lastSelectedCoreObject = this.DropDownFrame
		GuiService.SelectedCoreObject = this.Selections[this.CurrentIndex]

		guiServiceChangeCon = GuiService:GetPropertyChangedSignal("SelectedCoreObject"):Connect(function()
			for i = 1, #this.Selections do
				if GuiService.SelectedCoreObject == this.Selections[i] then
					this.Selections[i].TextColor3 = SELECTION_TEXT_COLOR_HIGHLIGHTED
				else
					this.Selections[i].TextColor3 = VRService.VREnabled and SELECTION_TEXT_COLOR_NORMAL_VR or SELECTION_TEXT_COLOR_NORMAL
				end
			end
		end)

		ContextActionService:BindCoreAction(guid .. "FreezeAction", noOpFunc, false, Enum.UserInputType.Keyboard, Enum.UserInputType.Gamepad1)
		ContextActionService:BindCoreAction(guid .. "Action", hideDropDownSelection, false, Enum.KeyCode.ButtonB, Enum.KeyCode.Escape)

		settingsHub:SetActive(false)

		dropDownButtonEnabled.Value = false
	end

	local dropDownFrameSize = UDim2.new(0.6, 0, 0, 50)
	this.DropDownFrame = MakeButton("DropDownFrame", DEFAULT_DROPDOWN_TEXT, dropDownFrameSize, DropDownFrameClicked, nil, settingsHub)
	this.DropDownFrame.Position = UDim2.new(1, 0, 0.5, 0)
	this.DropDownFrame.AnchorPoint = Vector2.new(1, 0.5)

	dropDownButtonEnabled = this.DropDownFrame.Enabled
	local selectedTextLabel = this.DropDownFrame.DropDownFrameTextLabel
	selectedTextLabel.Position = UDim2.new(0, 15, 0, 0)
	selectedTextLabel.Size = UDim2.new(1, -50, 1, -8)
	selectedTextLabel.ClipsDescendants = true
	selectedTextLabel.TextXAlignment = Enum.TextXAlignment.Left
	local dropDownImage = Util.Create'ImageLabel'
	{
		Name = "DropDownImage",
		Image = "rbxasset://textures/ui/Settings/DropDown/DropDown.png",
		BackgroundTransparency = 1,
		AnchorPoint = Vector2.new(1, 0.5),
		Size = UDim2.new(0,15,0,10),
		Position = UDim2.new(1,-12,0.5,0),
		ZIndex = 2,
		Parent = this.DropDownFrame
	};
	this.DropDownImage = dropDownImage


	---------------------- FUNCTIONS -----------------------------------
	local function setSelection(index)
		local shouldFireChanged = false
		for i, selectionLabel in pairs(this.Selections) do
			if i == index then
				selectedTextLabel.Text = selectionLabel.Text
				this.CurrentIndex = i

				shouldFireChanged = true
			end
		end

		if shouldFireChanged then
			indexChangedEvent:Fire(index)
		end
	end

	local function setSelectionByValue(value)
		local shouldFireChanged = false
		for i, selectionLabel in pairs(this.Selections) do
			if selectionLabel.Text == value then
				selectedTextLabel.Text = selectionLabel.Text
				this.CurrentIndex = i

				shouldFireChanged = true
			end
		end

		if shouldFireChanged then
			indexChangedEvent:Fire(this.CurrentIndex)
		end
		return shouldFireChanged
	end

	local enterIsDown = false
	local function processInput(input)
		if input.UserInputState == Enum.UserInputState.Begin then
			if input.KeyCode == Enum.KeyCode.Return then
				if GuiService.SelectedCoreObject == this.DropDownFrame or this.SelectionInfo and this.SelectionInfo[GuiService.SelectedCoreObject] then
					enterIsDown = true
				end
			end
		elseif input.UserInputState == Enum.UserInputState.End then
			if input.KeyCode == Enum.KeyCode.Return and enterIsDown then
				enterIsDown = false
				if GuiService.SelectedCoreObject == this.DropDownFrame then
					DropDownFrameClicked()
				elseif this.SelectionInfo and this.SelectionInfo[GuiService.SelectedCoreObject] then
					local info = this.SelectionInfo[GuiService.SelectedCoreObject]
					info.Clicked()
				end
			end
		end
	end

	local function setIsFaded(isFaded)
		if isFaded then
			this.DropDownFrame.DropDownFrameTextLabel.TextTransparency = 0.5
			this.DropDownFrame.ImageTransparency = 0.5
			this.DropDownImage.ImageTransparency = 0.5
		else
			this.DropDownFrame.DropDownFrameTextLabel.TextTransparency = 0
			this.DropDownFrame.ImageTransparency = 0
			this.DropDownImage.ImageTransparency = 0
		end
	end


	--------------------- PUBLIC FACING FUNCTIONS -----------------------
	this.IndexChanged = indexChangedEvent.Event

	function this:SetSelectionIndex(newIndex)
		setSelection(newIndex)
	end

	function this:SetSelectionByValue(value)
		return setSelectionByValue(value)
	end

	function this:ResetSelectionIndex()
		this.CurrentIndex = nil
		selectedTextLabel.Text = DEFAULT_DROPDOWN_TEXT
		hideDropDownSelection()
	end

	function this:GetSelectedIndex()
		return this.CurrentIndex
	end

	function this:SetZIndex(newZIndex)
		this.DropDownFrame.ZIndex = newZIndex
		dropDownImage.ZIndex = newZIndex
		selectedTextLabel.ZIndex = newZIndex
	end

	function this:SetInteractable(value)
		interactable = value
		this.DropDownFrame.Selectable = interactable

		if not interactable then
			hideDropDownSelection()
			setIsFaded(VRService.VREnabled)
			if not VRService.VREnabled then
				this:SetZIndex(1)
			end
		else
			setIsFaded(false)
			if not VRService.VREnabled then
				this:SetZIndex(2)
			end
		end

		dropDownButtonEnabled.Value = value and not active
	end


	function this:UpdateDropDownList(dropDownStringTable)
		lastStringTable = dropDownStringTable

		if this.Selections then
			for i = 1, #this.Selections do
				this.Selections[i]:Destroy()
			end
		end

		this.Selections = {}
		this.SelectionInfo = {}

		local vrEnabled = VRService.VREnabled
		local font = vrEnabled and Enum.Font.SourceSansBold or Enum.Font.SourceSans
		local textSize = vrEnabled and 36 or 24

		local itemHeight = vrEnabled and 70 or 50
		local itemSpacing = itemHeight + 1

		local dropDownWidth = vrEnabled and 600 or 400

		for i,v in pairs(dropDownStringTable) do
			local SelectionOverrideObject =	Util.Create'Frame'
			{
				BackgroundTransparency = 0.7,
				BorderSizePixel = 0,
				Size = UDim2.new(1, 0, 1, 0)
			};

			local nextSelection = Util.Create'TextButton'
			{
				Name = "Selection" .. tostring(i),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				AutoButtonColor = false,
				Size = UDim2.new(1, -28, 0, itemHeight),
				Position = UDim2.new(0,14,0, (i - 1) * itemSpacing),
				TextColor3 = VRService.VREnabled and SELECTION_TEXT_COLOR_NORMAL_VR or SELECTION_TEXT_COLOR_NORMAL,
				Font = font,
				TextSize = textSize,
				Text = v,
				ZIndex = 10,
				SelectionImageObject = SelectionOverrideObject,
				Parent = DropDownScrollingFrame
			};

			if i == startPosition then
				this.CurrentIndex = i
				selectedTextLabel.Text = v
				nextSelection.TextColor3 = SELECTION_TEXT_COLOR_HIGHLIGHTED
			elseif not startPosition and i == 1 then
				nextSelection.TextColor3 = SELECTION_TEXT_COLOR_HIGHLIGHTED
			end

			local clicked = function()
				selectedTextLabel.Text = nextSelection.Text
				hideDropDownSelection()
				this.CurrentIndex = i
				indexChangedEvent:Fire(i)
			end

			nextSelection.MouseButton1Click:Connect(clicked)

			nextSelection.MouseEnter:Connect(function()
				if usesSelectedObject() then
					GuiService.SelectedCoreObject = nextSelection
				end
			end)

			this.Selections[i] = nextSelection
			this.SelectionInfo[nextSelection] = {Clicked = clicked}
		end

		GuiService:RemoveSelectionGroup(guid)
		GuiService:AddSelectionTuple(guid, unpack(this.Selections))

		DropDownScrollingFrame.CanvasSize = UDim2.new(1,-20,0,#dropDownStringTable * itemSpacing)

		local function updateDropDownSize()
			if DropDownScrollingFrame.CanvasSize.Y.Offset < (DropDownFullscreenFrame.AbsoluteSize.Y - 10) then
				DropDownSelectionFrame.Size = UDim2.new(0, dropDownWidth,
														0,DropDownScrollingFrame.CanvasSize.Y.Offset + SCROLLING_FRAME_PIXEL_OFFSET)
			else
				DropDownSelectionFrame.Size = UDim2.new(0, dropDownWidth, 0.9, 0)
			end
		end

		DropDownFullscreenFrame.Changed:Connect(function(prop)
			if prop ~= "AbsoluteSize" then return end
			updateDropDownSize()
		end)

		updateDropDownSize()
	end

	----------------------- CONNECTIONS/SETUP --------------------------------
	this:UpdateDropDownList(dropDownStringTable)

	DropDownFullscreenFrame.MouseButton1Click:Connect(hideDropDownSelection)

	settingsHub.PoppedMenu:Connect(function(poppedMenu)
		if poppedMenu == DropDownFullscreenFrame then
			hideDropDownSelection()
		end
	end)

	return this
end


local function CreateSelector(selectionStringTable, startPosition)

	-------------------- VARIABLES ------------------------
	local lastInputDirection = 0
	local TweenTime = 0.15

	-------------------- SETUP ------------------------
	local this = {}
	this.HubRef = nil

	if type(selectionStringTable) ~= "table" then
		error("CreateSelector selectionStringTable (first arg) is not a table", 2)
		return this
	end

	local indexChangedEvent = Instance.new("BindableEvent")
	indexChangedEvent.Name = "IndexChanged"

	local interactable = true

	this.CurrentIndex = 0

	----------------- GUI SETUP ------------------------
	this.SelectorFrame = Util.Create'ImageButton'
	{
		Name = "Selector",
		Image = "",
		AutoButtonColor = false,
		NextSelectionLeft = this.SelectorFrame,
		NextSelectionRight = this.SelectorFrame,
		BackgroundTransparency = 1,
		Size = UDim2.new(0.6,0,0,50),
		Position = UDim2.new(1, 0, 0.5, 0),
		AnchorPoint = Vector2.new(1, 0.5),
		ZIndex = 2,
		SelectionImageObject = noSelectionObject
	};

	local leftButton = Util.Create'ImageButton'
	{
		Name = "LeftButton",
		BackgroundTransparency = 1,
		AnchorPoint = Vector2.new(0, 0.5),
		Position = UDim2.new(0,0,0.5,0),
		Size =  UDim2.new(0,50,0,50),
		Image =  "",
		ZIndex = 3,
		Selectable = false,
		SelectionImageObject = noSelectionObject,
		Parent = this.SelectorFrame
	};
	local rightButton = Util.Create'ImageButton'
	{
		Name = "RightButton",
		BackgroundTransparency = 1,
		AnchorPoint = Vector2.new(1, 0.5),
		Position = UDim2.new(1,0,0.5,0),
		Size =  UDim2.new(0,50,0,50),
		Image =  "",
		ZIndex = 3,
		Selectable = false,
		SelectionImageObject = noSelectionObject,
		Parent = this.SelectorFrame
	};

	local leftButtonImage = Util.Create'ImageLabel'
	{
		Name = "LeftButton",
		BackgroundTransparency = 1,
		AnchorPoint = Vector2.new(0.5, 0.5),
		Position = UDim2.new(0.5,0,0.5,0),
		Size =  UDim2.new(0,18,0,30),
		Image =  "rbxasset://textures/ui/Settings/Slider/Left.png",
		ImageColor3 = ARROW_COLOR,
		ZIndex = 4,
		Parent = leftButton
	};
	local rightButtonImage = Util.Create'ImageLabel'
	{
		Name = "RightButton",
		BackgroundTransparency = 1,
		AnchorPoint = Vector2.new(0.5, 0.5),
		Position = UDim2.new(0.5,0,0.5,0),
		Size =  UDim2.new(0,18,0,30),
		Image =  "rbxasset://textures/ui/Settings/Slider/Right.png",
		ImageColor3 = ARROW_COLOR,
		ZIndex = 4,
		Parent = rightButton
	};
	if not UserInputService.TouchEnabled then
		local applyNormal, applyHover =
			function(instance) instance.ImageColor3 = ARROW_COLOR end,
			function(instance) instance.ImageColor3 = ARROW_COLOR_HOVER end
		addHoverState(leftButton, leftButtonImage, applyNormal, applyHover)
		addHoverState(rightButton, rightButtonImage, applyNormal, applyHover)
	end


	this.Selections = {}
	local isSelectionLabelVisible = {}
	local isAutoSelectButton = {}

	local autoSelectButton = Util.Create'ImageButton'{
		Name = 'AutoSelectButton',
		BackgroundTransparency = 1,
		Image = '',
		Position = UDim2.new(0, leftButton.Size.X.Offset, 0, 0),
		Size = UDim2.new(1, leftButton.Size.X.Offset * -2, 1, 0),
		Parent = this.SelectorFrame,
		ZIndex = 2,
		SelectionImageObject = noSelectionObject
	}
	autoSelectButton.MouseButton1Click:Connect(function()
		if not interactable then return end
		if #this.Selections <= 1 then return end
		local newIndex = this.CurrentIndex + 1
		if newIndex > #this.Selections then
			newIndex = 1
		end
		this:SetSelectionIndex(newIndex)
		if usesSelectedObject() then
			GuiService.SelectedCoreObject = this.SelectorFrame
		end
	end)
	isAutoSelectButton[autoSelectButton] = true

	---------------------- FUNCTIONS -----------------------------------
	local function setSelection(index, direction)
		for i, selectionLabel in pairs(this.Selections) do
			local isSelected = (i == index)

			local leftButtonUDim = UDim2.new(0,leftButton.Size.X.Offset,0,0)
			local tweenPos = UDim2.new(0,leftButton.Size.X.Offset * direction * 3,0,0)

			if isSelectionLabelVisible[selectionLabel] then
				tweenPos = UDim2.new(0,leftButton.Size.X.Offset * -direction * 3,0,0)
			end

			if tweenPos.X.Offset < 0 then
				tweenPos = UDim2.new(0,tweenPos.X.Offset + (selectionLabel.AbsoluteSize.X/4),0,0)
			end

			if isSelected then
				isSelectionLabelVisible[selectionLabel] = true
				selectionLabel.Position = tweenPos
				selectionLabel.Visible = true
				PropertyTweener(selectionLabel, "TextTransparency", 1, 0, TweenTime * 1.1, EaseOutQuad)
				if selectionLabel:IsDescendantOf(game) then
					selectionLabel:TweenPosition(leftButtonUDim, Enum.EasingDirection.In, Enum.EasingStyle.Quad, TweenTime, true)
				else
					selectionLabel.Position = leftButtonUDim
				end
				this.CurrentIndex = i
				indexChangedEvent:Fire(index)
			elseif isSelectionLabelVisible[selectionLabel] then
				isSelectionLabelVisible[selectionLabel] = false
				PropertyTweener(selectionLabel, "TextTransparency", 0, 1, TweenTime * 1.1, EaseOutQuad)
				if selectionLabel:IsDescendantOf(game) then
					selectionLabel:TweenPosition(tweenPos, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, TweenTime * 0.9, true)
				else
					selectionLabel.Position = UDim2.new(tweenPos)
				end
			end
		end
	end

	local function stepFunc(inputObject, step)
		if not interactable then return end

		if inputObject ~= nil and inputObject.UserInputType ~= Enum.UserInputType.MouseButton1 and
			inputObject.UserInputType ~= Enum.UserInputType.Gamepad1 and inputObject.UserInputType ~= Enum.UserInputType.Gamepad2 and
			inputObject.UserInputType ~= Enum.UserInputType.Gamepad3 and inputObject.UserInputType ~= Enum.UserInputType.Gamepad4 and
			inputObject.UserInputType ~= Enum.UserInputType.Keyboard then return end

		if usesSelectedObject() then
			GuiService.SelectedCoreObject = this.SelectorFrame
		end

		local newIndex = step + this.CurrentIndex

		local direction = 0
		if newIndex > this.CurrentIndex then
			direction = 1
		else
			direction = -1
		end

		if newIndex > #this.Selections then
			newIndex = 1
		elseif newIndex < 1 then
			newIndex = #this.Selections
		end

		setSelection(newIndex, direction)
	end

	local guiServiceCon = nil
	local function connectToGuiService()
		guiServiceCon = GuiService:GetPropertyChangedSignal("SelectedCoreObject"):Connect(function()
			if #this.Selections <= 0 then
				return
			end

			if GuiService.SelectedCoreObject == this.SelectorFrame then
				this.Selections[this.CurrentIndex].TextTransparency = 0
			else
				if GuiService.SelectedCoreObject ~= nil and isAutoSelectButton[GuiService.SelectedCoreObject] then
					if VRService.VREnabled then
						this.Selections[this.CurrentIndex].TextTransparency = 0
					else
						GuiService.SelectedCoreObject = this.SelectorFrame
					end
				else
					this.Selections[this.CurrentIndex].TextTransparency = 0.5
				end
			end
		end)
	end

	--------------------- PUBLIC FACING FUNCTIONS -----------------------
	this.IndexChanged = indexChangedEvent.Event

	function this:SetSelectionIndex(newIndex)
		setSelection(newIndex, 1)
	end

	function this:GetSelectedIndex()
		return this.CurrentIndex
	end

	function this:SetZIndex(newZIndex)
		leftButton.ZIndex = newZIndex
		rightButton.ZIndex = newZIndex
		leftButtonImage.ZIndex = newZIndex
		rightButtonImage.ZIndex = newZIndex

		for i = 1, #this.Selections do
			this.Selections[i].ZIndex = newZIndex
		end
	end

	function this:SetInteractable(value)
		interactable = value
		this.SelectorFrame.Selectable = interactable

		if FFlagFixInactiveSelectorArrows then
			leftButton.Active = interactable
			rightButton.Active = interactable
		end
		
		if not interactable then
			for i, selectionLabel in pairs(this.Selections) do
				selectionLabel.TextColor3 = Color3.fromRGB(49, 49, 49)
			end
			if FFlagFixInactiveSelectorArrows then
				leftButtonImage.ImageColor3 = ARROW_COLOR_INACTIVE
				rightButtonImage.ImageColor3 = ARROW_COLOR_INACTIVE
			end
		else
			for i, selectionLabel in pairs(this.Selections) do
				selectionLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
			end
			if FFlagFixInactiveSelectorArrows then
				leftButtonImage.ImageColor3 = ARROW_COLOR
				rightButtonImage.ImageColor3 = ARROW_COLOR
			end
		end
	end

	function this:UpdateOptions(selectionStringTable)
		for i,v in pairs(this.Selections) do
			v:Destroy()
		end

		isSelectionLabelVisible = {}
		this.Selections = {}

		for i,v in pairs(selectionStringTable) do
			local nextSelection = Util.Create'TextLabel'
			{
				Name = "Selection" .. tostring(i),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Size = UDim2.new(1,leftButton.Size.X.Offset * -2, 1, 0),
				Position = UDim2.new(1,0,0,0),
				TextColor3 = Color3.fromRGB(255, 255, 255),
				TextYAlignment = Enum.TextYAlignment.Center,
				TextTransparency = 0.5,
				Font = Enum.Font.SourceSans,
				TextSize = 24,
				Text = v,
				ZIndex = 2,
				Visible = false,
				Parent = this.SelectorFrame
			};
			if isTenFootInterface() then
				nextSelection.TextSize = 36
			end

			if i == startPosition then
				this.CurrentIndex = i
				nextSelection.Position = UDim2.new(0,leftButton.Size.X.Offset,0,0)
				nextSelection.Visible = true

				isSelectionLabelVisible[nextSelection] = true
			else
				isSelectionLabelVisible[nextSelection] = false
			end

			this.Selections[i] = nextSelection
		end

		local hasMoreThanOneSelection = #this.Selections > 1
		leftButton.Visible = hasMoreThanOneSelection
		rightButton.Visible = hasMoreThanOneSelection
	end

	--------------------- SETUP -----------------------
	local function onVREnabled(prop)
		if prop ~= "VREnabled" then
			return
		end
		local vrEnabled = VRService.VREnabled
		leftButton.Selectable = vrEnabled
		rightButton.Selectable = vrEnabled
		autoSelectButton.Selectable = vrEnabled
	end
	VRService.Changed:Connect(onVREnabled)
	onVREnabled("VREnabled")

	leftButton.InputBegan:Connect(function(inputObject)
		if inputObject.UserInputType == Enum.UserInputType.Touch then
			stepFunc(nil, -1)
		end
	end)
	leftButton.MouseButton1Click:Connect(function()
		if not UserInputService.TouchEnabled then
			stepFunc(nil, -1)
		end
	end)
	rightButton.InputBegan:Connect(function(inputObject)
		if inputObject.UserInputType == Enum.UserInputType.Touch then
			stepFunc(nil, 1)
		end
	end)
	rightButton.MouseButton1Click:Connect(function()
		if not UserInputService.TouchEnabled then
			stepFunc(nil, 1)
		end
	end)

	local isInTree = true
	this:UpdateOptions(selectionStringTable)

	UserInputService.InputBegan:Connect(function(inputObject)
		if not interactable then return end
		if not isInTree then return end

		if inputObject.UserInputType ~= Enum.UserInputType.Gamepad1 and inputObject.UserInputType ~= Enum.UserInputType.Keyboard then return end
		if GuiService.SelectedCoreObject ~= this.SelectorFrame then return end

		if inputObject.KeyCode == Enum.KeyCode.DPadLeft or inputObject.KeyCode == Enum.KeyCode.Left or inputObject.KeyCode == Enum.KeyCode.A then
			stepFunc(inputObject, -1)
		elseif inputObject.KeyCode == Enum.KeyCode.DPadRight or inputObject.KeyCode == Enum.KeyCode.Right or inputObject.KeyCode == Enum.KeyCode.D then
			stepFunc(inputObject, 1)
		end
	end)

	UserInputService.InputChanged:Connect(function(inputObject)
		if not interactable then return end
		if not isInTree then lastInputDirection = 0 return end

		if inputObject.UserInputType ~= Enum.UserInputType.Gamepad1 then return end

		local selected = GuiService.SelectedCoreObject
		if not selected or not selected:IsDescendantOf(this.SelectorFrame.Parent) then return end

		if inputObject.KeyCode ~= Enum.KeyCode.Thumbstick1 then return end


		if inputObject.Position.X > CONTROLLER_THUMBSTICK_DEADZONE and inputObject.Delta.X > 0 and lastInputDirection ~= 1 then
			lastInputDirection = 1
			stepFunc(inputObject, lastInputDirection)
		elseif inputObject.Position.X < -CONTROLLER_THUMBSTICK_DEADZONE and inputObject.Delta.X < 0 and lastInputDirection ~= -1 then
			lastInputDirection = -1
			stepFunc(inputObject, lastInputDirection)
		elseif math.abs(inputObject.Position.X) < CONTROLLER_THUMBSTICK_DEADZONE then
			lastInputDirection = 0
		end
	end)

	this.SelectorFrame.AncestryChanged:Connect(function(child, parent)
		isInTree = parent
		if not isInTree then
			if guiServiceCon then guiServiceCon:Disconnect() end
		else
			connectToGuiService()
		end
	end)

	local function onResized(viewportSize, portrait)
		local textSize = 0
		if portrait then
			textSize = 16
		else
			textSize = isTenFootInterface() and 36 or 24
		end

		for i, selection in pairs(this.Selections) do
			selection.TextSize = textSize
		end
	end
	addOnResizedCallback(this.SelectorFrame, onResized)

	connectToGuiService()

	return this
end

local function ShowAlert(alertMessage, okButtonText, settingsHub, okPressedFunc, hasBackground)
	local parent = CoreGui.RobloxGui
	if parent:FindFirstChild("AlertViewFullScreen") then return end

	--Declare AlertViewBacking so onVREnabled can take it as an upvalue
	local AlertViewBacking = nil

	--Handle VR toggle while alert is open
	--Future consideration: maybe rebuild gui when VR toggles mid-game; right now only subpaneling is handled rather than visual style
	local function onVREnabled(prop)
		if prop ~= "VREnabled" then return end
		local Panel3D, settingsPanel = nil, nil
		if VRService.VREnabled then
			Panel3D = require(CoreGui.RobloxGui.Modules.VR.Panel3D)
			settingsPanel = Panel3D.Get("SettingsMenu")
			parent = settingsPanel:GetGUI()
		else
			parent = CoreGui.RobloxGui
		end
		if AlertViewBacking and AlertViewBacking.Parent ~= nil then
			AlertViewBacking.Parent = parent
			if VRService.VREnabled then
				settingsPanel:SetSubpanelDepth(AlertViewBacking, 0.5)
			end
		end
	end
	local vrEnabledConn = VRService.Changed:Connect(onVREnabled)

	local NON_SELECTED_TEXT_COLOR = Color3.fromRGB(59, 166, 241)
	local SELECTED_TEXT_COLOR = Color3.fromRGB(255, 255, 255)

	AlertViewBacking = Util.Create'ImageLabel'
	{
		Name = "AlertViewBacking",
		Image = "rbxasset://textures/ui/Settings/MenuBarAssets/MenuButton.png",
		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = Rect.new(8,6,46,44),
		BackgroundTransparency = 1,

		ImageTransparency = 1,
		Size = UDim2.new(0, 400, 0, 350),
		Position = UDim2.new(0.5, -200, 0.5, -175),
		ZIndex = 9,
		Parent = parent
	};
	onVREnabled("VREnabled")
	if hasBackground or VRService.VREnabled then
		AlertViewBacking.ImageTransparency = 0
	else
		AlertViewBacking.Size = UDim2.new(0.8, 0, 0, 350)
		AlertViewBacking.Position = UDim2.new(0.1, 0, 0.1, 0)
	end

	if CoreGui.RobloxGui.AbsoluteSize.Y <= AlertViewBacking.Size.Y.Offset then
		AlertViewBacking.Size = UDim2.new(AlertViewBacking.Size.X.Scale, AlertViewBacking.Size.X.Offset,
											AlertViewBacking.Size.Y.Scale, CoreGui.RobloxGui.AbsoluteSize.Y)
		AlertViewBacking.Position = UDim2.new(AlertViewBacking.Position.X.Scale, -AlertViewBacking.Size.X.Offset/2, 0.5, -AlertViewBacking.Size.Y.Offset/2)
	end

	local AlertViewText = Util.Create'TextLabel'
	{
		Name = "AlertViewText",
		BackgroundTransparency = 1,
		Size = UDim2.new(0.95, 0, 0.6, 0),
		Position = UDim2.new(0.025, 0, 0.05, 0),
		Font = Enum.Font.SourceSansBold,
		TextSize = 36,
		Text = alertMessage,
		TextWrapped = true,
		TextColor3 = Color3.fromRGB(255, 255, 255),
		TextXAlignment = Enum.TextXAlignment.Center,
		TextYAlignment = Enum.TextYAlignment.Center,
		ZIndex = 10,
		Parent = AlertViewBacking
	};

	local SelectionOverrideObject = Util.Create'ImageLabel'
	{
		Image = "",
		BackgroundTransparency = 1
	};

	local removeId = HttpService:GenerateGUID(false)

	local destroyAlert = function(actionName, inputState)
		if VRService.VREnabled and (inputState == Enum.UserInputState.Begin or inputState == Enum.UserInputState.Cancel) then
			return
		end
		if not AlertViewBacking then
			return
		end
		if VRService.VREnabled then
			local Panel3D = require(CoreGui.RobloxGui.Modules.VR.Panel3D)
			Panel3D.Get("SettingsMenu"):SetSubpanelDepth(AlertViewBacking, 0)
		end
		AlertViewBacking:Destroy()
		AlertViewBacking = nil
		if okPressedFunc then
			okPressedFunc()
		end
		ContextActionService:UnbindCoreAction(removeId)
		GuiService.SelectedCoreObject = nil
		if settingsHub then
			settingsHub:ShowBar()
		end
		if vrEnabledConn then
			vrEnabledConn:Disconnect()
		end
	end

	local AlertViewButtonSize = UDim2.new(1, -20, 0, 60)
	local AlertViewButtonPosition = UDim2.new(0, 10, 0.65, 0)
	if not hasBackground then
		AlertViewButtonSize = UDim2.new(0, 200, 0, 50)
		AlertViewButtonPosition = UDim2.new(0.5, -100, 0.65, 0)
	end

	local AlertViewButton, AlertViewText = MakeButton("AlertViewButton", okButtonText, AlertViewButtonSize, destroyAlert)
	AlertViewButton.Position = AlertViewButtonPosition
	AlertViewButton.NextSelectionLeft = AlertViewButton
	AlertViewButton.NextSelectionRight = AlertViewButton
	AlertViewButton.NextSelectionUp = AlertViewButton
	AlertViewButton.NextSelectionDown = AlertViewButton
	AlertViewButton.ZIndex = 9
	AlertViewText.ZIndex = AlertViewButton.ZIndex
	AlertViewButton.Parent = AlertViewBacking

	if usesSelectedObject() then
		GuiService.SelectedCoreObject = AlertViewButton
	end

	GuiService.SelectedCoreObject = AlertViewButton

	ContextActionService:BindCoreAction(removeId, destroyAlert, false, Enum.KeyCode.Escape, Enum.KeyCode.ButtonB, Enum.KeyCode.ButtonA)

	if settingsHub and not VRService.VREnabled then
		settingsHub:HideBar()
		settingsHub.Pages.CurrentPage:Hide(1, 1)
	end
end

local function CreateNewSlider(numOfSteps, startStep, minStep)
	-------------------- SETUP ------------------------
	local this = {}

	local spacing = 4
	local initialSpacing = 8
	local steps = tonumber(numOfSteps)
	local currentStep = startStep

	local lastInputDirection = 0
	local timeAtLastInput = nil

	local interactable = true

	local renderStepBindName = HttpService:GenerateGUID(false)

	-- this is done to prevent using these values below (trying to keep the variables consistent)
	numOfSteps = ""
	startStep = ""

	if steps <= 0 then
		error("CreateNewSlider failed because numOfSteps (first arg) is 0 or negative, please supply a positive integer", 2)
		return
	end

	local valueChangedEvent = Instance.new("BindableEvent")
	valueChangedEvent.Name = "ValueChanged"

	----------------- GUI SETUP ------------------------
	this.SliderFrame = Util.Create'ImageButton'
	{
		Name = "Slider",
		Image = "",
		AutoButtonColor = false,
		NextSelectionLeft = this.SliderFrame,
		NextSelectionRight = this.SliderFrame,
		BackgroundTransparency = 1,
		Size = UDim2.new(0.6, 0, 0, 50),
		Position = UDim2.new(1, 0, 0.5, 0),
		AnchorPoint = Vector2.new(1, 0.5),
		SelectionImageObject = noSelectionObject,
		ZIndex = 2
	};

	this.StepsContainer = Util.Create "Frame"
	{
		Name = "StepsContainer",
		Position = UDim2.new(0.5, 0, 0.5, 0),
		Size = UDim2.new(1, -100, 1, 0),
		AnchorPoint = Vector2.new(0.5, 0.5),
		BackgroundTransparency = 1,
		Parent = this.SliderFrame,
	}

	local leftButton = Util.Create'ImageButton'
	{
		Name = "LeftButton",
		BackgroundTransparency = 1,
		AnchorPoint = Vector2.new(0, 0.5),
		Position = UDim2.new(0,0,0.5,0),
		Size =  UDim2.new(0,50,0,50),
		Image =  "",
		ZIndex = 3,
		Selectable = false,
		SelectionImageObject = noSelectionObject,
		Active = true,
		Parent = this.SliderFrame
	};
	local rightButton = Util.Create'ImageButton'
	{
		Name = "RightButton",
		BackgroundTransparency = 1,
		AnchorPoint = Vector2.new(1, 0.5),
		Position = UDim2.new(1,0,0.5,0),
		Size =  UDim2.new(0,50,0,50),
		Image =  "",
		ZIndex = 3,
		Selectable = false,
		SelectionImageObject = noSelectionObject,
		Active = true,
		Parent = this.SliderFrame
	};

	local leftButtonImage = Util.Create'ImageLabel'
	{
		Name = "LeftButton",
		BackgroundTransparency = 1,
		AnchorPoint = Vector2.new(0.5, 0.5),
		Position = UDim2.new(0.5,0,0.5,0),
		Size =  UDim2.new(0,30,0,30),
		Image =  "rbxasset://textures/ui/Settings/Slider/Less.png",
		ZIndex = 4,
		Parent = leftButton,
		ImageColor3 = UserInputService.TouchEnabled and ARROW_COLOR_TOUCH or ARROW_COLOR
	};
	local rightButtonImage = Util.Create'ImageLabel'
	{
		Name = "RightButton",
		BackgroundTransparency = 1,
		AnchorPoint = Vector2.new(0.5, 0.5),
		Position = UDim2.new(0.5,0,0.5,0),
		Size =  UDim2.new(0,30,0,30),
		Image =  "rbxasset://textures/ui/Settings/Slider/More.png",
		ZIndex = 4,
		Parent = rightButton,
		ImageColor3 = UserInputService.TouchEnabled and ARROW_COLOR_TOUCH or ARROW_COLOR
	};
	if not UserInputService.TouchEnabled then
		local onNormalButtonState, onHoverButtonState =
			function(instance) instance.ImageColor3 = ARROW_COLOR end,
			function(instance) instance.ImageColor3 = ARROW_COLOR_HOVER end

		addHoverState(leftButton, leftButtonImage, onNormalButtonState, onHoverButtonState)
		addHoverState(rightButton, rightButtonImage, onNormalButtonState, onHoverButtonState)
	end

	this.Steps = {}
	local stepXSize = 35
	if isSmallTouchScreen() then
		stepXSize = 25
	end

	local stepXScale = 1 / steps
	stepXSize = 0

	for i = 1, steps do
		local nextStep = Util.Create'ImageButton'
		{
			Name = "Step" .. tostring(i),
			BackgroundColor3 = SELECTED_COLOR,
			BackgroundTransparency = 0.36,
			BorderSizePixel = 0,
			AutoButtonColor = false,
			Active = false,
			AnchorPoint = Vector2.new(0, 0.5),
			Position = UDim2.new((i - 1) * stepXScale, spacing / 2, 0.5, 0),
			Size =  UDim2.new(stepXScale,-spacing, 24 / 50, 0),
			Image =  "",
			ZIndex = 3,
			Selectable = false,
			ImageTransparency = 0.36,
			Parent = this.StepsContainer,
			SelectionImageObject = noSelectionObject
		};

		if i > currentStep then
			nextStep.BackgroundColor3 = NON_SELECTED_COLOR
		end

		if i == 1 or i == steps then
			nextStep.BackgroundTransparency = 1
			nextStep.ScaleType = Enum.ScaleType.Slice
			nextStep.SliceCenter = Rect.new(3,3,32,21)

			if i <= currentStep then
				if i == 1 then
					nextStep.Image = SELECTED_LEFT_IMAGE
				else
					nextStep.Image = SELECTED_RIGHT_IMAGE
				end
			else
				if i == 1 then
					nextStep.Image = NON_SELECTED_LEFT_IMAGE
				else
					nextStep.Image = NON_SELECTED_RIGHT_IMAGE
				end
			end
		end

		this.Steps[#this.Steps + 1] = nextStep
	end


	------------------- FUNCTIONS ---------------------
	local function hideSelection()
		for i = 1, steps do
			this.Steps[i].BackgroundColor3 = NON_SELECTED_COLOR
			if i == 1 then
				this.Steps[i].Image = NON_SELECTED_LEFT_IMAGE
			elseif i == steps then
				this.Steps[i].Image = NON_SELECTED_RIGHT_IMAGE
			end
		end
	end
	local function showSelection()
		for i = 1, steps do
			if i > currentStep then break end
			this.Steps[i].BackgroundColor3 = SELECTED_COLOR
			if i == 1 then
				this.Steps[i].Image = SELECTED_LEFT_IMAGE
			elseif i == steps then
				this.Steps[i].Image = SELECTED_RIGHT_IMAGE
			end
		end
	end
	local function modifySelection(alpha)
		for i = 1, steps do
			if i == 1 or i == steps then
				this.Steps[i].ImageTransparency = alpha
			else
				this.Steps[i].BackgroundTransparency = alpha
			end
		end
	end

	local function setCurrentStep(newStepPosition)
		if not minStep then minStep = 0 end

		leftButton.Visible = true
		rightButton.Visible = true

		if newStepPosition <= minStep then
			newStepPosition = minStep
			leftButton.Visible = false
		end
		if newStepPosition >= steps then
			newStepPosition = steps
			rightButton.Visible = false
		end

		if currentStep == newStepPosition then return end

		currentStep = newStepPosition

		hideSelection()
		showSelection()

		timeAtLastInput = tick()
		valueChangedEvent:Fire(currentStep)
	end

	local function isActivateEvent(inputObject)
		if not inputObject then return false end
		return inputObject.UserInputType == Enum.UserInputType.MouseButton1 or inputObject.UserInputType == Enum.UserInputType.Touch or (inputObject.UserInputType == Enum.UserInputType.Gamepad1 and inputObject.KeyCode == Enum.KeyCode.ButtonA)
	end
	local function mouseDownFunc(inputObject, newStepPos, repeatAction)
		if not interactable then return end

		if inputObject == nil then return end

		if not isActivateEvent(inputObject) then return end

		if usesSelectedObject() and not VRService.VREnabled then
			GuiService.SelectedCoreObject = this.SliderFrame
		end

		if not VRService.VREnabled then
			if repeatAction then
				lastInputDirection = newStepPos - currentStep
			else
				lastInputDirection = 0

				local mouseInputMovedCon = nil
				local mouseInputEndedCon = nil

				mouseInputMovedCon = UserInputService.InputChanged:Connect(function(inputObject)
					if inputObject.UserInputType ~= Enum.UserInputType.MouseMovement then return end

					local mousePos = inputObject.Position.X
					for i = 1, steps do
						local stepPosition = this.Steps[i].AbsolutePosition.X
						local stepSize = this.Steps[i].AbsoluteSize.X
						if mousePos >= stepPosition and mousePos <= stepPosition + stepSize then
							setCurrentStep(i)
							break
						elseif i == 1 and mousePos < stepPosition then
							setCurrentStep(0)
							break
						elseif i == steps and mousePos >= stepPosition then
							setCurrentStep(i)
							break
						end
					end
				end)
				mouseInputEndedCon = UserInputService.InputEnded:Connect(function(inputObject)
					if not isActivateEvent(inputObject) then return end

					lastInputDirection = 0
					mouseInputEndedCon:Disconnect()
					mouseInputMovedCon:Disconnect()
				end)
			end
		else
			lastInputDirection = 0
		end

		setCurrentStep(newStepPos)
	end

	local function mouseUpFunc(inputObject)
		if not interactable then return end
		if not isActivateEvent(inputObject) then return end

		lastInputDirection = 0
	end

	local function touchClickFunc(inputObject, newStepPos, repeatAction)
		mouseDownFunc(inputObject, newStepPos, repeatAction)
	end

	--------------------- PUBLIC FACING FUNCTIONS -----------------------
	this.ValueChanged = valueChangedEvent.Event

	function this:SetValue(newValue)
		setCurrentStep(newValue)
	end

	function this:GetValue()
		return currentStep
	end

	function this:SetInteractable(value)
		lastInputDirection = 0
		interactable = value
		this.SliderFrame.Selectable = value
		if not interactable then
			hideSelection()
		else
			showSelection()
		end
	end

	function this:SetZIndex(newZIndex)
		leftButton.ZIndex = newZIndex
		rightButton.ZIndex = newZIndex
		leftButtonImage.ZIndex = newZIndex
		rightButtonImage.ZIndex = newZIndex

		for i = 1, #this.Steps do
			this.Steps[i].ZIndex = newZIndex
		end
	end

	function this:SetMinStep(newMinStep)
		if newMinStep >= 0 and newMinStep <= steps then
			minStep = newMinStep
		end

		if currentStep <= minStep then
			currentStep = minStep
			leftButton.Visible = false
		end
		if currentStep >= steps then
			currentStep = steps
			rightButton.Visible = false
		end
	end

	--------------------- SETUP -----------------------

	leftButton.InputBegan:Connect(function(inputObject) mouseDownFunc(inputObject, currentStep - 1, true) end)
	leftButton.InputEnded:Connect(function(inputObject) mouseUpFunc(inputObject) end)
	rightButton.InputBegan:Connect(function(inputObject) mouseDownFunc(inputObject, currentStep + 1, true) end)
	rightButton.InputEnded:Connect(function(inputObject) mouseUpFunc(inputObject) end)

	local function onVREnabled(prop)
		if prop ~= "VREnabled" then
			return
		end
		if VRService.VREnabled then
			leftButton.Selectable = interactable
			rightButton.Selectable = interactable
			this.SliderFrame.Selectable = interactable

			for i = 1, steps do
				this.Steps[i].Selectable = interactable
				this.Steps[i].Active = interactable
			end
		else
			leftButton.Selectable = false
			rightButton.Selectable = false
			this.SliderFrame.Selectable = interactable
			for i = 1, steps do
				this.Steps[i].Selectable = false
				this.Steps[i].Active = false
			end
		end
	end
	VRService.Changed:Connect(onVREnabled)
	onVREnabled("VREnabled")

	for i = 1, steps do
		this.Steps[i].InputBegan:Connect(function(inputObject)
			mouseDownFunc(inputObject, i)
		end)
		this.Steps[i].InputEnded:Connect(function(inputObject)
		 mouseUpFunc(inputObject) end)
	end

	this.SliderFrame.InputBegan:Connect(function(inputObject)
		if VRService.VREnabled then
			local selected = GuiService.SelectedCoreObject
			if not selected or not selected:IsDescendantOf(this.SliderFrame.Parent) then return end
		end
		mouseDownFunc(inputObject, currentStep)
	end)
	this.SliderFrame.InputEnded:Connect(function(inputObject)
		if VRService.VREnabled then
			local selected = GuiService.SelectedCoreObject
			if not selected or not selected:IsDescendantOf(this.SliderFrame.Parent) then return end
		end
		mouseUpFunc(inputObject)
	end)


	local stepSliderFunc = function()
		if timeAtLastInput == nil then return end

		local currentTime = tick()
		local timeSinceLastInput = currentTime - timeAtLastInput
		if timeSinceLastInput >= CONTROLLER_SCROLL_DELTA then
			setCurrentStep(currentStep + lastInputDirection)
		end
	end

	local isInTree = true

	local navigateLeft = -1 --these are just for differentiation, the actual value isn't important as long as they coerce to boolean true (all numbers do in Lua)
	local navigateRight = 1
	local navigationKeyCodes = {
		[Enum.KeyCode.Thumbstick1] = true, --thumbstick can be either direction
		[Enum.KeyCode.DPadLeft] = navigateLeft,
		[Enum.KeyCode.DPadRight] = navigateRight,
		[Enum.KeyCode.Left] = navigateLeft,
		[Enum.KeyCode.Right] = navigateRight,
		[Enum.KeyCode.A] = navigateLeft,
		[Enum.KeyCode.D] = navigateRight,
		[Enum.KeyCode.ButtonA] = true --buttonA can be either direction
	}
	UserInputService.InputBegan:Connect(function(inputObject)
		if not interactable then return end
		if not isInTree then return end

		if inputObject.UserInputType ~= Enum.UserInputType.Gamepad1 and inputObject.UserInputType ~= Enum.UserInputType.Keyboard then return end
		local selected = GuiService.SelectedCoreObject
		if not selected or not selected:IsDescendantOf(this.SliderFrame.Parent) then return end

		if navigationKeyCodes[inputObject.KeyCode] == navigateLeft then
			lastInputDirection = -1
			setCurrentStep(currentStep - 1)
		elseif navigationKeyCodes[inputObject.KeyCode] == navigateRight then
			lastInputDirection = 1
			setCurrentStep(currentStep + 1)
		end
	end)

	UserInputService.InputEnded:Connect(function(inputObject)
		if not interactable then return end

		if inputObject.UserInputType ~= Enum.UserInputType.Gamepad1 and inputObject.UserInputType ~= Enum.UserInputType.Keyboard then return end
		local selected = GuiService.SelectedCoreObject
		if not selected or not selected:IsDescendantOf(this.SliderFrame.Parent) then return end

		if navigationKeyCodes[inputObject.KeyCode] then --detect any keycode considered a navigation key
			lastInputDirection = 0
		end
	end)

	UserInputService.InputChanged:Connect(function(inputObject)
		if not interactable then
			lastInputDirection = 0
			return
		end
		if not isInTree then
			lastInputDirection = 0
			return
		end

		if inputObject.UserInputType ~= Enum.UserInputType.Gamepad1 then return end
		local selected = GuiService.SelectedCoreObject
		if not selected or not selected:IsDescendantOf(this.SliderFrame.Parent) then return end
		if inputObject.KeyCode ~= Enum.KeyCode.Thumbstick1 then return end

		if inputObject.Position.X > CONTROLLER_THUMBSTICK_DEADZONE and inputObject.Delta.X > 0 and lastInputDirection ~= 1 then
			lastInputDirection = 1
			setCurrentStep(currentStep + 1)
		elseif inputObject.Position.X < -CONTROLLER_THUMBSTICK_DEADZONE and inputObject.Delta.X < 0 and lastInputDirection ~= -1 then
			lastInputDirection = -1
			setCurrentStep(currentStep - 1)
		elseif math.abs(inputObject.Position.X) < CONTROLLER_THUMBSTICK_DEADZONE then
			lastInputDirection = 0
		end
	end)

	local isBound = false
	GuiService.Changed:Connect(function(prop)
		if prop ~= "SelectedCoreObject" then return end

		local selected = GuiService.SelectedCoreObject
		local isThisSelected = selected and selected:IsDescendantOf(this.SliderFrame.Parent)
		if isThisSelected then
			modifySelection(0)
			if not isBound then
				isBound = true
				timeAtLastInput = tick()
				RunService:BindToRenderStep(renderStepBindName, Enum.RenderPriority.Input.Value + 1, stepSliderFunc)
			end
		else
			modifySelection(0.36)
			if isBound then
				isBound = false
				RunService:UnbindFromRenderStep(renderStepBindName)
			end
		end
	end)

	this.SliderFrame.AncestryChanged:Connect(function(child, parent)
		isInTree = parent
	end)

	setCurrentStep(currentStep)

	return this
end

local ROW_HEIGHT = 50
if isTenFootInterface() then ROW_HEIGHT = 90 end

local nextPosTable = {}
local function AddNewRow(pageToAddTo, rowDisplayName, selectionType, rowValues, rowDefault, extraSpacing)
	local nextRowPositionY = 0
	local isARealRow = selectionType ~= 'TextBox' -- Textboxes are constructed in this function - they don't have an associated class.

	if nextPosTable[pageToAddTo] then
		nextRowPositionY = nextPosTable[pageToAddTo]
	end

	local RowFrame = nil
	RowFrame = Util.Create'ImageButton'
	{
		Name = rowDisplayName .. "Frame",
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		Image = "rbxasset://textures/ui/VR/rectBackgroundWhite.png",
		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = Rect.new(2, 2, 18, 18),
		ImageTransparency = 1,
		Active = false,
		AutoButtonColor = false,
		Size = UDim2.new(1,0,0,ROW_HEIGHT),
		Position = UDim2.new(0,0,0,nextRowPositionY),
		ZIndex = 2,
		Selectable = false,
		SelectionImageObject = noSelectionObject,
		Parent = pageToAddTo.Page
	};
	RowFrame.ImageColor3 = RowFrame.BackgroundColor3

	if RowFrame and extraSpacing then
		RowFrame.Position = UDim2.new(RowFrame.Position.X.Scale,RowFrame.Position.X.Offset,
			RowFrame.Position.Y.Scale,RowFrame.Position.Y.Offset + extraSpacing)
	end

	local RowLabel = nil
	RowLabel = Util.Create'TextLabel'
	{
		Name = rowDisplayName .. "Label",
		Text = rowDisplayName,
		Font = Enum.Font.SourceSansBold,
		TextSize = 16,
		TextColor3 = Color3.fromRGB(255,255,255),
		TextXAlignment = Enum.TextXAlignment.Left,
		BackgroundTransparency = 1,
		Size = UDim2.new(0,200,1,0),
		Position = UDim2.new(0,10,0,0),
		ZIndex = 2,
		Parent = RowFrame
	};
	
	local RowLabelTextSizeConstraint = Instance.new("UITextSizeConstraint")
	if FFlagUseNotificationsLocalization then
		RowLabel.Size = UDim2.new(0.35,0,1,0)
		RowLabel.TextScaled = true
		RowLabel.TextWrapped = true
		RowLabelTextSizeConstraint.Parent = RowLabel
		RowLabelTextSizeConstraint.MaxTextSize = 16
	end
	
	if not isARealRow then
		RowLabel.Text = ''
	end

	local function onResized(viewportSize, portrait)
		if portrait then
			RowLabel.TextSize = 16
		else
			RowLabel.TextSize = isTenFootInterface() and 36 or 24
		end
		RowLabelTextSizeConstraint.MaxTextSize = RowLabel.TextSize
	end
	onResized(getViewportSize(), isPortrait())
	addOnResizedCallback(RowFrame, onResized)

	local ValueChangerSelection = nil
	local ValueChangerInstance = nil
	if selectionType == "Slider" then
		ValueChangerInstance = CreateNewSlider(rowValues, rowDefault)
		ValueChangerInstance.SliderFrame.Parent = RowFrame
		ValueChangerSelection = ValueChangerInstance.SliderFrame
	elseif selectionType == "Selector" then
		ValueChangerInstance = CreateSelector(rowValues, rowDefault)
		ValueChangerInstance.SelectorFrame.Parent = RowFrame
		ValueChangerSelection = ValueChangerInstance.SelectorFrame
	elseif selectionType == "DropDown" then
		ValueChangerInstance = CreateDropDown(rowValues, rowDefault, pageToAddTo.HubRef)
		ValueChangerInstance.DropDownFrame.Parent = RowFrame
		ValueChangerSelection = ValueChangerInstance.DropDownFrame
	elseif selectionType == "TextBox" then
		local isMouseOverRow = false
		local forceReturnSelectionOnFocusLost = false
		local SelectionOverrideObject = Util.Create'ImageLabel'
		{
			Image = "",
			BackgroundTransparency = 1,
		};

		ValueChangerInstance = {}
		ValueChangerInstance.HubRef = nil

		local box = Util.Create'TextBox'
		{
			AnchorPoint = Vector2.new(1, 0.5),
			Size = UDim2.new(0.6,0,1,0),
			Position = UDim2.new(1,0,0.5,0),
			Text = rowDisplayName,
			TextColor3 = Color3.fromRGB(49, 49, 49),
			BackgroundTransparency = 0.5,
			BorderSizePixel = 0,
			TextYAlignment = Enum.TextYAlignment.Top,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextWrapped = true,
			Font = Enum.Font.SourceSans,
			TextSize = 24,
			ZIndex = 2,
			SelectionImageObject = SelectionOverrideObject,
			ClearTextOnFocus = false,
			Parent = RowFrame
		};
		ValueChangerSelection = box

		box.Focused:Connect(function()
			if usesSelectedObject() then
				GuiService.SelectedCoreObject = box
			end

			if box.Text == rowDisplayName then
				box.Text = ""
			end
		end)
		box.FocusLost:Connect(function(enterPressed, inputObject)
			forceReturnSelectionOnFocusLost = false
		end)
		if extraSpacing then
			box.Position = UDim2.new(box.Position.X.Scale,box.Position.X.Offset,
				box.Position.Y.Scale,box.Position.Y.Offset + extraSpacing)
		end

		ValueChangerSelection.SelectionGained:Connect(function()
			if usesSelectedObject() then
				box.BackgroundTransparency = 0.1

				if ValueChangerInstance.HubRef then
					ValueChangerInstance.HubRef:ScrollToFrame(ValueChangerSelection)
				end
			end
		end)
		ValueChangerSelection.SelectionLost:Connect(function()
			if usesSelectedObject() then
				box.BackgroundTransparency = 0.5
			end
		end)

		local setRowSelection = function()
			local fullscreenDropDown = CoreGui.RobloxGui:FindFirstChild("DropDownFullscreenFrame")
			if fullscreenDropDown and fullscreenDropDown.Visible then return end

			local valueFrame = ValueChangerSelection

			if valueFrame and valueFrame.Visible and valueFrame.ZIndex > 1 and usesSelectedObject() and pageToAddTo.Active then
				GuiService.SelectedCoreObject = valueFrame
				isMouseOverRow = true
			end
		end
		local function processInput(input)
			if input.UserInputState == Enum.UserInputState.Begin then
				if input.KeyCode == Enum.KeyCode.Return then
					if GuiService.SelectedCoreObject == ValueChangerSelection then
						forceReturnSelectionOnFocusLost = true
						box:CaptureFocus()
					end
				end
			end
		end
		box.MouseEnter:Connect(setRowSelection)

		UserInputService.InputBegan:Connect(processInput)

	elseif selectionType == "TextEntry" then
		local isMouseOverRow = false
		local forceReturnSelectionOnFocusLost = false
		local SelectionOverrideObject = Util.Create'ImageLabel'
		{
			Image = "",
			BackgroundTransparency = 1,
		};

		ValueChangerInstance = {}
		ValueChangerInstance.HubRef = nil

		local box = Util.Create'TextBox'
		{
			AnchorPoint = Vector2.new(1, 0.5),
			Size = UDim2.new(0.4,-10,0,40),
			Position = UDim2.new(1,0,0.5,0),
			Text = rowDisplayName,
			TextColor3 = Color3.fromRGB(178, 178, 178),
			BackgroundTransparency = 1.0,
			BorderSizePixel = 0,
			TextYAlignment = Enum.TextYAlignment.Center,
			TextXAlignment = Enum.TextXAlignment.Center,
			TextWrapped = false,
			Font = Enum.Font.SourceSans,
			TextSize = 24,
			ZIndex = 2,
			SelectionImageObject = SelectionOverrideObject,
			ClearTextOnFocus = false,
			Parent = RowFrame
		};
		ValueChangerSelection = box

		box.Focused:Connect(function()
			if usesSelectedObject() then
				GuiService.SelectedCoreObject = box
			end

			if box.Text == rowDisplayName then
				box.Text = ""
			end
		end)
		box.FocusLost:Connect(function(enterPressed, inputObject)
			forceReturnSelectionOnFocusLost = false
		end)
		if extraSpacing then
			box.Position = UDim2.new(box.Position.X.Scale,box.Position.X.Offset,
										box.Position.Y.Scale,box.Position.Y.Offset + extraSpacing)
		end

		ValueChangerSelection.SelectionGained:Connect(function()
			if usesSelectedObject() then
				box.BackgroundTransparency = 0.8

				if ValueChangerInstance.HubRef then
					ValueChangerInstance.HubRef:ScrollToFrame(ValueChangerSelection)
				end
			end
		end)
		ValueChangerSelection.SelectionLost:Connect(function()
			if usesSelectedObject() then
				box.BackgroundTransparency = 1.0
			end
		end)

		local setRowSelection = function()
			local fullscreenDropDown = CoreGui.RobloxGui:FindFirstChild("DropDownFullscreenFrame")
			if fullscreenDropDown and fullscreenDropDown.Visible then return end

			local valueFrame = ValueChangerSelection

			if valueFrame and valueFrame.Visible and valueFrame.ZIndex > 1 and usesSelectedObject() and pageToAddTo.Active then
				GuiService.SelectedCoreObject = valueFrame
				isMouseOverRow = true
			end
		end
		local function processInput(input)
			if input.UserInputState == Enum.UserInputState.Begin then
				if input.KeyCode == Enum.KeyCode.Return then
					if GuiService.SelectedCoreObject == ValueChangerSelection then
						forceReturnSelectionOnFocusLost = true
						box:CaptureFocus()
					end
				end
			end
		end
		RowFrame.MouseEnter:Connect(setRowSelection)

		function ValueChangerInstance:SetZIndex(newZIndex)
			box.ZIndex = newZIndex
		end

		function ValueChangerInstance:SetInteractable(interactable)
			box.Selectable = interactable
			if not interactable then
				box.TextColor3 = Color3.fromRGB(49,49,49)
				box.ZIndex = 1
			else
				box.TextColor3 = Color3.fromRGB(178,178,178)
				box.ZIndex = 2
			end
		end

		function ValueChangerInstance:SetValue(value) -- should this do more?
			box.Text = value
		end

		local valueChangedEvent = Instance.new("BindableEvent")
		valueChangedEvent.Name = "ValueChanged"

		box.FocusLost:Connect(function()
			valueChangedEvent:Fire(box.Text)
		end)

		ValueChangerInstance.ValueChanged = valueChangedEvent.Event

		UserInputService.InputBegan:Connect(processInput)
	end

	ValueChangerInstance.Name = rowDisplayName .. "ValueChanger"

	nextRowPositionY = nextRowPositionY + ROW_HEIGHT
	if extraSpacing then
		nextRowPositionY = nextRowPositionY + extraSpacing
	end

	nextPosTable[pageToAddTo] = nextRowPositionY

	if isARealRow then
		local setRowSelection = function()
			local fullscreenDropDown = CoreGui.RobloxGui:FindFirstChild("DropDownFullscreenFrame")
			if fullscreenDropDown and fullscreenDropDown.Visible then return end

			local valueFrame = ValueChangerInstance.SliderFrame
			if not valueFrame then
				valueFrame = ValueChangerInstance.SliderFrame
			end
			if not valueFrame then
				valueFrame = ValueChangerInstance.DropDownFrame
			end
			if not valueFrame then
				valueFrame = ValueChangerInstance.SelectorFrame
			end

			if valueFrame and valueFrame.Visible and valueFrame.ZIndex > 1 and usesSelectedObject() and pageToAddTo.Active then
				GuiService.SelectedCoreObject = valueFrame
			end
		end
		RowFrame.MouseEnter:Connect(setRowSelection)

		--Could this be cleaned up even more?
		local function onVREnabled(prop)
			if prop == "VREnabled" then
				if VRService.VREnabled then
					RowFrame.Selectable = true
					RowFrame.Active = true
					ValueChangerSelection.Active = true
					GuiService.Changed:Connect(function(prop)
						if prop == "SelectedCoreObject" then
							local selected = GuiService.SelectedCoreObject
							if selected and (selected == RowFrame or selected:IsDescendantOf(RowFrame)) then
								RowFrame.ImageTransparency = 0.5
								RowFrame.BackgroundTransparency = 1
							else
								RowFrame.ImageTransparency = 1
								RowFrame.BackgroundTransparency = 1
							end
						end
					end)
				else
					RowFrame.Selectable = false
					RowFrame.Active = false
				end
			end
		end
		VRService.Changed:Connect(onVREnabled)
		onVREnabled("VREnabled")

		ValueChangerSelection.SelectionGained:Connect(function()
			if usesSelectedObject() then
				if VRService.VREnabled then
					RowFrame.ImageTransparency = 0.5
					RowFrame.BackgroundTransparency = 1
				else
					RowFrame.ImageTransparency = 1
					RowFrame.BackgroundTransparency = 0.5
				end

				if ValueChangerInstance.HubRef then
					ValueChangerInstance.HubRef:ScrollToFrame(RowFrame)
				end
			end
		end)
		ValueChangerSelection.SelectionLost:Connect(function()
			if usesSelectedObject() then
				RowFrame.ImageTransparency = 1
				RowFrame.BackgroundTransparency = 1
			end
		end)
	end

	pageToAddTo:AddRow(RowFrame, RowLabel, ValueChangerInstance, extraSpacing, false)

	ValueChangerInstance.Selection = ValueChangerSelection

	return RowFrame, RowLabel, ValueChangerInstance
end

local function AddNewRowObject(pageToAddTo, rowDisplayName, rowObject, extraSpacing)
	local nextRowPositionY = 0

	if nextPosTable[pageToAddTo] then
		nextRowPositionY = nextPosTable[pageToAddTo]
	end

	local RowFrame = Util.Create'ImageButton'
	{
		Name = rowDisplayName .. "Frame",
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		Image = "rbxasset://textures/ui/VR/rectBackgroundWhite.png",
		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = Rect.new(10,10,10,10),
		ImageTransparency = 1,
		Active = false,
		AutoButtonColor = false,
		Size = UDim2.new(1,0,0,ROW_HEIGHT),
		Position = UDim2.new(0,0,0,nextRowPositionY),
		ZIndex = 2,
		Selectable = false,
		SelectionImageObject = noSelectionObject,
		Parent = pageToAddTo.Page
	};
	RowFrame.ImageColor3 = RowFrame.BackgroundColor3
	RowFrame.SelectionGained:Connect(function()
		RowFrame.BackgroundTransparency = 0.5
	end)
	RowFrame.SelectionLost:Connect(function()
		RowFrame.BackgroundTransparency = 1
	end)

	local RowLabel = Util.Create'TextLabel'
	{
		Name = rowDisplayName .. "Label",
		Text = rowDisplayName,
		Font = Enum.Font.SourceSansBold,
		TextSize = 16,
		TextColor3 = Color3.fromRGB(255,255,255),
		TextXAlignment = Enum.TextXAlignment.Left,
		BackgroundTransparency = 1,
		Size = UDim2.new(0,200,1,0),
		Position = UDim2.new(0,10,0,0),
		ZIndex = 2,
		Parent = RowFrame
	};
	local function onResized(viewportSize, portrait)
		if portrait then
			RowLabel.TextSize = 16
		else
			RowLabel.TextSize = isTenFootInterface() and 36 or 24
		end
	end
	addOnResizedCallback(RowFrame, onResized)

	if extraSpacing then
		RowFrame.Position = UDim2.new(RowFrame.Position.X.Scale,RowFrame.Position.X.Offset,
			RowFrame.Position.Y.Scale,RowFrame.Position.Y.Offset + extraSpacing)
	end

	nextRowPositionY = nextRowPositionY + ROW_HEIGHT
	if extraSpacing then
		nextRowPositionY = nextRowPositionY + extraSpacing
	end

	nextPosTable[pageToAddTo] = nextRowPositionY

	local setRowSelection = function()
		if RowFrame.Visible then
			GuiService.SelectedCoreObject = RowFrame
		end
	end
	RowFrame.MouseEnter:Connect(setRowSelection)

	rowObject.SelectionImageObject = noSelectionObject

	rowObject.SelectionGained:Connect(function()
		if VRService.VREnabled then
			RowFrame.ImageTransparency = 0.5
			RowFrame.BackgroundTransparency = 1
		else
			RowFrame.ImageTransparency = 1
			RowFrame.BackgroundTransparency = 0.5
		end
	end)
	rowObject.SelectionLost:Connect(function()
		RowFrame.ImageTransparency = 1
		RowFrame.BackgroundTransparency = 1
	end)

	rowObject.Parent = RowFrame

	pageToAddTo:AddRow(RowFrame, RowLabel, rowObject, extraSpacing, true)
	return RowFrame
end

-------- public facing API ----------------
local moduleApiTable = {}

function moduleApiTable:Create(instanceType)
	return function(data)
		local obj = Instance.new(instanceType)
		local parent = nil
		for k, v in pairs(data) do
			if type(k) == 'number' then
				v.Parent = obj
			elseif k == 'Parent' then
				parent = v
			else
				obj[k] = v
			end
		end
		if parent then
			obj.Parent = parent
		end
		return obj
	end
end

-- RayPlaneIntersection (shortened)
-- http://www.siggraph.org/education/materials/HyperGraph/raytrace/rayplane_intersection.htm
function moduleApiTable:RayPlaneIntersection(ray, planeNormal, pointOnPlane)
	planeNormal = planeNormal.unit
	ray = ray.Unit

	local Vd = planeNormal:Dot(ray.Direction)
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

function moduleApiTable:GetEaseLinear()
	return Linear
end
function moduleApiTable:GetEaseOutQuad()
	return EaseOutQuad
end
function moduleApiTable:GetEaseInOutQuad()
	return EaseInOutQuad
end

function moduleApiTable:CreateNewSlider(numOfSteps, startStep, minStep)
	return CreateNewSlider(numOfSteps, startStep, minStep)
end

function moduleApiTable:CreateNewSelector(selectionStringTable, startPosition)
	return CreateSelector(selectionStringTable, startPosition)
end

function moduleApiTable:CreateNewDropDown(dropDownStringTable, startPosition)
	return CreateDropDown(dropDownStringTable, startPosition, nil)
end

function moduleApiTable:AddNewRow(pageToAddTo, rowDisplayName, selectionType, rowValues, rowDefault, extraSpacing)
	return AddNewRow(pageToAddTo, rowDisplayName, selectionType, rowValues, rowDefault, extraSpacing)
end

function moduleApiTable:AddNewRowObject(pageToAddTo, rowDisplayName, rowObject, extraSpacing)
	return AddNewRowObject(pageToAddTo, rowDisplayName, rowObject, extraSpacing)
end

function moduleApiTable:ShowAlert(alertMessage, okButtonText, settingsHub, okPressedFunc, hasBackground)
	ShowAlert(alertMessage, okButtonText, settingsHub, okPressedFunc, hasBackground)
end

function moduleApiTable:IsSmallTouchScreen()
	return isSmallTouchScreen()
end

function moduleApiTable:IsPortrait()
	return isPortrait()
end

function moduleApiTable:MakeStyledButton(name, text, size, clickFunc, pageRef, hubRef)
	return MakeButton(name, text, size, clickFunc, pageRef, hubRef)
end

function moduleApiTable:MakeStyledImageButton(name, image, size, imageSize, clickFunc, pageRef, hubRef)
	return MakeImageButton(name, image, size, imageSize, clickFunc, pageRef, hubRef)
end

function moduleApiTable:AddButtonRow(pageToAddTo, name, text, size, clickFunc, hubRef)
	return AddButtonRow(pageToAddTo, name, text, size, clickFunc, hubRef)
end

function moduleApiTable:CreateSignal()
	return CreateSignal()
end

function  moduleApiTable:UsesSelectedObject()
	return usesSelectedObject()
end

function moduleApiTable:TweenProperty(instance, prop, start, final, duration, easingFunc, cbFunc)
	return PropertyTweener(instance, prop, start, final, duration, easingFunc, cbFunc)
end

function moduleApiTable:OnResized(key, callback)
	return addOnResizedCallback(key, callback)
end

function moduleApiTable:FireOnResized()
	local newSize = getViewportSize()
	local portrait = moduleApiTable:IsPortrait()

	for key, callback in pairs(onResizedCallbacks) do
		callback(newSize, portrait)
	end
end

return moduleApiTable
