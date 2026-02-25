PROTO_0:
        0 JUMPIFEQKNIL                     R1 ; [+12]
        2 MOVE                             R2 R1
        3 DUPTABLE                         R3 K2 [{"notificationType", "jobId"}]
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R4 R5 K3 ["AUTO_SETUP_JOB_INITIALIZATION"]
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
      142 GETUPVAL                         R7 0
      143 GETTABLEKS                       R6 R7 K36 ["LUAU_ANALYZE_ERROR"]
      145 FASTCALL2                        ASSERT R5 R6 ; [+3]
      147 GETIMPORT                        R4 K38 [assert]
      149 CALL                             R4 2 0
      150 NAMECALL                         R4 R3 K39 ["Destroy"]
      152 CALL                             R4 1 0
      153 JUMPBACK                         ; [-22]
      154 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["FFlag::NoAvatarAutoSetupInputModelUpload is not enabled"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 GETIMPORT                        R1 K4 [game]
       10 LOADK                            R3 K5 ["StudioAssetService"]
       11 NAMECALL                         R1 R1 K6 ["GetService"]
       13 CALL                             R1 2 1
       14 NAMECALL                         R2 R0 K7 ["Clone"]
       16 CALL                             R2 1 1
       17 JUMPIF                           R2 ; [+4]
       18 GETIMPORT                        R3 K9 [error]
       20 LOADK                            R4 K10 ["Failed to clone body"]
       21 CALL                             R3 1 0
       22 GETIMPORT                        R3 K13 [CFrame.new]
       24 NAMECALL                         R5 R2 K14 ["GetBoundingBox"]
       26 CALL                             R5 1 1
       27 GETTABLEKS                       R4 R5 K15 ["Position"]
       29 CALL                             R3 1 1
       30 NEWTABLE                         R4 0 0
       32 NAMECALL                         R5 R2 K16 ["GetDescendants"]
       34 CALL                             R5 1 3
       35 FORGPREP                         R5
       36 LOADK                            R12 K17 ["BasePart"]
       37 NAMECALL                         R10 R9 K18 ["IsA"]
       39 CALL                             R10 2 1
       40 JUMPIFNOT                        R10 ; [+6]
       41 GETTABLEKS                       R12 R9 K11 ["CFrame"]
       43 NAMECALL                         R10 R3 K19 ["ToObjectSpace"]
       45 CALL                             R10 2 1
       46 SETTABLE                         R10 R4 R9
       47 FORGLOOP                         R5 2 ; [-12]
       49 MOVE                             R5 R4
       50 LOADNIL                          R6
       51 LOADNIL                          R7
       52 FORGPREP                         R5
       53 SETTABLEKS                       R9 R8 K11 ["CFrame"]
       55 FORGLOOP                         R5 2 ; [-3]
       57 NEWTABLE                         R7 0 1
       59 MOVE                             R8 R2
       60 SETLIST                          R7 R8 1 [1]
       62 NAMECALL                         R5 R1 K20 ["SerializeInstances"]
       64 CALL                             R5 2 -1
       65 RETURN                           R5 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+2]
        3 LOADK                            R1 K0 ["rbxasset://mock"]
        4 RETURN                           R1 1
        5 LOADNIL                          R1
        6 GETUPVAL                         R2 1
        7 CALL                             R2 0 1
        8 JUMPIFNOT                        R2 ; [+5]
        9 GETUPVAL                         R2 2
       10 MOVE                             R3 R0
       11 CALL                             R2 1 1
       12 MOVE                             R1 R2
       13 JUMP                             ; [+58]
       14 GETIMPORT                        R2 K2 [game]
       16 LOADK                            R4 K3 ["StudioAssetService"]
       17 NAMECALL                         R2 R2 K4 ["GetService"]
       19 CALL                             R2 2 1
       20 NAMECALL                         R3 R0 K5 ["Clone"]
       22 CALL                             R3 1 1
       23 JUMPIF                           R3 ; [+4]
       24 GETIMPORT                        R4 K7 [error]
       26 LOADK                            R5 K8 ["Failed to clone body"]
       27 CALL                             R4 1 0
       28 GETIMPORT                        R4 K11 [CFrame.new]
       30 NAMECALL                         R6 R3 K12 ["GetBoundingBox"]
       32 CALL                             R6 1 1
       33 GETTABLEKS                       R5 R6 K13 ["Position"]
       35 CALL                             R4 1 1
       36 NEWTABLE                         R5 0 0
       38 NAMECALL                         R6 R3 K14 ["GetDescendants"]
       40 CALL                             R6 1 3
       41 FORGPREP                         R6
       42 LOADK                            R13 K15 ["BasePart"]
       43 NAMECALL                         R11 R10 K16 ["IsA"]
       45 CALL                             R11 2 1
       46 JUMPIFNOT                        R11 ; [+6]
       47 GETTABLEKS                       R13 R10 K9 ["CFrame"]
       49 NAMECALL                         R11 R4 K17 ["ToObjectSpace"]
       51 CALL                             R11 2 1
       52 SETTABLE                         R11 R5 R10
       53 FORGLOOP                         R6 2 ; [-12]
       55 MOVE                             R6 R5
       56 LOADNIL                          R7
       57 LOADNIL                          R8
       58 FORGPREP                         R6
       59 SETTABLEKS                       R10 R9 K9 ["CFrame"]
       61 FORGLOOP                         R6 2 ; [-3]
       63 NEWTABLE                         R8 0 1
       65 MOVE                             R9 R3
       66 SETLIST                          R8 R9 1 [1]
       68 NAMECALL                         R6 R2 K18 ["SerializeInstances"]
       70 CALL                             R6 2 1
       71 MOVE                             R1 R6
       72 LOADNIL                          R2
       73 GETUPVAL                         R3 3
       74 CALL                             R3 0 1
       75 JUMPIFNOT                        R3 ; [+39]
       76 GETUPVAL                         R4 4
       77 GETTABLEKS                       R3 R4 K19 ["getCreatorData"]
       79 CALL                             R3 0 1
       80 DUPTABLE                         R4 K29 [{"AssetType", "AssetName", "Description", "AssetId", "CreatorId", "CreatorType", "ContentType", "Token", "AdditionalParameters"}]
       81 LOADK                            R5 K30 ["Model"]
       82 SETTABLEKS                       R5 R4 K20 ["AssetType"]
       84 LOADK                            R5 K31 ["Auto-setup character model"]
       85 SETTABLEKS                       R5 R4 K21 ["AssetName"]
       87 LOADK                            R5 K31 ["Auto-setup character model"]
       88 SETTABLEKS                       R5 R4 K22 ["Description"]
       90 LOADN                            R5 0
       91 SETTABLEKS                       R5 R4 K23 ["AssetId"]
       93 GETTABLEKS                       R5 R3 K32 ["creatorId"]
       95 SETTABLEKS                       R5 R4 K24 ["CreatorId"]
       97 GETTABLEKS                       R5 R3 K33 ["creatorType"]
       99 SETTABLEKS                       R5 R4 K25 ["CreatorType"]
      101 LOADK                            R5 K34 ["model/x-rbxm"]
      102 SETTABLEKS                       R5 R4 K26 ["ContentType"]
      104 LOADK                            R5 K35 [""]
      105 SETTABLEKS                       R5 R4 K27 ["Token"]
      107 DUPTABLE                         R5 K37 [{"PublishAsPackage"}]
      108 LOADB                            R6 0
      109 SETTABLEKS                       R6 R5 K36 ["PublishAsPackage"]
      111 SETTABLEKS                       R5 R4 K28 ["AdditionalParameters"]
      113 MOVE                             R2 R4
      114 JUMP                             ; [+57]
      115 GETIMPORT                        R3 K41 [Enum.AssetCreatorType.User]
      117 GETUPVAL                         R4 5
      118 NAMECALL                         R4 R4 K42 ["GetUserId"]
      120 CALL                             R4 1 1
      121 GETIMPORT                        R6 K2 [game]
      123 GETTABLEKS                       R5 R6 K25 ["CreatorType"]
      125 GETIMPORT                        R6 K44 [Enum.CreatorType.Group]
      127 JUMPIFNOTEQ                      R5 R6 ; [+14]
      129 GETIMPORT                        R6 K2 [game]
      131 GETTABLEKS                       R5 R6 K24 ["CreatorId"]
      133 LOADN                            R6 0
      134 JUMPIFNOTLT                      R6 R5 ; [+7]
      136 GETIMPORT                        R3 K45 [Enum.AssetCreatorType.Group]
      138 GETIMPORT                        R5 K2 [game]
      140 GETTABLEKS                       R4 R5 K24 ["CreatorId"]
      142 DUPTABLE                         R5 K29 [{"AssetType", "AssetName", "Description", "AssetId", "CreatorId", "CreatorType", "ContentType", "Token", "AdditionalParameters"}]
      143 LOADK                            R6 K30 ["Model"]
      144 SETTABLEKS                       R6 R5 K20 ["AssetType"]
      146 LOADK                            R6 K31 ["Auto-setup character model"]
      147 SETTABLEKS                       R6 R5 K21 ["AssetName"]
      149 LOADK                            R6 K31 ["Auto-setup character model"]
      150 SETTABLEKS                       R6 R5 K22 ["Description"]
      152 LOADN                            R6 0
      153 SETTABLEKS                       R6 R5 K23 ["AssetId"]
      155 SETTABLEKS                       R4 R5 K24 ["CreatorId"]
      157 SETTABLEKS                       R3 R5 K25 ["CreatorType"]
      159 LOADK                            R6 K34 ["model/x-rbxm"]
      160 SETTABLEKS                       R6 R5 K26 ["ContentType"]
      162 LOADK                            R6 K35 [""]
      163 SETTABLEKS                       R6 R5 K27 ["Token"]
      165 DUPTABLE                         R6 K37 [{"PublishAsPackage"}]
      166 LOADB                            R7 0
      167 SETTABLEKS                       R7 R6 K36 ["PublishAsPackage"]
      169 SETTABLEKS                       R6 R5 K28 ["AdditionalParameters"]
      171 MOVE                             R2 R5
      172 GETUPVAL                         R3 6
      173 MOVE                             R5 R1
      174 MOVE                             R6 R2
      175 NAMECALL                         R3 R3 K46 ["CreateAssetOrAssetVersionAndPollAssetWithTelemetryAsyncWithAddParam"]
      177 CALL                             R3 3 1
      178 LOADK                            R5 K47 ["rbxassetid://%*"]
      179 GETTABLEKS                       R7 R3 K23 ["AssetId"]
      181 NAMECALL                         R5 R5 K48 ["format"]
      183 CALL                             R5 2 1
      184 MOVE                             R4 R5
      185 RETURN                           R4 1

