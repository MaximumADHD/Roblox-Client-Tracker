local userInputService = game:GetService('UserInputService')
local sharedStorage = game:GetService('ReplicatedStorage')
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:FindFirstChild("RobloxGui")
local Modules = RobloxGui.Modules

local AppState = require(Modules.LuaApp.Legacy.AvatarEditor.AppState)
local AppGui = require(Modules.LuaApp.Legacy.AvatarEditor.AppGui)
local AppScene = require(Modules.LuaApp.Legacy.AvatarEditor.AppScene)

local AvatarEditorScene = AppScene.RootScene

local CreateCharacterManager = require(Modules.LuaApp.Legacy.AvatarEditor.CharacterManager)
local Utilities = require(Modules.LuaApp.Legacy.AvatarEditor.Utilities)
local tween = require(Modules.LuaApp.Legacy.AvatarEditor.TweenInstanceController)

local spriteManager = require(Modules.LuaApp.Legacy.AvatarEditor.SpriteSheetManager)
local LayoutInfo = require(Modules.LuaApp.Legacy.AvatarEditor.LayoutInfo)
local CameraController = require(Modules.LuaApp.Legacy.AvatarEditor.CameraController)

local Flags = require(Modules.LuaApp.Legacy.AvatarEditor.Flags)
local AvatarEditorUseModernHeader = Flags:GetFlag("AvatarEditorUseModernHeader2")

while not game:GetService('Players').LocalPlayer do wait() end


return { new = function(topOffset_or_AppGui)

local appGui

if AvatarEditorUseModernHeader then
	appGui = topOffset_or_AppGui
else
	local topOffset = topOffset_or_AppGui or 0

	appGui = AppGui(
		UDim2.new(0, 0, 0,  topOffset),
		UDim2.new(1, 0, 1, -topOffset))
end

local camera = game.Workspace.CurrentCamera
local topFrame = appGui.RootGui:WaitForChild('TopFrame')
local mainFrame = appGui.RootGui:WaitForChild('Frame')
local scrollingFrame = mainFrame:WaitForChild('ScrollingFrame')
local equippedFrameTemplate = appGui.RootGui:WaitForChild('SelectionFrameTemplate')
local fakeScrollBar = mainFrame:WaitForChild('FakeScrollBar')
local detailsMenuFrame = appGui.RootGui:WaitForChild('DetailsFrame')

-- Add the gui into the renderable PlayerGui (this does not
-- happen automatically because characterAutoLoads is false)
local starterGuiChildren = game.StarterGui:GetChildren()
for i = 1, #starterGuiChildren do
	local guiClone = starterGuiChildren[i]:clone()
	guiClone.Parent = RobloxGui.Parent
end


scrollingFrame.ClipsDescendants = true
if LayoutInfo.isLandscape then
	scrollingFrame.Position = UDim2.new(0, 108, 0, 0)
	scrollingFrame.Size = UDim2.new(1, -111, 1, 0)
else
	scrollingFrame.Position = UDim2.new(0, 0, 0, 50)
	scrollingFrame.Size = UDim2.new(1, 0, 1, -50)
end


spriteManager.equipDescendants(appGui.RootGui)


if LayoutInfo.isLandscape then
	topFrame.Size = UDim2.new(0.5, 0, 1, 0)

	mainFrame.Position = UDim2.new(0.5, -60, 0, 0)
	mainFrame.Size = UDim2.new(0.5, 60, 1, 0)
	mainFrame.BackgroundColor3 = Color3.new(0, 0, 0)
	mainFrame.BackgroundTransparency = 0.5

	scrollingFrame.Size = UDim2.new(1, -128, 1, 0)
	scrollingFrame.Position = UDim2.new(0, 116, 0, 0)

	detailsMenuFrame.BackgroundTransparency = 1
	detailsMenuFrame.ClipsDescendants = false
	detailsMenuFrame.Background.Visible = true

	AvatarEditorScene.Model.Unions.BaseCylinder.BillboardGui.TextLabel.Size = UDim2.new(0.3, 0, 1, 0)
	AvatarEditorScene.Model.Unions.BaseCylinder.BillboardGui.TextLabel.Position = UDim2.new(0.5, 0, 0, 0)
end


local function GetNameValue(playerName)
	local value = 0
	for index = 1, #playerName do
		local cValue = string.byte(string.sub(playerName, index, index))
		local reverseIndex = #playerName - index + 1
		if #playerName%2 == 1 then
			reverseIndex = reverseIndex - 1
		end
		if reverseIndex%4 >= 2 then
			cValue = -cValue
		end
		value = value + cValue
	end
	return value
end


local characterManager = CreateCharacterManager(
	{
		get = function(url)
			return Utilities.httpGet(url)
		end;

		post = function(url, data)
			return Utilities.httpPost(url, data)
		end;
	},
	{
		CharacterR6 = sharedStorage:WaitForChild('CharacterR6');
		CharacterR15 = sharedStorage:WaitForChild('CharacterR15');
	},
	GetNameValue(game.Players.LocalPlayer.Name)+1
)

local WarningWidget = require(Modules.LuaApp.Legacy.AvatarEditor.WarningWidget)(topFrame.Warning, characterManager)

local function updateViewMode(desiredViewMode)
	local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut, 0, false, 0)
	if desiredViewMode then
		if LayoutInfo.isLandscape then
			tween(mainFrame, tweenInfo, { Position = UDim2.new(1, 0, 0, 0) })
			tween(topFrame, tweenInfo, { Size = UDim2.new(1, 0, 1, 0) })
		else
			tween(mainFrame, tweenInfo, { Position = UDim2.new(0, 0, 1, 0) })
			tween(topFrame, tweenInfo, { Size = UDim2.new(1, 0, 1, 0) })
		end
	else
		if LayoutInfo.isLandscape then
			tween(mainFrame, tweenInfo, { Position = UDim2.new(0.5, -60, 0, 0) })
			tween(topFrame, tweenInfo, { Size = UDim2.new(0.5, 0, 1, 0) })
		else
			tween(mainFrame, tweenInfo, { Position = UDim2.new(0, 0, .5, -18) })
			tween(topFrame, tweenInfo, { Size = UDim2.new(1, 0, 0.5, -18) })
		end
	end
