local SensorUtil = {}

local DEBUG_VISUAL = false
local DEBUG_CLEAR_TIME = 0.3
local clearTime = 0

local RED = Color3.new(1,0,0)
local GREEN = Color3.new(0,1,0)
local WHITE = Color3.new(1,1,1)

local UP = Vector3.new(0, 1, 0)
local DOWN = Vector3.new(0, -1, 0)
local FORWARD = Vector3.new(0, 0, -1)

-- Distribute points evenly using spiral sunflower pattern 
local goldenAngle = math.pi * (3 - math.sqrt(5))
local pi2 = 2 * math.pi

local MAX_POOL_SIZE = 500
SensorUtil.debugLHAPool = {}
SensorUtil.nextLHAIndex = 1

local Players = game:GetService("Players")
local Utils = game.ReplicatedStorage.RobloxCharacterPackages.CharacterController.Utils
local TemporalCache = require(Utils.TemporalCache)
SensorUtil.scanCache = {}

-- TODO: Try SphereCast?
-- TODO: keep the results for a forward cast globally for all verbs to use??

local function orthogonal(v : Vector3)
    local dir = v.Unit

    if dir.x ~= 0 or dir.y ~= 0 then
        return Vector3.new(-dir.y, dir.x, 0).Unit
    else
        return Vector3.new(0, -dir.z, dir.y).Unit
    end
end

local function randFloat(min, max)
    local range = max - min
    local randomValue = math.random() * range + min
    return randomValue
end

function SensorUtil:Raycast(origin, dir : Vector3, raycastParams : RaycastParams)
    if typeof(origin) == "CFrame" then
        origin = origin.Position
    end

    local result = nil
    if raycastParams then
        result = game.Workspace:Raycast(origin, dir, raycastParams)
    else
        result = game.Workspace:Raycast(origin, dir)
    end
    
    if not DEBUG_VISUAL then
        return result
    end

    if result then
        self:DrawRay(origin, dir, GREEN)
        self:DrawRay(result.Position, result.Normal, RED)
    else
        self:DrawRay(origin, dir, WHITE)
    end
    return result
end

-- Based on a microprofiling, Spherecast cost is roughly a handful of Raycasts (~ 4:1 ratio)
-- May vary based on the casting radius.
-- Spherecast would likely be preferred with simple linear area scans where we mostly care if something is hit
function SensorUtil:SphereScan(scanParams)
    local defaultRadius = 0.5
    return game.Workspace:Spherecast(scanParams.origin, scanParams.radius or defaultRadius, scanParams.dir, scanParams.raycastParams)
end

-- Cast a approximate cylindrical volume from a circular plane
-- Distribute rays in sunflower seed pattern and locally randomize a shift based on the average point density
-- Pattern rotation is modded over time to try and guarantee some level of uniform sampling
-- Spread can be adjusted for casting in a cone shape
function SensorUtil:RaycastScan(scanParams)
    -- These are the minimal required params
    local origin = scanParams.origin
    local dir = scanParams.dir

    -- raycastParams can be nil but not filtering is not recommended
    local raycastParams = scanParams.raycastParams

    -- Default cast is basically a triangle cast of a 1 unit wide cylindrical volume
    local radius = scanParams.radius or 0.5
    local rayCount = scanParams.rayCount or 3
    local spread = scanParams.spread or 1

    if typeof(origin) == "CFrame" then
        origin = origin.Position
    end

    local results = {}
    if not origin then
        warn("RaycastScan missing parameter: origin")
        return results
    end

    if not dir then
        warn("RaycastScan missing parameter: dir")
        return results
    end

    -- Find two perpendicular unit vectors on the orthogonal plane
    local perp1 = orthogonal(dir)
    local perp2 = dir.Unit:Cross(perp1).Unit
    
    local timeOffset = tick() % pi2
    local ptRange = math.sqrt((math.pi * radius * radius) / rayCount) / 2
    local xOffset = randFloat(-ptRange, ptRange)
    local yOffset = randFloat(-ptRange, ptRange)

    local centerCast = origin + dir

    local insertFn = function (result)
        if result then
            table.insert(results, result)
        end
    end

    local filterFn = scanParams.filter
    if filterFn then
        insertFn = function (result)
            if result and filterFn(result) then
                table.insert(results, result)
            end
        end
    end

    for i = 1, rayCount do
        local angle = goldenAngle * i + timeOffset
        local r = math.sqrt(i / rayCount) * radius

        local x = r * math.cos(angle) + xOffset
        local y = r * math.sin(angle) + yOffset

        local result = nil
        local offset = x * perp1 + y * perp2
        local castSource = origin + offset
        if spread == 1.0 then
            result = self:Raycast(castSource, dir, raycastParams)
        else
            local dirSpread = (centerCast + offset * spread) - castSource
            result = self:Raycast(castSource, dirSpread, raycastParams)
        end

        insertFn(result)
    end

    return results
