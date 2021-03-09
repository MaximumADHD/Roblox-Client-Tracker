-- ContextActionTouch.lua
-- Copyright ROBLOX 2014, created by Ben Tkacheff
-- this script controls ui and firing of lua functions that are bound in ContextActionService for touch inputs
-- Essentially a user can bind a lua function to a key code, input type (mousebutton1 etc.) and this

-- Variables
local contextActionService = game:GetService("ContextActionService")
local userInputService = game:GetService("UserInputService")
local playersService = game:GetService("Players")
local isTouchDevice = userInputService.TouchEnabled
local functionTable = {}
local buttonVector = {}
local buttonScreenGui = nil
local buttonFrame = nil

local ContextDownImage = "https://www.roblox.com/asset/?id=97166756"
local ContextUpImage = "https://www.roblox.com/asset/?id=97166444"

local oldTouches = {}

local FFlagCancelButtonTouchEventOnMouseDragOff = game:DefineFastFlag("CancelButtonTouchEventOnMouseDragOff", false)
local FFlagHandleChangeBoundActionNilValue = game:DefineFastFlag("HandleChangeBoundActionNilValue", false)

local IMAGE = "image"
local TITLE = "title"
local POSITION = "position"
local DESCRIPTION = "description"

local buttonPositionTable = {
								[1] = UDim2.new(0,123,0,70),
								[2] = UDim2.new(0,30,0,60),
								[3] = UDim2.new(0,180,0,160),
								[4] = UDim2.new(0,85,0,-25),
								[5] = UDim2.new(0,185,0,-25),
								[6] = UDim2.new(0,185,0,260),
								[7] = UDim2.new(0,216,0,65)
							}
local maxButtons = #buttonPositionTable

-- Preload images
game:GetService("ContentProvider"):Preload(ContextDownImage)
game:GetService("ContentProvider"):Preload(ContextUpImage)

local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local CoreUtility = require(RobloxGui.Modules.CoreUtility)

local localPlayer = playersService.LocalPlayer
while not localPlayer do
	playersService.ChildAdded:wait()
	localPlayer = playersService.LocalPlayer
end

local playerGui = CoreUtility.waitForChildOfClass(localPlayer, "PlayerGui")

function createContextActionGui()
	if not buttonScreenGui and isTouchDevice then
		buttonScreenGui = Instance.new("ScreenGui")
		buttonScreenGui.Name = "ContextActionGui"
		buttonScreenGui.ResetOnSpawn = false

		buttonFrame = Instance.new("Frame")
		buttonFrame.BackgroundTransparency = 1
		buttonFrame.Size = UDim2.new(0.3,0,0.5,0)
		buttonFrame.Position = UDim2.new(0.7,0,0.5,0)
		buttonFrame.Name = "ContextButtonFrame"
		buttonFrame.Parent = buttonScreenGui

		buttonFrame.Visible = not userInputService.ModalEnabled
		userInputService.Changed:connect(function(property)
			if property == "ModalEnabled" then
				buttonFrame.Visible = not userInputService.ModalEnabled
			end
		end)
	end
end

-- functions
function setButtonSizeAndPosition(object)
	local buttonSize = 55
	local xOffset = 10
	local yOffset = 95

	-- todo: better way to determine mobile sized screens
	local onSmallScreen = (game:GetService("CoreGui").RobloxGui.AbsoluteSize.X < 600)
	if not onSmallScreen then
		buttonSize = 85
		xOffset = 40
	end

	object.Size = UDim2.new(0,buttonSize,0,buttonSize)
end

-- deprecated functions to be removed when FFlagCancelButtonTouchEventOnMouseDragOff is removed
function contextButtonDown(button, inputObject, actionName)
	if inputObject.UserInputType == Enum.UserInputType.Touch then
		button.Image = ContextDownImage
		contextActionService:CallFunction(actionName, Enum.UserInputState.Begin, inputObject)
	end
end

function contextButtonMoved(button, inputObject, actionName)
	if inputObject.UserInputType == Enum.UserInputType.Touch then
		button.Image = ContextDownImage
		contextActionService:CallFunction(actionName, Enum.UserInputState.Change, inputObject)
	end
end

function contextButtonUp(button, inputObject, actionName)
	button.Image = ContextUpImage
	if inputObject.UserInputType == Enum.UserInputType.Touch and inputObject.UserInputState == Enum.UserInputState.End then
		contextActionService:CallFunction(actionName, Enum.UserInputState.End, inputObject)
	end
end


function contextActionButtonDown(button, inputObject, actionName)
	button.Image = ContextDownImage
	contextActionService:CallFunction(actionName, Enum.UserInputState.Begin, inputObject)