end

if not AvatarEditorUseModernHeader then
	require(Modules.LuaApp.Legacy.AvatarEditor.OldHeader).new("Avatar").rbx.Parent = appGui.RootGui
end

require(Modules.LuaApp.Legacy.AvatarEditor.AvatarTypeSwitch)(
	appGui.RootGui:WaitForChild('AvatarTypeSwitch'))

characterManager.initFromServer()


local longPressMenu = require(Modules.LuaApp.Legacy.AvatarEditor.LongPressMenu)(
	characterManager,
	appGui.RootGui:WaitForChild('ShadeLayer'),
	appGui.RootGui:WaitForChild('MenuFrame'),
	appGui.RootGui:WaitForChild('DetailsFrame')
)

require(Modules.LuaApp.Legacy.AvatarEditor.AccessoriesColumn)(
	appGui.RootGui:WaitForChild('AccessoriesColumn'), longPressMenu)

local PageManager = require(Modules.LuaApp.Legacy.AvatarEditor.PageManagerMobile)(
	game.Players.LocalPlayer.userId,
	equippedFrameTemplate,
	scrollingFrame,
	characterManager,
	longPressMenu)

local categoryButtonTemplate = LayoutInfo.isLandscape and appGui.RootGui:WaitForChild('TabletCategoryButtonTemplate') or
	appGui.RootGui:WaitForChild('CategoryButtonTemplate')
local CategoryMenu = require(Modules.LuaApp.Legacy.AvatarEditor.CategoryMenu)(
	mainFrame:WaitForChild('TopMenuContainer'),
	categoryButtonTemplate)

require(Modules.LuaApp.Legacy.AvatarEditor.DarkCoverManager)(
	appGui.RootGui:WaitForChild('DarkCover'), CategoryMenu)

require(Modules.LuaApp.Legacy.AvatarEditor.TabList)(CategoryMenu,
	mainFrame:WaitForChild('TabList'),
	mainFrame:WaitForChild('TabListContainer'))



camera.CameraType = Enum.CameraType.Scriptable
camera.CFrame = CFrame.new(
	LayoutInfo.CameraDefaultPosition,
	LayoutInfo.CameraDefaultFocusPoint)
camera.FieldOfView = 70

local cameraController = CameraController(
	{
		tweenCamera = function(targetCFrame, targetFOV)
			local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut, 0, false, 0)
			local propGoals = {
				CFrame = targetCFrame;
				FieldOfView = targetFOV;
			}
			tween(camera, tweenInfo, propGoals)
		end
	},
	LayoutInfo.CameraCenterScreenPosition
)

characterManager:setUpdateCameraCallback(cameraController.updateCamera)



