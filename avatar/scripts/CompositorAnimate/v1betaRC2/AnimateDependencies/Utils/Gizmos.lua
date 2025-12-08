--[[
    Usage:
    local Gizmos = require(Path.To.Gizmos)
    -- anywhere in the code:
    Gizmos:SetColor('red')
    Gizmos:DrawLine(Vector3.zero, Vector3.yAxis)

    Supports:
        - SetColor()
        - DrawLine()
        - DrawRay()
        - DrawPath()
        - DrawPoint()
        - DrawCube()
        - DrawCircle()
        - DrawSphere()
        - DrawPyramid()
        - DrawCFrame()
        - DrawText()
        - DrawRaycast()
        - DrawSpherecast()
        - DrawBlockcast()
        - AddToPath()
        - Log()
]]

local module = {}

local gizmos: WireframeHandleAdornment = nil
local label: TextLabel = nil
local commands = {}
local trailers = {}

local hitColor, missColor = "green", "red"

module.Clear = true

local colors = {
    red = Color3.new(1, 0, 0),
    green = Color3.new(0, 1, 0),
    blue = Color3.new(0, 0, 1),
    yellow = Color3.new(1, 1, 0),
    cyan = Color3.new(0, 1, 1),
    magenta = Color3.new(1, 0, 1),
    orange = Color3.new(1, 0.5, 0),
    purple = Color3.new(0.5, 0, 1),
    white = Color3.new(1, 1, 1),
    gray = Color3.new(0.5, 0.5, 0.5),
    black = Color3.new(0, 0, 0),
}

function findOrMakeGizmos()
    gizmos = gizmos or workspace:FindFirstChild("Gizmos")
    if not gizmos then
        gizmos = Instance.new("WireframeHandleAdornment")
        gizmos.Name = "Gizmos"
        gizmos.Parent = workspace
        assert(
            workspace.WorldPivot:FuzzyEq(CFrame.identity),
            "workspace is expected to have identity CFrame"
        )
        gizmos.Color3 = Color3.new(1, 1, 1)
        gizmos.Adornee = workspace
        gizmos.AlwaysOnTop = true
    end
end

function findOrMakeLabel()
    local localPlayer = game:GetService("Players").LocalPlayer
    if not localPlayer then
        return
    end
    label = localPlayer:FindFirstChild("TextLabelGizmos", true)
    if not label then
        local playerGui = localPlayer:WaitForChild("PlayerGui")
        if not playerGui then
            return
        end
        local screengui = Instance.new("ScreenGui", playerGui)
        screengui.Name = "ScreenGuiGizmos"
        label = Instance.new("TextLabel", screengui)
        label.Name = "TextLabelGizmos"
        label.BackgroundTransparency = 1
        label.Position = UDim2.new(0, 10, 1, -10)
        label.AnchorPoint = Vector2.new(0, 1)
        label.TextXAlignment = Enum.TextXAlignment.Left
        label.TextYAlignment = Enum.TextYAlignment.Bottom
        label.FontFace = Font.fromEnum(Enum.Font.RobotoMono)
        label.TextColor3 = Color3.new(1, 1, 1)
        label.TextStrokeColor3 = Color3.new(0, 0, 0)
        label.TextStrokeTransparency = 0.5
        label.TextSize = 14
    end
end

----------

-- This class is used to store the last N added elements, useful for trailing values like plots and paths.
local Trailer = {}
Trailer.__index = Trailer

function Trailer.new(limit)
    local defaultLimit = 300
    local self = setmetatable({}, Trailer)
    self.limit = limit or defaultLimit
    self.values = {}
    return self
end

function Trailer:addValue(value)
    table.insert(self.values, value)
    if #self.values > self.limit then
        table.remove(self.values, 1)
    end
end

function Trailer:getValues()
    return self.values
end

------------------------------------- PRIVATE

local function setColor(color: string | Color3)
    local color3 = if typeof(color) == "string" then colors[color] else color
    gizmos.Color3 = color3
end

local function drawLine(from: Vector3, to: Vector3)
    gizmos:AddLine(from, to)
end

local function drawRay(origin: Vector3, direction: Vector3)
    gizmos:AddLine(origin, origin + direction)
    -- TODO: Draw arrow?
end

local function drawPoint(pos: Vector3, size: number?)
    size = size or 0.1
    gizmos:AddLines({
        pos - Vector3.xAxis * size,
        pos + Vector3.xAxis * size,
        pos - Vector3.yAxis * size,
        pos + Vector3.yAxis * size,
        pos - Vector3.zAxis * size,
        pos + Vector3.zAxis * size,
    })
end

local function drawCube(pos: Vector3 | CFrame, size: Vector3)
    local cf = if typeof(pos) == "Vector3" then CFrame.new(pos) else pos
    local halfSize = size * 0.5
    local min = -halfSize
    local max = halfSize
    local v = {
        cf * min,
        cf * Vector3.new(max.x, min.y, min.z),
        cf * Vector3.new(max.x, min.y, max.z),
        cf * Vector3.new(min.x, min.y, max.z),
        cf * Vector3.new(min.x, max.y, min.z),
        cf * Vector3.new(max.x, max.y, min.z),
        cf * max,
        cf * Vector3.new(min.x, max.y, max.z),
    }
    gizmos:AddLines({
        v[1], v[2],
        v[2], v[3],
        v[3], v[4],
        v[4], v[1],
        v[5], v[6],
        v[6], v[7],
        v[7], v[8],
        v[8], v[5],
        v[1], v[5],
        v[2], v[6],
        v[3], v[7],
        v[4], v[8],
    })