end

function contextActionButtonMoved(button, inputObject, actionName)
	button.Image = ContextDownImage
	contextActionService:CallFunction(actionName, Enum.UserInputState.Change, inputObject)
end

function contextActionButtonUp(button, inputObject, actionName)
	button.Image = ContextUpImage
	contextActionService:CallFunction(actionName, Enum.UserInputState.End, inputObject)
end

function contextActionButtonCancel(button, inputObject, actionName)
	button.Image = ContextUpImage
	contextActionService:CallFunction(actionName, Enum.UserInputState.Cancel, inputObject)
end

function isSmallScreenDevice()
	return game:GetService("GuiService"):GetScreenResolution().y <= 320
end


function createNewButton(actionName, functionInfoTable)
	local contextButton = Instance.new("ImageButton")
	contextButton.Name = "ContextActionButton"
	contextButton.BackgroundTransparency = 1
	contextButton.Size = UDim2.new(0,45,0,45)
	contextButton.Active = true
	if isSmallScreenDevice() then
		contextButton.Size = UDim2.new(0,35,0,35)
	end
	contextButton.Image = ContextUpImage
	contextButton.Parent = buttonFrame

	if FFlagCancelButtonTouchEventOnMouseDragOff then
		local currentButtonTouch = nil
		local fingerIsTouchingAwayFromButton = false

		--[[
		there are three states for a button:
		OFF		currentButtonTouch == nil
		ON		currentButtonTouch ~= nil and fingerIsTouchingAwayFromButton == false
		AWAY		currentButtonTouch ~= nil and fingerIsTouchingAwayFromButton == true
		AWAY is when the user begins a touch event on the button and drags off, but still maintains contact with the screen
		ContextActionService callbacks are generated for the following transitions between states:
		OFF -> ON			Enum.UserInputState.Begin
		ON -> OFF			Enum.UserInputState.End
		AWAY -> OFF			Enum.UserInputState.Cancel
		]]--

		userInputService.InputEnded:connect(function(inputObject)
			if inputObject.UserInputType ~= Enum.UserInputType.Touch then
				return
			end
			if currentButtonTouch ~= inputObject then
				return
			end

			if inputObject.UserInputState == Enum.UserInputState.End and fingerIsTouchingAwayFromButton then
				-- transition AWAY -> OFF
				contextActionButtonCancel(contextButton, inputObject, actionName)
			end
			currentButtonTouch = nil
			fingerIsTouchingAwayFromButton = false
		end)

		contextButton.InputBegan:connect(function(inputObject)
			if inputObject.UserInputType ~= Enum.UserInputType.Touch then
				return
			end

			if inputObject.UserInputState == Enum.UserInputState.Begin then
				-- transition OFF -> ON
				currentButtonTouch = inputObject
				fingerIsTouchingAwayFromButton = false
				contextActionButtonDown(contextButton, inputObject, actionName)
			elseif inputObject.UserInputState == Enum.UserInputState.Change then
				if currentButtonTouch ~= inputObject then
					return
				end
				-- transition AWAY -> ON
				fingerIsTouchingAwayFromButton = false
			end
		end)

		contextButton.InputEnded:connect(function(inputObject)
			if inputObject.UserInputType ~= Enum.UserInputType.Touch then
				return
			end
			if currentButtonTouch ~= inputObject then
				return
			end

			if inputObject.UserInputState == Enum.UserInputState.End then
				-- transition ON -> OFF
				currentButtonTouch = nil
				fingerIsTouchingAwayFromButton = false
				contextActionButtonUp(contextButton, inputObject, actionName)
			elseif inputObject.UserInputState == Enum.UserInputState.Change then
				-- transition ON -> AWAY
				fingerIsTouchingAwayFromButton = true
			end
		end)

		contextButton.InputChanged:connect(function(inputObject)
			if inputObject.UserInputType ~= Enum.UserInputType.Touch then
				return
			end
			if currentButtonTouch ~= inputObject then
				return
			end
			contextActionButtonMoved(contextButton, inputObject, actionName)
		end)
	
	else
		local currentButtonTouch = nil

		userInputService.InputEnded:connect(function ( inputObject )
			oldTouches[inputObject] = nil
		end)
		contextButton.InputBegan:connect(function(inputObject)
			if oldTouches[inputObject] then return end
		
			if inputObject.UserInputState == Enum.UserInputState.Begin and currentButtonTouch == nil then
				currentButtonTouch = inputObject
				contextButtonDown(contextButton, inputObject, actionName)
			end
		end)
		contextButton.InputChanged:connect(function(inputObject)
			if oldTouches[inputObject] then return end
			if currentButtonTouch ~= inputObject then return end
		
			contextButtonMoved(contextButton, inputObject, actionName)
		end)
		contextButton.InputEnded:connect(function(inputObject)
			if oldTouches[inputObject] then return end
			if currentButtonTouch ~= inputObject then return end
		
			currentButtonTouch = nil
			oldTouches[inputObject] = true
			contextButtonUp(contextButton, inputObject, actionName)
		end)
	end

	local actionIcon = Instance.new("ImageLabel")
	actionIcon.Name = "ActionIcon"
	actionIcon.Position = UDim2.new(0.175, 0, 0.175, 0)
	actionIcon.Size = UDim2.new(0.65, 0, 0.65, 0)
	actionIcon.BackgroundTransparency = 1
	if functionInfoTable["image"] and type(functionInfoTable["image"]) == "string" then
		actionIcon.Image = functionInfoTable["image"]
	end
	actionIcon.Parent = contextButton

	local actionTitle = Instance.new("TextLabel")
	actionTitle.Name = "ActionTitle"
	actionTitle.Size = UDim2.new(1,0,1,0)
	actionTitle.BackgroundTransparency = 1
	actionTitle.Font = Enum.Font.SourceSansBold
	actionTitle.TextColor3 = Color3.new(1,1,1)
	actionTitle.TextStrokeTransparency = 0
	actionTitle.FontSize = Enum.FontSize.Size18
	actionTitle.TextWrapped = true
	actionTitle.Text = ""
	if functionInfoTable["title"] and type(functionInfoTable["title"]) == "string" then
		actionTitle.Text = functionInfoTable["title"]
	end
	actionTitle.Parent = contextButton

	return contextButton
