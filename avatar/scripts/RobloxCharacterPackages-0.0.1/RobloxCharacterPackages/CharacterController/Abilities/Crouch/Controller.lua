local ReplicatedStorage = game:GetService("ReplicatedStorage")
local CharacterController = ReplicatedStorage.RobloxCharacterPackages.CharacterController
local Sensor = require(CharacterController.Utils.SensorUtil)
local Input = require(script.Parent.UserInput)
local Config = require(script.Parent.Config)

local Controller = {}
Controller.__index = Controller

function Controller.new(player : Player)
    local self = setmetatable({}, Controller)
    self.playerCharRemovingConn = player.CharacterRemoving:Connect(function()
        self:Destroy()
    end)

    self.char = player.Character or player.CharacterAdded:Wait()
    self.head = self.char:WaitForChild("Head")
    self.torso = self.char:WaitForChild("UpperTorso")

    self.raycastParams = RaycastParams.new()
    self.raycastParams.FilterType = Enum.RaycastFilterType.Exclude
    self.raycastParams.FilterDescendantsInstances = {self.char}
    self.raycastParams.IgnoreWater = true
    self.raycastParams.RespectCanCollide = true

    self.crouchPrediction = {}
    self.crouchPrediction.char, self.crouchPrediction.hrp, self.crouchPrediction.track = Sensor:posedClone(self.char, Config.AnimClips.crouchIdle.id)
    self.crouchPrediction.head = self.crouchPrediction.char:WaitForChild("Head")

    if player == game.Players.LocalPlayer then
        self.input = Input.new()
    end

    return self
end

function Controller:Destroy()
    if self.playerCharRemovingConn then
        self.playerCharRemovingConn:Disconnect()
        self.playerCharRemovingConn = nil
    end
end

-- Checks if the hit instance is potentially a child of a character
-- Crouch should only care about environmental obstacles
local characterPartFilter = function (hit)
    return hit.Instance.Parent:FindFirstChild("Humanoid") == nil
end

