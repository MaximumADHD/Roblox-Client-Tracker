PROTO_0:
        0 JUMPIFEQKNIL                     R1 ; [+9]
        2 MOVE                             R2 R1
        3 DUPTABLE                         R3 K3 [{[1], ["jobId"] = "abcd"}]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K4 ["AUTO_SETUP_JOB_INITIALIZATION"]
        7 SETTABLEKS                       R4 R3 K0 ["notificationType"]
        9 CALL                             R2 1 0
       10 MOVE                             R2 R0
       11 DUPTABLE                         R3 K17 [{["progressPercentage"] = 1, ["progressName"] = "Initializing", ["completionStart"] = 0, ["completionEnd"] = 0.2, ["jobStatus"] = "Created", ["jobId"] = "abcd", ["estimatedWait"] = 20}]
       12 CALL                             R2 1 0
       13 GETIMPORT                        R2 K20 [task.wait]
       15 LOADN                            R3 5
       16 CALL                             R2 1 0
       17 JUMPIFEQKNIL                     R1 ; [+4]
       19 MOVE                             R2 R1
       20 DUPTABLE                         R3 K26 [{[1] = "AutoSetupMetadataNotification", ["jobId"] = "abcd", ["level"] = "info", ["message"] = "Unknown"}]
       21 CALL                             R2 1 0
       22 MOVE                             R2 R0
       23 DUPTABLE                         R3 K31 [{["progressPercentage"] = 1, ["progressName"] = "NotProcessing", ["completionStart"] = 0.2, ["completionEnd"] = 0.95, ["jobStatus"] = "Processing", ["jobId"] = "abcd", ["estimatedWait"] = 15}]
       24 CALL                             R2 1 0
       25 GETIMPORT                        R2 K20 [task.wait]
       27 LOADN                            R3 12
       28 CALL                             R2 1 0
       29 MOVE                             R2 R0
       30 DUPTABLE                         R3 K34 [{["progressPercentage"] = 1, ["progressName"] = "Finalizing", ["completionStart"] = 0.95, ["completionEnd"] = 1, ["jobStatus"] = "Finalizing", ["jobId"] = "abcd", ["estimatedWait"] = 3}]
       31 CALL                             R2 1 0
       32 GETIMPORT                        R2 K20 [task.wait]
       34 LOADN                            R3 3
       35 CALL                             R2 1 0
       36 GETIMPORT                        R3 K36 [game]
       38 LOADK                            R5 K37 ["AsyncRenamesUsedInLuaApps"]
       39 NAMECALL                         R3 R3 K38 ["GetEngineFeature"]
       41 CALL                             R3 2 1
       42 JUMPIFNOT                        R3 ; [+6]
       43 GETUPVAL                         R2 1
       44 LOADN                            R4 24941
       45 NAMECALL                         R2 R2 K39 ["CreateHumanoidModelFromUserIdAsync"]
       47 CALL                             R2 2 1
       48 JUMP                             ; [+5]
       49 GETUPVAL                         R2 1
       50 LOADN                            R4 24941
       51 NAMECALL                         R2 R2 K40 ["CreateHumanoidModelFromUserId"]
       53 CALL                             R2 2 1
       54 LOADK                            R5 K41 ["Accessory"]
       55 NAMECALL                         R3 R2 K42 ["FindFirstChildWhichIsA"]
       57 CALL                             R3 2 1
       58 JUMPIFEQKNIL                     R3 ; [+17]
       60 JUMPIFNOTEQKNIL                  R3 ; [+2]
       62 LOADB                            R5 0 +1
       63 LOADB                            R5 1
       64 GETUPVAL                         R6 0
       65 GETTABLEKS                       R6 R6 K43 ["LUAU_ANALYZE_ERROR"]
       67 FASTCALL2                        ASSERT R5 R6 ; [+3]
       69 GETIMPORT                        R4 K45 [assert]
       71 CALL                             R4 2 0
       72 NAMECALL                         R4 R3 K46 ["Destroy"]
       74 CALL                             R4 1 0
       75 JUMPBACK                         ; [-22]
       76 RETURN                           R2 1

