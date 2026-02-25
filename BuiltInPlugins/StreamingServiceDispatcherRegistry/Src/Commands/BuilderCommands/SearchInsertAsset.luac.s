PROTO_0:
        0 GETUPVAL                         R5 0
        1 GETTABLE                         R4 R5 R0
        2 FASTCALL2K                       ASSERT R4 K0 ; [+5]
        4 MOVE                             R6 R4
        5 LOADK                            R7 K0 ["Unsupported asset type"]
        6 GETIMPORT                        R5 K2 [assert]
        8 CALL                             R5 2 0
        9 GETUPVAL                         R5 1
       10 DUPTABLE                         R7 K15 [{"query", "assetType", "assetSource", "userId", "isLexical", "numResults", "style", "theme", "isAssistantGeneratedQuery", "textFilterThresholdOverride", "sizeInclusiveThresholdMin", "sizeInclusiveThresholdMax"}]
       11 SETTABLEKS                       R1 R7 K3 ["query"]
       13 SETTABLEKS                       R4 R7 K4 ["assetType"]
       15 LOADK                            R8 K16 ["ASSET_SOURCE_MARKETPLACE"]
       16 SETTABLEKS                       R8 R7 K5 ["assetSource"]
       18 GETUPVAL                         R8 2
       19 NAMECALL                         R8 R8 K17 ["GetUserId"]
       21 CALL                             R8 1 1
       22 SETTABLEKS                       R8 R7 K6 ["userId"]
       24 LOADB                            R8 1
       25 SETTABLEKS                       R8 R7 K7 ["isLexical"]
       27 LOADN                            R8 6
       28 SETTABLEKS                       R8 R7 K8 ["numResults"]
       30 SETTABLEKS                       R2 R7 K9 ["style"]
       32 SETTABLEKS                       R3 R7 K10 ["theme"]
       34 LOADB                            R8 1
       35 SETTABLEKS                       R8 R7 K11 ["isAssistantGeneratedQuery"]
       37 LOADK                            R8 K18 [0.75]
       38 SETTABLEKS                       R8 R7 K12 ["textFilterThresholdOverride"]
       40 DUPTABLE                         R8 K22 [{"x", "y", "z"}]
       41 LOADN                            R9 0
       42 SETTABLEKS                       R9 R8 K19 ["x"]
       44 LOADN                            R9 0
       45 SETTABLEKS                       R9 R8 K20 ["y"]
       47 LOADN                            R9 0
       48 SETTABLEKS                       R9 R8 K21 ["z"]
       50 SETTABLEKS                       R8 R7 K13 ["sizeInclusiveThresholdMin"]
       52 DUPTABLE                         R8 K22 [{"x", "y", "z"}]
       53 LOADN                            R9 0
       54 SETTABLEKS                       R9 R8 K19 ["x"]
       56 LOADN                            R9 0
       57 SETTABLEKS                       R9 R8 K20 ["y"]
       59 LOADN                            R9 0
       60 SETTABLEKS                       R9 R8 K21 ["z"]
       62 SETTABLEKS                       R8 R7 K14 ["sizeInclusiveThresholdMax"]
       64 NAMECALL                         R5 R5 K23 ["SearchForAssets"]
       66 CALL                             R5 2 1
       67 GETTABLEKS                       R6 R5 K24 ["data"]
       69 MOVE                             R8 R6
       70 JUMPIFNOT                        R8 ; [+6]
       71 LENGTH                           R9 R6
       72 LOADN                            R10 0
       73 JUMPIFLT                         R10 R9 ; [+2]
       75 LOADB                            R8 0 +1
       76 LOADB                            R8 1
       77 LOADK                            R10 K25 ["Failed to find \"%*\" via SearchForAssets"]
       78 MOVE                             R12 R1
       79 NAMECALL                         R10 R10 K26 ["format"]
       81 CALL                             R10 2 1
       82 MOVE                             R9 R10
       83 FASTCALL2                        ASSERT R8 R9 ; [+3]
       85 GETIMPORT                        R7 K2 [assert]
       87 CALL                             R7 2 0
       88 GETIMPORT                        R7 K29 [table.create]
       90 LENGTH                           R8 R6
       91 CALL                             R7 1 1
       92 MOVE                             R8 R6
       93 LOADNIL                          R9
       94 LOADNIL                          R10
       95 FORGPREP                         R8
       96 LOADN                            R13 6
       97 JUMPIFLT                         R13 R11 ; [+15]
       99 GETTABLEKS                       R16 R12 K30 ["id"]
      101 FASTCALL1                        TOSTRING R16 ; [+2]
      102 GETIMPORT                        R15 K32 [tostring]
      104 CALL                             R15 1 1
      105 FASTCALL2                        TABLE_INSERT R7 R15 ; [+4]
      107 MOVE                             R14 R7
      108 GETIMPORT                        R13 K34 [table.insert]
      110 CALL                             R13 2 0
      111 FORGLOOP                         R8 2 ; [-16]
      113 RETURN                           R7 1