function Controller:Update(data)
    if self.input.crouchInput then
        data.character.CharacterController:SetAttribute(Config.crouchState, true)
        return
    end

    if not Config.EnableAutoCrouch then
        data.character.CharacterController:SetAttribute(Config.crouchState, false)
        return
    end

    local hrpCF : CFrame = data.hrp.CFrame
    local isCrouching = data.character.CharacterController:GetAttribute(Config.crouchState)
    local character = data.character

    local head = self.head
    local torso = self.torso

    if not head then
        warn("Crouch controller: Head is nil")
    end

    if not torso then
        warn("Crouch controller: Torso is nil")
    end

    -- Height of torso and head combined.
    local upperHalfLength = head.Size.Y + torso.Size.Y

    -- Update the pose prediction's cf
    local crouchPre = self.crouchPrediction
    crouchPre.hrp.CFrame = hrpCF
    local headPrediction = self.crouchPrediction.head

    -- Calculate the bottom position of the character
    local primaryPart = character.PrimaryPart
    local humanoid = character:FindFirstChild("Humanoid")
    if not humanoid then
        warn("Crouch controller: Humanoid is nil")
    end

    -- humanoid.MoveDirection stores the speed fraction delivered by the input controller, which doesn't know that crouching slows the character down.
    -- Only the crouching ability knows this information, so we include the slowdown rate here.
    local velocity = humanoid.MoveDirection * humanoid.WalkSpeed * Config.CrouchMoveSpeedFactor
    local horizontalVelocity = Vector3.new(velocity.X, 0, velocity.Z)
    local bottomPosition = primaryPart.Position - Vector3.new(0, primaryPart.Size.Y/2 + humanoid.HipHeight, 0)
    local inputDir = data.params.inputDir
    local castDir = if inputDir.Magnitude > 0 then inputDir else data.params.hrpDir

    local upCastForward = inputDir * 1.3 * upperHalfLength
    if inputDir.Magnitude == 0 then
        upCastForward = castDir * 0.8 * upperHalfLength
    end

    -- Calculate scaling of raycast to account for fast movement which needs proportionally earlier detection.
    -- LookaheadPadding allows some leeway rather than barely avoiding banging your head each time.
    local lookAheadDistance = Config.LookaheadTime * Config.CrouchMoveSpeedFactor * horizontalVelocity.Magnitude * Config.LookaheadPadding
    local forwardCastDistance = math.max(lookAheadDistance, upCastForward.Magnitude)

    -- Used as a radius for forward casting, should roughly cover the upper body
    local upperRadius = math.max(head.Size.Y, torso.Size.X / 2)

    -- When already crouching, cast rays upward to check for clearance.
    if isCrouching then
        local crouchTop = bottomPosition + Vector3.new(0, Config.CrouchDetectionHeight, 0)
        if not Config.UseCrouchDetectionHeight then
            if headPrediction then
                crouchTop = headPrediction.Position
            end
        end

        -- The origin is offset slightly forward to improve the prediction based on character movement.
        -- Waits for an extra half head of leeway at the top before exiting crouch.
        -- TODO: Revisit how we detect clearance, this may need a config or another prediction pose or something else.
        local upHit = Sensor:RaycastScanTemporal({
            origin = crouchTop + upCastForward,
            dir = Vector3.new(0, upperHalfLength + headPrediction.Size.Y, 0),
            radius = upperHalfLength * 0.666,
            rayCount = 10,
            raycastParams = self.raycastParams,
            filter = characterPartFilter,
        }, self.char, "Crouching_Up", 0.17)

        if #upHit == 0 then
            local headBottomPrediction = headPrediction.Position - Vector3.new(0, headPrediction.Size.Y / 2, 0)
            local headForwardHit = Sensor:SphereScan({
                origin = headBottomPrediction,
                dir = castDir * forwardCastDistance,
                radius = upperRadius * 0.8,
                raycastParams = self.raycastParams,
                filter = characterPartFilter,
            })

            if #headForwardHit > 0 then
                local wallHitEstimate = headForwardHit[1].Position
                upHit = Sensor:RaycastScanTemporal({
                    origin = Vector3.new(wallHitEstimate.X, crouchTop.Y, wallHitEstimate.Z),
                    dir = Vector3.new(0, upperHalfLength + headPrediction.Size.Y, 0),
                    radius = upperHalfLength * 0.666,
                    rayCount = 6,
                    raycastParams = self.raycastParams,
                    filter = characterPartFilter,
                }, self.char, "Crouching_Up", 0.17)

                if #upHit > 0 then
                    return
                end
            end

            data.character.CharacterController:SetAttribute(Config.crouchState, false)
        end

        return
    end

    -- TODO: Only allow crouch start in the running state (this can probably be improved?)
    if data.params.state ~= "Running" then
        return
    end

    -- Roughly where the neck height is.
    local headBottom = head.Position - Vector3.new(0, head.Size.Y / 2, 0)

    local frontUpperHit = Sensor:SphereScan({
        origin = headBottom,
        dir = castDir * forwardCastDistance,
        radius = upperRadius * 1.1,
        raycastParams = self.raycastParams,
        filter = characterPartFilter,
    })

    if #frontUpperHit == 0 then
        return
    end

    local crouchHeight = Config.CrouchDetectionHeight

    -- If using dynamic crouch height, it will be determined based on the height of the predicted crouch pose
    if not Config.UseCrouchDetectionHeight then
        local rightFootPre = crouchPre.char:FindFirstChild("RightFoot")
        local leftFootPre = crouchPre.char:FindFirstChild("LeftFoot")

        if headPrediction and (rightFootPre or leftFootPre) then
            local lowestFootY
            if rightFootPre and leftFootPre then
                lowestFootY = math.min(rightFootPre.Position.Y - rightFootPre.Size.Y/2, leftFootPre.Position.Y - leftFootPre.Size.Y/2)
            elseif rightFootPre then
                lowestFootY = rightFootPre.Position.Y - rightFootPre.Size.Y/2
            else
                lowestFootY = leftFootPre.Position.Y - leftFootPre.Size.Y/2
            end

            local headTopY = headPrediction.Position.Y + headPrediction.Size.Y/2
            crouchHeight = headTopY - lowestFootY
        end
    end

    -- Scale down slightly to avoid just barely touching hits.
    -- TODO: This can get tuned tighter but requires the animation asset to keep the foot above ground (gotta fix the animation playback first).
    local lowerScanRadius = 0.9 * crouchHeight / 2

    -- Scan for collision in estimated crouch position.
    local frontLowerHit = Sensor:RaycastScan({
        origin = Vector3.new(hrpCF.Position.X, bottomPosition.Y + crouchHeight / 2, hrpCF.Position.Z),
        dir = castDir * forwardCastDistance * 1.5,
        radius = lowerScanRadius,
        rayCount = 48,
        raycastParams = self.raycastParams,
        filter = characterPartFilter,
    })

    if #frontUpperHit > 0 and #frontLowerHit == 0 then
        data.character.CharacterController:SetAttribute(Config.crouchState, true)
    end
end

return Controller