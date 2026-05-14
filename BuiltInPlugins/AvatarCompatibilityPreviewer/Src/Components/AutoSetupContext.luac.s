PROTO_0:
        0 JUMPIFEQKNIL                     R1 ; [+12]
        2 MOVE                             R2 R1
        3 DUPTABLE                         R3 K2 [{"notificationType", "jobId"}]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K3 ["AUTO_SETUP_JOB_INITIALIZATION"]
        7 SETTABLEKS                       R4 R3 K0 ["notificationType"]
        9 LOADK                            R4 K4 ["abcd"]
       10 SETTABLEKS                       R4 R3 K1 ["jobId"]
       12 CALL                             R2 1 0
       13 MOVE                             R2 R0
       14 DUPTABLE                         R3 K11 [{"progressPercentage", "progressName", "completionStart", "completionEnd", "jobStatus", "jobId", "estimatedWait"}]
       15 LOADN                            R4 1
       16 SETTABLEKS                       R4 R3 K5 ["progressPercentage"]
       18 LOADK                            R4 K12 ["Initializing"]
       19 SETTABLEKS                       R4 R3 K6 ["progressName"]
       21 LOADN                            R4 0
       22 SETTABLEKS                       R4 R3 K7 ["completionStart"]
       24 LOADK                            R4 K13 [0.2]
       25 SETTABLEKS                       R4 R3 K8 ["completionEnd"]
       27 LOADK                            R4 K14 ["Created"]
       28 SETTABLEKS                       R4 R3 K9 ["jobStatus"]
       30 LOADK                            R4 K4 ["abcd"]
       31 SETTABLEKS                       R4 R3 K1 ["jobId"]
       33 LOADN                            R4 20
       34 SETTABLEKS                       R4 R3 K10 ["estimatedWait"]
       36 CALL                             R2 1 0
       37 GETIMPORT                        R2 K17 [task.wait]
       39 LOADN                            R3 5
       40 CALL                             R2 1 0
       41 JUMPIFEQKNIL                     R1 ; [+16]
       43 MOVE                             R2 R1
       44 DUPTABLE                         R3 K20 [{"notificationType", "jobId", "level", "message"}]
       45 LOADK                            R4 K21 ["AutoSetupMetadataNotification"]
       46 SETTABLEKS                       R4 R3 K0 ["notificationType"]
       48 LOADK                            R4 K4 ["abcd"]
       49 SETTABLEKS                       R4 R3 K1 ["jobId"]
       51 LOADK                            R4 K22 ["info"]
       52 SETTABLEKS                       R4 R3 K18 ["level"]
       54 LOADK                            R4 K23 ["Unknown"]
       55 SETTABLEKS                       R4 R3 K19 ["message"]
       57 CALL                             R2 1 0
       58 MOVE                             R2 R0
       59 DUPTABLE                         R3 K11 [{"progressPercentage", "progressName", "completionStart", "completionEnd", "jobStatus", "jobId", "estimatedWait"}]
       60 LOADN                            R4 1
       61 SETTABLEKS                       R4 R3 K5 ["progressPercentage"]
       63 LOADK                            R4 K24 ["NotProcessing"]
       64 SETTABLEKS                       R4 R3 K6 ["progressName"]
       66 LOADK                            R4 K13 [0.2]
       67 SETTABLEKS                       R4 R3 K7 ["completionStart"]
       69 LOADK                            R4 K25 [0.95]
       70 SETTABLEKS                       R4 R3 K8 ["completionEnd"]
       72 LOADK                            R4 K26 ["Processing"]
       73 SETTABLEKS                       R4 R3 K9 ["jobStatus"]
       75 LOADK                            R4 K4 ["abcd"]
       76 SETTABLEKS                       R4 R3 K1 ["jobId"]
       78 LOADN                            R4 15
       79 SETTABLEKS                       R4 R3 K10 ["estimatedWait"]
       81 CALL                             R2 1 0
       82 GETIMPORT                        R2 K17 [task.wait]
       84 LOADN                            R3 12
       85 CALL                             R2 1 0
       86 MOVE                             R2 R0
       87 DUPTABLE                         R3 K11 [{"progressPercentage", "progressName", "completionStart", "completionEnd", "jobStatus", "jobId", "estimatedWait"}]
       88 LOADN                            R4 1
       89 SETTABLEKS                       R4 R3 K5 ["progressPercentage"]
       91 LOADK                            R4 K27 ["Finalizing"]
       92 SETTABLEKS                       R4 R3 K6 ["progressName"]
       94 LOADK                            R4 K25 [0.95]
       95 SETTABLEKS                       R4 R3 K7 ["completionStart"]
       97 LOADN                            R4 1
       98 SETTABLEKS                       R4 R3 K8 ["completionEnd"]
      100 LOADK                            R4 K27 ["Finalizing"]
      101 SETTABLEKS                       R4 R3 K9 ["jobStatus"]
      103 LOADK                            R4 K4 ["abcd"]
      104 SETTABLEKS                       R4 R3 K1 ["jobId"]
      106 LOADN                            R4 3
      107 SETTABLEKS                       R4 R3 K10 ["estimatedWait"]
      109 CALL                             R2 1 0
      110 GETIMPORT                        R2 K17 [task.wait]
      112 LOADN                            R3 3
      113 CALL                             R2 1 0
      114 GETIMPORT                        R3 K29 [game]
      116 LOADK                            R5 K30 ["AsyncRenamesUsedInLuaApps"]
      117 NAMECALL                         R3 R3 K31 ["GetEngineFeature"]
      119 CALL                             R3 2 1
      120 JUMPIFNOT                        R3 ; [+6]
      121 GETUPVAL                         R2 1
      122 LOADN                            R4 109
      123 NAMECALL                         R2 R2 K32 ["CreateHumanoidModelFromUserIdAsync"]
      125 CALL                             R2 2 1
      126 JUMP                             ; [+5]
      127 GETUPVAL                         R2 1
      128 LOADN                            R4 109
      129 NAMECALL                         R2 R2 K33 ["CreateHumanoidModelFromUserId"]
      131 CALL                             R2 2 1
      132 LOADK                            R5 K34 ["Accessory"]
      133 NAMECALL                         R3 R2 K35 ["FindFirstChildWhichIsA"]
      135 CALL                             R3 2 1
      136 JUMPIFEQKNIL                     R3 ; [+17]
      138 JUMPIFNOTEQKNIL                  R3 ; [+2]
      140 LOADB                            R5 0 +1
      141 LOADB                            R5 1
      142 GETUPVAL                         R6 0
      143 GETTABLEKS                       R6 R6 K36 ["LUAU_ANALYZE_ERROR"]
      145 FASTCALL2                        ASSERT R5 R6 ; [+3]
      147 GETIMPORT                        R4 K38 [assert]
      149 CALL                             R4 2 0
      150 NAMECALL                         R4 R3 K39 ["Destroy"]
      152 CALL                             R4 1 0
      153 JUMPBACK                         ; [-22]
      154 RETURN                           R2 1

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
       11 JUMPIFNOT                        R3 ; [+39]
       12 GETUPVAL                         R3 3
       13 GETTABLEKS                       R3 R3 K1 ["getCreatorData"]
       15 CALL                             R3 0 1
       16 DUPTABLE                         R4 K11 [{"AssetType", "AssetName", "Description", "AssetId", "CreatorId", "CreatorType", "ContentType", "Token", "AdditionalParameters"}]
       17 LOADK                            R5 K12 ["Model"]
       18 SETTABLEKS                       R5 R4 K2 ["AssetType"]
       20 LOADK                            R5 K13 ["Auto-setup character model"]
       21 SETTABLEKS                       R5 R4 K3 ["AssetName"]
       23 LOADK                            R5 K13 ["Auto-setup character model"]
       24 SETTABLEKS                       R5 R4 K4 ["Description"]
       26 LOADN                            R5 0
       27 SETTABLEKS                       R5 R4 K5 ["AssetId"]
       29 GETTABLEKS                       R5 R3 K14 ["creatorId"]
       31 SETTABLEKS                       R5 R4 K6 ["CreatorId"]
       33 GETTABLEKS                       R5 R3 K15 ["creatorType"]
       35 SETTABLEKS                       R5 R4 K7 ["CreatorType"]
       37 LOADK                            R5 K16 ["model/x-rbxm"]
       38 SETTABLEKS                       R5 R4 K8 ["ContentType"]
       40 LOADK                            R5 K17 [""]
       41 SETTABLEKS                       R5 R4 K9 ["Token"]
       43 DUPTABLE                         R5 K19 [{"PublishAsPackage"}]
       44 LOADB                            R6 0
       45 SETTABLEKS                       R6 R5 K18 ["PublishAsPackage"]
       47 SETTABLEKS                       R5 R4 K10 ["AdditionalParameters"]
       49 MOVE                             R2 R4
       50 JUMP                             ; [+57]
       51 GETIMPORT                        R3 K23 [Enum.AssetCreatorType.User]
       53 GETUPVAL                         R4 4
       54 NAMECALL                         R4 R4 K24 ["GetUserId"]
       56 CALL                             R4 1 1
       57 GETIMPORT                        R5 K26 [game]
       59 GETTABLEKS                       R5 R5 K7 ["CreatorType"]
       61 GETIMPORT                        R6 K28 [Enum.CreatorType.Group]
       63 JUMPIFNOTEQ                      R5 R6 ; [+14]
       65 GETIMPORT                        R5 K26 [game]
       67 GETTABLEKS                       R5 R5 K6 ["CreatorId"]
       69 LOADN                            R6 0
       70 JUMPIFNOTLT                      R6 R5 ; [+7]
       72 GETIMPORT                        R3 K29 [Enum.AssetCreatorType.Group]
       74 GETIMPORT                        R5 K26 [game]
       76 GETTABLEKS                       R4 R5 K6 ["CreatorId"]
       78 DUPTABLE                         R5 K11 [{"AssetType", "AssetName", "Description", "AssetId", "CreatorId", "CreatorType", "ContentType", "Token", "AdditionalParameters"}]
       79 LOADK                            R6 K12 ["Model"]
       80 SETTABLEKS                       R6 R5 K2 ["AssetType"]
       82 LOADK                            R6 K13 ["Auto-setup character model"]
       83 SETTABLEKS                       R6 R5 K3 ["AssetName"]
       85 LOADK                            R6 K13 ["Auto-setup character model"]
       86 SETTABLEKS                       R6 R5 K4 ["Description"]
       88 LOADN                            R6 0
       89 SETTABLEKS                       R6 R5 K5 ["AssetId"]
       91 SETTABLEKS                       R4 R5 K6 ["CreatorId"]
       93 SETTABLEKS                       R3 R5 K7 ["CreatorType"]
       95 LOADK                            R6 K16 ["model/x-rbxm"]
       96 SETTABLEKS                       R6 R5 K8 ["ContentType"]
       98 LOADK                            R6 K17 [""]
       99 SETTABLEKS                       R6 R5 K9 ["Token"]
      101 DUPTABLE                         R6 K19 [{"PublishAsPackage"}]
      102 LOADB                            R7 0
      103 SETTABLEKS                       R7 R6 K18 ["PublishAsPackage"]
      105 SETTABLEKS                       R6 R5 K10 ["AdditionalParameters"]
      107 MOVE                             R2 R5
      108 GETUPVAL                         R3 5
      109 MOVE                             R5 R1
      110 MOVE                             R6 R2
      111 NAMECALL                         R3 R3 K30 ["CreateAssetOrAssetVersionAndPollAssetWithTelemetryAsyncWithAddParam"]
      113 CALL                             R3 3 1
      114 LOADK                            R5 K31 ["rbxassetid://%*"]
      115 GETTABLEKS                       R7 R3 K5 ["AssetId"]
      117 NAMECALL                         R5 R5 K32 ["format"]
      119 CALL                             R5 2 1
      120 MOVE                             R4 R5
      121 RETURN                           R4 1

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
      105 DUPTABLE                         R17 K35 [{"uploadModelAsync", "serializeModel", "startSerializedAutoSetupAsync", "startAutoSetupAsync", "autoSetupClickedSignal", "cancelAutoSetup"}]
      106 SETTABLEKS                       R13 R17 K29 ["uploadModelAsync"]
      108 SETTABLEKS                       R12 R17 K30 ["serializeModel"]
      110 SETTABLEKS                       R14 R17 K31 ["startSerializedAutoSetupAsync"]
      112 SETTABLEKS                       R15 R17 K32 ["startAutoSetupAsync"]
      114 LOADNIL                          R18
      115 SETTABLEKS                       R18 R17 K33 ["autoSetupClickedSignal"]
      117 SETTABLEKS                       R16 R17 K34 ["cancelAutoSetup"]
      119 GETTABLEKS                       R18 R4 K36 ["createContext"]
      121 MOVE                             R19 R17
      122 CALL                             R18 1 1
      123 RETURN                           R18 1