PROTO_1:
        0 LENGTH                           R4 R1
        1 LOADN                            R5 0
        2 JUMPIFNOTLT                      R5 R4 ; [+5]
        4 MOVE                             R4 R1
        5 LOADK                            R5 K0 [" "]
        6 CONCAT                           R3 R4 R5
        7 JUMPIF                           R3 ; [+1]
        8 LOADK                            R3 K1 [""]
        9 MOVE                             R1 R3
       10 LENGTH                           R4 R2
       11 LOADN                            R5 0
       12 JUMPIFNOTLT                      R5 R4 ; [+5]
       14 MOVE                             R4 R2
       15 LOADK                            R5 K0 [" "]
       16 CONCAT                           R3 R4 R5
       17 JUMPIF                           R3 ; [+1]
       18 LOADK                            R3 K1 [""]
       19 MOVE                             R2 R3
       20 MOVE                             R4 R1
       21 MOVE                             R5 R2
       22 MOVE                             R6 R0
       23 CONCAT                           R3 R4 R6
       24 GETIMPORT                        R5 K3 [game]
       26 LOADK                            R7 K4 ["AsyncRenamesUsedInLuaApps"]
       27 NAMECALL                         R5 R5 K5 ["GetEngineFeature"]
       29 CALL                             R5 2 1
       30 JUMPIFNOT                        R5 ; [+7]
       31 GETUPVAL                         R4 0
       32 MOVE                             R6 R3
       33 LOADN                            R7 0
       34 NAMECALL                         R4 R4 K6 ["GetFreeModelsAsync"]
       36 CALL                             R4 3 1
       37 JUMP                             ; [+6]
       38 GETUPVAL                         R4 0
       39 MOVE                             R6 R3
       40 LOADN                            R7 0
       41 NAMECALL                         R4 R4 K7 ["GetFreeModels"]
       43 CALL                             R4 3 1
       44 GETTABLEN                        R6 R4 1
       45 FASTCALL2K                       ASSERT R6 K8 ; [+4]
       47 LOADK                            R7 K8 ["Failed to get free models"]
       48 GETIMPORT                        R5 K10 [assert]
       50 CALL                             R5 2 0
       51 GETTABLEN                        R6 R4 1
       52 GETTABLEKS                       R5 R6 K11 ["Results"]
       54 MOVE                             R7 R5
       55 JUMPIFNOT                        R7 ; [+6]
       56 LENGTH                           R8 R5
       57 LOADN                            R9 0
       58 JUMPIFLT                         R9 R8 ; [+2]
       60 LOADB                            R7 0 +1
       61 LOADB                            R7 1
       62 LOADK                            R9 K12 ["Failed to find \"%*\" via GetFreeModels"]
       63 MOVE                             R11 R0
       64 NAMECALL                         R9 R9 K13 ["format"]
       66 CALL                             R9 2 1
       67 MOVE                             R8 R9
       68 FASTCALL2                        ASSERT R7 R8 ; [+3]
       70 GETIMPORT                        R6 K10 [assert]
       72 CALL                             R6 2 0
       73 GETIMPORT                        R6 K16 [table.create]
       75 LENGTH                           R7 R5
       76 CALL                             R6 1 1
       77 MOVE                             R7 R5
       78 LOADNIL                          R8
       79 LOADNIL                          R9
       80 FORGPREP                         R7
       81 LOADN                            R12 6
       82 JUMPIFLT                         R12 R10 ; [+15]
       84 GETTABLEKS                       R15 R11 K17 ["AssetId"]
       86 FASTCALL1                        TOSTRING R15 ; [+2]
       87 GETIMPORT                        R14 K19 [tostring]
       89 CALL                             R14 1 1
       90 FASTCALL2                        TABLE_INSERT R6 R14 ; [+4]
       92 MOVE                             R13 R6
       93 GETIMPORT                        R12 K21 [table.insert]
       95 CALL                             R12 2 0
       96 FORGLOOP                         R7 2 ; [-16]
       98 RETURN                           R6 1

