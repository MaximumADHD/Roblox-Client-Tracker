--!nolint LocalUnused
--!nolint ImplicitReturn
--^ DEVTOOLS-4490, DEVTOOLS-4493

local RunService = game:GetService("RunService")
local GuiService = game:GetService("GuiService")
local CoreGui = game:GetService("CoreGui")
local ContentProvider = game:GetService("ContentProvider")
local UserInputService = game:GetService("UserInputService")
local InsertService = game:GetService("InsertService")
local StudioService = game:GetService("StudioService")

local DRAG_DELTA = 5
local HALF_CUBE = 0.48
local ANIMATION_TIME = 0.2
local CAMERA_DISTANCE = 1.9
local SETTING_NAME = "ViewSelector_Active"
local SETTING_NAME_POSITION = "ViewSelector_Position"
local toolbar = plugin:CreateToolbar("ViewSelector")
local toolbarbutton = toolbar:CreateButton("ViewSelector", "Show View Selector", "")
toolbarbutton.ClickableWhenViewportHidden = false
local isActive = nil
local cameraCFrame = nil
local inverseCameraCFrame = nil
local mouseDownPosition = nil
local guiPosition = nil
local lastHighLight = nil
local viewportCamera = nil
local viewSelectorScreenGui = nil
local panel = nil
local viewport = nil
local viewportSize = nil
local model = nil
local textLabelX = nil
local textLabelY = nil
local textLabelZ = nil
local textLabelXPosition = nil
local textLabelYPosition = nil
local textLabelZPosition = nil
local arrowButtons = nil
local hover = nil
local eventReceiver = nil
local currentTime = nil
local animStartCFrame = nil
local animTargetCFrame = nil
local animTargetFocus = nil
local initialCFrames = {}
local nameToRotation = {}
local textureList = {}
textureList.Normal = {}
textureList.Hover = {}

local function init()
	viewSelectorScreenGui = CoreGui:FindFirstChild("ViewSelectorScreenGui")
	if viewSelectorScreenGui then
		viewSelectorScreenGui:Destroy()
		RunService:UnbindFromRenderStep("ViewSelectorAfterCamera")
	end

	viewSelectorScreenGui = InsertService:LoadLocalAsset("rbxasset://models/ViewSelector/ViewSelector.rbxm")
	viewSelectorScreenGui.Parent = CoreGui
	viewSelectorScreenGui.Enabled = false
	panel = viewSelectorScreenGui:WaitForChild("Panel")
	viewport = panel:WaitForChild("Viewport")
	viewportSize = viewport.AbsoluteSize.x -- Viewport width and height should be same
	eventReceiver = viewport:WaitForChild("EventReceiver")
	model = viewport:WaitForChild("Model")
	textLabelX = panel:WaitForChild("X")
	textLabelY = panel:WaitForChild("Y")
	textLabelZ = panel:WaitForChild("Z")
	arrowButtons = panel:WaitForChild("ArrowButtons")
	arrowButtons.Visible = false
	hover = false

	viewportCamera = Instance.new("Camera")
	viewportCamera.Parent = viewport
	viewportCamera.CFrame = CFrame.new(Vector3.new(0, 0, 0), Vector3.new(0, 0, -1))
	viewportCamera.FieldOfView = 70
	viewport.CurrentCamera = viewportCamera

	local localizationTable = script.Parent.ViewSelectorLocalizationTable
	local translator = localizationTable:GetTranslator(StudioService.StudioLocaleId)
	local fallbackTranslator = localizationTable:GetTranslator("en-us")
	local children = model:GetChildren()
	for i = 1, #children do
		local child = children[i]
		if child.ClassName == "Part" or child.ClassName == "MeshPart" then
			child.CFrame = model.CFrame:ToObjectSpace(child.CFrame) -- Move back to origin
		elseif child.ClassName == "Decal" then
			local keyNormal = child.Name
			local keyHover = child.Name .. "_hover"
			local success = pcall(function()
				textureList.Normal[child.Name] = translator:FormatByKey(keyNormal)
				textureList.Hover[child.Name] = translator:FormatByKey(keyHover)
			end)
			if not success then
				textureList.Normal[child.Name] = fallbackTranslator:FormatByKey(keyNormal)
				textureList.Hover[child.Name] = fallbackTranslator:FormatByKey(keyHover)
			end
			child.Texture = textureList.Normal[child.Name]
		end
	end

	model.CFrame = CFrame.new() -- Move back to origin

	local dirToName = {"n", "0", "p"}
	for x = -1, 1 do
		for y = -1, 1 do
			for z = -1, 1 do
				local name = dirToName[x + 2] .. dirToName[y + 2] .. dirToName[z + 2]
				nameToRotation[name] = CFrame.new(Vector3.new(), Vector3.new(-x, -y, -z).Unit)
			end
		end
	end
	nameToRotation["0p0"] = CFrame.fromEulerAnglesYXZ(-math.pi / 2, math.pi, 0)
	nameToRotation["0n0"] = CFrame.fromEulerAnglesXYZ(-math.pi / 2, math.pi, 0)

	local extra = HALF_CUBE * 1.2
	textLabelXPosition = Vector3.new(extra, -HALF_CUBE, -HALF_CUBE)
	textLabelYPosition = Vector3.new(-HALF_CUBE, extra, -HALF_CUBE)
	textLabelZPosition = Vector3.new(-HALF_CUBE, -HALF_CUBE, extra)

	isActive = plugin:GetSetting(SETTING_NAME)
	if isActive == nil then
		isActive = true
	end
	toolbarbutton:SetActive(isActive)
