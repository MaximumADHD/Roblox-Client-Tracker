local Anim = require(game.ReplicatedStorage.Anim)
local humanoid = script.Parent:WaitForChild("Humanoid") :: Humanoid
local animator = humanoid:WaitForChild("Animator") :: Animator

local compositor = Anim.createCompositor(game.ReplicatedStorage.DefaultCompositor, animator, {
    MoveDirection = Vector2.zero,
    MoveSpeed = 0,
    ToolWeight = 0,
    HumanoidState = "Idle",
})

compositor:play()

local replicator = script.Parent.CompositorReplicateEvent
replicator.OnServerEvent:Connect(function(player, params)
    compositor:setParams(params)
    for key, val in params do
        script:SetAttribute(key, val)
    end
end)
