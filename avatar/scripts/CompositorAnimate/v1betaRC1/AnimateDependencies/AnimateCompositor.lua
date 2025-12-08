-- stylua: ignore start

local ReplicatedStorage = game:GetService("ReplicatedStorage")

local AnimationLibraryModule = ReplicatedStorage.AnimateDependencies:WaitForChild("AnimationLibrary")

local AnimationLibrary = require(AnimationLibraryModule)
local SequenceLayer = require(ReplicatedStorage.AnimateDependencies.AnimationLibrary.Layers.Sequence)

local FootPlantingLayer = require(ReplicatedStorage.AnimateDependencies:WaitForChild("FootPlantingLayer"))
local LookAtLayer = require(ReplicatedStorage.AnimateDependencies:WaitForChild("LookAtLayer"))

local LocomotionPositions = AnimationLibrary.BlendSpace.LocomotionPositions

local WALK_SPEED = 6.4
local RUN_SPEED = 12.8

local IDLE_THRESHOLD = 0.5
local JUMP_DURATION = 0.31
local DEFAULT_TRANSITION_TIME = 0.2
local FALL_TRANSITION_TIME = 0.4

local USE_FOOTPLANTING = true
local USE_LOOKAT = true

function blendSpeedPropExpression(params)
    if params.MoveSpeed < WALK_SPEED then
        return params.MoveSpeed / WALK_SPEED
    elseif params.MoveSpeed > RUN_SPEED then
        return params.MoveSpeed / RUN_SPEED
    end

    return 1
end

-- Function used to create either a clip node or a random selection node
-- (depending on how many clips we want to randomly choose from)
function FromAnimConfig(name, animationTableEntry)
    if #animationTableEntry > 1 then
        local layer = AnimationLibrary.newDef("Sequence"):name(name):incrementMode(SequenceLayer.IncrementMode.Random)

        for _, anim in pairs(animationTableEntry) do
            layer:addChild(
                {selectionProbabilityWeight = anim.selectionProbabilityWeight, shouldTransitionCallback = function(layer) return layer.hasLooped end }, 
                AnimationLibrary.newDef("Clip"):animationId(anim.id))
        end
        return layer
    else
        return AnimationLibrary.newDef("Clip"):animationId(animationTableEntry[1].id):name(name)
    end
end