end

local function isInvalidCameraType()
	local cameraType = game.Workspace.CurrentCamera.CameraType
	if cameraType == Enum.CameraType.Attach or cameraType == Enum.CameraType.Scriptable then
		return true
	end
	return false
end

local function getIntersectionPoint(origin, direction)
	local tmin, tmax = -100, 100
	local p = -origin
	local function axis(e, f)
		if math.abs(f) > 0.001 then
			local t1 = (e + HALF_CUBE) / f
			local t2 = (e - HALF_CUBE) / f
			if t1 > t2 then t1, t2 = t2, t1 end
			if t1 > tmin then tmin = t1 end
			if t2 < tmax then tmax = t2 end
			if tmin > tmax then return 0 end
			if tmax < 0 then return 0 end
		elseif - e - HALF_CUBE > 0 or - e + HALF_CUBE < 0 then
			return 0
		end
	end
	if axis(p.X, direction.X) == 0 then return end
	if axis(p.Y, direction.Y) == 0 then return end
	if axis(p.Z, direction.Z) == 0 then return end
	if tmin > 0 then
		return origin + direction * tmin
	else
		return origin + direction * tmax
	end
end

local function enableHighlight(obj)
	if not obj then return end
	if obj.ClassName == "Decal" then
		obj.Texture = textureList.Hover[obj.Name]
	else
		obj.Transparency = 0.3
	end
end

local function cancelHighlight(obj)
	if not obj then return end
	if obj.ClassName == "Decal" then
		obj.Texture = textureList.Normal[obj.Name]
	else
		obj.Transparency = 1
	end
end

local function getNameFromIntersectionPoint(point)
	local absx, absy, absz = math.abs(point.x), math.abs(point.y), math.abs(point.z)
	local function getFaceName(n)
		if n >= 0 then
			return "p"
		else
			return "n"
		end
	end

	local edge = HALF_CUBE * 2.2
	if (absx + absy + absz) > edge then
		return getFaceName(point.x) .. getFaceName(point.y) .. getFaceName(point.z)
	else
		if absx > absy and absx > absz then
			return getFaceName(point.x) .. "00"
		elseif absy > absx and absy > absz then
			return "0" .. getFaceName(point.y) .. "0"
		else
			return "00" .. getFaceName(point.z)
		end
	end
end

local function screenPointToViewport(x, y)
	local inset = GuiService:GetGuiInset()
	local guix = x - viewport.AbsolutePosition.X - inset.x
	local guiy = y - viewport.AbsolutePosition.Y - inset.y
	return guix, guiy
end

local function onMouseMove(x, y)
	if isInvalidCameraType() then
		return
	end
	local guix, guiy = screenPointToViewport(x, y)
	local ray = viewportCamera:ViewportPointToRay(guix / viewportSize, guiy / viewportSize, 0)
	local direction = cameraCFrame:VectorToWorldSpace(ray.Direction)
	local origin = cameraCFrame:PointToWorldSpace(ray.Origin)
	local point = getIntersectionPoint(ray.Origin, ray.Direction)

	if point then
		local name = getNameFromIntersectionPoint(point)
		local highlight = model[name]
		if lastHighLight ~= highlight then
			cancelHighlight(lastHighLight)
			enableHighlight(highlight)
			lastHighLight = highlight
		end
	else
		cancelHighlight(lastHighLight)
		lastHighLight = nil
	end
