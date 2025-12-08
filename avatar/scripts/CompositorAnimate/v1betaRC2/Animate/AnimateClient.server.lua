if not script.Parent.Parent:IsA("Model") then
    return
end

local AnimateDependencies = game.ReplicatedStorage:WaitForChild("AnimateDependencies")
local AnimateModule = require(AnimateDependencies:WaitForChild("Animate"))

local actor: Actor = script.Parent :: Actor

AnimateModule.SetupAnimate(actor, true)