PROTO_3:
        0 GETUPVAL                         R6 0
        1 CALL                             R6 0 1
        2 FASTCALL2K                       ASSERT R6 K0 ; [+4]
        4 LOADK                            R7 K0 ["FFlag::NoAvatarAutoSetupInputModelUpload is not enabled"]
        5 GETIMPORT                        R5 K2 [assert]
        7 CALL                             R5 2 0
        8 GETUPVAL                         R5 1
        9 CALL                             R5 0 1
       10 JUMPIFNOT                        R5 ; [+5]
       11 GETUPVAL                         R5 2
       12 MOVE                             R6 R2
       13 MOVE                             R7 R3
       14 CALL                             R5 2 1
       15 RETURN                           R5 1
       16 GETIMPORT                        R5 K4 [game]
       18 LOADK                            R7 K5 ["StudioAssetService"]
       19 NAMECALL                         R5 R5 K6 ["GetService"]
       21 CALL                             R5 2 1
       22 GETUPVAL                         R7 3
       23 GETTABLEKS                       R6 R7 K7 ["getCreatorData"]
       25 CALL                             R6 0 1
       26 DUPTABLE                         R7 K10 [{"CreatorId", "CreatorType"}]
       27 GETTABLEKS                       R8 R6 K11 ["creatorId"]
       29 SETTABLEKS                       R8 R7 K8 ["CreatorId"]
       31 GETTABLEKS                       R8 R6 K12 ["creatorType"]
       33 SETTABLEKS                       R8 R7 K9 ["CreatorType"]
       35 DUPTABLE                         R8 K14 [{"AssetDataHash"}]
       36 SETTABLEKS                       R1 R8 K13 ["AssetDataHash"]
       38 GETIMPORT                        R11 K17 [buffer.tostring]
       40 GETUPVAL                         R13 4
       41 GETTABLEKS                       R12 R13 K18 ["encode"]
       43 GETIMPORT                        R13 K20 [buffer.fromstring]
       45 MOVE                             R14 R0
       46 CALL                             R13 1 -1
       47 CALL                             R12 -1 -1
       48 CALL                             R11 -1 1
       49 MOVE                             R12 R7
       50 MOVE                             R13 R8
       51 MOVE                             R14 R2
       52 MOVE                             R15 R3
       53 MOVE                             R16 R4
       54 NAMECALL                         R9 R5 K21 ["AutoSetupSerializedAvatarAsync"]
       56 CALL                             R9 7 -1
       57 RETURN                           R9 -1

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
       27 GETTABLEKS                       R6 R3 K12 ["Packages"]
       29 GETTABLEKS                       R5 R6 K13 ["React"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K11 [require]
       34 GETTABLEKS                       R8 R3 K14 ["Src"]
       36 GETTABLEKS                       R7 R8 K15 ["Util"]
       38 GETTABLEKS                       R6 R7 K16 ["Constants"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K11 [require]
       43 GETTABLEKS                       R8 R3 K14 ["Src"]
       45 GETTABLEKS                       R7 R8 K17 ["Types"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K11 [require]
       50 GETTABLEKS                       R10 R3 K14 ["Src"]
       52 GETTABLEKS                       R9 R10 K15 ["Util"]
       54 GETTABLEKS                       R8 R9 K18 ["AssetCreatorUtils"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K11 [require]
       59 GETTABLEKS                       R11 R3 K14 ["Src"]
       61 GETTABLEKS                       R10 R11 K15 ["Util"]
       63 GETTABLEKS                       R9 R10 K19 ["Base64Util"]
       65 CALL                             R8 1 1
       66 GETIMPORT                        R9 K11 [require]
       68 GETTABLEKS                       R12 R3 K14 ["Src"]
       70 GETTABLEKS                       R11 R12 K20 ["Flags"]
       72 GETTABLEKS                       R10 R11 K21 ["getFFlagDebugAvatarPreviewerMockAutoSetup"]
       74 CALL                             R9 1 1
       75 GETIMPORT                        R10 K11 [require]
       77 GETTABLEKS                       R13 R3 K14 ["Src"]
       79 GETTABLEKS                       R12 R13 K20 ["Flags"]
       81 GETTABLEKS                       R11 R12 K22 ["getFFlagAvatarPreviewerEditingTools"]
       83 CALL                             R10 1 1
       84 GETIMPORT                        R11 K11 [require]
       86 GETTABLEKS                       R14 R3 K14 ["Src"]
       88 GETTABLEKS                       R13 R14 K20 ["Flags"]
       90 GETTABLEKS                       R12 R13 K23 ["getFFlagNoAvatarAutoSetupInputModelUpload"]
       92 CALL                             R11 1 1
       93 DUPCLOSURE                       R12 K24 [PROTO_0]
       94 CAPTURE                          VAL R5
       95 CAPTURE                          VAL R0
       96 DUPCLOSURE                       R13 K25 [PROTO_1]
       97 CAPTURE                          VAL R11
       98 DUPCLOSURE                       R14 K26 [PROTO_2]
       99 CAPTURE                          VAL R9
      100 CAPTURE                          VAL R11
      101 CAPTURE                          VAL R13
      102 CAPTURE                          VAL R10
      103 CAPTURE                          VAL R7
      104 CAPTURE                          VAL R2
      105 CAPTURE                          VAL R1
      106 DUPCLOSURE                       R15 K27 [PROTO_3]
      107 CAPTURE                          VAL R11
      108 CAPTURE                          VAL R9
      109 CAPTURE                          VAL R12
      110 CAPTURE                          VAL R7
      111 CAPTURE                          VAL R8
      112 DUPCLOSURE                       R16 K28 [PROTO_4]
      113 CAPTURE                          VAL R9
      114 CAPTURE                          VAL R12
      115 DUPCLOSURE                       R17 K29 [PROTO_7]
      116 CAPTURE                          VAL R9
      117 DUPTABLE                         R18 K36 [{"uploadModelAsync", "serializeModel", "startSerializedAutoSetupAsync", "startAutoSetupAsync", "autoSetupClickedSignal", "cancelAutoSetup"}]
      118 SETTABLEKS                       R14 R18 K30 ["uploadModelAsync"]
      120 SETTABLEKS                       R13 R18 K31 ["serializeModel"]
      122 SETTABLEKS                       R15 R18 K32 ["startSerializedAutoSetupAsync"]
      124 SETTABLEKS                       R16 R18 K33 ["startAutoSetupAsync"]
      126 LOADNIL                          R19
      127 SETTABLEKS                       R19 R18 K34 ["autoSetupClickedSignal"]
      129 SETTABLEKS                       R17 R18 K35 ["cancelAutoSetup"]
      131 GETTABLEKS                       R19 R4 K37 ["createContext"]
      133 MOVE                             R20 R18
      134 CALL                             R19 1 1
      135 RETURN                           R19 1