end

local function updateArrowButtons()
	if not hover then
		return
	end
	local look = cameraCFrame.LookVector
	local ep = 0.001
	local function parallel(axis)
		return math.abs(math.abs(look:Dot(axis)) - 1) < ep
	end
	arrowButtons.Visible = parallel(Vector3.new(1, 0, 0))
		or parallel(Vector3.new(0, 1, 0))
		or parallel(Vector3.new(0, 0, 1))
end

local function onMouseEnter()
	hover = true
	updateArrowButtons()
end

local function onMouseLeave()
	cancelHighlight(lastHighLight)
	lastHighLight = nil
	arrowButtons.Visible = false
	hover = false
end

local function onInputChanged(input)
	if not mouseDownPosition then
		return
	end
	if input.UserInputType == Enum.UserInputType.MouseMovement then
		local x = input.Position.x
		local y = input.Position.y
		local moveDelta = math.abs(mouseDownPosition.x - x) + math.abs(mouseDownPosition.y - y)
		if moveDelta > DRAG_DELTA then
			local newx = guiPosition.X.Offset + x - mouseDownPosition.x
			local newy = guiPosition.Y.Offset + y - mouseDownPosition.y
			panel.Position = UDim2.new(guiPosition.X.Scale, newx, guiPosition.Y.Scale, newy)
		end
	end
end

local function loadPosition()
	local function loadAxis(axis, default)
		local mainViewSize = game.Workspace.CurrentCamera.ViewportSize[axis]
		local anchor, scale = 0.5, 0.5
		if mainViewSize > viewportSize then
			anchor = plugin:GetSetting(SETTING_NAME_POSITION .. axis) or default
			local leftTopOffset = anchor * (mainViewSize - viewportSize)
			scale = (leftTopOffset + anchor * viewportSize) / mainViewSize
		end
		return anchor, scale
	end
	local aX, sX = loadAxis("X", 1)
	local aY, sY = loadAxis("Y", 0)
	panel.AnchorPoint = Vector2.new(aX, aY)
	panel.Position = UDim2.new(sX, 0, sY, 0)
end

local function clampAndSavePosition()
	local function saveAxis(axis)
		local mainViewSize = game.Workspace.CurrentCamera.ViewportSize[axis]
		local anchor, scale = 0.5, 0.5
		if mainViewSize > viewportSize then
			local leftTopOffset = math.clamp(panel.AbsolutePosition[axis], 0, mainViewSize - viewportSize)
			anchor = leftTopOffset / (mainViewSize - viewportSize)
			scale = (leftTopOffset + anchor * viewportSize) / mainViewSize
		end
		plugin:SetSetting(SETTING_NAME_POSITION .. axis, anchor)
		return anchor, scale
	end
	local aX, sX = saveAxis("X")
	local aY, sY = saveAxis("Y")
	panel.AnchorPoint = Vector2.new(aX, aY)
	panel.Position = UDim2.new(sX, 0, sY, 0)
end