PROTO_2:
        0 LENGTH                           R4 R1
        1 LOADN                            R5 0
        2 JUMPIFNOTLT                      R5 R4 ; [+5]
        4 MOVE                             R4 R1
        5 LOADK                            R5 K0 [" "]
        6 CONCAT                           R3 R4 R5
        7 JUMPIF                           R3 ; [+1]
        8 LOADK                            R3 K1 [""]
        9 MOVE                             R1 R3
       10 LENGTH                           R4 R2
       11 LOADN                            R5 0
       12 JUMPIFNOTLT                      R5 R4 ; [+5]
       14 MOVE                             R4 R2
       15 LOADK                            R5 K0 [" "]
       16 CONCAT                           R3 R4 R5
       17 JUMPIF                           R3 ; [+1]
       18 LOADK                            R3 K1 [""]
       19 MOVE                             R2 R3
       20 MOVE                             R4 R1
       21 MOVE                             R5 R2
       22 MOVE                             R6 R0
       23 CONCAT                           R3 R4 R6
       24 GETIMPORT                        R5 K3 [game]
       26 LOADK                            R7 K4 ["AsyncRenamesUsedInLuaApps"]
       27 NAMECALL                         R5 R5 K5 ["GetEngineFeature"]
       29 CALL                             R5 2 1
       30 JUMPIFNOT                        R5 ; [+7]
       31 GETUPVAL                         R4 0
       32 MOVE                             R6 R3
       33 LOADN                            R7 0
       34 NAMECALL                         R4 R4 K6 ["GetFreeDecalsAsync"]
       36 CALL                             R4 3 1
       37 JUMP                             ; [+6]
       38 GETUPVAL                         R4 0
       39 MOVE                             R6 R3
       40 LOADN                            R7 0
       41 NAMECALL                         R4 R4 K7 ["GetFreeDecals"]
       43 CALL                             R4 3 1
       44 GETTABLEN                        R6 R4 1
       45 GETTABLEKS                       R5 R6 K8 ["Results"]
       47 MOVE                             R7 R5
       48 JUMPIFNOT                        R7 ; [+6]
       49 LENGTH                           R8 R5
       50 LOADN                            R9 0
       51 JUMPIFLT                         R9 R8 ; [+2]
       53 LOADB                            R7 0 +1
       54 LOADB                            R7 1
       55 LOADK                            R9 K9 ["Failed to find \"%*\" via GetFreeDecals"]
       56 MOVE                             R11 R0
       57 NAMECALL                         R9 R9 K10 ["format"]
       59 CALL                             R9 2 1
       60 MOVE                             R8 R9
       61 FASTCALL2                        ASSERT R7 R8 ; [+3]
       63 GETIMPORT                        R6 K12 [assert]
       65 CALL                             R6 2 0
       66 GETIMPORT                        R6 K15 [table.create]
       68 LENGTH                           R7 R5
       69 CALL                             R6 1 1
       70 MOVE                             R7 R5
       71 LOADNIL                          R8
       72 LOADNIL                          R9
       73 FORGPREP                         R7
       74 LOADN                            R12 6
       75 JUMPIFLT                         R12 R10 ; [+15]
       77 GETTABLEKS                       R15 R11 K16 ["AssetId"]
       79 FASTCALL1                        TOSTRING R15 ; [+2]
       80 GETIMPORT                        R14 K18 [tostring]
       82 CALL                             R14 1 1
       83 FASTCALL2                        TABLE_INSERT R6 R14 ; [+4]
       85 MOVE                             R13 R6
       86 GETIMPORT                        R12 K20 [table.insert]
       88 CALL                             R12 2 0
       89 FORGLOOP                         R7 2 ; [-16]
       91 RETURN                           R6 1

