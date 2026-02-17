PROTO_0:
  LOADK R0 K0 ["local RunService = game:GetService(\"RunService\")

local animation

-- TODO: implement

-- if RunService:IsStudio() then
--     local acp = game:GetService(\"AnimationClipProvider\")
--     local localAnimation = script.LocalAnimation.Value
--     animation = acp:RegisterAnimationClip(localAnimation)
-- else
--     animation = Instance.new(\"Animation\")
--     animation.AnimationId = script.AssetID.Value
-- end

-- local humanoid = script.Parent:FindFirstChildOfClass(\"Humanoid\") or script.Parent:FindFirstAncestorWhichIsA(\"Humanoid\")
-- local animator = Instance.new(\"Animator\")
-- animator.Parent = humanoid

-- local track = animator:LoadAnimation(animation)
-- track:Play()

-- RunService.Heartbeat:Connect(function()
--     -- Set graph parameters here
--     track:SetParameter(\"parameter\", 0.0)
-- end)
    "]
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  NEWTABLE R0 1 0
  DUPCLOSURE R1 K0 [PROTO_0]
  SETTABLEKS R1 R0 K1 ["template"]
  RETURN R0 1
