PROTO_0:
        0 LOADK                            R0 K0 ["local ReplicatedStorage = game:GetService(\"ReplicatedStorage\")\n\nlocal character = script.Parent\nlocal humanoid = character:WaitForChild(\"Humanoid\")\n\nlocal editorFolder = ReplicatedStorage:WaitForChild(\"AnimationGraphEditor\", 1)\nif not editorFolder then\n\twarn(\"AnimationGraphRunner: AnimationGraphEditor folder not found in ReplicatedStorage\")\n\treturn\nend\n\nlocal currentAnimationIdValue = editorFolder:WaitForChild(\"CurrentAnimationId\", 1)\nif not currentAnimationIdValue then\n\twarn(\"AnimationGraphRunner: CurrentAnimationId not found in AnimationGraphEditor folder\")\n\treturn\nend\n\nlocal animator = humanoid:FindFirstChildOfClass(\"Animator\") or humanoid\n\nlocal track = nil\nlocal animation = nil\nlocal lastAnimationId = nil\n\nlocal function stopCurrentAnimation()\n\tif track then\n\t\ttrack:Stop()\n\t\ttrack:Destroy()\n\t\ttrack = nil\n\tend\n\tif animation then\n\t\tanimation:Destroy()\n\t\tanimation = nil\n\tend\n\tlastAnimationId = nil\nend\n\nlocal function updatePlayState()\n\tlocal animationId = currentAnimationIdValue.Value\n\n\tif animationId ~= \"\" then\n\t\tif animationId ~= lastAnimationId then\n\t\t\tstopCurrentAnimation()\n\t\t\tanimation = Instance.new(\"Animation\")\n\t\t\tanimation.AnimationId = animationId\n\t\t\ttrack = animator:LoadAnimation(animation)\n\t\t\ttrack:Play()\n\t\t\tlastAnimationId = animationId\n\t\tend\n\telse\n\t\tstopCurrentAnimation()\n\tend\nend\n\nupdatePlayState()\n\ncurrentAnimationIdValue.Changed:Connect(updatePlayState)\n\n"]
        1 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 1 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 SETTABLEKS                       R1 R0 K1 ["template"]
        6 RETURN                           R0 1