PROTO_1:
        0 GETIMPORT                        R1 K1 [game]
        2 LOADK                            R3 K2 ["StudioAssetService"]
        3 NAMECALL                         R1 R1 K3 ["GetService"]
        5 CALL                             R1 2 1
        6 NAMECALL                         R2 R0 K4 ["Clone"]
        8 CALL                             R2 1 1
        9 JUMPIF                           R2 ; [+4]
       10 GETIMPORT                        R3 K6 [error]
       12 LOADK                            R4 K7 ["Failed to clone body"]
       13 CALL                             R3 1 0
       14 GETIMPORT                        R3 K10 [CFrame.new]
       16 NAMECALL                         R4 R2 K11 ["GetBoundingBox"]
       18 CALL                             R4 1 1
       19 GETTABLEKS                       R4 R4 K12 ["Position"]
       21 CALL                             R3 1 1
       22 NEWTABLE                         R4 0 0
       24 NAMECALL                         R5 R2 K13 ["GetDescendants"]
       26 CALL                             R5 1 3
       27 FORGPREP                         R5
       28 LOADK                            R12 K14 ["BasePart"]
       29 NAMECALL                         R10 R9 K15 ["IsA"]
       31 CALL                             R10 2 1
       32 JUMPIFNOT                        R10 ; [+6]
       33 GETTABLEKS                       R12 R9 K8 ["CFrame"]
       35 NAMECALL                         R10 R3 K16 ["ToObjectSpace"]
       37 CALL                             R10 2 1
       38 SETTABLE                         R10 R4 R9
       39 FORGLOOP                         R5 2 ; [-12]
       41 MOVE                             R5 R4
       42 LOADNIL                          R6
       43 LOADNIL                          R7
       44 FORGPREP                         R5
       45 SETTABLEKS                       R9 R8 K8 ["CFrame"]
       47 FORGLOOP                         R5 2 ; [-3]
       49 NEWTABLE                         R7 0 1
       51 MOVE                             R8 R2
       52 SETLIST                          R7 R8 1 [1]
       54 NAMECALL                         R5 R1 K17 ["SerializeInstances"]
       56 CALL                             R5 2 -1
       57 RETURN                           R5 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+2]
        3 LOADK                            R1 K0 ["rbxasset://mock"]
        4 RETURN                           R1 1
        5 GETUPVAL                         R1 1
        6 MOVE                             R2 R0
        7 CALL                             R1 1 1
        8 LOADNIL                          R2
        9 GETUPVAL                         R3 2
       10 CALL                             R3 0 1
       11 JUMPIFNOT                        R3 ; [+18]
       12 GETUPVAL                         R3 3
       13 GETTABLEKS                       R3 R3 K1 ["getCreatorData"]
       15 CALL                             R3 0 1
       16 DUPTABLE                         R4 K16 [{["AssetType"] = "Model", ["AssetName"] = "Auto-setup character model", ["Description"] = "Auto-setup character model", ["AssetId"] = 0, ["CreatorId"], ["CreatorType"], ["ContentType"] = "model/x-rbxm", ["Token"] = "", ["AdditionalParameters"]}]
       17 GETTABLEKS                       R5 R3 K17 ["creatorId"]
       19 SETTABLEKS                       R5 R4 K9 ["CreatorId"]
       21 GETTABLEKS                       R5 R3 K18 ["creatorType"]
       23 SETTABLEKS                       R5 R4 K10 ["CreatorType"]
       25 DUPTABLE                         R5 K21 [{["PublishAsPackage"] = False}]
       26 SETTABLEKS                       R5 R4 K15 ["AdditionalParameters"]
       28 MOVE                             R2 R4
       29 JUMP                             ; [+36]
       30 GETIMPORT                        R3 K25 [Enum.AssetCreatorType.User]
       32 GETUPVAL                         R4 4
       33 NAMECALL                         R4 R4 K26 ["GetUserId"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K28 [game]
       38 GETTABLEKS                       R5 R5 K10 ["CreatorType"]
       40 GETIMPORT                        R6 K30 [Enum.CreatorType.Group]
       42 JUMPIFNOTEQ                      R5 R6 ; [+14]
       44 GETIMPORT                        R5 K28 [game]
       46 GETTABLEKS                       R5 R5 K9 ["CreatorId"]
       48 LOADN                            R6 0
       49 JUMPIFNOTLT                      R6 R5 ; [+7]
       51 GETIMPORT                        R3 K31 [Enum.AssetCreatorType.Group]
       53 GETIMPORT                        R5 K28 [game]
       55 GETTABLEKS                       R4 R5 K9 ["CreatorId"]
       57 DUPTABLE                         R5 K16 [{["AssetType"] = "Model", ["AssetName"] = "Auto-setup character model", ["Description"] = "Auto-setup character model", ["AssetId"] = 0, ["CreatorId"], ["CreatorType"], ["ContentType"] = "model/x-rbxm", ["Token"] = "", ["AdditionalParameters"]}]
       58 SETTABLEKS                       R4 R5 K9 ["CreatorId"]
       60 SETTABLEKS                       R3 R5 K10 ["CreatorType"]
       62 DUPTABLE                         R6 K21 [{["PublishAsPackage"] = False}]
       63 SETTABLEKS                       R6 R5 K15 ["AdditionalParameters"]
       65 MOVE                             R2 R5
       66 GETUPVAL                         R3 5
       67 MOVE                             R5 R1
       68 MOVE                             R6 R2
       69 NAMECALL                         R3 R3 K32 ["CreateAssetOrAssetVersionAndPollAssetWithTelemetryAsyncWithAddParam"]
       71 CALL                             R3 3 1
       72 LOADK                            R5 K33 ["rbxassetid://%*"]
       73 GETTABLEKS                       R7 R3 K7 ["AssetId"]
       75 NAMECALL                         R5 R5 K34 ["format"]
       77 CALL                             R5 2 1
       78 MOVE                             R4 R5
       79 RETURN                           R4 1

PROTO_3:
        0 GETUPVAL                         R5 0
        1 CALL                             R5 0 1
        2 JUMPIFNOT                        R5 ; [+5]
        3 GETUPVAL                         R5 1
        4 MOVE                             R6 R2
        5 MOVE                             R7 R3
        6 CALL                             R5 2 1
        7 RETURN                           R5 1
        8 GETIMPORT                        R5 K1 [game]
       10 LOADK                            R7 K2 ["StudioAssetService"]
       11 NAMECALL                         R5 R5 K3 ["GetService"]
       13 CALL                             R5 2 1
       14 GETUPVAL                         R6 2
       15 GETTABLEKS                       R6 R6 K4 ["getCreatorData"]
       17 CALL                             R6 0 1
       18 DUPTABLE                         R7 K7 [{"CreatorId", "CreatorType"}]
       19 GETTABLEKS                       R8 R6 K8 ["creatorId"]
       21 SETTABLEKS                       R8 R7 K5 ["CreatorId"]
       23 GETTABLEKS                       R8 R6 K9 ["creatorType"]
       25 SETTABLEKS                       R8 R7 K6 ["CreatorType"]
       27 DUPTABLE                         R8 K11 [{"AssetDataHash"}]
       28 SETTABLEKS                       R1 R8 K10 ["AssetDataHash"]
       30 GETIMPORT                        R11 K14 [buffer.tostring]
       32 GETUPVAL                         R12 3
       33 GETTABLEKS                       R12 R12 K15 ["encode"]
       35 GETIMPORT                        R13 K17 [buffer.fromstring]
       37 MOVE                             R14 R0
       38 CALL                             R13 1 -1
       39 CALL                             R12 -1 -1
       40 CALL                             R11 -1 1
       41 MOVE                             R12 R7
       42 MOVE                             R13 R8
       43 MOVE                             R14 R2
       44 MOVE                             R15 R3
       45 MOVE                             R16 R4
       46 NAMECALL                         R9 R5 K18 ["AutoSetupSerializedAvatarAsync"]
       48 CALL                             R9 7 -1
       49 RETURN                           R9 -1

PROTO_4:
        0 GETUPVAL                         R4 0
        1 CALL                             R4 0 1
        2 JUMPIFNOT                        R4 ; [+5]
        3 GETUPVAL                         R4 1
        4 MOVE                             R5 R1
        5 MOVE                             R6 R2
        6 CALL                             R4 2 1
        7 RETURN                           R4 1
        8 GETIMPORT                        R4 K1 [game]
       10 LOADK                            R6 K2 ["StudioAssetService"]
       11 NAMECALL                         R4 R4 K3 ["GetService"]
       13 CALL                             R4 2 1
       14 MOVE                             R7 R0
       15 MOVE                             R8 R1
       16 MOVE                             R9 R2
       17 MOVE                             R10 R3
       18 NAMECALL                         R5 R4 K4 ["AutoSetupAvatarAsync"]
       20 CALL                             R5 5 -1
       21 RETURN                           R5 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["CancelAutoSetupAvatarAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 2
        6 JUMPIF                           R0 ; [0]
        7 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+1]
        3 RETURN                           R0 0
        4 LENGTH                           R1 R0
        5 JUMPIFNOTEQKN                    R1 K0 [0] ; [+2]
        7 RETURN                           R0 0
        8 GETIMPORT                        R1 K2 [game]
       10 LOADK                            R3 K3 ["StudioAssetService"]
       11 NAMECALL                         R1 R1 K4 ["GetService"]
       13 CALL                             R1 2 1
       14 GETIMPORT                        R2 K7 [task.spawn]
       16 NEWCLOSURE                       R3 P0
       17 CAPTURE                          VAL R1
       18 CAPTURE                          VAL R0
       19 CALL                             R2 1 0
       20 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Players"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["PublishService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K1 [game]
       15 LOADK                            R4 K5 ["StudioService"]
       16 NAMECALL                         R2 R2 K3 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K7 [script]
       21 LOADK                            R5 K8 ["AvatarCompatibilityPreviewer"]
       22 NAMECALL                         R3 R3 K9 ["FindFirstAncestor"]
       24 CALL                             R3 2 1
       25 GETIMPORT                        R4 K11 [require]
       27 GETTABLEKS                       R5 R3 K12 ["Packages"]
       29 GETTABLEKS                       R5 R5 K13 ["React"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K11 [require]
       34 GETTABLEKS                       R6 R3 K14 ["Src"]
       36 GETTABLEKS                       R6 R6 K15 ["Util"]
       38 GETTABLEKS                       R6 R6 K16 ["Constants"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K11 [require]
       43 GETTABLEKS                       R7 R3 K14 ["Src"]
       45 GETTABLEKS                       R7 R7 K17 ["Types"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K11 [require]
       50 GETTABLEKS                       R8 R3 K14 ["Src"]
       52 GETTABLEKS                       R8 R8 K15 ["Util"]
       54 GETTABLEKS                       R8 R8 K18 ["AssetCreatorUtils"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K11 [require]
       59 GETTABLEKS                       R9 R3 K14 ["Src"]
       61 GETTABLEKS                       R9 R9 K15 ["Util"]
       63 GETTABLEKS                       R9 R9 K19 ["Base64Util"]
       65 CALL                             R8 1 1
       66 GETIMPORT                        R9 K11 [require]
       68 GETTABLEKS                       R10 R3 K14 ["Src"]
       70 GETTABLEKS                       R10 R10 K20 ["Flags"]
       72 GETTABLEKS                       R10 R10 K21 ["getFFlagDebugAvatarPreviewerMockAutoSetup"]
       74 CALL                             R9 1 1
       75 GETIMPORT                        R10 K11 [require]
       77 GETTABLEKS                       R11 R3 K14 ["Src"]
       79 GETTABLEKS                       R11 R11 K20 ["Flags"]
       81 GETTABLEKS                       R11 R11 K22 ["getFFlagAvatarPreviewerEditingTools"]
       83 CALL                             R10 1 1
       84 DUPCLOSURE                       R11 K23 [PROTO_0]
       85 CAPTURE                          VAL R5
       86 CAPTURE                          VAL R0
       87 DUPCLOSURE                       R12 K24 [PROTO_1]
       88 DUPCLOSURE                       R13 K25 [PROTO_2]
       89 CAPTURE                          VAL R9
       90 CAPTURE                          VAL R12
       91 CAPTURE                          VAL R10
       92 CAPTURE                          VAL R7
       93 CAPTURE                          VAL R2
       94 CAPTURE                          VAL R1
       95 DUPCLOSURE                       R14 K26 [PROTO_3]
       96 CAPTURE                          VAL R9
       97 CAPTURE                          VAL R11
       98 CAPTURE                          VAL R7
       99 CAPTURE                          VAL R8
      100 DUPCLOSURE                       R15 K27 [PROTO_4]
      101 CAPTURE                          VAL R9
      102 CAPTURE                          VAL R11
      103 DUPCLOSURE                       R16 K28 [PROTO_7]
      104 CAPTURE                          VAL R9
      105 DUPTABLE                         R17 K36 [{["uploadModelAsync"], ["serializeModel"], ["startSerializedAutoSetupAsync"], ["startAutoSetupAsync"], ["autoSetupClickedSignal"] = , ["cancelAutoSetup"]}]
      106 SETTABLEKS                       R13 R17 K29 ["uploadModelAsync"]
      108 SETTABLEKS                       R12 R17 K30 ["serializeModel"]
      110 SETTABLEKS                       R14 R17 K31 ["startSerializedAutoSetupAsync"]
      112 SETTABLEKS                       R15 R17 K32 ["startAutoSetupAsync"]
      114 SETTABLEKS                       R16 R17 K35 ["cancelAutoSetup"]
      116 GETTABLEKS                       R18 R4 K37 ["createContext"]
      118 MOVE                             R19 R17
      119 CALL                             R18 1 1
      120 RETURN                           R18 1
