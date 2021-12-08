local AXIS_SIZE = Vector3.new(2, 0.1, 0.1)
local X_COLOR = Color3.new(1, 0, 0)
local Y_COLOR = Color3.new(0, 1, 0)
local Z_COLOR = Color3.new(0, 0, 1)

local function makeAxisFor(model, color)
    local cylinder = Instance.new("Part")
    cylinder.Shape = Enum.PartType.Cylinder
    cylinder.TopSurface = Enum.SurfaceType.Smooth
    cylinder.BottomSurface = Enum.SurfaceType.Smooth
    cylinder.Parent = model
    cylinder.Size = AXIS_SIZE
    cylinder.Color = color
    return cylinder
end

local function createAxisIndicator()
    local model = Instance.new("Model")

    local xAxis = makeAxisFor(model, X_COLOR)
    xAxis.CFrame = CFrame.new(AXIS_SIZE.X / 2, 0, 0)

    local yAxis = makeAxisFor(model, Y_COLOR)
    yAxis.CFrame = CFrame.new(0, AXIS_SIZE.X / 2, 0) * CFrame.Angles(0, 0, math.rad(90))

    local zAxis = makeAxisFor(model, Z_COLOR)
    zAxis.CFrame = CFrame.new(0, 0, AXIS_SIZE.X / 2) * CFrame.Angles(0, math.rad(90), 0)

    local wrapperPart = Instance.new("Part")
    wrapperPart.Size = Vector3.new(4, 4, 4)
    wrapperPart.Transparency = 1
    wrapperPart.Parent = model

    return model
end

return createAxisIndicator