PROTO_3:
        0 LENGTH                           R4 R1
        1 LOADN                            R5 0
        2 JUMPIFNOTLT                      R5 R4 ; [+5]
        4 MOVE                             R4 R1
        5 LOADK                            R5 K0 [" "]
        6 CONCAT                           R3 R4 R5
        7 JUMPIF                           R3 ; [+1]
        8 LOADK                            R3 K1 [""]
        9 MOVE                             R1 R3
       10 LENGTH                           R4 R2
       11 LOADN                            R5 0
       12 JUMPIFNOTLT                      R5 R4 ; [+5]
       14 MOVE                             R4 R2
       15 LOADK                            R5 K0 [" "]
       16 CONCAT                           R3 R4 R5
       17 JUMPIF                           R3 ; [+1]
       18 LOADK                            R3 K1 [""]
       19 MOVE                             R2 R3
       20 GETIMPORT                        R3 K4 [Instance.new]
       22 LOADK                            R4 K5 ["AudioSearchParams"]
       23 CALL                             R3 1 1
       24 MOVE                             R5 R1
       25 MOVE                             R6 R2
       26 MOVE                             R7 R0
       27 CONCAT                           R4 R5 R7
       28 SETTABLEKS                       R4 R3 K6 ["SearchKeyword"]
       30 GETIMPORT                        R5 K8 [game]
       32 LOADK                            R7 K9 ["AsyncRenamesUsedInLuaApps"]
       33 NAMECALL                         R5 R5 K10 ["GetEngineFeature"]
       35 CALL                             R5 2 1
       36 JUMPIFNOT                        R5 ; [+6]
       37 GETUPVAL                         R4 0
       38 MOVE                             R6 R3
       39 NAMECALL                         R4 R4 K11 ["SearchAudioAsync"]
       41 CALL                             R4 2 1
       42 JUMP                             ; [+5]
       43 GETUPVAL                         R4 0
       44 MOVE                             R6 R3
       45 NAMECALL                         R4 R4 K12 ["SearchAudio"]
       47 CALL                             R4 2 1
       48 NAMECALL                         R5 R4 K13 ["GetCurrentPage"]
       50 CALL                             R5 1 1
       51 GETIMPORT                        R6 K16 [table.create]
       53 LENGTH                           R7 R5
       54 CALL                             R6 1 1
       55 MOVE                             R7 R5
       56 LOADNIL                          R8
       57 LOADNIL                          R9
       58 FORGPREP                         R7
       59 LOADN                            R12 6
       60 JUMPIFLT                         R12 R10 ; [+15]
       62 GETTABLEKS                       R15 R11 K17 ["Id"]
       64 FASTCALL1                        TOSTRING R15 ; [+2]
       65 GETIMPORT                        R14 K19 [tostring]
       67 CALL                             R14 1 1
       68 FASTCALL2                        TABLE_INSERT R6 R14 ; [+4]
       70 MOVE                             R13 R6
       71 GETIMPORT                        R12 K21 [table.insert]
       73 CALL                             R12 2 0
       74 FORGLOOP                         R7 2 ; [-16]
       76 RETURN                           R6 1

