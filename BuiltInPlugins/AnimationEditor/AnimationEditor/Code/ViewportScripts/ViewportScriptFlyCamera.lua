local Camera = {}

local CameraShiftMoveFactor = 0.2
local CameraKeyMoveFactor = 1.5

function calculateTranslation(camera, navKeys, accelerationMultiplier)
  local current = camera.CFrame
  local look = current.lookVector
  local right = current.rightVector
  local up = current.upVector

  local delta = Vector3.new()
  if navKeys:forward() then
    delta = delta + look * accelerationMultiplier
  end
  if navKeys:backward() then
    delta = delta - look * accelerationMultiplier
  end
  if navKeys:right() then
    delta = delta + right * accelerationMultiplier
  end
  if navKeys:left() then
    delta = delta - right * accelerationMultiplier
  end
  if navKeys:up() then
    delta = delta - up * accelerationMultiplier
  end
  if navKeys:down() then
    delta = delta + up * accelerationMultiplier
  end

  return delta
end

function doFly(camera, navKeys, steps)
  local shiftFly = navKeys:shiftKeyDown()

  local framesPerSecond = 60
  local accelerationMultiplier = 0.5

  if shiftFly then
    accelerationMultiplier = accelerationMultiplier * CameraShiftMoveFactor
  elseif steps > (2 * framesPerSecond) then
    accelerationMultiplier = math.min(15, steps/(4 * framesPerSecond))
  end

  accelerationMultiplier = accelerationMultiplier * CameraKeyMoveFactor

  local delta = calculateTranslation(camera, navKeys, accelerationMultiplier)
  camera.CFrame = camera.CFrame + delta
  camera.Focus = camera.CFrame + camera.CFrame.lookVector * 2
end

function checkDoFly()
  local navKeys = Camera.Keyboard:getNavKeys()

  if navKeys:navKeyDown() then
    local currentCamera = workspace.CurrentCamera
    if currentCamera and currentCamera.CameraType == Enum.CameraType.Fixed then
      doFly(currentCamera, navKeys, Camera.FlyCamSteps)
      Camera.FlyCamSteps = Camera.FlyCamSteps + 1
    end
  else
    Camera.FlyCamSteps = 0
  end
end

function Camera:focusCameraOnModel(camera, model)
  local pos = model.PrimaryPart.CFrame.p + (model.PrimaryPart.CFrame.LookVector * 10)
  camera.CFrame = CFrame.new(Vector3.new(pos.X, pos.Y + 3, pos.Z))
  camera.Focus = CFrame.new(model.PrimaryPart.CFrame.p)
end

function Camera:init(Paths)
  Camera.Paths = Paths
  Camera.Keyboard = Paths.InputKeyboard
  Camera.Connections = Paths.UtilityScriptConnections:new(Paths)
  Camera.FlyCamSteps = 0

  local RunService = game:GetService("RunService")
  Camera.Connections:add(RunService.RenderStepped:connect(checkDoFly))
end

function Camera:terminate()
  Camera.Connections:terminate()
  Camera.FlyCamSteps = 0
end

return Camera