end

local function drawCircle(pos: Vector3, radius: number, normal: Vector3?)
    local segments = 12
    normal = normal or Vector3.yAxis
    local cf = CFrame.lookAlong(pos, normal)
    local angle = 2 * math.pi / segments

    local points = {}
    for i = 1, segments do
        local localpoint = Vector3.new(math.cos(i * angle), math.sin(i * angle), 0) * radius
        local point = cf:PointToWorldSpace(localpoint)
        table.insert(points, point)
    end
    gizmos:AddPath(points, true)
end

local function drawSphere(pos: Vector3 | CFrame, radius: number)
    local cf = if typeof(pos) == "Vector3" then CFrame.new(pos) else pos
    drawCircle(cf.Position, radius, cf.Rotation * Vector3.xAxis)
    drawCircle(cf.Position, radius, cf.Rotation * Vector3.yAxis)
    drawCircle(cf.Position, radius, cf.Rotation * Vector3.zAxis)
end

local function drawPyramid(pos: Vector3 | CFrame, size: number, height: number)
    local cf = if typeof(pos) == "Vector3" then CFrame.new(pos) else pos
    local hsize = size / 2
    local points = {
        cf * Vector3.new(hsize, 0, hsize),
        cf * Vector3.new(-hsize, 0, hsize),
        cf * Vector3.new(-hsize, 0, -hsize),
        cf * Vector3.new(hsize, 0, -hsize),
        cf * Vector3.new(0, height, 0),
    }
    gizmos:AddPath(
        { points[1], points[2], points[3], points[4], points[1], points[5], points[2] },
        false
    )
    gizmos:AddPath({ points[3], points[5], points[4] }, false)
end

local function drawPath(points: { Vector3 }, closed: boolean?, dotsSize: number?)
    closed = closed or false
    dotsSize = dotsSize or 0
    gizmos:AddPath(points, closed)
    if dotsSize > 0 then
        for _, point in ipairs(points) do
            drawCube(point, Vector3.one * dotsSize)
        end
    end
end

local function drawCFrame(cf: CFrame, size: number)
    size = size or 1
    local color3 = gizmos.Color3
    setColor("red")
    drawRay(cf.Position, cf.RightVector * size)
    setColor("green")
    drawRay(cf.Position, cf.UpVector * size)
    setColor("blue")
    drawRay(cf.Position, -cf.LookVector * size)
    gizmos.Color3 = color3
end

local function drawText(position: Vector3, text: string, size: number?)
    gizmos:AddText(position, text, size)
end

local function log(...)
    local args = { ... }
    local text = ""
    for _, v in ipairs(args) do
        local str
        if typeof(v) == "string" then
            str = v
        elseif typeof(v) == "number" then
            str = string.format("%.3f", v)
        elseif typeof(v) == "Vector3" then
            str = string.format("(%.3f, %.3f, %.3f)", v.x, v.y, v.z)
        elseif typeof(v) == "CFrame" then
            local rx, ry, rz = v:ToOrientation()
            rx, ry, rz = math.deg(rx), math.deg(ry), math.deg(rz)
            str = string.format(
                "pos=(%.3f, %.3f, %.3f) rot=(%.3f, %.3f, %.3f)",
                v.p.x,
                v.p.y,
                v.p.z,
                rx,
                ry,
                rz
            )
        else
            str = tostring(v)
        end
        text = text .. str
    end
    if label then
        label.Text = label.Text .. "\n" .. text
    end
end

function drawHit(hit: RaycastResult)
    drawCircle(hit.Position, 0.15, hit.Normal)
    drawRay(hit.Position, hit.Normal * 0.3)
end

function drawRaycastHelper(
    cf: CFrame,
    direction: Vector3,
    result: RaycastResult,
    shape: number,
    size: number | Vector3
)
    local color3 = gizmos.Color3
    local travel
    if result then
        setColor(hitColor)
        travel = direction.Unit * result.Distance
        drawHit(result)
    else
        setColor(missColor)
        travel = direction
    end
    if shape == 1 then -- sphere
        drawSphere(cf, size)
        drawSphere(cf + travel, size)
    elseif shape == 2 then -- block
        drawCube(cf, size)
        drawCube(cf + travel, size)
    end
    drawRay(cf.Position, travel)
    gizmos.Color3 = color3
end

function drawRaycast(origin: Vector3, direction: Vector3, result: RaycastResult)
    drawRaycastHelper(CFrame.new(origin), direction, result, 0)
end

function drawSpherecast(origin: Vector3, radius: number, direction: Vector3, result: RaycastResult)
    drawRaycastHelper(CFrame.lookAlong(origin, direction), direction, result, 1, radius)
end

