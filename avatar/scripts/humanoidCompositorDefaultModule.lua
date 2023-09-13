-- stylua: ignore start
local Anim = require(game.ReplicatedStorage.Anim)
local SequenceLayer = require(game.ReplicatedStorage.Anim.Layers.Sequence)

local WALK_SPEED = 6.4
local RUN_SPEED = 12.8

function blendSpeedPropExpression(params)
    if params.MoveSpeed < WALK_SPEED then
        return params.MoveSpeed / WALK_SPEED
    elseif params.MoveSpeed > RUN_SPEED then
        return params.MoveSpeed / RUN_SPEED
    end

    return 1
end

local locomotionLayer = Anim.newDef("Blend2D")
    :name("Forward Locomotion")
    :speed(blendSpeedPropExpression)
    :targetPosition(function(params)
        local position = params.MoveDirection * (params.MoveSpeed / WALK_SPEED)
        return Vector2.new(position.X, math.max(0, position.Y))
    end)
    :addChild({ position = Vector2.new(0.001, 0.001) }, Anim.newDef("RestPose"):name("Origin"))
    :addChild(
        { position = Vector2.yAxis },
        Anim.newDef("Clip"):animationId("rbxassetid://14045085169")
            :name("Forward Walk")
            :markerEvents({
                Footstep = "Footstep",
            })
    )
    :addChild(
        { position = Vector2.yAxis * 2 },
        Anim.newDef("Clip"):animationId("rbxassetid://10899968825"):name("Forward Run")
    )
    :addChild(
        { position = Vector2.xAxis },
        Anim.newDef("Clip"):animationId("rbxassetid://10404404615"):name("Right Walk")
    )
    :addChild(
        { position = Vector2.xAxis * 2 },
        Anim.newDef("Clip"):animationId("rbxassetid://10404627994"):name("Right Run")
    )
    :addChild(
        { position = -Vector2.xAxis },
        Anim.newDef("Clip"):animationId("rbxassetid://10404377900"):name("Left Walk")
    )
    :addChild(
        { position = -Vector2.xAxis * 2 },
        Anim.newDef("Clip"):animationId("rbxassetid://10404604071"):name("Left Run")
    )
    :addChild(
        { position = Vector2.new(1, 1).Unit },
        Anim.newDef("Clip"):animationId("rbxassetid://10404269576"):name("Forward Right Walk")
    )
    :addChild(
        { position = Vector2.new(-1, 1).Unit },
        Anim.newDef("Clip"):animationId("rbxassetid://10404251500"):name("Forward Left Walk")
    )
    :addChild(
        { position = Vector2.new(1, 1).Unit * 2 },
        Anim.newDef("Clip"):animationId("rbxassetid://10319882993"):name("Forward Right Run")
    )
    :addChild(
        { position = Vector2.new(-1, 1).Unit * 2 },
        Anim.newDef("Clip"):animationId("rbxassetid://10319903622"):name("Forward Left Run")
    )

local locomotingBackwards = Anim.newDef("Blend2D")
    :name("Backward Locomotion")
    :speed(blendSpeedPropExpression)
    :targetPosition(function(params)
        local position = params.MoveDirection * (params.MoveSpeed / WALK_SPEED)
        return Vector2.new(position.X, math.min(0, position.Y))
    end)
    :addChild({ position = Vector2.new(0.001, 0.001) }, Anim.newDef("RestPose"):name("Origin"))
    :addChild(
        { position = Vector2.new(1, 0) },
        Anim.newDef("Clip"):animationId("rbxassetid://10847107747"):name("Right Walk")
    )
    :addChild(
        { position = Vector2.new(2, 0) },
        Anim.newDef("Clip"):animationId("rbxassetid://10847291554"):name("Right Run")
    )
    :addChild(
        { position = Vector2.new(-1, 0) },
        Anim.newDef("Clip"):animationId("rbxassetid://10382771806"):name("Left Walk")
    )
    :addChild(
        { position = Vector2.new(-1, 0) * 2 },
        Anim.newDef("Clip"):animationId("rbxassetid://10847298457"):name("Left Run")
    )
    :addChild(
        { position = -Vector2.yAxis },
        Anim.newDef("Clip"):animationId("rbxassetid://10358505520"):name("Backward Walk")
    )
    :addChild(
        { position = -Vector2.yAxis * 2 },
        Anim.newDef("Clip"):animationId("rbxassetid://10358526981"):name("Backward Run")
    )
    :addChild(
        { position = Vector2.new(-1, -1).Unit },
        Anim.newDef("Clip"):animationId("rbxassetid://10382771806"):name("Backward Left Walk")
    )
    :addChild(
        { position = Vector2.new(1, -1).Unit },
        Anim.newDef("Clip"):animationId("rbxassetid://10382635795"):name("Backward Right Walk")
    )
    :addChild(
        { position = Vector2.new(-1, -1).Unit * 2 },
        Anim.newDef("Clip"):animationId("rbxassetid://10382960556"):name("Backward Left Run")
    )
    :addChild(
        { position = Vector2.new(1, -1).Unit * 2 },
        Anim.newDef("Clip"):animationId("rbxassetid://10382949241"):name("Backward Right Run")
    )

