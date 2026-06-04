PROTO_0:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [type]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["string"] ; [+8]
        7 LOADK                            R2 K3 ["\"%*\""]
        8 MOVE                             R4 R0
        9 NAMECALL                         R2 R2 K4 ["format"]
       11 CALL                             R2 2 1
       12 MOVE                             R1 R2
       13 RETURN                           R1 1
       14 FASTCALL1                        TOSTRING R0 ; [+3]
       15 MOVE                             R2 R0
       16 GETIMPORT                        R1 K6 [tostring]
       18 CALL                             R1 1 1
       19 RETURN                           R1 1

PROTO_1:
        0 NEWTABLE                         R1 0 4
        2 LOADK                            R2 K0 [""]
        3 LOADK                            R3 K1 ["-- Set graph parameters each frame (uncomment and edit as needed):"]
        4 LOADK                            R4 K2 ["-- RunService.Stepped:Connect(function()"]
        5 LOADK                            R5 K3 ["-- \tif track then"]
        6 SETLIST                          R1 R2 4 [1]
        8 LENGTH                           R2 R0
        9 JUMPIFNOTEQKN                    R2 K4 [0] ; [+9]
       11 FASTCALL2K                       TABLE_INSERT R1 K5 ; [+5]
       13 MOVE                             R3 R1
       14 LOADK                            R4 K5 ["-- \t\ttrack:SetParameter(\"Parameter1\", 0) -- Number"]
       15 GETIMPORT                        R2 K8 [table.insert]
       17 CALL                             R2 2 0
       18 JUMP                             ; [+44]
       19 MOVE                             R2 R0
       20 LOADNIL                          R3
       21 LOADNIL                          R4
       22 FORGPREP                         R2
       23 GETTABLEKS                       R8 R6 K9 ["defaultValue"]
       25 FASTCALL1                        TYPE R8 ; [+3]
       26 MOVE                             R10 R8
       27 GETIMPORT                        R9 K11 [type]
       29 CALL                             R9 1 1
       30 JUMPIFNOTEQKS                    R9 K12 ["string"] ; [+8]
       32 LOADK                            R9 K13 ["\"%*\""]
       33 MOVE                             R11 R8
       34 NAMECALL                         R9 R9 K14 ["format"]
       36 CALL                             R9 2 1
       37 MOVE                             R7 R9
       38 JUMP                             ; [+6]
       39 FASTCALL1                        TOSTRING R8 ; [+3]
       40 MOVE                             R10 R8
       41 GETIMPORT                        R9 K16 [tostring]
       43 CALL                             R9 1 1
       44 MOVE                             R7 R9
       45 LOADK                            R11 K17 ["-- \t\ttrack:SetParameter(\"%*\", %*) -- %*"]
       46 GETTABLEKS                       R13 R6 K18 ["name"]
       48 MOVE                             R14 R7
       49 GETTABLEKS                       R15 R6 K10 ["type"]
       51 NAMECALL                         R11 R11 K14 ["format"]
       53 CALL                             R11 4 1
       54 MOVE                             R10 R11
       55 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
       57 MOVE                             R9 R1
       58 GETIMPORT                        R8 K8 [table.insert]
       60 CALL                             R8 2 0
       61 FORGLOOP                         R2 2 ; [-39]
       63 FASTCALL2K                       TABLE_INSERT R1 K19 ; [+5]
       65 MOVE                             R3 R1
       66 LOADK                            R4 K19 ["-- \tend"]
       67 GETIMPORT                        R2 K8 [table.insert]
       69 CALL                             R2 2 0
       70 FASTCALL2K                       TABLE_INSERT R1 K20 ; [+5]
       72 MOVE                             R3 R1
       73 LOADK                            R4 K20 ["-- end)"]
       74 GETIMPORT                        R2 K8 [table.insert]
       76 CALL                             R2 2 0
       77 FASTCALL2K                       TABLE_INSERT R1 K0 ; [+5]
       79 MOVE                             R3 R1
       80 LOADK                            R4 K0 [""]
       81 GETIMPORT                        R2 K8 [table.insert]
       83 CALL                             R2 2 0
       84 GETIMPORT                        R2 K22 [table.concat]
       86 MOVE                             R3 R1
       87 LOADK                            R4 K23 ["\n"]
       88 CALL                             R2 2 -1
       89 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 JUMPIF                           R2 ; [+2]
        3 NEWTABLE                         R2 0 0
        5 CALL                             R1 1 1
        6 LOADK                            R3 K0 ["local AnimationClipProvider = game:GetService(\"AnimationClipProvider\")\nlocal ReplicatedStorage = game:GetService(\"ReplicatedStorage\")\nlocal RunService = game:GetService(\"RunService\")\n\nif not RunService:IsRunning() then\n\treturn\nend\n\nlocal track = nil\n\n"]
        7 MOVE                             R4 R1
        8 LOADK                            R5 K1 ["\nlocal character = script.Parent\nlocal humanoid = character:WaitForChild(\"Humanoid\")\nlocal graphNameValue = script:FindFirstChild(\"GraphName\")\nlocal graphName = if graphNameValue then graphNameValue.Value else nil\nlocal characterNameValue = script:FindFirstChild(\"CharacterName\")\nlocal characterName = if characterNameValue then characterNameValue.Value else nil\n\nlocal editorFolder = nil\nlocal graphKey = nil\n\nif RunService:IsStudio() and characterName and graphName then\n\teditorFolder = ReplicatedStorage:WaitForChild(\"AnimationGraphEditor\", 1)\n\tgraphKey = characterName .. \"_\" .. graphName\nend\n\nlocal animator = humanoid:FindFirstChildOfClass(\"Animator\") or humanoid\n\nlocal animation = nil\nlocal lastAnimationId = nil\n\nlocal function stopCurrentAnimation()\n\tif track then\n\t\ttrack:Stop()\n\t\ttrack:Destroy()\n\t\ttrack = nil\n\tend\n\tif animation then\n\t\tanimation:Destroy()\n\t\tanimation = nil\n\tend\n\tlastAnimationId = nil\nend\n\nlocal function registerGraphClone()\n\tif not editorFolder or not graphKey then\n\t\treturn nil\n\tend\n\n\tlocal graphClone = editorFolder:FindFirstChild(graphKey)\n\tif not graphClone then\n\t\treturn nil\n\tend\n\n\treturn AnimationClipProvider:RegisterAnimationClip(graphClone)\nend\n\nlocal function resolveAnimationId()\n\tif not RunService:IsStudio() then\n\t\tlocal sourceAssetIdValue = script:FindFirstChild(\"SourceAssetId\")\n\t\tlocal sourceAssetId = if sourceAssetIdValue then sourceAssetIdValue.Value else nil\n\n\t\tif sourceAssetId and sourceAssetId ~= \"\" then\n\t\t\treturn `rbxassetid://{sourceAssetId}`\n\t\tend\n\t\treturn nil\n\tend\n\n\treturn registerGraphClone()\nend\n\nlocal function updatePlayState()\n\tlocal animationId = resolveAnimationId()\n\n\tif animationId and animationId ~= \"\" then\n\t\tif animationId ~= lastAnimationId then\n\t\t\tstopCurrentAnimation()\n\t\t\tanimation = Instance.new(\"Animation\")\n\t\t\tanimation.AnimationId = animationId\n\t\t\tanimation:AddTag(\"AnimationEditor_GraphAnimation\")\n\t\t\tanimation.Parent = script\n\t\t\ttrack = animator:LoadAnimation(animation)\n\t\t\ttrack:Play()\n\t\t\tlastAnimationId = animationId\n\t\tend\n\telse\n\t\tstopCurrentAnimation()\n\tend\nend\n\nupdatePlayState()\n\nif editorFolder and graphKey then\n\teditorFolder.ChildAdded:Connect(function(child)\n\t\tif child.Name == graphKey then\n\t\t\tupdatePlayState()\n\t\tend\n\tend)\nend\n"]
        9 CONCAT                           R2 R3 R5
       10 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 JUMPIF                           R2 ; [+2]
        3 NEWTABLE                         R2 0 0
        5 CALL                             R1 1 1
        6 LOADK                            R3 K0 ["local RunService = game:GetService(\"RunService\")\n\nif not RunService:IsRunning() then\n\treturn\nend\n\nlocal track = nil\n\n"]
        7 MOVE                             R4 R1
        8 LOADK                            R5 K1 ["\nlocal character = script.Parent\nlocal humanoid = character:WaitForChild(\"Humanoid\")\nlocal graphNameValue = script:FindFirstChild(\"GraphName\")\nlocal characterNameValue = script:FindFirstChild(\"CharacterName\")\nlocal characterName = if characterNameValue then (characterNameValue :: StringValue).Value else nil\nlocal graphName = if graphNameValue then (graphNameValue :: StringValue).Value else nil\n\nlocal animator = humanoid:FindFirstChildOfClass(\"Animator\") or humanoid\n\nlocal animation = nil\nlocal lastAnimationId = nil\n\nlocal function stopCurrentAnimation()\n\tif track then\n\t\ttrack:Stop()\n\t\ttrack:Destroy()\n\t\ttrack = nil\n\tend\n\tif animation then\n\t\tanimation:Destroy()\n\t\tanimation = nil\n\tend\n\tlastAnimationId = nil\nend\n\nlocal function playAnimationId(animationId: string)\n\tif animationId == lastAnimationId then\n\t\treturn\n\tend\n\tstopCurrentAnimation()\n\tanimation = Instance.new(\"Animation\")\n\tanimation.AnimationId = animationId\n\tanimation:AddTag(\"AnimationEditor_GraphAnimation\")\n\tanimation.Parent = script\n\ttrack = animator:LoadAnimation(animation)\n\ttrack:Play()\n\tlastAnimationId = animationId\nend\n\nif not RunService:IsStudio() then\n\tlocal sourceAssetIdValue = script:FindFirstChild(\"SourceAssetId\")\n\tlocal sourceAssetId = if sourceAssetIdValue then sourceAssetIdValue.Value else nil\n\tif sourceAssetId and sourceAssetId ~= \"\" then\n\t\tplayAnimationId(`rbxassetid://{sourceAssetId}`)\n\tend\nelse\n\tlocal ReplicatedStorage = game:GetService(\"ReplicatedStorage\")\n\n\tif not graphName or graphName == \"\" then\n\t\twarn(`AnimationGraphRunner [{graphName}]: missing GraphName, cannot start in Studio LocalScript mode`)\n\t\treturn\n\tend\n\n\tif not characterName or characterName == \"\" then\n\t\twarn(`AnimationGraphRunner [{graphName}]: missing CharacterName, cannot start in Studio LocalScript mode`)\n\t\treturn\n\tend\n\n\tlocal editorFolder = ReplicatedStorage:WaitForChild(\"AnimationGraphEditor\", 30)\n\tif not editorFolder then\n\t\twarn(`AnimationGraphRunner [{graphName}]: AnimationGraphEditor not found in ReplicatedStorage`)\n\t\treturn\n\tend\n\n\tlocal getGraphClip = editorFolder:WaitForChild(\"GetGraphClip\", 30)\n\tif not getGraphClip then\n\t\twarn(`AnimationGraphRunner [{graphName}]: GetGraphClip RemoteFunction not found`)\n\t\treturn\n\tend\n\n\tlocal function fetchAndPlay()\n\t\tlocal contentId = (getGraphClip :: RemoteFunction):InvokeServer(graphName, characterName)\n\t\tif contentId then\n\t\t\tplayAnimationId(contentId)\n\t\telse\n\t\t\tstopCurrentAnimation()\n\t\tend\n\tend\n\n\ttask.spawn(fetchAndPlay)\nend\n"]
        9 CONCAT                           R2 R3 R5
       10 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 DUPCLOSURE                       R2 K1 [PROTO_1]
        5 DUPCLOSURE                       R3 K2 [PROTO_2]
        6 CAPTURE                          VAL R2
        7 SETTABLEKS                       R3 R0 K3 ["templateLegacy"]
        9 DUPCLOSURE                       R3 K4 [PROTO_3]
       10 CAPTURE                          VAL R2
       11 SETTABLEKS                       R3 R0 K5 ["template"]
       13 SETTABLEKS                       R2 R0 K6 ["generateParameterBlock"]
       15 RETURN                           R0 1