end

function createButton( actionName, functionInfoTable )
	local button = createNewButton(actionName, functionInfoTable)

	local position = nil
	for i = 1,#buttonVector do
		if buttonVector[i] == "empty" then
			position = i
			break
		end
	end

	if not position then
		position = #buttonVector + 1
	end

	if position > maxButtons then
		return -- todo: let user know we have too many buttons already?
	end

	buttonVector[position] = button
	functionTable[actionName]["button"] = button

	button.Position = buttonPositionTable[position]
	button.Parent = buttonFrame

	if buttonScreenGui and buttonScreenGui.Parent == nil then
		buttonScreenGui.Parent = playerGui
		if not buttonFrame.Parent then
			buttonFrame.Parent = buttonScreenGui
		end
	end
end

function removeAction(actionName)
	if not functionTable[actionName] then return end

	local actionButton = functionTable[actionName]["button"]

	if actionButton then
		actionButton.Parent = nil

		for i = 1,#buttonVector do
			if buttonVector[i] == actionButton then
				buttonVector[i] = "empty"
				break
			end
		end

		actionButton:Destroy()
	end

	functionTable[actionName] = nil
end

function addAction(actionName,createTouchButton,functionInfoTable)
	if functionTable[actionName] then
		removeAction(actionName)
	end
	functionTable[actionName] = {functionInfoTable}
	if createTouchButton and isTouchDevice then
		createContextActionGui()
		createButton(actionName, functionInfoTable)
	end
end

-- Connections
contextActionService.BoundActionChanged:connect( function(actionName, changeName, changeTable)
	if functionTable[actionName] and changeTable then
		local button = functionTable[actionName]["button"]
		local changeValue = changeTable[changeName]
		if FFlagHandleChangeBoundActionNilValue then
			if not changeValue and (changeName == IMAGE or changeName == TITLE or changeName == DESCRIPTION) then
				-- user is clearing the field
				changeValue = ""
			end
		end
		if button then
			if changeName == IMAGE then
				button.ActionIcon.Image = changeValue
			elseif changeName == TITLE then
				button.ActionTitle.Text = changeValue
			elseif changeName == DESCRIPTION then
				-- todo: add description to menu
			elseif changeName == POSITION then
				button.Position = changeValue
			end
		end
	end
end)

contextActionService.BoundActionAdded:connect( function(actionName, createTouchButton, functionInfoTable)
	addAction(actionName, createTouchButton, functionInfoTable)
end)

contextActionService.BoundActionRemoved:connect( function(actionName, functionInfoTable)
	removeAction(actionName)
end)

contextActionService.GetActionButtonEvent:connect( function(actionName)
	if functionTable[actionName] then
		contextActionService:FireActionButtonFoundSignal(actionName, functionTable[actionName]["button"])
	end
end)

-- make sure any bound data before we setup connections is handled
local boundActions = contextActionService:GetAllBoundActionInfo()
for actionName, actionData in pairs(boundActions) do
	addAction(actionName,actionData["createTouchButton"],actionData)
end