local fadeOutTime = 0.2
local coreSelectLayer = Anim.newDef("Select")
    :selection(function(params)
        if params.HumanoidState == "Locomoting" then
            return if params.MoveDirection.Y >= 0 then "LocomotingForward" else "LocomotingBackward"
        end
        return params.HumanoidState
    end)
    :fadeOutTimeSeconds(fadeOutTime)
    :fadeInTimeSeconds(fadeOutTime)
    :addChild({ key = "LocomotingForward" }, locomotionLayer)
    :addChild({ key = "LocomotingBackward" }, locomotingBackwards)
    :addChild(
        { key = "Idle" },
        Anim.newDef("Clip")
            :animationId("rbxassetid://10921258489")
            :name("Idle")
            :didLoopEventName("IdleDidLoop")
    )
    :addChild(
        { key = "Jumping" },
        Anim.newDef("Sequence")
            :name("Jumping Sequence")
            :incrementMode(SequenceLayer.IncrementMode.LoopLast)
            :transitionDurationSeconds(0.25)
            :addChild(
                {
                    shouldTransitionCallback = function(clip)
                        return clip.state.timePosition > 0.35
                    end,
                },
                Anim.newDef("Clip"):animationId("rbxassetid://10921263860")
            )
            :addChild(
                {
                    shouldTransitionCallback = function(clip)
                        return clip.hasLooped
                    end,
                },
                Anim.newDef("Clip"):animationId("rbxassetid://10921262864")
            )
    )
    :addChild(
        { key = "Falling" },
        Anim.newDef("Clip"):animationId("rbxassetid://10921262864"):name("Falling")
    )
    :addChild(
        { key = "Swimming" },
        Anim.newDef("Clip")
            :name("Swimming")
            :animationId("rbxassetid://10921264784")
            :speed(function(params)
                return params.MoveSpeed / 10
            end)
    )
    :addChild(
        { key = "SwimmingIdle" },
        Anim.newDef("Clip"):animationId("rbxassetid://10921265698"):name("Swimming Idle")
    )
    :addChild(
        { key = "Sitting" },
        Anim.newDef("Clip"):animationId("rbxassetid://2506281703"):name("Sitting")
    )
    :addChild(
        { key = "Climbing" },
        Anim.newDef("Clip")
            :name("Climbing")
            :animationId("rbxassetid://507765644")
            :speed(function(params)
                return params.MoveSpeed / 5
            end)
    )
    :addChild(
        { key = "Emote" },
        Anim.newDef("Clip")
            :animationId(function(params) return params.EmoteId end)
            :name("Emote")
            :timePositionEvents({
                {
                    name = "EmoteEnding",
                    timePosition = -fadeOutTime,
                    shouldFireFn = function(layer) return not layer.state.clipIsLooping end
                }
            })
    )

local blendOverLayer = Anim.newDef("Blend")
    :name("Priority Blend")
    :addChild({ weight = 1 }, coreSelectLayer)
    :addChild(
        {
            weight = function(params)
                return params.ToolWeight
            end
        },
        Anim.newDef("Clip"):animationId("rbxassetid://507768375"):name("Tool None")
    )

local headRotateLayer = Anim.newDef("HeadRotate")
    :name("Head Rotation")
    :addChild({}, blendOverLayer)

return headRotateLayer