end

-- Similar to RaycastScan but uses a unique scanID to cache results for expireTime seconds
-- Offers a tradeoff between data staleness and performance (more comprehensive scan over time)
-- A particular instance will be able to have it's own cache with different sub caches
function SensorUtil:RaycastScanTemporal(scanParams, instance : Instance, scanID : string?, expireTime : number?)
    if not instance then
        warn("RaycastScanTemporal requires a instance.")
        return
    end

    scanID = scanID or "DEFAULT"
    expireTime = expireTime or 0.2

    if not SensorUtil.scanCache[instance] then
        SensorUtil.scanCache[instance] = {}
    end

    local cacheInstance = SensorUtil.scanCache[instance]
    if not cacheInstance[scanID] then
        cacheInstance[scanID] = TemporalCache:new(expireTime)
    end
    local cache = cacheInstance[scanID]

    local results = self:RaycastScan(scanParams)
    if results then
        cache:insert(results)
    end

    return cache:get()
end

function SensorUtil:DrawRay(origin : Vector3, dir : Vector3, color : Color3)
    local lha = self:GetNextDebugLHA()
    lha.Color3 = color
    lha.Length = dir.Magnitude
    lha.CFrame = CFrame.new(origin, origin + dir)
    lha.Visible = true
end

function SensorUtil:ClearRays()
    for i, lha in ipairs(self.debugLHAPool) do
        lha.Visible = false
    end
    self.nextLHAIndex = 1
end

function SensorUtil:GetNextDebugLHA()
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

-- Specific folder for posed clones
local workspace = game:GetService("Workspace")
local posedClonesFolder = workspace:FindFirstChild("posedClones")
if not posedClonesFolder then
    posedClonesFolder = Instance.new("Folder")
    posedClonesFolder.Name = "posedClones"
    posedClonesFolder.Parent = workspace
end

-- Returns a clone character that can be posed using the given animation (useful for pose prediction)
-- The hrp is returned to allow positioning, and animTrack allows selecting specific moment within the animation
function SensorUtil:posedClone(character:Model, animationAssetID:number)
    -- generate a unique identifier for the clone (used for tracking and clean up)
    local player = Players:GetPlayerFromCharacter(character)
    local UID = "Player-" .. player.UserId .. ":Animation-" .. tostring(animationAssetID)
    local oldClone = posedClonesFolder:FindFirstChild(UID)
    if oldClone then
        oldClone:Destroy()
    end

    -- Only archivable instances can be cloned
    character.Archivable = true
    local clonedCharacter:Model = character:Clone()
    character.Archivable = false
    clonedCharacter.Name = UID

    -- Remove unecessary instances in clone
    for _, d in ipairs(clonedCharacter:GetDescendants()) do
        -- Remove all scripts and animation instances (they will get re-init later)
        if d:IsA("Script") or d:IsA("LocalScript") or d:IsA("ModuleScript") or d:IsA("AnimationController") or d:IsA("Animator") then
            d:Destroy()
        end

        -- Move all parts into non-colliding group
        if d:IsA("BasePart") then
            d.CollisionGroup = "PosedCloneGhostGroup"
            d.Transparency = math.max(d.Transparency, DEBUG_VISUAL and 0.5 or 1.0)
        end

        -- Reset all motors
        if d:IsA("Motor6D") then
            d.Transform = CFrame.new()
        end
    end

    -- add to workspace after the scripts were removed then the scripts won't be excused
    clonedCharacter.Parent = posedClonesFolder
    
    -- The caller can move the posed clone to the desired moment in animation
    local hrp = clonedCharacter:WaitForChild("HumanoidRootPart")
    hrp.Anchored = true

    return clonedCharacter, hrp, animTrack
end

function SensorUtil:AveragePosition(hits)
    local n = #hits
    if n == 0 then
        return nil
    end

    local totalPosition = Vector3.new(0, 0, 0)
    for _, hit in ipairs(hits) do
        totalPosition = totalPosition + hit.Position
    end

    return totalPosition / n
end


return SensorUtil