--This function fades the fake scrollbar out after not being used for 3 seconds
local lastScrollPosition = fakeScrollBar.AbsolutePosition.Y
local lastScrollCount = 0
local function updateScrollBarVisibility()
	local thisScrollPosition = fakeScrollBar.AbsolutePosition.Y
	if thisScrollPosition ~= lastScrollPosition then
		lastScrollPosition = thisScrollPosition

		lastScrollCount = lastScrollCount + 1
		local thisScrollCount = lastScrollCount

		fakeScrollBar.ImageTransparency = .65
		wait(2)
		if thisScrollCount == lastScrollCount then
			local tweenInfo = TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut, 0, false, 0)
			tween(fakeScrollBar, tweenInfo, { ImageTransparency = 1 }).Completed:wait()
		end
	end
end

local fakeScrollBarWidth = 4

scrollingFrame.Changed:connect(function(prop)
	local barSize = 0
	local scrollingFrameSize = scrollingFrame.AbsoluteSize.Y
	local canvasPosition = scrollingFrame.CanvasPosition.Y
	local canvasSize = scrollingFrame.CanvasSize.Y.Offset
	if scrollingFrameSize < canvasSize then
		barSize = (scrollingFrameSize / canvasSize) * scrollingFrameSize
	end
	if barSize > 0 then
		fakeScrollBar.Visible = true
		fakeScrollBar.Size = UDim2.new(0,fakeScrollBarWidth,0,barSize)
		local scrollPercent = canvasPosition/(canvasSize-scrollingFrameSize)
		fakeScrollBar.Position =
			UDim2.new( 1, -fakeScrollBarWidth, 0, (scrollingFrameSize-barSize) * scrollPercent )
				+ scrollingFrame.Position
	else
		fakeScrollBar.Visible = false
	end

	Utilities.fastSpawn(updateScrollBarVisibility)

	if prop == 'CanvasPosition' then
		PageManager:updateListContent(canvasPosition)
	end
end)


AppState.Store.Changed:Connect(function(newState, oldState)
	if newState.FullView ~= oldState.FullView then
		updateViewMode(newState.FullView)
	end
end)


local SetAvatarEditorFullView = require(Modules.LuaApp.Actions.SetAvatarEditorFullView)

local function setViewMode(desiredViewMode)
	if desiredViewMode ~= AppState.Store:GetState().FullView then
		AppState.Store:Dispatch(SetAvatarEditorFullView(desiredViewMode))
	end
end

local rotation = 0
local lastRotation = 0
local downKeys = {}
local lastTouchInput = nil
local lastTouchPosition = nil
local lastInputBeganPosition = Vector3.new(0,0,0)
local lastEmptyInput = 0
local characterRotationSpeed = .0065
local tapDistanceThreshold = 10 -- maximum distance between input begin and end for it to count as a tap
local doubleTapThreshold = .25

local function handleInput(input, soaked)
	if input.UserInputState == Enum.UserInputState.Begin then
		downKeys[input.KeyCode] = true
		if not soaked then

			if input.UserInputType == Enum.UserInputType.MouseButton1 then
				downKeys[Enum.UserInputType.MouseButton1] = true
				lastTouchPosition = input.Position
				lastTouchInput = input
			end
			if input.UserInputType == Enum.UserInputType.Touch then
				lastTouchInput = input
				lastTouchPosition = input.Position
			end

			if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
				--This is used for doubletap detection
				lastInputBeganPosition = input.Position
			end
		end
	elseif input.UserInputState == Enum.UserInputState.End then
		downKeys[input.KeyCode] = false
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			downKeys[Enum.UserInputType.MouseButton1] = false
		end
		if lastTouchInput == input or input.UserInputType == Enum.UserInputType.MouseButton1 then
			lastTouchInput = nil
		end

		if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
			if (lastInputBeganPosition and lastInputBeganPosition - input.Position).magnitude <= tapDistanceThreshold then
				local thisEmptyInput = tick()
				if thisEmptyInput - lastEmptyInput <= doubleTapThreshold then
					setViewMode(not AppState.Store:GetState().FullView)
				end
				lastEmptyInput = thisEmptyInput
			end
		end
	elseif input.UserInputState == Enum.UserInputState.Change then
		if (lastTouchInput == input and input.UserInputType == Enum.UserInputType.Touch)
			or (input.UserInputType == Enum.UserInputType.MouseMovement and downKeys[Enum.UserInputType.MouseButton1]) then

			local touchDelta = (input.Position - lastTouchPosition)
			lastTouchPosition = input.Position
			rotation = rotation + touchDelta.x * characterRotationSpeed
		end
	end