PROTO_4:
        0 GETIMPORT                        R4 K3 [Enum.AssetType.Model]
        2 JUMPIFNOTEQ                      R0 R4 ; [+7]
        4 GETUPVAL                         R4 0
        5 MOVE                             R5 R1
        6 MOVE                             R6 R2
        7 MOVE                             R7 R3
        8 CALL                             R4 3 1
        9 RETURN                           R4 1
       10 GETIMPORT                        R4 K5 [Enum.AssetType.Decal]
       12 JUMPIFNOTEQ                      R0 R4 ; [+7]
       14 GETUPVAL                         R4 1
       15 MOVE                             R5 R1
       16 MOVE                             R6 R2
       17 MOVE                             R7 R3
       18 CALL                             R4 3 1
       19 RETURN                           R4 1
       20 GETIMPORT                        R4 K7 [Enum.AssetType.Audio]
       22 JUMPIFNOTEQ                      R0 R4 ; [+7]
       24 GETUPVAL                         R4 2
       25 MOVE                             R5 R1
       26 MOVE                             R6 R2
       27 MOVE                             R7 R3
       28 CALL                             R4 3 1
       29 RETURN                           R4 1
       30 GETIMPORT                        R4 K9 [error]
       32 LOADK                            R5 K10 ["Unsupported asset type"]
       33 CALL                             R4 1 0
       34 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getChatBulletId"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 CALL                             R0 2 1
        6 GETUPVAL                         R3 3
        7 GETTABLEKS                       R2 R3 K1 ["chatBulletMap"]
        9 GETTABLE                         R1 R2 R0
       10 JUMPIFNOT                        R1 ; [+3]
       11 NEWTABLE                         R2 0 0
       13 RETURN                           R2 1
       14 GETIMPORT                        R2 K3 [pcall]
       16 GETUPVAL                         R3 4
       17 GETUPVAL                         R4 5
       18 GETUPVAL                         R5 6
       19 GETUPVAL                         R6 7
       20 GETUPVAL                         R7 8
       21 CALL                             R2 5 2
       22 JUMPIFNOT                        R2 ; [+8]
       23 FASTCALL1                        TYPEOF R3 ; [+3]
       24 MOVE                             R5 R3
       25 GETIMPORT                        R4 K5 [typeof]
       27 CALL                             R4 1 1
       28 JUMPIFNOTEQKS                    R4 K6 ["table"] ; [+2]
       30 RETURN                           R3 1
       31 GETIMPORT                        R4 K3 [pcall]
       33 GETUPVAL                         R5 9
       34 GETUPVAL                         R6 5
       35 GETUPVAL                         R7 6
       36 GETUPVAL                         R8 7
       37 GETUPVAL                         R9 8
       38 CALL                             R4 5 2
       39 JUMPIFNOT                        R4 ; [+8]
       40 FASTCALL1                        TYPEOF R5 ; [+3]
       41 MOVE                             R7 R5
       42 GETIMPORT                        R6 K5 [typeof]
       44 CALL                             R6 1 1
       45 JUMPIFNOTEQKS                    R6 K6 ["table"] ; [+2]
       47 RETURN                           R5 1
       48 GETIMPORT                        R6 K8 [error]
       50 MOVE                             R7 R3
       51 CALL                             R6 1 0
       52 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["SearchInsertAsset is not enabled"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 GETTABLEKS                       R1 R0 K3 ["requestId"]
       10 GETTABLEKS                       R2 R0 K4 ["arguments"]
       12 GETTABLEKS                       R3 R2 K5 ["query"]
       14 GETTABLEKS                       R5 R2 K7 ["style"]
       16 ORK                              R4 R5 K6 [""]
       17 GETTABLEKS                       R6 R2 K8 ["theme"]
       19 ORK                              R5 R6 K6 [""]
       20 GETTABLEKS                       R7 R2 K10 ["relativePosition"]
       22 ORK                              R6 R7 K9 [{0, 0, 0}]
       23 GETTABLEKS                       R7 R2 K11 ["assetType"]
       25 JUMPIF                           R7 ; [+2]
       26 GETIMPORT                        R7 K15 [Enum.AssetType.Model]
       28 NEWCLOSURE                       R8 P0
       29 CAPTURE                          UPVAL U1
       30 CAPTURE                          VAL R1
       31 CAPTURE                          VAL R3
       32 CAPTURE                          UPVAL U2
       33 CAPTURE                          UPVAL U3
       34 CAPTURE                          VAL R7
       35 CAPTURE                          VAL R3
       36 CAPTURE                          VAL R4
       37 CAPTURE                          VAL R5
       38 CAPTURE                          UPVAL U4
       39 MOVE                             R9 R8
       40 CALL                             R9 0 1
       41 DUPTABLE                         R10 K17 [{"instanceName"}]
       42 SETTABLEKS                       R3 R10 K16 ["instanceName"]
       44 GETIMPORT                        R11 K15 [Enum.AssetType.Model]
       46 JUMPIFNOTEQ                      R7 R11 ; [+27]
       48 GETUPVAL                         R13 5
       49 GETTABLEKS                       R12 R13 K18 ["Dictionary"]
       51 GETTABLEKS                       R11 R12 K19 ["join"]
       53 MOVE                             R12 R10
       54 DUPTABLE                         R13 K23 [{"parentInstanceId", "positionOrigin", "position"}]
       55 LOADK                            R14 K24 ["Workspace"]
       56 SETTABLEKS                       R14 R13 K20 ["parentInstanceId"]
       58 LOADK                            R14 K25 ["currentCamera"]
       59 SETTABLEKS                       R14 R13 K21 ["positionOrigin"]
       61 DUPTABLE                         R14 K28 [{"x", "z"}]
       62 GETTABLEKS                       R15 R6 K29 ["X"]
       64 SETTABLEKS                       R15 R14 K26 ["x"]
       66 GETTABLEKS                       R15 R6 K30 ["Z"]
       68 SETTABLEKS                       R15 R14 K27 ["z"]
       70 SETTABLEKS                       R14 R13 K22 ["position"]
       72 CALL                             R11 2 1
       73 MOVE                             R10 R11
       74 GETUPVAL                         R11 6
       75 MOVE                             R13 R1
       76 LOADK                            R14 K31 ["InsertAsset"]
       77 DUPTABLE                         R15 K36 [{"assetId", "altAssets", "chatGroup", "properties", "assetType"}]
       78 GETTABLEN                        R16 R9 1
       79 SETTABLEKS                       R16 R15 K32 ["assetId"]
       81 SETTABLEKS                       R9 R15 K33 ["altAssets"]
       83 SETTABLEKS                       R3 R15 K34 ["chatGroup"]
       85 SETTABLEKS                       R10 R15 K35 ["properties"]
       87 SETTABLEKS                       R7 R15 K11 ["assetType"]
       89 NAMECALL                         R11 R11 K37 ["ExecuteCommandAsync"]
       91 CALL                             R11 4 -1
       92 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StreamingServiceDispatcherRegistry"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R5 R0 K6 ["Src"]
       11 GETTABLEKS                       R4 R5 K7 ["Commands"]
       13 GETTABLEKS                       R3 R4 K8 ["BuilderCommands"]
       15 GETTABLEKS                       R2 R3 K9 ["BuilderNameMap"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R5 R0 K6 ["Src"]
       22 GETTABLEKS                       R4 R5 K10 ["Utils"]
       24 GETTABLEKS                       R3 R4 K11 ["CliAdapter"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETTABLEKS                       R5 R0 K12 ["Packages"]
       31 GETTABLEKS                       R4 R5 K13 ["Cryo"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R6 R0 K6 ["Src"]
       38 GETTABLEKS                       R5 R6 K14 ["Types"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R8 R0 K6 ["Src"]
       45 GETTABLEKS                       R7 R8 K10 ["Utils"]
       47 GETTABLEKS                       R6 R7 K10 ["Utils"]
       49 CALL                             R5 1 1
       50 GETTABLEKS                       R6 R2 K15 ["GetService"]
       52 LOADK                            R7 K16 ["AssetService"]
       53 CALL                             R6 1 1
       54 GETTABLEKS                       R7 R2 K15 ["GetService"]
       56 LOADK                            R8 K17 ["InsertService"]
       57 CALL                             R7 1 1
       58 GETTABLEKS                       R8 R2 K15 ["GetService"]
       60 LOADK                            R9 K18 ["StreamingService"]
       61 CALL                             R8 1 1
       62 GETTABLEKS                       R9 R2 K15 ["GetService"]
       64 LOADK                            R10 K19 ["StudioService"]
       65 CALL                             R9 1 1
       66 GETIMPORT                        R11 K5 [require]
       68 GETTABLEKS                       R14 R0 K6 ["Src"]
       70 GETTABLEKS                       R13 R14 K20 ["Flags"]
       72 GETTABLEKS                       R12 R13 K21 ["FFlagConvAIAddCommandSearchInsertAsset"]
       74 CALL                             R11 1 1
       75 GETTABLEKS                       R10 R11 K22 ["Get"]
       77 NEWTABLE                         R11 4 0
       79 GETIMPORT                        R12 K26 [Enum.AssetType.Model]
       81 LOADK                            R13 K27 ["ASSET_TYPE_MODEL"]
       82 SETTABLE                         R13 R11 R12
       83 GETIMPORT                        R12 K29 [Enum.AssetType.Decal]
       85 LOADK                            R13 K30 ["ASSET_TYPE_DECAL"]
       86 SETTABLE                         R13 R11 R12
       87 GETIMPORT                        R12 K32 [Enum.AssetType.Audio]
       89 LOADK                            R13 K33 ["ASSET_TYPE_AUDIO"]
       90 SETTABLE                         R13 R11 R12
       91 DUPCLOSURE                       R12 K34 [PROTO_0]
       92 CAPTURE                          VAL R11
       93 CAPTURE                          VAL R8
       94 CAPTURE                          VAL R9
       95 DUPCLOSURE                       R13 K35 [PROTO_1]
       96 CAPTURE                          VAL R7
       97 DUPCLOSURE                       R14 K36 [PROTO_2]
       98 CAPTURE                          VAL R7
       99 DUPCLOSURE                       R15 K37 [PROTO_3]
      100 CAPTURE                          VAL R6
      101 DUPCLOSURE                       R16 K38 [PROTO_4]
      102 CAPTURE                          VAL R13
      103 CAPTURE                          VAL R14
      104 CAPTURE                          VAL R15
      105 DUPCLOSURE                       R17 K39 [PROTO_6]
      106 CAPTURE                          VAL R10
      107 CAPTURE                          VAL R5
      108 CAPTURE                          VAL R1
      109 CAPTURE                          VAL R12
      110 CAPTURE                          VAL R16
      111 CAPTURE                          VAL R3
      112 CAPTURE                          VAL R8
      113 RETURN                           R17 1