function CreateAnimateCompositor(animationTable)

    local locomotingForwards = AnimationLibrary.newDef("BlendSpace")
        :name("Forward Locomotion")
        :blendSpaceType(AnimationLibrary.BlendSpace.Type.Locomotion)
        :positionSmoothingTime(0.2)
        :speed(blendSpeedPropExpression)
        :targetPosition(function(params)
            local position = params.MoveDirection * (params.MoveSpeed / WALK_SPEED)
            return Vector2.new(position.X, math.max(0, position.Y))
        end)
        :addChild(
            { position = LocomotionPositions.ForwardSlow }, FromAnimConfig("Forward Walk", animationTable.walk)
        )
        :addChild(
            { position = LocomotionPositions.ForwardFast }, FromAnimConfig("Forward Run", animationTable.run)
        )
        :addChild(
            { position = LocomotionPositions.RightSlow },
            AnimationLibrary.newDef("Clip"):animationId("rbxassetid://10404404615"):name("Right Walk")
        )
        :addChild(
            { position = LocomotionPositions.RightFast },
            AnimationLibrary.newDef("Clip"):animationId("rbxassetid://10404627994"):name("Right Run")
        )
        :addChild(
            { position = LocomotionPositions.LeftSlow },
            AnimationLibrary.newDef("Clip"):animationId("rbxassetid://10404377900"):name("Left Walk")
        )
        :addChild(
            { position = LocomotionPositions.LeftFast },
            AnimationLibrary.newDef("Clip"):animationId("rbxassetid://10404604071"):name("Left Run")
        )
        :addChild(
            { position = LocomotionPositions.ForwardRightSlow },
            AnimationLibrary.newDef("Clip"):animationId("rbxassetid://10404269576"):name("Forward Right Walk")
        )
        :addChild(
            { position = LocomotionPositions.ForwardLeftSlow },
            AnimationLibrary.newDef("Clip"):animationId("rbxassetid://10404251500"):name("Forward Left Walk")
        )
        :addChild(
            { position = LocomotionPositions.ForwardRightFast },
            AnimationLibrary.newDef("Clip"):animationId("rbxassetid://10319882993"):name("Forward Right Run")
        )
        :addChild(
            { position = LocomotionPositions.ForwardLeftFast },
            AnimationLibrary.newDef("Clip"):animationId("rbxassetid://10319903622"):name("Forward Left Run")
        )

    local locomotingBackwards = AnimationLibrary.newDef("BlendSpace")
        :name("Backward Locomotion")
        :blendSpaceType(AnimationLibrary.BlendSpace.Type.Locomotion)
        :positionSmoothingTime(0.2)
        :speed(blendSpeedPropExpression)
        :targetPosition(function(params)
            local position = params.MoveDirection * (params.MoveSpeed / WALK_SPEED)
            return Vector2.new(position.X, math.min(0, position.Y))
        end)
        :addChild(
            { position = LocomotionPositions.RightSlow },
            AnimationLibrary.newDef("Clip"):animationId("rbxassetid://10847107747"):name("Right Walk")
        )
        :addChild(
            { position = LocomotionPositions.RightFast },
            AnimationLibrary.newDef("Clip"):animationId("rbxassetid://10847291554"):name("Right Run")
        )
        :addChild(
            { position = LocomotionPositions.LeftSlow },
            AnimationLibrary.newDef("Clip"):animationId("rbxassetid://10382771806"):name("Left Walk")
        )
        :addChild(
            { position = LocomotionPositions.LeftFast },
            AnimationLibrary.newDef("Clip"):animationId("rbxassetid://10847298457"):name("Left Run")
        )
        :addChild(
            { position = LocomotionPositions.BackwardSlow },
            AnimationLibrary.newDef("Clip"):animationId("rbxassetid://10358505520"):name("Backward Walk")
        )
        :addChild(
            { position = LocomotionPositions.BackwardFast },
            AnimationLibrary.newDef("Clip"):animationId("rbxassetid://10358526981"):name("Backward Run")
        )
        :addChild(
            { position = LocomotionPositions.BackwardLeftSlow },
            AnimationLibrary.newDef("Clip"):animationId("rbxassetid://10382771806"):name("Backward Left Walk")
        )
        :addChild(
            { position = LocomotionPositions.BackwardRightSlow },
            AnimationLibrary.newDef("Clip"):animationId("rbxassetid://10382635795"):name("Backward Right Walk")
        )
        :addChild(
            { position = LocomotionPositions.BackwardLeftFast },
            AnimationLibrary.newDef("Clip"):animationId("rbxassetid://10382960556"):name("Backward Left Run")
        )
        :addChild(
            { position = LocomotionPositions.BackwardRightFast },
            AnimationLibrary.newDef("Clip"):animationId("rbxassetid://10382949241"):name("Backward Right Run")
        )
 
    local runningStateSubtree = AnimationLibrary.newDef("PrioritySelect")
        :name("Running & Idle")
        :addChild({ shouldSelect = function(params) return params.MoveSpeed <= IDLE_THRESHOLD end}, FromAnimConfig("Random Idle Sequence", animationTable.idle))
        :addChild({ shouldSelect = function(params) return params.MoveDirection.Y > 0 end }, locomotingForwards)
        :addChild({ shouldSelect = function(params) return true end }, locomotingBackwards)

    local coreSelectLayer = AnimationLibrary.newDef("PrioritySelect")
        :transitionDurationSeconds(DEFAULT_TRANSITION_TIME)
        :addChild({ shouldSelect = function(params) return params.HumanoidState == Enum.HumanoidStateType.Running end}, runningStateSubtree)
        :addChild(
            { 
                shouldSelect = function(params) return params.HumanoidState == Enum.HumanoidStateType.Jumping end,
                canInterrupt = function(params, self)
                    return self.state.timePosition > JUMP_DURATION
                end, 
                transitionDurationSeconds = 0.1 }, FromAnimConfig("Jumping", animationTable.jump)
        )
        :addChild(
            { shouldSelect = function(params) return params.HumanoidState == Enum.HumanoidStateType.Freefall end},
            FromAnimConfig("Falling", animationTable.fall)
        )
        :addChild(
            { shouldSelect = function(params) return params.HumanoidState == Enum.HumanoidStateType.Swimming end},
            AnimationLibrary.newDef("PrioritySelect"):name("Swimming")
                :addChild({shouldSelect = function(params) return params.MoveSpeed > 1 end}, FromAnimConfig("Swimming", animationTable.swim)
                    :speed(function(params)
                        return params.MoveSpeed / 10
                    end))
                :addChild(
                    { shouldSelect = function() return true end },
                    FromAnimConfig("Swimming Idle", animationTable.swimidle)
                )
        )
        :addChild(
            { shouldSelect = function(params) return params.HumanoidState == Enum.HumanoidStateType.Seated end},
            FromAnimConfig("Sitting", animationTable.sit)
        )
        :addChild(
            { shouldSelect = function(params) return params.HumanoidState == Enum.HumanoidStateType.Climbing end},
            FromAnimConfig("Climbing", animationTable.climb)
                :speed(function(params)
                    return params.MoveSpeed / 5
                end)
        )

    local blendOverLayer = AnimationLibrary.newDef("Priority")
        :name("Priority Blend")
        :fadeDurationSeconds(0.15)
        :addChild({ enabled = true }, coreSelectLayer)
        :addChild(
            {
                enabled = function(params)
                    return params.ToolWeight > 0
                end
            },
            FromAnimConfig("Tool None", animationTable.toolnone)
        )

    local finalLayer = blendOverLayer

    if USE_FOOTPLANTING then
        local footPlantingLayer = AnimationLibrary.newDef(FootPlantingLayer)
            :name("Foot Planting")
            :linearVelocity(function(params) return params.MoveSpeed * params.MoveDirection end)
            :angularVelocity(Vector3.zero)
            :state(function(params) return params.HumanoidState end)
            :addChild({}, finalLayer)

        finalLayer = footPlantingLayer
    end

    if USE_LOOKAT then
      local lookAtLayer = AnimationLibrary.newDef(LookAtLayer)
          :name("Look At")
          :lookAtPosition(function(params) return params.LookAtPosition end)
          :lookWeight(1)
          :addChild({}, finalLayer)

      finalLayer = lookAtLayer
    end
  
    local emoteSelect = AnimationLibrary.newDef("PrioritySelect")
    :addChild(
        { 
            shouldSelect = function(params) return params.EmoteId ~= nil end,
            canInterrupt = function(params, self) return params.MoveSpeed > IDLE_THRESHOLD or self.context:pollEvent("EmoteEnding") end
        },
        AnimationLibrary.newDef("Clip")
            :animationId(function(params) return params.EmoteId end)
            :name("Emote")
            :timePositionEvents({
                {
                    name = "EmoteEnding",
                    timePosition = -DEFAULT_TRANSITION_TIME,
                    shouldFireFn = function(layer) return not layer.state.clipIsLooping end
                }
            })
            
    )
    :addChild({shouldSelect = function() return true end}, finalLayer)

    return emoteSelect
end
return CreateAnimateCompositor