end

userInputService.InputBegan:connect(handleInput)
userInputService.InputChanged:connect(handleInput)
userInputService.InputEnded:connect(handleInput)

userInputService.TouchSwipe:connect(function(swipeDirection, numberOfTouches, soaked)
	if not soaked and not LayoutInfo.isLandscape then
		if AppState.Store:GetState().FullView and swipeDirection == Enum.SwipeDirection.Up then
			setViewMode(false)
		elseif not AppState.Store:GetState().FullView and swipeDirection == Enum.SwipeDirection.Down then
			setViewMode(true)
		end
	end
end)

local function onLastInputTypeChanged(inputType)
	local isGamepad = inputType.Name:find('Gamepad')
	local isTouch = inputType == Enum.UserInputType.Touch
	local isMouse = inputType.Name:find('Mouse') or inputType == Enum.UserInputType.Keyboard

	if not isGamepad and not isTouch and not isMouse then
		return
	end

	if isGamepad then
		userInputService.MouseIconEnabled = false
	else
		userInputService.MouseIconEnabled = true
	end
end

userInputService.LastInputTypeChanged:connect(onLastInputTypeChanged)
onLastInputTypeChanged(userInputService:GetLastInputType())

local function lockPart(part)
	if part:IsA('BasePart') then
		part.Locked = true
	end
end

game.Workspace.DescendantAdded:connect(lockPart)
for _, v in next, Utilities.getDescendants(game.Workspace) do
	lockPart(v)
end

game.OnClose = function()
	-- Passing true here makes the save function block until the save is complete,
	-- otherwise, the game shutdown process will probably kill the threads it spanws.
	characterManager.saveToServer(true)
end

require(Modules.LuaApp.Legacy.AvatarEditor.FullView)(
	topFrame:WaitForChild('FullViewButton'))



local rotationalInertia = .9

spawn(function()
	local rotationalMomentum = 0
	local delta = 0

	while true do
		local tilt = 0
		local offsetTheseRots = 0

		if downKeys[Enum.KeyCode.Left] or downKeys[Enum.KeyCode.A] then
			rotation = rotation - delta*math.rad(180)
		elseif downKeys[Enum.KeyCode.Right] or downKeys[Enum.KeyCode.D] then
			rotation = rotation + delta*math.rad(180)
		end

		if userInputService.GamepadEnabled then
			for _, gamepad in next, userInputService:GetNavigationGamepads() do
				local state = userInputService:GetGamepadState(gamepad)

				for _, obj in next, state do
					if obj.KeyCode == Enum.KeyCode.Thumbstick2 then
						if math.abs(obj.Position.x) > 0.25 then
							local deltaRotation = obj.Position.x*delta*math.rad(180)
							rotation = rotation + deltaRotation
							if userInputService.TouchEnabled or userInputService.MouseEnabled then
								offsetTheseRots = offsetTheseRots - deltaRotation
							end
						end
						if math.abs(obj.Position.y) > 0.25 then
							tilt = tilt + obj.Position.y*math.rad(45)
						end
					end
				end
			end
		end

		if lastTouchInput then
			rotationalMomentum = rotation - lastRotation
		elseif rotationalMomentum ~= 0 then
			rotationalMomentum = rotationalMomentum * rotationalInertia
			if math.abs(rotationalMomentum) < .001 then
				rotationalMomentum = 0
			end
			rotation = rotation + rotationalMomentum
		end

		characterManager.setRotation(rotation)
		lastRotation = rotation

		delta = Utilities.renderWait()
	end
end)



appGui.ScreenGui.Parent = CoreGui
appGui.EdgeShadingGui.Parent = CoreGui
appGui.ScreenGui.Enabled = false
appGui.EdgeShadingGui.Enabled = false

local AppMain = {}

AppMain.appGui = appGui.ScreenGui

function AppMain:Start()
	appGui.ScreenGui.Enabled = true
	appGui.EdgeShadingGui.Enabled = true
	AvatarEditorScene.Parent = game.Workspace
	cameraController:Focus()
	characterManager.show()
	WarningWidget:Focus()
end

function AppMain:Stop()
	appGui.ScreenGui.Enabled = false
	appGui.EdgeShadingGui.Enabled = false
	AvatarEditorScene.Parent = nil
	cameraController:RemoveFocus()
	characterManager.hide()
	WarningWidget:RemoveFocus()
end

return AppMain;


end }
