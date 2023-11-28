local DebugVisual = {}

local DEBUG_VISUAL = false

local RED = Color3.new(1,0,0)
local GREEN = Color3.new(0,1,0)
local WHITE = Color3.new(1,1,1)

local MAX_POOL_SIZE = 500
DebugVisual.debugLHAPool = {}
DebugVisual.nextLHAIndex = 1

local MAX_POOL_SIZE_SPHERE = 10
DebugVisual.debugSpherePool = {}
DebugVisual.nextSphereIndex = 1

-- Line
function DebugVisual:DrawLine(origin : Vector3, dir : Vector3, color : Color3)
    if not DEBUG_VISUAL then
        return
    end

    local lha = self:GetNextDebugLHA()
    lha.Color3 = color
    lha.Length = dir.Magnitude
    lha.CFrame = CFrame.new(origin, origin + dir)
    lha.Visible = true
end

function DebugVisual:ClearRays()
    for i, lha in ipairs(self.debugLHAPool) do
        lha.Visible = false
    end
    self.nextLHAIndex = 1
end

function DebugVisual:GetNextDebugLHA()
    if self.nextLHAIndex > MAX_POOL_SIZE then
        self.nextLHAIndex = 1
    end

    local lha = self.debugLHAPool[self.nextLHAIndex]
    if not lha then
        lha = Instance.new("LineHandleAdornment")
        lha.Name = "LHA_" .. tostring(#self.debugLHAPool+1)
        lha.Color3 = Color3.new(1,1,1)
        lha.Thickness = 4
        lha.ZIndex = 0
        lha.Adornee = game.Workspace.Terrain
        lha.Parent = game.Workspace.Terrain
        lha.Transparency = 0.5
        table.insert(self.debugLHAPool,lha)
    end
    self.nextLHAIndex = self.nextLHAIndex + 1
    return lha
end

-- Sphere
function DebugVisual:DrawSphere(origin : Vector3, radius : number, color : Color3)
    if not DEBUG_VISUAL then
        return
    end

    local d = radius * 2
    local sOrigin = self:GetNextDebugSphere()
    sOrigin.Color = color
    sOrigin.Position = origin
    sOrigin.Size = Vector3.new(d, d, d)
    sOrigin.Transparency = 0.95
end

function DebugVisual:ClearSpheres()
    for i, s in ipairs(self.debugSpherePool) do
        s.Transparency = 1
    end
    self.nextSphereIndex = 1
end

function DebugVisual:GetNextDebugSphere()
    if self.nextSphereIndex > MAX_POOL_SIZE_SPHERE then
        self.nextSphereIndex = 1
    end

    local s = self.debugSpherePool[self.nextSphereIndex]
    if not s then
        s = Instance.new("Part")
        s.Shape = "Ball"
        s.Material = Enum.Material.SmoothPlastic
        s.CollisionGroup = "PosedCloneGhostGroup"
        s.Anchored = true
        s.Name = "Sphere_" .. tostring(#self.debugSpherePool+1)
        s.Color = Color3.new(1, 1, 1)
        s.Size = Vector3.new(1, 1, 1)
        s.Position = Vector3.new()
        s.Parent = game.Workspace.Terrain
        s.Transparency = 0.9
        table.insert(self.debugSpherePool, s)
    end
    self.nextSphereIndex = self.nextSphereIndex + 1
    return s
end

-- Ray cast visual with hit normal
function DebugVisual:DrawRayCast(origin : Vector3, dir : Vector3, result : RaycastResult)
    if not DEBUG_VISUAL then
        return
    end

    local color = if result then GREEN else WHITE
    self:DrawLine(origin, dir, color)

    if result then
        self:DrawLine(result.Position, result.Normal, RED)
    end
end

-- Sphere cast visual with hit normal
function DebugVisual:DrawSphereCast(origin : Vector3, dir : Vector3, radius : number, result : RaycastResult)
    if not DEBUG_VISUAL then
        return
    end

    local color = if result then GREEN else WHITE
    self:DrawSphere(origin, radius, color)
    self:DrawSphere(origin + dir, radius, color)
    
    if result then
        self:DrawLine(result.Position, result.Normal, RED)
    end
end

-- Self cleanup for debug visuals (refreshes 1/10th of the visual per heartbeat)
if DEBUG_VISUAL then
    game:GetService("RunService").Heartbeat:Connect(function(dt)
        for i = 1, math.floor(MAX_POOL_SIZE / 10) do
            DebugVisual:DrawLine(Vector3.new(), Vector3.new(), Color3.new(1, 1, 1))
        end

        for i = 1, math.floor(MAX_POOL_SIZE_SPHERE / 10) do
            DebugVisual:DrawSphere(Vector3.new(), 1, Color3.new(1, 1, 1))
        end
    end)
end

return DebugVisual
