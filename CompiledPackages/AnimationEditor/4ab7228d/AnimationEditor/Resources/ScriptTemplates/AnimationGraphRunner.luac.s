PROTO_0:
        0 LOADK                            R0 K0 ["local RunService = game:GetService(\"RunService\")\n\nlocal animation\n\n-- TODO: implement\n\n-- if RunService:IsStudio() then\n--     local acp = game:GetService(\"AnimationClipProvider\")\n--     local localAnimation = script.LocalAnimation.Value\n--     animation = acp:RegisterAnimationClip(localAnimation)\n-- else\n--     animation = Instance.new(\"Animation\")\n--     animation.AnimationId = script.AssetID.Value\n-- end\n\n-- local humanoid = script.Parent:FindFirstChildOfClass(\"Humanoid\") or script.Parent:FindFirstAncestorWhichIsA(\"Humanoid\")\n-- local animator = Instance.new(\"Animator\")\n-- animator.Parent = humanoid\n\n-- local track = animator:LoadAnimation(animation)\n-- track:Play()\n\n-- RunService.Heartbeat:Connect(function()\n--     -- Set graph parameters here\n--     track:SetParameter(\"parameter\", 0.0)\n-- end)\n    "]
        1 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 1 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 SETTABLEKS                       R1 R0 K1 ["template"]
        6 RETURN                           R0 1