function drawBlockcast(cf: CFrame, size: Vector3, direction: Vector3, result: RaycastResult)
    drawRaycastHelper(cf, direction, result, 2, size)
end

------------------------------------- PUBLIC

function module:SetColor(color: string | Color3)
    table.insert(commands, function()
        setColor(color)
    end)
end

function module:DrawLine(from: Vector3, to: Vector3)
    table.insert(commands, function()
        drawLine(from, to)
    end)
end

function module:DrawRay(origin: Vector3, direction: Vector3)
    table.insert(commands, function()
        drawRay(origin, direction)
    end)
end

function module:DrawPath(points: { Vector3 }, closed: boolean?, dotsSize: number?)
    table.insert(commands, function()
        drawPath(points, closed, dotsSize)
    end)
end

function module:DrawPoint(position: Vector3, size: number?)
    table.insert(commands, function()
        drawPoint(position, size)
    end)
end

function module:DrawCube(position: Vector3 | CFrame, size: Vector3)
    table.insert(commands, function()
        drawCube(position, size)
    end)
end

function module:DrawCircle(position: Vector3, radius: number, normal: Vector3?)
    table.insert(commands, function()
        drawCircle(position, radius, normal)
    end)
end

function module:DrawSphere(position: Vector3 | CFrame, radius: number)
    table.insert(commands, function()
        drawSphere(position, radius)
    end)
end

function module:DrawPyramid(position: Vector3 | CFrame, size: number, height: number)
    table.insert(commands, function()
        drawPyramid(position, size, height)
    end)
end

function module:DrawCFrame(cf: CFrame, size: number?)
    table.insert(commands, function()
        drawCFrame(cf, size)
    end)
end

function module:DrawText(position: Vector3, text: string, size: number?)
    table.insert(commands, function()
        drawText(position, text, size)
    end)
end

function module:Log(...)
    local args = { ... }
    table.insert(commands, function()
        log(unpack(args))
    end)
end

function module:DrawRaycast(origin: Vector3, direction: Vector3, result: RaycastResult)
    table.insert(commands, function()
        drawRaycast(origin, direction, result)
    end)
end

function module:DrawSpherecast(
    origin: Vector3,
    radius: number,
    direction: Vector3,
    result: RaycastResult
)
    table.insert(commands, function()
        drawSpherecast(origin, radius, direction, result)
    end)
end

function module:DrawBlockcast(cf: CFrame, size: Vector3, direction: Vector3, result: RaycastResult)
    table.insert(commands, function()
        drawBlockcast(cf, size, direction, result)
    end)
end

function module:AddToPath(name: string, position: Vector3, dotsSize: number?)
    if not trailers[name] then
        trailers[name] = Trailer.new()
    end
    trailers[name]:addValue(position)
    table.insert(commands, function()
        drawPath(trailers[name]:getValues(), false, dotsSize)
    end)
end

----------------------------------------------

findOrMakeGizmos()
findOrMakeLabel()

function Update(t, dt)
    if t ~= gizmos:GetAttribute("lastUpdateTime") then
        gizmos:SetAttribute("lastUpdateTime", t)
        if module.Clear then
            gizmos:Clear()
            if label then
                label.Text = ""
            end
        end
    end
    for _, command in ipairs(commands) do
        command()
    end
    commands = {}
end

function module:Test()
    local p = Vector3.new(0, 0, 10)
    local function n()
        p += Vector3.xAxis * 2
    end
    module:SetColor("white")

    module:DrawLine(p, p + Vector3.yAxis)
    n()
    module:DrawRay(p, Vector3.yAxis)
    n()
    module:DrawPath({
        p + Vector3.new(-0.3, 0, -0.3),
        p + Vector3.new(0.4, 0, 0),
        p + Vector3.new(0.1, 0, 0.5),
        p + Vector3.new(0.6, 0, 0.9),
    })
    n()
    module:DrawPoint(p)
    n()
    module:DrawCube(p + Vector3.yAxis * 0.5, Vector3.one)
    n()
    module:DrawCircle(p, 0.5)
    n()
    module:DrawSphere(p + Vector3.yAxis * 0.5, 0.5)
    n()
    module:DrawPyramid(p, 1, 1)
    n()
    module:DrawCFrame(CFrame.new(p))
    n()
    module:DrawText(p, "Hello")
    n()
    module:DrawRaycast(p, Vector3.zAxis, nil)
    n()
    module:DrawSpherecast(p, 0.3, Vector3.zAxis, nil)
    n()
    module:DrawBlockcast(CFrame.new(p), Vector3.one * 0.6, Vector3.zAxis, nil)
    n()
    --module:AddToPath()

    module:Log("Log")

    local colors = {
        "red",
        "orange",
        "yellow",
        "green",
        "cyan",
        "blue",
        "purple",
        "magenta",
        "black",
        "gray",
        "white",
    }
    p = Vector3.new(0, 0, 12)
    for _, color in ipairs(colors) do
        module:SetColor(color)
        module:DrawCircle(p, 0.15)
        p += Vector3.xAxis * 1
    end
end

game:GetService("RunService").Stepped:Connect(Update)

return module