local function onInputEnded(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 and mouseDownPosition then
		mouseDownPosition = nil
		clampAndSavePosition()
	end
end

local function onMouseButton1Down(x, y)
	mouseDownPosition = Vector2.new(x, y)
	guiPosition = panel.Position
end

local function tweenCameraToDirection(rotationCFrame)
	local currentCamera = game.Workspace.CurrentCamera
	local focusPosition = currentCamera.Focus.Position
	local focusToCameraDistance = (focusPosition - currentCamera.CFrame.Position).Magnitude
	local targetPosition = focusPosition - rotationCFrame.LookVector * focusToCameraDistance
	animTargetFocus = focusPosition
	animTargetCFrame = rotationCFrame + targetPosition
	animStartCFrame = currentCamera.CFrame
	currentTime = 0
end

local function onMouseButton1Up(x, y)
	if not mouseDownPosition then
		return
	end
	local moveDelta = math.abs(mouseDownPosition.x - x) + math.abs(mouseDownPosition.y - y)
	mouseDownPosition = nil
	if moveDelta <= DRAG_DELTA then
		if lastHighLight then
			tweenCameraToDirection(nameToRotation[lastHighLight.Name])
		end
	else
		clampAndSavePosition()
	end
end

local function updateXYZLabelPosition()
	local function updatePosition(label, vector)
		local position3D = model.CFrame * vector
		if vector:Dot(cameraCFrame.LookVector) < 0 then
			label.ZIndex = viewport.ZIndex + 1
		else
			label.ZIndex = viewport.ZIndex - 1
		end

		local pViewport, inViewport = viewportCamera:WorldToViewportPoint(position3D)
		if inViewport then
			label.Visible = true
			label.Position = UDim2.new(0, pViewport.x * viewportSize, 0, pViewport.y * viewportSize)
		else
			label.Visible = false
		end
	end

	updatePosition(textLabelX, textLabelXPosition)
	updatePosition(textLabelY, textLabelYPosition)
	updatePosition(textLabelZ, textLabelZPosition)
end

local function afterCamera(delta)
	local currentCamera = game.Workspace.CurrentCamera
	if currentTime then
		currentTime = currentTime + delta
		if currentTime > ANIMATION_TIME then
			currentCamera.CFrame = animTargetCFrame
			currentCamera.Focus = CFrame.new(animTargetFocus)
			currentTime = nil
		else
			currentCamera.CFrame = animStartCFrame:Lerp(animTargetCFrame, currentTime / ANIMATION_TIME)
		end
	end

	local cf = currentCamera.CFrame
	viewportCamera.CFrame = CFrame.fromMatrix(-cf.LookVector * CAMERA_DISTANCE, cf.RightVector, cf.UpVector, -cf.LookVector)
	if viewportCamera.CFrame ~= cameraCFrame then
		cameraCFrame = viewportCamera.CFrame
		viewport.LightDirection = (cameraCFrame - cameraCFrame.Position):ToWorldSpace(CFrame.new(-1, -1, -1)).Position
		updateXYZLabelPosition()
		updateArrowButtons()
	end
end

local function showViewSelector(enable)
	if viewSelectorScreenGui.Enabled == enable then
		return
	end
	plugin:SetSetting(SETTING_NAME, enable)
	if enable then
		pcall(function() ContentProvider:PreloadAsync({viewSelectorScreenGui}) end)
		afterCamera(0)
		RunService:BindToRenderStep("ViewSelectorAfterCamera", Enum.RenderPriority.Camera.Value + 1, afterCamera)
		loadPosition()
	else
		RunService:UnbindFromRenderStep("ViewSelectorAfterCamera")
	end

	toolbarbutton:SetActive(enable)
	viewSelectorScreenGui.Enabled = enable
end

local function onToolBarButtonClicked()
	isActive = not isActive
	showViewSelector(isActive)
end

local function bindArrowButtonEvents(button, direction)
	button.MouseButton1Click:connect(function()
		local right = cameraCFrame.RightVector
		local up = cameraCFrame.UpVector
		local axis = - right * direction.y + up * direction.x
		local rotation = CFrame.fromAxisAngle(axis, math.pi / 2)
		local look = rotation * cameraCFrame.LookVector
		local rayStart = -look * 2;
		local point = getIntersectionPoint(rayStart, look)
		if point then
			local name = getNameFromIntersectionPoint(point)
			tweenCameraToDirection(nameToRotation[name])
		end
	end)
	button.MouseButton1Up:connect(onMouseButton1Up)
	button.MouseEnter:Connect(function()
		button.ImageColor3 = Color3.fromRGB(79, 178, 229)
		button.ImageTransparency = 0
	end)
	button.MouseLeave:Connect(function()
		button.ImageColor3 = Color3.fromRGB(247, 249, 255)
		button.ImageTransparency = 0.6
	end)
end

if not RunService:IsEdit() then
	toolbarbutton.Enabled = false
	return
end

init()
showViewSelector(isActive)
toolbarbutton.Click:connect(onToolBarButtonClicked)
eventReceiver.MouseMoved:connect(onMouseMove)
eventReceiver.MouseEnter:connect(onMouseEnter)
eventReceiver.MouseLeave:connect(onMouseLeave)
eventReceiver.MouseButton1Down:connect(onMouseButton1Down)
eventReceiver.MouseButton1Up:connect(onMouseButton1Up)
UserInputService.InputChanged:connect(onInputChanged)
UserInputService.InputEnded:connect(onInputEnded)

bindArrowButtonEvents(arrowButtons.RightArrow, Vector2.new(1, 0))
bindArrowButtonEvents(arrowButtons.LeftArrow, Vector2.new(-1, 0))
bindArrowButtonEvents(arrowButtons.UpArrow, Vector2.new(0, 1))
bindArrowButtonEvents(arrowButtons.DownArrow, Vector2.new(0, -1))
