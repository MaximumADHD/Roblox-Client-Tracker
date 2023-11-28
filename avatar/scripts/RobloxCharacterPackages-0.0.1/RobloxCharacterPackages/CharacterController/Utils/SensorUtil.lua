local SensorUtil = {}

local DEBUG_VISUAL = false

local UP = Vector3.new(0, 1, 0)
local DOWN = Vector3.new(0, -1, 0)
local FORWARD = Vector3.new(0, 0, -1)

-- Distribute points evenly using spiral sunflower pattern 
local goldenAngle = math.pi * (3 - math.sqrt(5))
local pi2 = 2 * math.pi

local Players = game:GetService("Players")
local Utils = game.ReplicatedStorage.RobloxCharacterPackages.CharacterController.Utils
local TemporalCache = require(Utils.TemporalCache)
local DebugVisual = require(Utils.DebugVisual)
SensorUtil.scanCache = {}

-- TODO: keep the results for a forward cast globally for all abilities to use??

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
    DebugVisual:DrawRayCast(origin, dir, result)
    
    return result
end

-- Based on a microprofiling, Spherecast cost is roughly a handful of Raycasts (~ 4:1 ratio)
-- May vary based on the casting radius.
-- Spherecast would likely be preferred with simple linear area scans where we mostly care if something is hit
function SensorUtil:SphereScan(scanParams)
    local radius = scanParams.radius or 0.5
    local result = game.Workspace:Spherecast(scanParams.origin, radius, scanParams.dir, scanParams.raycastParams)
    DebugVisual:DrawSphereCast(scanParams.origin, scanParams.dir, radius, result)

    if not result then
        return {}
    end

    -- TODO: investigate adding a temporal version of spherecast with option where filtered hit ancestors get added to the raycastparam instance filters
    -- This is so the scan can eventually hit objects that may be obscured by other instances which the filter function wants to ignore
    local filterFn = scanParams.filter
    if not filterFn then
        return {result}
    end

    if filterFn(result) then
        return {result}
    end

    return {}
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

    -- TODO: only temporarily instantiate the clone to collect info, destroy afterwards
    -- Remove unecessary instances in clone
    for _, d in ipairs(clonedCharacter:GetChildren()) do
        -- Remove all unecessary instances
        if not (d:IsA("BasePart") or d:IsA("Humanoid")) then
            d:Destroy()
        end
    end

    for _, d in ipairs(clonedCharacter:GetDescendants()) do
        if d:IsA("Decal") then
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

    -- add to workspace after removing scripts so they don't excute
    -- this should be done prior to animator stuff since animator needs to be part of the workspace before loading
    clonedCharacter.Parent = posedClonesFolder

    local animator = clonedCharacter:FindFirstChild("Animator", true)
    if not animator then
        animator = Instance.new("Animator")
        animator.Parent = clonedCharacter:FindFirstChildOfClass("Humanoid")
    end

    local animation = Instance.new("Animation")
    animation.AnimationId = "rbxassetid://" .. tostring(animationAssetID)

    -- The caller can control animTrack position in case they need a specific keyframe
    local animTrack = animator:LoadAnimation(animation)
    animTrack:Play()
    animTrack:AdjustSpeed(0)
    
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