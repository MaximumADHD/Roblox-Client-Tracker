PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQKN                    R1 K0 [0] ; [+2]
        3 RETURN                           R0 0
        4 LOADN                            R1 1
        5 JUMPIFNOTLT                      R1 R0 ; [+9]
        7 SUBK                             R2 R0 K1 [1]
        8 GETUPVAL                         R3 0
        9 MOD                              R1 R2 R3
       10 JUMPIFNOTEQKN                    R1 K0 [0] ; [+4]
       12 GETIMPORT                        R1 K4 [task.wait]
       14 CALL                             R1 0 0
       15 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["CurrentCamera"]
        3 GETTABLEKS                       R2 R0 K2 ["ViewportSize"]
        5 DIVK                             R1 R2 K1 [2]
        6 GETTABLEKS                       R4 R1 K3 ["X"]
        8 GETTABLEKS                       R5 R1 K4 ["Y"]
       10 LOADN                            R6 0
       11 NAMECALL                         R2 R0 K5 ["ViewportPointToRay"]
       13 CALL                             R2 4 1
       14 GETIMPORT                        R3 K8 [Ray.new]
       16 GETTABLEKS                       R4 R2 K9 ["Origin"]
       18 GETTABLEKS                       R6 R2 K11 ["Direction"]
       20 MULK                             R5 R6 K10 [2048]
       21 CALL                             R3 2 1
       22 GETIMPORT                        R4 K13 [RaycastParams.new]
       24 CALL                             R4 0 1
       25 LOADB                            R5 1
       26 SETTABLEKS                       R5 R4 K14 ["BruteForceAllSlow"]
       28 GETUPVAL                         R5 0
       29 GETTABLEKS                       R7 R3 K9 ["Origin"]
       31 GETTABLEKS                       R8 R3 K11 ["Direction"]
       33 MOVE                             R9 R4
       34 NAMECALL                         R5 R5 K15 ["Raycast"]
       36 CALL                             R5 4 1
       37 JUMPIFNOT                        R5 ; [+3]
       38 GETTABLEKS                       R6 R5 K16 ["Position"]
       40 RETURN                           R6 1
       41 GETTABLEKS                       R8 R0 K17 ["CFrame"]
       43 GETTABLEKS                       R7 R8 K18 ["p"]
       45 GETTABLEKS                       R9 R2 K11 ["Direction"]
       47 MULK                             R8 R9 K19 [64]
       48 ADD                              R6 R7 R8
       49 RETURN                           R6 1

PROTO_2:
        0 JUMPIFNOT                        R0 ; [+39]
        1 JUMPIFNOT                        R1 ; [+38]
        2 LOADK                            R4 K0 ["Folder"]
        3 NAMECALL                         R2 R0 K1 ["IsA"]
        5 CALL                             R2 2 1
        6 JUMPIFNOT                        R2 ; [+33]
        7 GETIMPORT                        R2 K3 [ipairs]
        9 NAMECALL                         R3 R0 K4 ["GetChildren"]
       11 CALL                             R3 1 -1
       12 CALL                             R2 -1 3
       13 FORGPREP_INEXT                   R2
       14 GETUPVAL                         R7 0
       15 JUMPIFNOT                        R7 ; [+15]
       16 GETUPVAL                         R7 1
       17 JUMPIFNOTEQKN                    R7 K5 [0] ; [+2]
       19 JUMP                             ; [+11]
       20 LOADN                            R7 1
       21 JUMPIFNOTLT                      R7 R5 ; [+9]
       23 SUBK                             R8 R5 K6 [1]
       24 GETUPVAL                         R9 1
       25 MOD                              R7 R8 R9
       26 JUMPIFNOTEQKN                    R7 K5 [0] ; [+4]
       28 GETIMPORT                        R7 K9 [task.wait]
       30 CALL                             R7 0 0
       31 LOADK                            R9 K10 ["Model"]
       32 NAMECALL                         R7 R6 K1 ["IsA"]
       34 CALL                             R7 2 1
       35 JUMPIFNOT                        R7 ; [+2]
       36 SETTABLEKS                       R1 R6 K11 ["SourceAssetId"]
       38 FORGLOOP                         R2 2 [inext] ; [-25]
       40 RETURN                           R0 0

PROTO_3:
        0 RETURN                           R0 1

PROTO_4:
        0 GETIMPORT                        R3 K1 [game]
        2 GETTABLEKS                       R2 R3 K2 ["GameId"]
        4 JUMPIFNOTEQKN                    R2 K3 [0] ; [+2]
        6 RETURN                           R0 0
        7 DUPTABLE                         R2 K5 [{"requests"}]
        8 NEWTABLE                         R3 0 1
       10 DUPTABLE                         R4 K9 [{"action", "subjectId", "subjectType"}]
       11 GETUPVAL                         R6 0
       12 GETTABLEKS                       R5 R6 K10 ["UseAction"]
       14 SETTABLEKS                       R5 R4 K6 ["action"]
       16 GETIMPORT                        R6 K1 [game]
       18 GETTABLEKS                       R5 R6 K2 ["GameId"]
       20 SETTABLEKS                       R5 R4 K7 ["subjectId"]
       22 GETUPVAL                         R6 0
       23 GETTABLEKS                       R5 R6 K11 ["Universe"]
       25 SETTABLEKS                       R5 R4 K8 ["subjectType"]
       27 SETLIST                          R3 R4 1 [1]
       29 SETTABLEKS                       R3 R2 K4 ["requests"]
       31 MOVE                             R5 R0
       32 MOVE                             R6 R2
       33 NAMECALL                         R3 R1 K12 ["grantAssetPermissionWithTimeout"]
       35 CALL                             R3 3 1
       36 DUPCLOSURE                       R5 K13 [PROTO_3]
       37 NAMECALL                         R3 R3 K14 ["catch"]
       39 CALL                             R3 2 1
       40 NAMECALL                         R3 R3 K15 ["await"]
       42 CALL                             R3 1 -1
       43 RETURN                           R3 -1

PROTO_5:
        0 GETIMPORT                        R7 K1 [game]
        2 GETTABLEKS                       R6 R7 K2 ["GameId"]
        4 JUMPIFNOTEQKN                    R6 K3 [0] ; [+2]
        6 RETURN                           R0 0
        7 JUMPIF                           R3 ; [+1]
        8 RETURN                           R0 0
        9 GETUPVAL                         R6 0
       10 MOVE                             R8 R1
       11 GETIMPORT                        R9 K7 [Enum.InfoType.Asset]
       13 NAMECALL                         R6 R6 K8 ["GetProductInfo"]
       15 CALL                             R6 3 1
       16 GETTABLEKS                       R7 R6 K9 ["IsPublicDomain"]
       18 JUMPIFNOT                        R7 ; [+1]
       19 RETURN                           R0 0
       20 GETIMPORT                        R8 K12 [Enum.AssetType.Audio]
       22 GETTABLEKS                       R7 R8 K13 ["Value"]
       24 JUMPIFEQ                         R2 R7 ; [+5]
       26 GETIMPORT                        R7 K15 [error]
       28 LOADK                            R8 K16 ["Only support for fetching permissions on Audio is implemented at this time."]
       29 CALL                             R7 1 0
       30 DUPTABLE                         R9 K20 [{"assetName", "assetId", "assetType"}]
       31 SETTABLEKS                       R0 R9 K17 ["assetName"]
       33 SETTABLEKS                       R1 R9 K18 ["assetId"]
       35 LOADK                            R12 K21 ["General"]
       36 LOADK                            R13 K22 ["AssetTypeAudio"]
       37 NAMECALL                         R10 R4 K23 ["getText"]
       39 CALL                             R10 3 1
       40 SETTABLEKS                       R10 R9 K19 ["assetType"]
       42 NAMECALL                         R7 R3 K24 ["promptPermissionsGrantAndWait"]
       44 CALL                             R7 2 1
       45 JUMPIFNOT                        R7 ; [+55]
       46 GETUPVAL                         R8 1
       47 MOVE                             R9 R1
       48 MOVE                             R10 R5
       49 CALL                             R8 2 1
       50 JUMPIFEQKNIL                     R8 ; [+39]
       52 GETTABLEKS                       R9 R8 K25 ["Body"]
       54 JUMPIFEQKNIL                     R9 ; [+35]
       56 GETTABLEKS                       R10 R8 K25 ["Body"]
       58 GETTABLEKS                       R9 R10 K26 ["Error"]
       60 JUMPIFEQKNIL                     R9 ; [+29]
       62 GETTABLEKS                       R11 R8 K25 ["Body"]
       64 GETTABLEKS                       R10 R11 K26 ["Error"]
       66 GETTABLEKS                       R9 R10 K27 ["Code"]
       68 JUMPIFEQKNIL                     R9 ; [+21]
       70 GETTABLEKS                       R11 R8 K25 ["Body"]
       72 GETTABLEKS                       R10 R11 K26 ["Error"]
       74 GETTABLEKS                       R9 R10 K27 ["Code"]
       76 JUMPIFEQKN                       R9 K28 [4] ; [+13]
       78 GETIMPORT                        R9 K30 [warn]
       80 LOADK                            R12 K31 ["GrantAssetPermission"]
       81 LOADK                            R13 K32 ["Failure"]
       82 DUPTABLE                         R14 K33 [{"assetId"}]
       83 SETTABLEKS                       R1 R14 K18 ["assetId"]
       85 NAMECALL                         R10 R4 K23 ["getText"]
       87 CALL                             R10 4 -1
       88 CALL                             R9 -1 0
       89 RETURN                           R0 0
       90 GETIMPORT                        R9 K35 [print]
       92 LOADK                            R12 K31 ["GrantAssetPermission"]
       93 LOADK                            R13 K36 ["Success"]
       94 DUPTABLE                         R14 K33 [{"assetId"}]
       95 SETTABLEKS                       R1 R14 K18 ["assetId"]
       97 NAMECALL                         R10 R4 K23 ["getText"]
       99 CALL                             R10 4 -1
      100 CALL                             R9 -1 0
      101 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R5 R6 K0 ["constructAssetIdString"]
        3 MOVE                             R6 R0
        4 CALL                             R5 1 1
        5 GETUPVAL                         R7 1
        6 GETTABLEKS                       R6 R7 K1 ["shouldDebugUrls"]
        8 CALL                             R6 0 1
        9 JUMPIFNOT                        R6 ; [+8]
       10 GETIMPORT                        R6 K3 [print]
       12 LOADK                            R7 K4 ["Inserting sound %s"]
       13 MOVE                             R9 R5
       14 NAMECALL                         R7 R7 K5 ["format"]
       16 CALL                             R7 2 -1
       17 CALL                             R6 -1 0
       18 GETUPVAL                         R6 2
       19 MOVE                             R7 R0
       20 MOVE                             R8 R4
       21 CALL                             R6 2 0
       22 LOADNIL                          R6
       23 GETUPVAL                         R7 3
       24 NAMECALL                         R7 R7 K6 ["GetAudioApiByDefault"]
       26 CALL                             R7 1 1
       27 JUMPIFNOT                        R7 ; [+14]
       28 GETUPVAL                         R7 3
       29 MOVE                             R9 R5
       30 MOVE                             R10 R1
       31 LOADB                            R11 1
       32 NAMECALL                         R7 R7 K7 ["InsertAsset"]
       34 CALL                             R7 4 1
       35 GETTABLEN                        R6 R7 1
       36 GETUPVAL                         R8 4
       37 MOVE                             R10 R7
       38 NAMECALL                         R8 R8 K8 ["Set"]
       40 CALL                             R8 2 0
       41 JUMP                             ; [+32]
       42 GETIMPORT                        R7 K11 [Instance.new]
       44 LOADK                            R8 K12 ["Sound"]
       45 CALL                             R7 1 1
       46 MOVE                             R6 R7
       47 SETTABLEKS                       R0 R6 K13 ["SourceAssetId"]
       49 SETTABLEKS                       R5 R6 K14 ["SoundId"]
       51 SETTABLEKS                       R1 R6 K15 ["Name"]
       53 GETUPVAL                         R8 4
       54 NAMECALL                         R8 R8 K16 ["Get"]
       56 CALL                             R8 1 1
       57 JUMPIF                           R8 ; [+2]
       58 NEWTABLE                         R8 0 0
       60 GETTABLEN                        R7 R8 1
       61 JUMPIF                           R7 ; [+1]
       62 GETUPVAL                         R7 5
       63 SETTABLEKS                       R7 R6 K17 ["Parent"]
       65 GETUPVAL                         R7 4
       66 NEWTABLE                         R9 0 1
       68 MOVE                             R10 R6
       69 SETLIST                          R9 R10 1 [1]
       71 NAMECALL                         R7 R7 K8 ["Set"]
       73 CALL                             R7 2 0
       74 GETUPVAL                         R7 6
       75 JUMPIFNOT                        R7 ; [+11]
       76 GETUPVAL                         R7 7
       77 MOVE                             R8 R1
       78 MOVE                             R9 R0
       79 GETIMPORT                        R11 K21 [Enum.AssetType.Audio]
       81 GETTABLEKS                       R10 R11 K22 ["Value"]
       83 MOVE                             R11 R2
       84 MOVE                             R12 R3
       85 MOVE                             R13 R4
       86 CALL                             R7 6 0
       87 RETURN                           R6 1

PROTO_7:
        0 LOADB                            R3 0
        1 NEWTABLE                         R4 0 0
        3 GETIMPORT                        R5 K1 [ipairs]
        5 MOVE                             R6 R1
        6 CALL                             R5 1 3
        7 FORGPREP_INEXT                   R5
        8 GETUPVAL                         R10 0
        9 JUMPIFNOT                        R10 ; [+15]
       10 GETUPVAL                         R10 1
       11 JUMPIFNOTEQKN                    R10 K2 [0] ; [+2]
       13 JUMP                             ; [+11]
       14 LOADN                            R10 1
       15 JUMPIFNOTLT                      R10 R8 ; [+9]
       17 SUBK                             R11 R8 K3 [1]
       18 GETUPVAL                         R12 1
       19 MOD                              R10 R11 R12
       20 JUMPIFNOTEQKN                    R10 K2 [0] ; [+4]
       22 GETIMPORT                        R10 K6 [task.wait]
       24 CALL                             R10 0 0
       25 LOADK                            R12 K7 ["MeshPart"]
       26 NAMECALL                         R10 R9 K8 ["IsA"]
       28 CALL                             R10 2 1
       29 JUMPIFNOT                        R10 ; [+19]
       30 NAMECALL                         R11 R9 K9 ["GetChildren"]
       32 CALL                             R11 1 1
       33 LENGTH                           R10 R11
       34 LOADN                            R11 0
       35 JUMPIFNOTLT                      R11 R10 ; [+5]
       37 NAMECALL                         R10 R9 K10 ["ClearAllChildren"]
       39 CALL                             R10 1 0
       40 LOADB                            R3 1
       41 FASTCALL2                        TABLE_INSERT R4 R9 ; [+5]
       43 MOVE                             R11 R4
       44 MOVE                             R12 R9
       45 GETIMPORT                        R10 K13 [table.insert]
       47 CALL                             R10 2 0
       48 JUMP                             ; [+4]
       49 NAMECALL                         R10 R9 K14 ["Destroy"]
       51 CALL                             R10 1 0
       52 LOADB                            R3 1
       53 FORGLOOP                         R5 2 [inext] ; [-46]
       55 JUMPIFNOT                        R3 ; [+5]
       56 GETUPVAL                         R6 2
       57 GETTABLEKS                       R5 R6 K15 ["reportMeshPartFiltered"]
       59 MOVE                             R6 R0
       60 CALL                             R5 1 0
       61 LENGTH                           R5 R4
       62 JUMPIFNOTEQKN                    R5 K2 [0] ; [+12]
       64 GETIMPORT                        R5 K17 [warn]
       66 LOADK                            R8 K18 ["Common"]
       67 LOADK                            R9 K19 ["InsertAborted"]
       68 DUPTABLE                         R10 K21 [{"assetId"}]
       69 SETTABLEKS                       R0 R10 K20 ["assetId"]
       71 NAMECALL                         R6 R2 K22 ["getText"]
       73 CALL                             R6 4 -1
       74 CALL                             R5 -1 0
       75 RETURN                           R4 1

PROTO_8:
        0 GETIMPORT                        R0 K1 [ipairs]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 3
        4 FORGPREP_INEXT                   R0
        5 GETUPVAL                         R5 1
        6 JUMPIFNOT                        R5 ; [+15]
        7 GETUPVAL                         R5 2
        8 JUMPIFNOTEQKN                    R5 K2 [0] ; [+2]
       10 JUMP                             ; [+11]
       11 LOADN                            R5 1
       12 JUMPIFNOTLT                      R5 R3 ; [+9]
       14 SUBK                             R6 R3 K3 [1]
       15 GETUPVAL                         R7 2
       16 MOD                              R5 R6 R7
       17 JUMPIFNOTEQKN                    R5 K2 [0] ; [+4]
       19 GETIMPORT                        R5 K6 [task.wait]
       21 CALL                             R5 0 0
       22 NAMECALL                         R5 R4 K7 ["Destroy"]
       24 CALL                             R5 1 0
       25 FORGLOOP                         R0 2 [inext] ; [-21]
       27 GETUPVAL                         R0 3
       28 LOADB                            R1 0
       29 CALL                             R0 1 0
       30 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_10:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          VAL R0
        5 NEWCLOSURE                       R3 P1
        6 CAPTURE                          VAL R0
        7 GETUPVAL                         R4 0
        8 JUMPIF                           R4 ; [+3]
        9 MOVE                             R4 R0
       10 LOADB                            R5 1
       11 CALL                             R4 1 0
       12 GETUPVAL                         R4 3
       13 JUMPIF                           R4 ; [+3]
       14 MOVE                             R4 R0
       15 LOADB                            R5 1
       16 CALL                             R4 1 0
       17 LOADN                            R4 0
       18 LOADN                            R5 0
       19 GETIMPORT                        R6 K1 [ipairs]
       21 GETUPVAL                         R7 0
       22 CALL                             R6 1 3
       23 FORGPREP_INEXT                   R6
       24 GETUPVAL                         R11 1
       25 JUMPIFNOT                        R11 ; [+16]
       26 MOVE                             R11 R5
       27 GETUPVAL                         R12 2
       28 JUMPIFNOTEQKN                    R12 K2 [0] ; [+2]
       30 JUMP                             ; [+11]
       31 LOADN                            R12 1
       32 JUMPIFNOTLT                      R12 R11 ; [+9]
       34 SUBK                             R13 R11 K3 [1]
       35 GETUPVAL                         R14 2
       36 MOD                              R12 R13 R14
       37 JUMPIFNOTEQKN                    R12 K2 [0] ; [+4]
       39 GETIMPORT                        R12 K6 [task.wait]
       41 CALL                             R12 0 0
       42 LOADK                            R13 K7 ["Script"]
       43 NAMECALL                         R11 R10 K8 ["IsA"]
       45 CALL                             R11 2 1
       46 JUMPIFNOT                        R11 ; [+1]
       47 ADDK                             R4 R4 K3 [1]
       48 GETIMPORT                        R11 K1 [ipairs]
       50 NAMECALL                         R12 R10 K9 ["GetDescendants"]
       52 CALL                             R12 1 -1
       53 CALL                             R11 -1 3
       54 FORGPREP_INEXT                   R11
       55 GETUPVAL                         R16 1
       56 JUMPIFNOT                        R16 ; [+16]
       57 MOVE                             R16 R5
       58 GETUPVAL                         R17 2
       59 JUMPIFNOTEQKN                    R17 K2 [0] ; [+2]
       61 JUMP                             ; [+11]
       62 LOADN                            R17 1
       63 JUMPIFNOTLT                      R17 R16 ; [+9]
       65 SUBK                             R18 R16 K3 [1]
       66 GETUPVAL                         R19 2
       67 MOD                              R17 R18 R19
       68 JUMPIFNOTEQKN                    R17 K2 [0] ; [+4]
       70 GETIMPORT                        R17 K6 [task.wait]
       72 CALL                             R17 0 0
       73 LOADK                            R18 K7 ["Script"]
       74 NAMECALL                         R16 R15 K8 ["IsA"]
       76 CALL                             R16 2 1
       77 JUMPIFNOT                        R16 ; [+1]
       78 ADDK                             R4 R4 K3 [1]
       79 GETUPVAL                         R16 1
       80 JUMPIFNOT                        R16 ; [+1]
       81 ADDK                             R5 R5 K3 [1]
       82 FORGLOOP                         R11 2 [inext] ; [-28]
       84 GETUPVAL                         R11 1
       85 JUMPIFNOT                        R11 ; [+1]
       86 ADDK                             R5 R5 K3 [1]
       87 FORGLOOP                         R6 2 [inext] ; [-64]
       89 LOADN                            R6 1
       90 JUMPIFNOTLT                      R4 R6 ; [+4]
       92 MOVE                             R6 R0
       93 LOADB                            R7 1
       94 CALL                             R6 1 0
       95 LOADN                            R6 1
       96 JUMPIFNOTLE                      R6 R4 ; [+15]
       98 GETUPVAL                         R6 3
       99 DUPTABLE                         R8 K14 [{"assetName", "numScripts", "cancel", "insert"}]
      100 GETUPVAL                         R9 4
      101 SETTABLEKS                       R9 R8 K10 ["assetName"]
      103 SETTABLEKS                       R4 R8 K11 ["numScripts"]
      105 SETTABLEKS                       R2 R8 K12 ["cancel"]
      107 SETTABLEKS                       R3 R8 K13 ["insert"]
      109 NAMECALL                         R6 R6 K15 ["promptScriptWarningAndWait"]
      111 CALL                             R6 2 0
      112 GETUPVAL                         R6 5
      113 JUMPIFNOT                        R6 ; [+3]
      114 MOVE                             R6 R0
      115 LOADB                            R7 1
      116 CALL                             R6 1 0
      117 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["new"]
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          VAL R2
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U3
       10 CALL                             R3 1 -1
       11 RETURN                           R3 -1

PROTO_12:
        0 GETIMPORT                        R0 K1 [game]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K2 ["ClassName"]
        5 NAMECALL                         R0 R0 K3 ["GetService"]
        7 CALL                             R0 2 1
        8 JUMPIFNOT                        R0 ; [+17]
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R0 R1 K4 ["shouldDebugWarnings"]
       12 CALL                             R0 0 1
       13 JUMPIFNOT                        R0 ; [+11]
       14 GETIMPORT                        R0 K6 [warn]
       16 LOADK                            R2 K7 ["Attempted to insert unsupported service type: %*"]
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R4 R5 K2 ["ClassName"]
       20 NAMECALL                         R2 R2 K8 ["format"]
       22 CALL                             R2 2 1
       23 MOVE                             R1 R2
       24 CALL                             R0 1 0
       25 RETURN                           R0 0
       26 GETUPVAL                         R0 0
       27 GETUPVAL                         R1 2
       28 SETTABLEKS                       R1 R0 K9 ["Parent"]
       30 GETUPVAL                         R1 0
       31 GETTABLEKS                       R0 R1 K9 ["Parent"]
       33 JUMPIF                           R0 ; [+4]
       34 GETUPVAL                         R0 0
       35 NAMECALL                         R0 R0 K10 ["Destroy"]
       37 CALL                             R0 1 0
       38 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+16]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R0 R1 K0 ["shouldDebugWarnings"]
        5 CALL                             R0 0 1
        6 JUMPIFNOT                        R0 ; [+11]
        7 GETIMPORT                        R0 K2 [warn]
        9 LOADK                            R2 K3 ["Attempted to insert unsupported instance type: %*"]
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R4 R5 K4 ["ClassName"]
       13 NAMECALL                         R2 R2 K5 ["format"]
       15 CALL                             R2 2 1
       16 MOVE                             R1 R2
       17 CALL                             R0 1 0
       18 RETURN                           R0 0

PROTO_14:
        0 GETIMPORT                        R5 K1 [ipairs]
        2 MOVE                             R6 R2
        3 CALL                             R5 1 3
        4 FORGPREP_INEXT                   R5
        5 LOADK                            R12 K2 ["Sky"]
        6 NAMECALL                         R10 R9 K3 ["IsA"]
        8 CALL                             R10 2 1
        9 JUMPIF                           R10 ; [+5]
       10 LOADK                            R12 K4 ["Atmosphere"]
       11 NAMECALL                         R10 R9 K3 ["IsA"]
       13 CALL                             R10 2 1
       14 JUMPIFNOT                        R10 ; [+4]
       15 GETUPVAL                         R10 0
       16 SETTABLEKS                       R10 R9 K5 ["Parent"]
       18 JUMP                             ; [+58]
       19 GETUPVAL                         R11 1
       20 GETTABLEKS                       R10 R11 K6 ["contains"]
       22 MOVE                             R11 R3
       23 GETUPVAL                         R13 1
       24 GETTABLEKS                       R12 R13 K7 ["MaterialPack"]
       26 CALL                             R10 2 1
       27 JUMPIFNOT                        R10 ; [+4]
       28 GETUPVAL                         R10 2
       29 SETTABLEKS                       R10 R9 K5 ["Parent"]
       31 JUMP                             ; [+45]
       32 MOVE                             R10 R1
       33 LOADK                            R13 K8 ["Tool"]
       34 NAMECALL                         R11 R9 K3 ["IsA"]
       36 CALL                             R11 2 1
       37 JUMPIF                           R11 ; [+5]
       38 LOADK                            R13 K9 ["HopperBin"]
       39 NAMECALL                         R11 R9 K3 ["IsA"]
       41 CALL                             R11 2 1
       42 JUMPIFNOT                        R11 ; [+23]
       43 NAMECALL                         R11 R0 K10 ["promptAndWait"]
       45 CALL                             R11 1 1
       46 GETUPVAL                         R13 3
       47 GETTABLEKS                       R12 R13 K11 ["INSERT_TO_WORKSPACE"]
       49 JUMPIFNOTEQ                      R11 R12 ; [+3]
       51 MOVE                             R10 R1
       52 JUMP                             ; [+13]
       53 GETUPVAL                         R13 3
       54 GETTABLEKS                       R12 R13 K12 ["INSERT_TO_STARTER_PACK"]
       56 JUMPIFNOTEQ                      R11 R12 ; [+3]
       58 GETUPVAL                         R10 4
       59 JUMP                             ; [+6]
       60 GETUPVAL                         R13 3
       61 GETTABLEKS                       R12 R13 K13 ["INSERT_CANCELLED"]
       63 JUMPIFNOTEQ                      R11 R12 ; [+2]
       65 LOADNIL                          R10
       66 GETIMPORT                        R11 K15 [xpcall]
       68 NEWCLOSURE                       R12 P0
       69 CAPTURE                          VAL R9
       70 CAPTURE                          UPVAL U5
       71 CAPTURE                          REF R10
       72 NEWCLOSURE                       R13 P1
       73 CAPTURE                          VAL R9
       74 CAPTURE                          UPVAL U5
       75 CALL                             R11 2 0
       76 CLOSEUPVALS                      R10
       77 LENGTH                           R11 R4
       78 ADDK                             R10 R11 K16 [1]
       79 SETTABLE                         R9 R4 R10
       80 FORGLOOP                         R5 2 [inext] ; [-76]
       82 RETURN                           R0 0

PROTO_15:
        0 JUMPIFNOT                        R0 ; [+66]
        1 NAMECALL                         R3 R0 K0 ["GetChildren"]
        3 CALL                             R3 1 1
        4 LENGTH                           R2 R3
        5 LOADN                            R3 0
        6 JUMPIFNOTLT                      R3 R2 ; [+57]
        8 GETUPVAL                         R2 0
        9 MOVE                             R3 R0
       10 MOVE                             R4 R1
       11 CALL                             R2 2 0
       12 NAMECALL                         R2 R0 K1 ["GetBoundingBox"]
       14 CALL                             R2 1 2
       15 GETTABLEKS                       R4 R3 K2 ["Magnitude"]
       17 LOADN                            R5 0
       18 JUMPIFNOTLT                      R5 R4 ; [+32]
       20 GETUPVAL                         R5 1
       21 GETTABLEKS                       R4 R5 K3 ["CurrentCamera"]
       23 GETTABLEKS                       R5 R4 K4 ["CFrame"]
       25 GETTABLEKS                       R7 R3 K2 ["Magnitude"]
       27 MULK                             R6 R7 K5 [1.2]
       28 GETTABLEKS                       R9 R5 K6 ["p"]
       30 GETTABLEKS                       R10 R2 K6 ["p"]
       32 SUB                              R8 R9 R10
       33 GETTABLEKS                       R7 R8 K7 ["unit"]
       35 GETIMPORT                        R8 K9 [CFrame.new]
       37 GETTABLEKS                       R10 R2 K6 ["p"]
       39 MUL                              R11 R6 R7
       40 ADD                              R9 R10 R11
       41 CALL                             R8 1 1
       42 SETTABLEKS                       R8 R4 K4 ["CFrame"]
       44 GETIMPORT                        R8 K9 [CFrame.new]
       46 GETTABLEKS                       R9 R2 K6 ["p"]
       48 CALL                             R8 1 1
       49 SETTABLEKS                       R8 R4 K10 ["Focus"]
       51 GETIMPORT                        R4 K12 [ipairs]
       53 NAMECALL                         R5 R0 K0 ["GetChildren"]
       55 CALL                             R5 1 -1
       56 CALL                             R4 -1 3
       57 FORGPREP_INEXT                   R4
       58 GETTABLEKS                       R9 R0 K13 ["Parent"]
       60 SETTABLEKS                       R9 R8 K13 ["Parent"]
       62 FORGLOOP                         R4 2 [inext] ; [-5]
       64 NAMECALL                         R2 R0 K14 ["Destroy"]
       66 CALL                             R2 1 0
       67 RETURN                           R0 0

PROTO_16:
        0 NEWTABLE                         R8 0 0
        2 JUMPIFNOT                        R1 ; [+35]
        3 GETUPVAL                         R9 0
        4 MOVE                             R10 R2
        5 MOVE                             R11 R3
        6 MOVE                             R12 R4
        7 MOVE                             R13 R5
        8 MOVE                             R14 R8
        9 CALL                             R9 5 0
       10 GETUPVAL                         R9 1
       11 MOVE                             R10 R3
       12 MOVE                             R11 R6
       13 CALL                             R9 2 0
       14 GETUPVAL                         R9 2
       15 GETTABLEN                        R10 R4 1
       16 CALL                             R9 1 0
       17 GETUPVAL                         R9 3
       18 CALL                             R9 0 1
       19 JUMPIFNOT                        R9 ; [+7]
       20 JUMPIFNOT                        R7 ; [+6]
       21 GETUPVAL                         R10 4
       22 GETTABLEKS                       R9 R10 K0 ["SetCapabilitiesAndSandboxForModel"]
       24 MOVE                             R10 R4
       25 MOVE                             R11 R0
       26 CALL                             R9 2 0
       27 GETUPVAL                         R9 5
       28 LOADK                            R11 K1 ["AssetInserted"]
       29 DUPTABLE                         R12 K4 [{"assetId", "assetInstance"}]
       30 SETTABLEKS                       R0 R12 K2 ["assetId"]
       32 SETTABLEKS                       R4 R12 K3 ["assetInstance"]
       34 NAMECALL                         R9 R9 K5 ["fire"]
       36 CALL                             R9 3 0
       37 JUMP                             ; [+12]
       38 GETUPVAL                         R10 6
       39 GETTABLEKS                       R9 R10 K6 ["shouldDebugWarnings"]
       41 CALL                             R9 0 1
       42 JUMPIFNOT                        R9 ; [+4]
       43 GETIMPORT                        R9 K8 [print]
       45 LOADK                            R10 K9 ["destroying temp model insert"]
       46 CALL                             R9 1 0
       47 NAMECALL                         R9 R3 K10 ["Destroy"]
       49 CALL                             R9 1 0
       50 GETUPVAL                         R9 7
       51 MOVE                             R11 R8
       52 NAMECALL                         R9 R9 K11 ["Set"]
       54 CALL                             R9 2 0
       55 RETURN                           R8 1

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["constructAssetIdString"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 GETUPVAL                         R1 2
        6 JUMPIF                           R1 ; [+4]
        7 GETUPVAL                         R1 3
        8 JUMPIF                           R1 ; [+2]
        9 GETUPVAL                         R1 4
       10 JUMPIFNOT                        R1 ; [+43]
       11 GETUPVAL                         R1 5
       12 JUMPIFNOT                        R1 ; [+20]
       13 GETUPVAL                         R2 6
       14 GETTABLEKS                       R1 R2 K1 ["shouldDebugUrls"]
       16 CALL                             R1 0 1
       17 JUMPIFNOT                        R1 ; [+8]
       18 GETIMPORT                        R1 K3 [print]
       20 LOADK                            R2 K4 ["Inserting package %s"]
       21 MOVE                             R4 R0
       22 NAMECALL                         R2 R2 K5 ["format"]
       24 CALL                             R2 2 -1
       25 CALL                             R1 -1 0
       26 GETUPVAL                         R1 8
       27 MOVE                             R3 R0
       28 NAMECALL                         R1 R1 K6 ["LoadPackageAssetAsync"]
       30 CALL                             R1 2 1
       31 SETUPVAL                         R1 7
       32 RETURN                           R0 0
       33 GETUPVAL                         R2 6
       34 GETTABLEKS                       R1 R2 K1 ["shouldDebugUrls"]
       36 CALL                             R1 0 1
       37 JUMPIFNOT                        R1 ; [+8]
       38 GETIMPORT                        R1 K3 [print]
       40 LOADK                            R2 K7 ["Inserting asset %s"]
       41 MOVE                             R4 R0
       42 NAMECALL                         R2 R2 K5 ["format"]
       44 CALL                             R2 2 -1
       45 CALL                             R1 -1 0
       46 GETIMPORT                        R1 K9 [game]
       48 MOVE                             R3 R0
       49 NAMECALL                         R1 R1 K10 ["InsertObjectsAndJoinIfLegacyAsync"]
       51 CALL                             R1 2 1
       52 SETUPVAL                         R1 7
       53 RETURN                           R0 0
       54 GETUPVAL                         R2 6
       55 GETTABLEKS                       R1 R2 K1 ["shouldDebugUrls"]
       57 CALL                             R1 0 1
       58 JUMPIFNOT                        R1 ; [+8]
       59 GETIMPORT                        R1 K3 [print]
       61 LOADK                            R2 K7 ["Inserting asset %s"]
       62 MOVE                             R4 R0
       63 NAMECALL                         R2 R2 K5 ["format"]
       65 CALL                             R2 2 -1
       66 CALL                             R1 -1 0
       67 GETIMPORT                        R1 K9 [game]
       69 MOVE                             R3 R0
       70 NAMECALL                         R1 R1 K10 ["InsertObjectsAndJoinIfLegacyAsync"]
       72 CALL                             R1 2 1
       73 SETUPVAL                         R1 7
       74 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["shouldDebugWarnings"]
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+12]
        5 GETIMPORT                        R1 K2 [print]
        7 LOADK                            R2 K3 ["assetWasInserted: %s"]
        8 FASTCALL1                        TOSTRING R0 ; [+3]
        9 MOVE                             R5 R0
       10 GETIMPORT                        R4 K5 [tostring]
       12 CALL                             R4 1 1
       13 NAMECALL                         R2 R2 K6 ["format"]
       15 CALL                             R2 2 -1
       16 CALL                             R1 -1 0
       17 GETUPVAL                         R1 1
       18 GETUPVAL                         R2 2
       19 MOVE                             R3 R0
       20 GETUPVAL                         R4 3
       21 GETUPVAL                         R5 4
       22 GETUPVAL                         R6 5
       23 GETUPVAL                         R7 6
       24 GETUPVAL                         R8 7
       25 GETUPVAL                         R10 8
       26 CALL                             R10 0 1
       27 JUMPIFNOT                        R10 ; [+4]
       28 GETUPVAL                         R10 9
       29 GETTABLEKS                       R9 R10 K7 ["shouldSandboxAsset"]
       31 JUMP                             ; [+1]
       32 LOADNIL                          R9
       33 CALL                             R1 8 1
       34 RETURN                           R1 1

PROTO_19:
        0 GETUPVAL                         R10 0
        1 GETUPVAL                         R12 1
        2 JUMPIF                           R12 ; [+3]
        3 GETUPVAL                         R12 2
        4 JUMPIF                           R12 ; [+1]
        5 JUMPIFNOT                        R7 ; [+32]
        6 GETUPVAL                         R12 3
        7 GETTABLEKS                       R11 R12 K0 ["contains"]
        9 MOVE                             R12 R5
       10 GETUPVAL                         R14 3
       11 GETTABLEKS                       R13 R14 K1 ["Package"]
       13 CALL                             R11 2 1
       14 JUMPIF                           R11 ; [+24]
       15 JUMPIFEQKNIL                     R6 ; [+7]
       17 GETUPVAL                         R12 4
       18 GETTABLEKS                       R11 R12 K2 ["categoryIsPackage"]
       20 MOVE                             R12 R6
       21 CALL                             R11 1 1
       22 JUMPIF                           R11 ; [+16]
       23 MOVE                             R11 R7
       24 JUMPIFNOT                        R11 ; [+14]
       25 GETUPVAL                         R13 4
       26 GETTABLEKS                       R12 R13 K3 ["getCategoryByName"]
       28 MOVE                             R13 R6
       29 CALL                             R12 1 1
       30 GETUPVAL                         R14 4
       31 GETTABLEKS                       R13 R14 K4 ["FREE_MODELS"]
       33 JUMPIFEQ                         R12 R13 ; [+2]
       35 LOADB                            R11 0 +1
       36 LOADB                            R11 1
       37 JUMP                             ; [+1]
       38 LOADNIL                          R11
       39 LOADNIL                          R12
       40 GETIMPORT                        R13 K6 [pcall]
       42 NEWCLOSURE                       R14 P0
       43 CAPTURE                          UPVAL U5
       44 CAPTURE                          VAL R0
       45 CAPTURE                          UPVAL U1
       46 CAPTURE                          UPVAL U2
       47 CAPTURE                          VAL R7
       48 CAPTURE                          VAL R11
       49 CAPTURE                          UPVAL U6
       50 CAPTURE                          REF R12
       51 CAPTURE                          UPVAL U7
       52 CALL                             R13 1 2
       53 JUMPIFNOT                        R13 ; [+83]
       54 JUMPIFNOT                        R12 ; [+82]
       55 GETUPVAL                         R15 1
       56 JUMPIF                           R15 ; [+1]
       57 JUMPIFNOT                        R7 ; [+6]
       58 JUMPIFNOT                        R11 ; [+5]
       59 GETTABLEN                        R15 R12 1
       60 JUMPIFNOT                        R15 ; [+3]
       61 GETTABLEN                        R15 R12 1
       62 SETTABLEKS                       R0 R15 K7 ["SourceAssetId"]
       64 GETTABLEN                        R15 R12 1
       65 JUMPIFNOT                        R15 ; [+8]
       66 GETTABLEN                        R16 R12 1
       67 GETTABLEKS                       R15 R16 K7 ["SourceAssetId"]
       69 JUMPIFNOT                        R15 ; [+4]
       70 GETUPVAL                         R15 8
       71 GETTABLEN                        R16 R12 1
       72 MOVE                             R17 R0
       73 CALL                             R15 2 0
       74 MOVE                             R15 R8
       75 JUMPIFNOT                        R15 ; [+2]
       76 GETTABLEKS                       R15 R8 K8 ["positionOverride"]
       78 JUMPIFNOT                        R15 ; [+3]
       79 GETTABLEKS                       R16 R8 K8 ["positionOverride"]
       81 JUMP                             ; [+2]
       82 GETUPVAL                         R16 9
       83 CALL                             R16 0 1
       84 GETIMPORT                        R17 K11 [Instance.new]
       86 LOADK                            R18 K12 ["Model"]
       87 CALL                             R17 1 1
       88 LOADK                            R18 K13 ["ToolboxTemporaryInsertModel"]
       89 SETTABLEKS                       R18 R17 K14 ["Name"]
       91 SETTABLEKS                       R10 R17 K15 ["Parent"]
       93 GETIMPORT                        R19 K19 [Enum.AssetType.MeshPart]
       95 GETTABLEKS                       R18 R19 K20 ["Value"]
       97 JUMPIFNOTEQ                      R3 R18 ; [+7]
       99 GETUPVAL                         R18 10
      100 MOVE                             R19 R0
      101 MOVE                             R20 R12
      102 MOVE                             R21 R4
      103 CALL                             R18 3 1
      104 MOVE                             R12 R18
      105 MOVE                             R19 R12
      106 GETUPVAL                         R21 11
      107 GETTABLEKS                       R20 R21 K10 ["new"]
      109 NEWCLOSURE                       R21 P1
      110 CAPTURE                          VAL R19
      111 CAPTURE                          UPVAL U12
      112 CAPTURE                          UPVAL U13
      113 CAPTURE                          VAL R2
      114 CAPTURE                          VAL R1
      115 CAPTURE                          UPVAL U14
      116 CALL                             R20 1 1
      117 MOVE                             R18 R20
      118 NEWCLOSURE                       R20 P2
      119 CAPTURE                          UPVAL U6
      120 CAPTURE                          UPVAL U15
      121 CAPTURE                          VAL R0
      122 CAPTURE                          VAL R2
      123 CAPTURE                          VAL R17
      124 CAPTURE                          REF R12
      125 CAPTURE                          VAL R5
      126 CAPTURE                          VAL R16
      127 CAPTURE                          UPVAL U16
      128 CAPTURE                          VAL R9
      129 NAMECALL                         R18 R18 K21 ["andThen"]
      131 CALL                             R18 2 1
      132 NAMECALL                         R18 R18 K22 ["await"]
      134 CALL                             R18 1 -1
      135 CLOSEUPVALS                      R12
      136 RETURN                           R18 -1
      137 LOADNIL                          R15
      138 MOVE                             R16 R14
      139 CLOSEUPVALS                      R12
      140 RETURN                           R15 2

PROTO_20:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["constructAssetIdString"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R1 R2 K1 ["shouldDebugUrls"]
        8 CALL                             R1 0 1
        9 JUMPIFNOT                        R1 ; [+8]
       10 GETIMPORT                        R1 K3 [print]
       12 LOADK                            R2 K4 ["Inserting decal %s"]
       13 MOVE                             R4 R0
       14 NAMECALL                         R2 R2 K5 ["format"]
       16 CALL                             R2 2 -1
       17 CALL                             R1 -1 0
       18 GETIMPORT                        R1 K7 [game]
       20 MOVE                             R3 R0
       21 NAMECALL                         R1 R1 K8 ["GetObjectsAsync"]
       23 CALL                             R1 2 1
       24 SETUPVAL                         R1 3
       25 RETURN                           R0 0

PROTO_21:
        0 LOADNIL                          R3
        1 GETIMPORT                        R4 K1 [pcall]
        3 NEWCLOSURE                       R5 P0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          VAL R1
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          REF R3
        8 CALL                             R4 1 2
        9 JUMPIFNOT                        R4 ; [+31]
       10 JUMPIFNOT                        R3 ; [+30]
       11 GETTABLEN                        R6 R3 1
       12 JUMPIFNOT                        R6 ; [+28]
       13 GETTABLEN                        R6 R3 1
       14 SETTABLEKS                       R2 R6 K2 ["Name"]
       16 SETTABLEKS                       R1 R6 K3 ["SourceAssetId"]
       18 GETUPVAL                         R8 2
       19 NAMECALL                         R8 R8 K4 ["Get"]
       21 CALL                             R8 1 1
       22 JUMPIF                           R8 ; [+2]
       23 NEWTABLE                         R8 0 0
       25 GETTABLEN                        R7 R8 1
       26 JUMPIF                           R7 ; [+1]
       27 GETUPVAL                         R7 3
       28 SETTABLEKS                       R7 R6 K5 ["Parent"]
       30 GETUPVAL                         R7 2
       31 NEWTABLE                         R9 0 1
       33 MOVE                             R10 R6
       34 SETLIST                          R9 R10 1 [1]
       36 NAMECALL                         R7 R7 K6 ["Set"]
       38 CALL                             R7 2 0
       39 CLOSEUPVALS                      R3
       40 RETURN                           R6 1
       41 LOADNIL                          R6
       42 MOVE                             R7 R5
       43 CLOSEUPVALS                      R3
       44 RETURN                           R6 2

PROTO_22:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["constructAssetIdString"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R1 R2 K1 ["shouldDebugUrls"]
        8 CALL                             R1 0 1
        9 JUMPIFNOT                        R1 ; [+8]
       10 GETIMPORT                        R1 K3 [print]
       12 LOADK                            R2 K4 ["Inserting package %s"]
       13 MOVE                             R4 R0
       14 NAMECALL                         R2 R2 K5 ["format"]
       16 CALL                             R2 2 -1
       17 CALL                             R1 -1 0
       18 GETUPVAL                         R1 4
       19 MOVE                             R3 R0
       20 NAMECALL                         R1 R1 K6 ["LoadPackageAssetAsync"]
       22 CALL                             R1 2 1
       23 SETUPVAL                         R1 3
       24 RETURN                           R0 0

PROTO_23:
        0 LOADNIL                          R1
        1 GETIMPORT                        R2 K1 [pcall]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          REF R1
        8 CAPTURE                          UPVAL U2
        9 CALL                             R2 1 2
       10 JUMPIFNOT                        R2 ; [+27]
       11 JUMPIFNOT                        R1 ; [+26]
       12 GETTABLEN                        R4 R1 1
       13 JUMPIFNOT                        R4 ; [+24]
       14 GETTABLEN                        R4 R1 1
       15 SETTABLEKS                       R0 R4 K2 ["SourceAssetId"]
       17 GETTABLEN                        R4 R1 1
       18 GETUPVAL                         R6 3
       19 NAMECALL                         R6 R6 K3 ["Get"]
       21 CALL                             R6 1 1
       22 JUMPIF                           R6 ; [+2]
       23 NEWTABLE                         R6 0 0
       25 GETTABLEN                        R5 R6 1
       26 JUMPIF                           R5 ; [+1]
       27 GETUPVAL                         R5 4
       28 SETTABLEKS                       R5 R4 K4 ["Parent"]
       30 GETUPVAL                         R4 3
       31 MOVE                             R6 R1
       32 NAMECALL                         R4 R4 K5 ["set"]
       34 CALL                             R4 2 0
       35 GETTABLEN                        R4 R1 1
       36 CLOSEUPVALS                      R1
       37 RETURN                           R4 1
       38 LOADNIL                          R4
       39 MOVE                             R5 R3
       40 CLOSEUPVALS                      R1
       41 RETURN                           R4 2

PROTO_24:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["constructAssetIdString"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R3 R4 K1 ["shouldDebugUrls"]
        8 CALL                             R3 0 1
        9 JUMPIFNOT                        R3 ; [+8]
       10 GETIMPORT                        R3 K3 [print]
       12 LOADK                            R4 K4 ["Inserting video %s"]
       13 MOVE                             R6 R2
       14 NAMECALL                         R4 R4 K5 ["format"]
       16 CALL                             R4 2 -1
       17 CALL                             R3 -1 0
       18 GETIMPORT                        R3 K8 [Instance.new]
       20 LOADK                            R4 K9 ["VideoFrame"]
       21 CALL                             R3 1 1
       22 SETTABLEKS                       R0 R3 K10 ["SourceAssetId"]
       24 SETTABLEKS                       R2 R3 K11 ["Video"]
       26 SETTABLEKS                       R1 R3 K12 ["Name"]
       28 GETUPVAL                         R5 2
       29 NAMECALL                         R5 R5 K13 ["Get"]
       31 CALL                             R5 1 1
       32 JUMPIF                           R5 ; [+2]
       33 NEWTABLE                         R5 0 0
       35 GETTABLEN                        R4 R5 1
       36 JUMPIF                           R4 ; [+1]
       37 GETUPVAL                         R4 3
       38 SETTABLEKS                       R4 R3 K14 ["Parent"]
       40 GETIMPORT                        R4 K16 [UDim2.new]
       42 LOADN                            R5 1
       43 LOADN                            R6 0
       44 LOADN                            R7 1
       45 LOADN                            R8 0
       46 CALL                             R4 4 1
       47 SETTABLEKS                       R4 R3 K17 ["Size"]
       49 GETUPVAL                         R4 2
       50 NEWTABLE                         R6 0 1
       52 MOVE                             R7 R3
       53 SETLIST                          R6 R7 1 [1]
       55 NAMECALL                         R4 R4 K18 ["Set"]
       57 CALL                             R4 2 0
       58 RETURN                           R3 1

PROTO_25:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["constructAssetIdString"]
        3 MOVE                             R4 R0
        4 CALL                             R3 1 1
        5 GETUPVAL                         R5 1
        6 GETTABLEKS                       R4 R5 K1 ["shouldDebugUrls"]
        8 CALL                             R4 0 1
        9 JUMPIFNOT                        R4 ; [+8]
       10 GETIMPORT                        R4 K3 [print]
       12 LOADK                            R5 K4 ["Inserting video %s"]
       13 MOVE                             R7 R3
       14 NAMECALL                         R5 R5 K5 ["format"]
       16 CALL                             R5 2 -1
       17 CALL                             R4 -1 0
       18 GETUPVAL                         R4 2
       19 MOVE                             R5 R0
       20 MOVE                             R6 R2
       21 CALL                             R4 2 0
       22 GETUPVAL                         R5 3
       23 NAMECALL                         R5 R5 K6 ["Get"]
       25 CALL                             R5 1 1
       26 GETTABLEN                        R4 R5 1
       27 GETIMPORT                        R5 K9 [Instance.new]
       29 LOADK                            R6 K10 ["VideoFrame"]
       30 CALL                             R5 1 1
       31 SETTABLEKS                       R0 R5 K11 ["SourceAssetId"]
       33 SETTABLEKS                       R3 R5 K12 ["Video"]
       35 SETTABLEKS                       R1 R5 K13 ["Name"]
       37 JUMPIFNOT                        R4 ; [+2]
       38 MOVE                             R6 R4
       39 JUMP                             ; [+1]
       40 GETUPVAL                         R6 4
       41 SETTABLEKS                       R6 R5 K14 ["Parent"]
       43 GETIMPORT                        R6 K16 [UDim2.new]
       45 LOADN                            R7 1
       46 LOADN                            R8 0
       47 LOADN                            R9 1
       48 LOADN                            R10 0
       49 CALL                             R6 4 1
       50 SETTABLEKS                       R6 R5 K17 ["Size"]
       52 GETUPVAL                         R6 3
       53 NEWTABLE                         R8 0 1
       55 MOVE                             R9 R5
       56 SETLIST                          R8 R9 1 [1]
       58 NAMECALL                         R6 R6 K18 ["Set"]
       60 CALL                             R6 2 0
       61 RETURN                           R5 1

PROTO_26:
        0 RETURN                           R0 0

PROTO_27:
        0 GETIMPORT                        R2 K1 [pcall]
        2 DUPCLOSURE                       R3 K2 [PROTO_26]
        3 CALL                             R2 1 2
        4 RETURN                           R2 2

PROTO_28:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["shouldDebugUrls"]
        3 CALL                             R0 0 1
        4 JUMPIFNOT                        R0 ; [+12]
        5 GETIMPORT                        R0 K2 [print]
        7 LOADK                            R1 K3 ["Installing plugin %s"]
        8 GETUPVAL                         R4 1
        9 FASTCALL1                        TOSTRING R4 ; [+2]
       10 GETIMPORT                        R3 K5 [tostring]
       12 CALL                             R3 1 1
       13 NAMECALL                         R1 R1 K6 ["format"]
       15 CALL                             R1 2 -1
       16 CALL                             R0 -1 0
       17 GETUPVAL                         R0 2
       18 JUMPIFNOT                        R0 ; [+7]
       19 GETUPVAL                         R0 2
       20 GETUPVAL                         R2 1
       21 GETUPVAL                         R3 3
       22 NAMECALL                         R0 R0 K7 ["TryInstallPlugin"]
       24 CALL                             R0 3 0
       25 RETURN                           R0 0
       26 GETIMPORT                        R0 K9 [warn]
       28 LOADK                            R1 K10 ["StudioService not found!"]
       29 CALL                             R0 1 0
       30 RETURN                           R0 0

PROTO_29:
        0 GETIMPORT                        R3 K1 [pcall]
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R1
        7 CALL                             R3 1 2
        8 RETURN                           R3 2

PROTO_30:
        0 GETIMPORT                        R2 K3 [Enum.AssetType.Model]
        2 GETTABLEKS                       R1 R2 K4 ["Value"]
        4 JUMPIFNOTEQ                      R0 R1 ; [+3]
        6 LOADK                            R1 K2 ["Model"]
        7 RETURN                           R1 1
        8 GETIMPORT                        R2 K6 [Enum.AssetType.Decal]
       10 GETTABLEKS                       R1 R2 K4 ["Value"]
       12 JUMPIFNOTEQ                      R0 R1 ; [+3]
       14 LOADK                            R1 K5 ["Decal"]
       15 RETURN                           R1 1
       16 GETIMPORT                        R2 K8 [Enum.AssetType.Audio]
       18 GETTABLEKS                       R1 R2 K4 ["Value"]
       20 JUMPIFNOTEQ                      R0 R1 ; [+3]
       22 LOADK                            R1 K7 ["Audio"]
       23 RETURN                           R1 1
       24 GETIMPORT                        R2 K10 [Enum.AssetType.FontFamily]
       26 GETTABLEKS                       R1 R2 K4 ["Value"]
       28 JUMPIFNOTEQ                      R0 R1 ; [+3]
       30 LOADK                            R1 K9 ["FontFamily"]
       31 RETURN                           R1 1
       32 GETIMPORT                        R2 K12 [Enum.AssetType.MeshPart]
       34 GETTABLEKS                       R1 R2 K4 ["Value"]
       36 JUMPIFNOTEQ                      R0 R1 ; [+3]
       38 LOADK                            R1 K13 ["Mesh"]
       39 RETURN                           R1 1
       40 GETIMPORT                        R2 K15 [Enum.AssetType.Plugin]
       42 GETTABLEKS                       R1 R2 K4 ["Value"]
       44 JUMPIFNOTEQ                      R0 R1 ; [+3]
       46 LOADK                            R1 K14 ["Plugin"]
       47 RETURN                           R1 1
       48 GETIMPORT                        R2 K17 [Enum.AssetType.Video]
       50 GETTABLEKS                       R1 R2 K4 ["Value"]
       52 JUMPIFNOTEQ                      R0 R1 ; [+3]
       54 LOADK                            R1 K16 ["Video"]
       55 RETURN                           R1 1
       56 GETIMPORT                        R2 K19 [Enum.AssetType.Animation]
       58 GETTABLEKS                       R1 R2 K4 ["Value"]
       60 JUMPIFNOTEQ                      R0 R1 ; [+3]
       62 LOADK                            R1 K18 ["Animation"]
       63 RETURN                           R1 1
       64 GETUPVAL                         R2 0
       65 GETTABLEKS                       R1 R2 K20 ["shouldDebugWarnings"]
       67 CALL                             R1 0 1
       68 JUMPIFNOT                        R1 ; [+12]
       69 GETIMPORT                        R1 K22 [warn]
       71 LOADK                            R2 K23 ["Missing name for assetTypeId %s"]
       72 FASTCALL1                        TOSTRING R0 ; [+3]
       73 MOVE                             R5 R0
       74 GETIMPORT                        R4 K25 [tostring]
       76 CALL                             R4 1 1
       77 NAMECALL                         R2 R2 K26 ["format"]
       79 CALL                             R2 2 -1
       80 CALL                             R1 -1 0
       81 LOADK                            R1 K27 ["Unknown"]
       82 RETURN                           R1 1

PROTO_31:
        0 GETTABLEKS                       R4 R0 K0 ["assetSubTypes"]
        2 JUMPIFEQKNIL                     R4 ; [+11]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K1 ["contains"]
        7 GETTABLEKS                       R4 R0 K0 ["assetSubTypes"]
        9 GETUPVAL                         R6 0
       10 GETTABLEKS                       R5 R6 K2 ["Package"]
       12 CALL                             R3 2 1
       13 JUMP                             ; [+6]
       14 GETUPVAL                         R4 1
       15 GETTABLEKS                       R3 R4 K3 ["categoryIsPackage"]
       17 GETTABLEKS                       R4 R0 K4 ["categoryName"]
       19 CALL                             R3 1 1
       20 GETUPVAL                         R4 2
       21 JUMPIF                           R4 ; [+10]
       22 GETUPVAL                         R4 3
       23 JUMPIFNOT                        R4 ; [+8]
       24 GETTABLEKS                       R4 R0 K5 ["getIsIXPVariableEnabled"]
       26 JUMPIFNOT                        R4 ; [+5]
       27 GETTABLEKS                       R4 R0 K5 ["getIsIXPVariableEnabled"]
       29 LOADK                            R5 K6 ["MarketplaceModelsAsPackages"]
       30 LOADK                            R6 K7 ["MarketplaceModelsAsPackagesEnabled"]
       31 CALL                             R4 2 1
       32 GETUPVAL                         R5 4
       33 JUMPIF                           R5 ; [+7]
       34 JUMPIF                           R4 ; [+6]
       35 JUMPIFNOT                        R3 ; [+5]
       36 GETUPVAL                         R5 5
       37 GETTABLEKS                       R6 R0 K8 ["assetId"]
       39 CALL                             R5 1 -1
       40 RETURN                           R5 -1
       41 GETTABLEKS                       R5 R0 K9 ["assetTypeId"]
       43 GETIMPORT                        R7 K13 [Enum.AssetType.Audio]
       45 GETTABLEKS                       R6 R7 K14 ["Value"]
       47 JUMPIFNOTEQ                      R5 R6 ; [+12]
       49 GETUPVAL                         R5 6
       50 GETTABLEKS                       R6 R0 K8 ["assetId"]
       52 GETTABLEKS                       R7 R0 K15 ["assetName"]
       54 MOVE                             R8 R1
       55 GETTABLEKS                       R9 R0 K16 ["localization"]
       57 MOVE                             R10 R2
       58 CALL                             R5 5 1
       59 RETURN                           R5 1
       60 GETTABLEKS                       R5 R0 K9 ["assetTypeId"]
       62 GETIMPORT                        R7 K18 [Enum.AssetType.Decal]
       64 GETTABLEKS                       R6 R7 K14 ["Value"]
       66 JUMPIFNOTEQ                      R5 R6 ; [+10]
       68 GETUPVAL                         R5 7
       69 GETTABLEKS                       R6 R0 K19 ["plugin"]
       71 GETTABLEKS                       R7 R0 K8 ["assetId"]
       73 GETTABLEKS                       R8 R0 K15 ["assetName"]
       75 CALL                             R5 3 -1
       76 RETURN                           R5 -1
       77 GETTABLEKS                       R5 R0 K9 ["assetTypeId"]
       79 GETIMPORT                        R7 K21 [Enum.AssetType.Plugin]
       81 GETTABLEKS                       R6 R7 K14 ["Value"]
       83 JUMPIFNOTEQ                      R5 R6 ; [+10]
       85 GETUPVAL                         R5 8
       86 GETTABLEKS                       R6 R0 K8 ["assetId"]
       88 GETTABLEKS                       R7 R0 K22 ["assetVersionId"]
       90 GETTABLEKS                       R8 R0 K15 ["assetName"]
       92 CALL                             R5 3 -1
       93 RETURN                           R5 -1
       94 GETTABLEKS                       R5 R0 K9 ["assetTypeId"]
       96 GETIMPORT                        R7 K24 [Enum.AssetType.Video]
       98 GETTABLEKS                       R6 R7 K14 ["Value"]
      100 JUMPIFNOTEQ                      R5 R6 ; [+18]
      102 GETUPVAL                         R5 9
      103 JUMPIFNOT                        R5 ; [+8]
      104 GETUPVAL                         R5 10
      105 GETTABLEKS                       R6 R0 K8 ["assetId"]
      107 GETTABLEKS                       R7 R0 K15 ["assetName"]
      109 MOVE                             R8 R2
      110 CALL                             R5 3 -1
      111 RETURN                           R5 -1
      112 GETUPVAL                         R5 10
      113 GETTABLEKS                       R6 R0 K8 ["assetId"]
      115 GETTABLEKS                       R7 R0 K15 ["assetName"]
      117 CALL                             R5 2 -1
      118 RETURN                           R5 -1
      119 GETTABLEKS                       R5 R0 K9 ["assetTypeId"]
      121 GETIMPORT                        R7 K26 [Enum.AssetType.FontFamily]
      123 GETTABLEKS                       R6 R7 K14 ["Value"]
      125 JUMPIFNOTEQ                      R5 R6 ; [+8]
      127 GETUPVAL                         R5 11
      128 GETTABLEKS                       R6 R0 K8 ["assetId"]
      130 GETTABLEKS                       R7 R0 K15 ["assetName"]
      132 CALL                             R5 2 -1
      133 RETURN                           R5 -1
      134 GETUPVAL                         R5 3
      135 JUMPIFNOT                        R5 ; [+25]
      136 GETUPVAL                         R5 12
      137 GETTABLEKS                       R6 R0 K8 ["assetId"]
      139 GETTABLEKS                       R7 R0 K15 ["assetName"]
      141 MOVE                             R8 R1
      142 GETTABLEKS                       R9 R0 K9 ["assetTypeId"]
      144 GETTABLEKS                       R10 R0 K16 ["localization"]
      146 GETTABLEKS                       R11 R0 K0 ["assetSubTypes"]
      148 GETTABLEKS                       R12 R0 K4 ["categoryName"]
      150 MOVE                             R13 R4
      151 GETTABLEKS                       R14 R0 K27 ["tutorialLimits"]
      153 GETUPVAL                         R16 13
      154 CALL                             R16 0 1
      155 JUMPIFNOT                        R16 ; [+2]
      156 MOVE                             R15 R0
      157 JUMP                             ; [+1]
      158 LOADNIL                          R15
      159 CALL                             R5 10 -1
      160 RETURN                           R5 -1
      161 GETUPVAL                         R5 12
      162 GETTABLEKS                       R6 R0 K8 ["assetId"]
      164 GETTABLEKS                       R7 R0 K15 ["assetName"]
      166 MOVE                             R8 R1
      167 GETTABLEKS                       R9 R0 K9 ["assetTypeId"]
      169 GETTABLEKS                       R10 R0 K16 ["localization"]
      171 GETTABLEKS                       R11 R0 K0 ["assetSubTypes"]
      173 GETTABLEKS                       R12 R0 K4 ["categoryName"]
      175 LOADNIL                          R13
      176 GETTABLEKS                       R14 R0 K27 ["tutorialLimits"]
      178 GETUPVAL                         R16 13
      179 CALL                             R16 0 1
      180 JUMPIFNOT                        R16 ; [+2]
      181 MOVE                             R15 R0
      182 JUMP                             ; [+1]
      183 LOADNIL                          R15
      184 CALL                             R5 10 -1
      185 RETURN                           R5 -1

PROTO_32:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["incrementToolboxInsertCounter"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R4 R0 K1 ["assetTypeId"]
        6 CALL                             R3 1 1
        7 CALL                             R2 1 0
        8 GETTABLEKS                       R2 R0 K2 ["categoryName"]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R3 R4 K3 ["incrementToolboxCategoryInsertCounter"]
       13 MOVE                             R4 R2
       14 CALL                             R3 1 0
       15 JUMPIF                           R1 ; [+14]
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R3 R4 K4 ["onAssetInserted"]
       19 GETTABLEKS                       R4 R0 K5 ["assetId"]
       21 GETTABLEKS                       R5 R0 K6 ["searchTerm"]
       23 GETTABLEKS                       R6 R0 K7 ["assetIndex"]
       25 MOVE                             R7 R2
       26 GETTABLEKS                       R8 R0 K8 ["layoutMode"]
       28 CALL                             R3 5 0
       29 JUMP                             ; [+11]
       30 GETUPVAL                         R4 0
       31 GETTABLEKS                       R3 R4 K9 ["onAssetDragInserted"]
       33 GETTABLEKS                       R4 R0 K5 ["assetId"]
       35 GETTABLEKS                       R5 R0 K6 ["searchTerm"]
       37 GETTABLEKS                       R6 R0 K7 ["assetIndex"]
       39 MOVE                             R7 R2
       40 CALL                             R3 4 0
       41 GETUPVAL                         R4 0
       42 GETTABLEKS                       R3 R4 K10 ["incrementWorkspaceInsertCounter"]
       44 CALL                             R3 0 0
       45 RETURN                           R0 0

PROTO_33:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

PROTO_34:
        0 GETTABLEKS                       R1 R0 K0 ["errors"]
        2 JUMPIFNOT                        R1 ; [+26]
        3 GETIMPORT                        R1 K2 [ipairs]
        5 GETTABLEKS                       R2 R0 K0 ["errors"]
        7 CALL                             R1 1 3
        8 FORGPREP_INEXT                   R1
        9 GETTABLEKS                       R6 R5 K3 ["assetId"]
       11 JUMPIFNOT                        R6 ; [+15]
       12 GETTABLEKS                       R6 R5 K4 ["code"]
       14 JUMPIFNOT                        R6 ; [+12]
       15 GETTABLEKS                       R6 R5 K4 ["code"]
       17 JUMPIFEQKS                       R6 K5 ["PublicAssetCannotBeGrantedTo"] ; [+9]
       19 GETTABLEKS                       R6 R5 K4 ["code"]
       21 JUMPIFEQKS                       R6 K6 ["AssetTypeNotEnabled"] ; [+5]
       23 LOADB                            R6 1
       24 GETTABLEKS                       R7 R5 K3 ["assetId"]
       26 RETURN                           R6 2
       27 FORGLOOP                         R1 2 [inext] ; [-19]
       29 LOADB                            R1 0
       30 LOADN                            R2 0
       31 RETURN                           R1 2

PROTO_35:
        0 GETTABLEKS                       R2 R0 K0 ["errors"]
        2 JUMPIFNOT                        R2 ; [+16]
        3 GETIMPORT                        R2 K2 [ipairs]
        5 GETTABLEKS                       R3 R0 K0 ["errors"]
        7 CALL                             R2 1 3
        8 FORGPREP_INEXT                   R2
        9 GETTABLEKS                       R7 R6 K3 ["assetId"]
       11 JUMPIFNOTEQ                      R7 R1 ; [+5]
       13 LOADB                            R7 1
       14 GETTABLEKS                       R8 R6 K4 ["code"]
       16 RETURN                           R7 2
       17 FORGLOOP                         R2 2 [inext] ; [-9]
       19 LOADB                            R2 0
       20 LOADNIL                          R3
       21 RETURN                           R2 2

PROTO_36:
        0 GETIMPORT                        R1 K1 [game]
        2 GETTABLEKS                       R0 R1 K2 ["GameId"]
        4 RETURN                           R0 1

PROTO_37:
        0 GETGLOBAL                        R1 K0 ["didBatchGrantFail_DEPRECATED"]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 2
        4 JUMPIFNOT                        R1 ; [+14]
        5 GETIMPORT                        R3 K2 [warn]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R4 R5 K3 ["_localization"]
       10 LOADK                            R6 K4 ["GrantAssetPermission"]
       11 LOADK                            R7 K5 ["Failure"]
       12 DUPTABLE                         R8 K7 [{"assetId"}]
       13 SETTABLEKS                       R2 R8 K6 ["assetId"]
       15 NAMECALL                         R4 R4 K8 ["getText"]
       17 CALL                             R4 4 -1
       18 CALL                             R3 -1 0
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R3 R4 K9 ["tryInsert"]
       22 GETUPVAL                         R4 1
       23 GETUPVAL                         R5 2
       24 GETUPVAL                         R6 3
       25 GETUPVAL                         R7 4
       26 CALL                             R3 4 0
       27 RETURN                           R0 0

PROTO_38:
        0 GETIMPORT                        R0 K1 [warn]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K2 ["_localization"]
        5 LOADK                            R3 K3 ["GrantAssetPermission"]
        6 LOADK                            R4 K4 ["Failure"]
        7 DUPTABLE                         R5 K6 [{"assetId"}]
        8 GETUPVAL                         R7 1
        9 GETTABLEKS                       R6 R7 K5 ["assetId"]
       11 SETTABLEKS                       R6 R5 K5 ["assetId"]
       13 NAMECALL                         R1 R1 K7 ["getText"]
       15 CALL                             R1 4 -1
       16 CALL                             R0 -1 0
       17 GETUPVAL                         R1 0
       18 GETTABLEKS                       R0 R1 K8 ["tryInsert"]
       20 GETUPVAL                         R1 1
       21 GETUPVAL                         R2 2
       22 GETUPVAL                         R3 3
       23 GETUPVAL                         R4 4
       24 CALL                             R0 4 0
       25 RETURN                           R0 0

PROTO_39:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R6 R0 K0 ["assetTypeId"]
        3 GETTABLE                         R4 R5 R6
        4 JUMPIF                           R4 ; [+9]
        5 GETUPVAL                         R5 1
        6 GETTABLEKS                       R4 R5 K1 ["tryInsert"]
        8 MOVE                             R5 R0
        9 MOVE                             R6 R1
       10 MOVE                             R7 R2
       11 MOVE                             R8 R3
       12 CALL                             R4 4 -1
       13 RETURN                           R4 -1
       14 GETUPVAL                         R5 1
       15 GETTABLEKS                       R4 R5 K2 ["getGameId"]
       17 CALL                             R4 0 1
       18 FASTCALL1                        TYPE R4 ; [+3]
       19 MOVE                             R6 R4
       20 GETIMPORT                        R5 K4 [type]
       22 CALL                             R5 1 1
       23 JUMPIFNOTEQKS                    R5 K5 ["number"] ; [+3]
       25 JUMPIFNOTEQKN                    R4 K6 [0] ; [+29]
       27 GETUPVAL                         R5 2
       28 JUMPIF                           R5 ; [+17]
       29 GETUPVAL                         R6 1
       30 GETTABLEKS                       R5 R6 K7 ["_localization"]
       32 LOADK                            R7 K8 ["AAC"]
       33 LOADK                            R8 K9 ["RestrictedAssetInUnsavedExperience"]
       34 DUPTABLE                         R9 K11 [{"assetId"}]
       35 GETTABLEKS                       R10 R0 K10 ["assetId"]
       37 SETTABLEKS                       R10 R9 K10 ["assetId"]
       39 NAMECALL                         R5 R5 K12 ["getText"]
       41 CALL                             R5 4 1
       42 GETIMPORT                        R6 K14 [warn]
       44 MOVE                             R7 R5
       45 CALL                             R6 1 0
       46 GETUPVAL                         R6 1
       47 GETTABLEKS                       R5 R6 K1 ["tryInsert"]
       49 MOVE                             R6 R0
       50 MOVE                             R7 R1
       51 MOVE                             R8 R2
       52 MOVE                             R9 R3
       53 CALL                             R5 4 -1
       54 RETURN                           R5 -1
       55 NEWTABLE                         R5 0 1
       57 GETTABLEKS                       R6 R0 K10 ["assetId"]
       59 SETLIST                          R5 R6 1 [1]
       61 MOVE                             R8 R5
       62 MOVE                             R9 R4
       63 NAMECALL                         R6 R3 K15 ["batchGrantAssetPermissions"]
       65 CALL                             R6 3 1
       66 NEWCLOSURE                       R8 P0
       67 CAPTURE                          UPVAL U1
       68 CAPTURE                          VAL R0
       69 CAPTURE                          VAL R1
       70 CAPTURE                          VAL R2
       71 CAPTURE                          VAL R3
       72 NAMECALL                         R6 R6 K16 ["andThen"]
       74 CALL                             R6 2 1
       75 NEWCLOSURE                       R8 P1
       76 CAPTURE                          UPVAL U1
       77 CAPTURE                          VAL R0
       78 CAPTURE                          VAL R1
       79 CAPTURE                          VAL R2
       80 CAPTURE                          VAL R3
       81 NAMECALL                         R6 R6 K17 ["catch"]
       83 CALL                             R6 2 0
       84 RETURN                           R0 0

PROTO_40:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 LOADNIL                          R0
        7 SETUPVAL                         R0 0
        8 GETUPVAL                         R0 1
        9 JUMPIFNOT                        R0 ; [+8]
       10 GETIMPORT                        R0 K2 [pcall]
       12 GETIMPORT                        R1 K5 [task.cancel]
       14 GETUPVAL                         R2 1
       15 CALL                             R0 2 0
       16 LOADNIL                          R0
       17 SETUPVAL                         R0 1
       18 RETURN                           R0 0

PROTO_41:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 LOADB                            R0 1
        4 SETUPVAL                         R0 0
        5 GETUPVAL                         R0 1
        6 JUMPIFNOT                        R0 ; [+6]
        7 GETUPVAL                         R0 1
        8 NAMECALL                         R0 R0 K0 ["Disconnect"]
       10 CALL                             R0 1 0
       11 LOADNIL                          R0
       12 SETUPVAL                         R0 1
       13 GETUPVAL                         R0 2
       14 JUMPIFNOT                        R0 ; [+8]
       15 GETIMPORT                        R0 K2 [pcall]
       17 GETIMPORT                        R1 K5 [task.cancel]
       19 GETUPVAL                         R2 2
       20 CALL                             R0 2 0
       21 LOADNIL                          R0
       22 SETUPVAL                         R0 2
       23 GETUPVAL                         R1 3
       24 GETTABLEKS                       R0 R1 K6 ["tryInsert"]
       26 GETUPVAL                         R1 4
       27 GETUPVAL                         R2 5
       28 GETUPVAL                         R3 6
       29 GETUPVAL                         R4 7
       30 CALL                             R0 4 0
       31 RETURN                           R0 0

PROTO_42:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["JSONDecode"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_43:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 2
        6 JUMPIF                           R1 ; [+1]
        7 RETURN                           R0 0
        8 GETTABLEKS                       R3 R2 K2 ["AssetId"]
       10 GETUPVAL                         R4 1
       11 JUMPIFEQ                         R3 R4 ; [+2]
       13 RETURN                           R0 0
       14 GETTABLEKS                       R3 R2 K3 ["IsComplete"]
       16 JUMPIFNOTEQKB                    R3 TRUE ; [+32]
       18 GETUPVAL                         R3 2
       19 JUMPIFNOT                        R3 ; [+1]
       20 RETURN                           R0 0
       21 LOADB                            R3 1
       22 SETUPVAL                         R3 2
       23 GETUPVAL                         R3 3
       24 JUMPIFNOT                        R3 ; [+6]
       25 GETUPVAL                         R3 3
       26 NAMECALL                         R3 R3 K4 ["Disconnect"]
       28 CALL                             R3 1 0
       29 LOADNIL                          R3
       30 SETUPVAL                         R3 3
       31 GETUPVAL                         R3 4
       32 JUMPIFNOT                        R3 ; [+8]
       33 GETIMPORT                        R3 K1 [pcall]
       35 GETIMPORT                        R4 K7 [task.cancel]
       37 GETUPVAL                         R5 4
       38 CALL                             R3 2 0
       39 LOADNIL                          R3
       40 SETUPVAL                         R3 4
       41 GETUPVAL                         R4 5
       42 GETTABLEKS                       R3 R4 K8 ["tryInsert"]
       44 GETUPVAL                         R4 6
       45 GETUPVAL                         R5 7
       46 GETUPVAL                         R6 8
       47 GETUPVAL                         R7 9
       48 CALL                             R3 4 0
       49 RETURN                           R0 0

PROTO_44:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["_localization"]
        3 LOADK                            R2 K1 ["AAC"]
        4 LOADK                            R3 K2 ["AssetDependencyGrantEventTimeoutWarning"]
        5 DUPTABLE                         R4 K5 [{"timeoutSeconds", "assetId"}]
        6 GETUPVAL                         R5 1
        7 SETTABLEKS                       R5 R4 K3 ["timeoutSeconds"]
        9 GETUPVAL                         R6 2
       10 GETTABLEKS                       R5 R6 K4 ["assetId"]
       12 SETTABLEKS                       R5 R4 K4 ["assetId"]
       14 NAMECALL                         R0 R0 K6 ["getText"]
       16 CALL                             R0 4 1
       17 GETIMPORT                        R1 K8 [warn]
       19 MOVE                             R2 R0
       20 CALL                             R1 1 0
       21 GETUPVAL                         R1 3
       22 JUMPIFNOT                        R1 ; [+1]
       23 RETURN                           R0 0
       24 LOADB                            R1 1
       25 SETUPVAL                         R1 3
       26 GETUPVAL                         R1 4
       27 JUMPIFNOT                        R1 ; [+6]
       28 GETUPVAL                         R1 4
       29 NAMECALL                         R1 R1 K9 ["Disconnect"]
       31 CALL                             R1 1 0
       32 LOADNIL                          R1
       33 SETUPVAL                         R1 4
       34 GETUPVAL                         R1 5
       35 JUMPIFNOT                        R1 ; [+8]
       36 GETIMPORT                        R1 K11 [pcall]
       38 GETIMPORT                        R2 K14 [task.cancel]
       40 GETUPVAL                         R3 5
       41 CALL                             R1 2 0
       42 LOADNIL                          R1
       43 SETUPVAL                         R1 5
       44 GETUPVAL                         R2 0
       45 GETTABLEKS                       R1 R2 K15 ["tryInsert"]
       47 GETUPVAL                         R2 2
       48 GETUPVAL                         R3 6
       49 GETUPVAL                         R4 7
       50 GETUPVAL                         R5 8
       51 CALL                             R1 4 0
       52 RETURN                           R0 0

PROTO_45:
        0 GETGLOBAL                        R1 K0 ["didGrantFailForAssetId"]
        2 MOVE                             R2 R0
        3 GETUPVAL                         R3 0
        4 CALL                             R1 2 2
        5 JUMPIFNOT                        R1 ; [+50]
        6 GETUPVAL                         R4 1
        7 GETTABLE                         R3 R4 R2
        8 JUMPIF                           R3 ; [+15]
        9 GETIMPORT                        R3 K2 [warn]
       11 GETUPVAL                         R5 2
       12 GETTABLEKS                       R4 R5 K3 ["_localization"]
       14 LOADK                            R6 K4 ["GrantAssetPermission"]
       15 LOADK                            R7 K5 ["Failure"]
       16 DUPTABLE                         R8 K7 [{"assetId"}]
       17 GETUPVAL                         R9 0
       18 SETTABLEKS                       R9 R8 K6 ["assetId"]
       20 NAMECALL                         R4 R4 K8 ["getText"]
       22 CALL                             R4 4 -1
       23 CALL                             R3 -1 0
       24 GETUPVAL                         R3 3
       25 JUMPIFNOT                        R3 ; [+1]
       26 RETURN                           R0 0
       27 LOADB                            R3 1
       28 SETUPVAL                         R3 3
       29 GETUPVAL                         R3 4
       30 JUMPIFNOT                        R3 ; [+6]
       31 GETUPVAL                         R3 4
       32 NAMECALL                         R3 R3 K9 ["Disconnect"]
       34 CALL                             R3 1 0
       35 LOADNIL                          R3
       36 SETUPVAL                         R3 4
       37 GETUPVAL                         R3 5
       38 JUMPIFNOT                        R3 ; [+8]
       39 GETIMPORT                        R3 K11 [pcall]
       41 GETIMPORT                        R4 K14 [task.cancel]
       43 GETUPVAL                         R5 5
       44 CALL                             R3 2 0
       45 LOADNIL                          R3
       46 SETUPVAL                         R3 5
       47 GETUPVAL                         R4 2
       48 GETTABLEKS                       R3 R4 K15 ["tryInsert"]
       50 GETUPVAL                         R4 6
       51 GETUPVAL                         R5 7
       52 GETUPVAL                         R6 8
       53 GETUPVAL                         R7 9
       54 CALL                             R3 4 0
       55 RETURN                           R0 0
       56 GETUPVAL                         R3 10
       57 GETIMPORT                        R5 K19 [Enum.AssetType.Model]
       59 GETTABLEKS                       R4 R5 K20 ["Value"]
       61 JUMPIFEQ                         R3 R4 ; [+32]
       63 GETUPVAL                         R3 3
       64 JUMPIFNOT                        R3 ; [+1]
       65 RETURN                           R0 0
       66 LOADB                            R3 1
       67 SETUPVAL                         R3 3
       68 GETUPVAL                         R3 4
       69 JUMPIFNOT                        R3 ; [+6]
       70 GETUPVAL                         R3 4
       71 NAMECALL                         R3 R3 K9 ["Disconnect"]
       73 CALL                             R3 1 0
       74 LOADNIL                          R3
       75 SETUPVAL                         R3 4
       76 GETUPVAL                         R3 5
       77 JUMPIFNOT                        R3 ; [+8]
       78 GETIMPORT                        R3 K11 [pcall]
       80 GETIMPORT                        R4 K14 [task.cancel]
       82 GETUPVAL                         R5 5
       83 CALL                             R3 2 0
       84 LOADNIL                          R3
       85 SETUPVAL                         R3 5
       86 GETUPVAL                         R4 2
       87 GETTABLEKS                       R3 R4 K15 ["tryInsert"]
       89 GETUPVAL                         R4 6
       90 GETUPVAL                         R5 7
       91 GETUPVAL                         R6 8
       92 GETUPVAL                         R7 9
       93 CALL                             R3 4 0
       94 RETURN                           R0 0

PROTO_46:
        0 GETIMPORT                        R1 K1 [warn]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K2 ["_localization"]
        5 LOADK                            R4 K3 ["GrantAssetPermission"]
        6 LOADK                            R5 K4 ["Failure"]
        7 DUPTABLE                         R6 K6 [{"assetId"}]
        8 GETUPVAL                         R7 1
        9 SETTABLEKS                       R7 R6 K5 ["assetId"]
       11 NAMECALL                         R2 R2 K7 ["getText"]
       13 CALL                             R2 4 1
       14 MOVE                             R3 R0
       15 CALL                             R1 2 0
       16 GETUPVAL                         R1 2
       17 JUMPIFNOT                        R1 ; [+1]
       18 RETURN                           R0 0
       19 LOADB                            R1 1
       20 SETUPVAL                         R1 2
       21 GETUPVAL                         R1 3
       22 JUMPIFNOT                        R1 ; [+6]
       23 GETUPVAL                         R1 3
       24 NAMECALL                         R1 R1 K8 ["Disconnect"]
       26 CALL                             R1 1 0
       27 LOADNIL                          R1
       28 SETUPVAL                         R1 3
       29 GETUPVAL                         R1 4
       30 JUMPIFNOT                        R1 ; [+8]
       31 GETIMPORT                        R1 K10 [pcall]
       33 GETIMPORT                        R2 K13 [task.cancel]
       35 GETUPVAL                         R3 4
       36 CALL                             R1 2 0
       37 LOADNIL                          R1
       38 SETUPVAL                         R1 4
       39 GETUPVAL                         R2 0
       40 GETTABLEKS                       R1 R2 K14 ["tryInsert"]
       42 GETUPVAL                         R2 5
       43 GETUPVAL                         R3 6
       44 GETUPVAL                         R4 7
       45 GETUPVAL                         R5 8
       46 CALL                             R1 4 0
       47 RETURN                           R0 0

PROTO_47:
        0 GETTABLEKS                       R4 R0 K0 ["plugin"]
        2 LOADK                            R6 K1 ["AssetAccessController"]
        3 NAMECALL                         R4 R4 K2 ["GetPluginComponent"]
        5 CALL                             R4 2 1
        6 GETIMPORT                        R5 K4 [game]
        8 LOADK                            R7 K5 ["HttpService"]
        9 NAMECALL                         R5 R5 K6 ["GetService"]
       11 CALL                             R5 2 1
       12 JUMPIFNOT                        R4 ; [+3]
       13 GETTABLEKS                       R6 R4 K7 ["DependencyGrantProgressReceived"]
       15 JUMPIF                           R6 ; [+9]
       16 GETUPVAL                         R7 0
       17 GETTABLEKS                       R6 R7 K8 ["tryInsert"]
       19 MOVE                             R7 R0
       20 MOVE                             R8 R1
       21 MOVE                             R9 R2
       22 MOVE                             R10 R3
       23 CALL                             R6 4 -1
       24 RETURN                           R6 -1
       25 GETUPVAL                         R7 1
       26 GETTABLEKS                       R8 R0 K9 ["assetTypeId"]
       28 GETTABLE                         R6 R7 R8
       29 JUMPIF                           R6 ; [+9]
       30 GETUPVAL                         R7 0
       31 GETTABLEKS                       R6 R7 K8 ["tryInsert"]
       33 MOVE                             R7 R0
       34 MOVE                             R8 R1
       35 MOVE                             R9 R2
       36 MOVE                             R10 R3
       37 CALL                             R6 4 -1
       38 RETURN                           R6 -1
       39 GETUPVAL                         R7 0
       40 GETTABLEKS                       R6 R7 K10 ["getGameId"]
       42 CALL                             R6 0 1
       43 FASTCALL1                        TYPE R6 ; [+3]
       44 MOVE                             R8 R6
       45 GETIMPORT                        R7 K12 [type]
       47 CALL                             R7 1 1
       48 JUMPIFNOTEQKS                    R7 K13 ["number"] ; [+3]
       50 JUMPIFNOTEQKN                    R6 K14 [0] ; [+10]
       52 GETUPVAL                         R8 0
       53 GETTABLEKS                       R7 R8 K8 ["tryInsert"]
       55 MOVE                             R8 R0
       56 MOVE                             R9 R1
       57 MOVE                             R10 R2
       58 MOVE                             R11 R3
       59 CALL                             R7 4 -1
       60 RETURN                           R7 -1
       61 GETTABLEKS                       R7 R0 K15 ["assetId"]
       63 GETTABLEKS                       R8 R0 K9 ["assetTypeId"]
       65 LOADNIL                          R9
       66 LOADNIL                          R10
       67 LOADB                            R11 0
       68 NEWCLOSURE                       R12 P0
       69 CAPTURE                          REF R9
       70 CAPTURE                          REF R10
       71 NEWCLOSURE                       R13 P1
       72 CAPTURE                          REF R11
       73 CAPTURE                          REF R9
       74 CAPTURE                          REF R10
       75 CAPTURE                          UPVAL U0
       76 CAPTURE                          VAL R0
       77 CAPTURE                          VAL R1
       78 CAPTURE                          VAL R2
       79 CAPTURE                          VAL R3
       80 GETTABLEKS                       R14 R4 K7 ["DependencyGrantProgressReceived"]
       82 NEWCLOSURE                       R16 P2
       83 CAPTURE                          VAL R5
       84 CAPTURE                          VAL R7
       85 CAPTURE                          REF R11
       86 CAPTURE                          REF R9
       87 CAPTURE                          REF R10
       88 CAPTURE                          UPVAL U0
       89 CAPTURE                          VAL R0
       90 CAPTURE                          VAL R1
       91 CAPTURE                          VAL R2
       92 CAPTURE                          VAL R3
       93 NAMECALL                         R14 R14 K16 ["Connect"]
       95 CALL                             R14 2 1
       96 MOVE                             R9 R14
       97 GETUPVAL                         R14 2
       98 CALL                             R14 0 1
       99 GETIMPORT                        R15 K19 [task.delay]
      101 MOVE                             R16 R14
      102 NEWCLOSURE                       R17 P3
      103 CAPTURE                          UPVAL U0
      104 CAPTURE                          VAL R14
      105 CAPTURE                          VAL R0
      106 CAPTURE                          REF R11
      107 CAPTURE                          REF R9
      108 CAPTURE                          REF R10
      109 CAPTURE                          VAL R1
      110 CAPTURE                          VAL R2
      111 CAPTURE                          VAL R3
      112 CALL                             R15 2 1
      113 MOVE                             R10 R15
      114 NEWTABLE                         R17 0 1
      116 MOVE                             R18 R7
      117 SETLIST                          R17 R18 1 [1]
      119 MOVE                             R18 R6
      120 NAMECALL                         R15 R3 K20 ["batchGrantAssetPermissions"]
      122 CALL                             R15 3 1
      123 NEWCLOSURE                       R17 P4
      124 CAPTURE                          VAL R7
      125 CAPTURE                          UPVAL U3
      126 CAPTURE                          UPVAL U0
      127 CAPTURE                          REF R11
      128 CAPTURE                          REF R9
      129 CAPTURE                          REF R10
      130 CAPTURE                          VAL R0
      131 CAPTURE                          VAL R1
      132 CAPTURE                          VAL R2
      133 CAPTURE                          VAL R3
      134 CAPTURE                          VAL R8
      135 NAMECALL                         R15 R15 K21 ["andThen"]
      137 CALL                             R15 2 1
      138 NEWCLOSURE                       R17 P5
      139 CAPTURE                          UPVAL U0
      140 CAPTURE                          VAL R7
      141 CAPTURE                          REF R11
      142 CAPTURE                          REF R9
      143 CAPTURE                          REF R10
      144 CAPTURE                          VAL R0
      145 CAPTURE                          VAL R1
      146 CAPTURE                          VAL R2
      147 CAPTURE                          VAL R3
      148 NAMECALL                         R15 R15 K22 ["catch"]
      150 CALL                             R15 2 0
      151 CLOSEUPVALS                      R9
      152 RETURN                           R0 0

PROTO_48:
        0 JUMPIFNOT                        R2 ; [+69]
        1 GETTABLEKS                       R4 R0 K0 ["plugin"]
        3 NAMECALL                         R4 R4 K1 ["GetSelectedRibbonTool"]
        5 CALL                             R4 1 1
        6 GETUPVAL                         R6 0
        7 GETTABLE                         R5 R6 R4
        8 JUMPIF                           R5 ; [+10]
        9 GETTABLEKS                       R5 R0 K0 ["plugin"]
       11 GETIMPORT                        R7 K5 [Enum.RibbonTool.Select]
       13 GETIMPORT                        R8 K8 [UDim2.new]
       15 CALL                             R8 0 -1
       16 NAMECALL                         R5 R5 K9 ["SelectRibbonTool"]
       18 CALL                             R5 -1 0
       19 DUPTABLE                         R5 K18 [{"assetName", "assetId", "assetTypeId", "assetSubTypes", "localization", "insertToolPromise", "onSuccess", "options"}]
       20 GETTABLEKS                       R6 R0 K10 ["assetName"]
       22 SETTABLEKS                       R6 R5 K10 ["assetName"]
       24 GETTABLEKS                       R6 R0 K11 ["assetId"]
       26 SETTABLEKS                       R6 R5 K11 ["assetId"]
       28 GETUPVAL                         R7 2
       29 JUMPIFNOT                        R7 ; [+3]
       30 GETTABLEKS                       R6 R0 K12 ["assetTypeId"]
       32 JUMP                             ; [+1]
       33 LOADNIL                          R6
       34 SETTABLEKS                       R6 R5 K12 ["assetTypeId"]
       36 GETTABLEKS                       R6 R0 K13 ["assetSubTypes"]
       38 SETTABLEKS                       R6 R5 K13 ["assetSubTypes"]
       40 GETUPVAL                         R7 2
       41 JUMPIFNOT                        R7 ; [+4]
       42 GETUPVAL                         R7 3
       43 GETTABLEKS                       R6 R7 K19 ["_localization"]
       45 JUMP                             ; [+1]
       46 LOADNIL                          R6
       47 SETTABLEKS                       R6 R5 K14 ["localization"]
       49 SETTABLEKS                       R1 R5 K15 ["insertToolPromise"]
       51 GETTABLEKS                       R6 R0 K16 ["onSuccess"]
       53 SETTABLEKS                       R6 R5 K16 ["onSuccess"]
       55 GETUPVAL                         R7 4
       56 CALL                             R7 0 1
       57 JUMPIFNOT                        R7 ; [+2]
       58 MOVE                             R6 R0
       59 JUMP                             ; [+1]
       60 LOADNIL                          R6
       61 SETTABLEKS                       R6 R5 K17 ["options"]
       63 SETUPVAL                         R5 1
       64 GETUPVAL                         R6 3
       65 GETTABLEKS                       R5 R6 K20 ["doDragInsertAsset"]
       67 MOVE                             R6 R0
       68 CALL                             R5 1 0
       69 RETURN                           R0 0
       70 GETUPVAL                         R5 3
       71 GETTABLEKS                       R4 R5 K21 ["doInsertAsset"]
       73 MOVE                             R5 R0
       74 MOVE                             R6 R1
       75 MOVE                             R7 R3
       76 CALL                             R4 3 2
       77 JUMPIFNOT                        R5 ; [+11]
       78 GETTABLEKS                       R6 R0 K22 ["onError"]
       80 JUMPIFNOT                        R6 ; [+8]
       81 GETTABLEKS                       R6 R0 K22 ["onError"]
       83 MOVE                             R7 R5
       84 GETTABLEKS                       R8 R0 K11 ["assetId"]
       86 GETTABLEKS                       R9 R0 K12 ["assetTypeId"]
       88 CALL                             R6 3 0
       89 RETURN                           R4 2
       90 RETURN                           R0 0

PROTO_49:
        0 GETTABLEKS                       R3 R0 K0 ["assetId"]
        2 GETTABLEKS                       R4 R0 K1 ["assetName"]
        4 GETTABLEKS                       R5 R0 K2 ["assetTypeId"]
        6 GETIMPORT                        R6 K5 [os.clock]
        8 CALL                             R6 0 1
        9 GETUPVAL                         R8 0
       10 GETTABLEKS                       R7 R8 K6 ["shouldDebugWarnings"]
       12 CALL                             R7 0 1
       13 JUMPIFNOT                        R7 ; [+17]
       14 GETIMPORT                        R7 K8 [print]
       16 LOADK                            R8 K9 ["Inserting asset %s %s"]
       17 FASTCALL1                        TOSTRING R3 ; [+3]
       18 MOVE                             R11 R3
       19 GETIMPORT                        R10 K11 [tostring]
       21 CALL                             R10 1 1
       22 FASTCALL1                        TOSTRING R4 ; [+3]
       23 MOVE                             R12 R4
       24 GETIMPORT                        R11 K11 [tostring]
       26 CALL                             R11 1 1
       27 NAMECALL                         R8 R8 K12 ["format"]
       29 CALL                             R8 3 -1
       30 CALL                             R7 -1 0
       31 GETUPVAL                         R7 1
       32 JUMPIFNOT                        R7 ; [+14]
       33 GETUPVAL                         R7 2
       34 LOADK                            R9 K13 ["Before insert asset %s"]
       35 FASTCALL1                        TOSTRING R3 ; [+3]
       36 MOVE                             R12 R3
       37 GETIMPORT                        R11 K11 [tostring]
       39 CALL                             R11 1 1
       40 NAMECALL                         R9 R9 K12 ["format"]
       42 CALL                             R9 2 -1
       43 NAMECALL                         R7 R7 K14 ["SetWaypoint"]
       45 CALL                             R7 -1 0
       46 JUMP                             ; [+9]
       47 GETUPVAL                         R7 2
       48 LOADK                            R9 K15 ["Before insert asset %d"]
       49 MOVE                             R11 R3
       50 NAMECALL                         R9 R9 K12 ["format"]
       52 CALL                             R9 2 -1
       53 NAMECALL                         R7 R7 K14 ["SetWaypoint"]
       55 CALL                             R7 -1 0
       56 GETUPVAL                         R8 3
       57 GETTABLEKS                       R7 R8 K16 ["_localization"]
       59 SETTABLEKS                       R7 R0 K17 ["localization"]
       61 GETUPVAL                         R7 4
       62 MOVE                             R8 R0
       63 MOVE                             R9 R1
       64 MOVE                             R10 R2
       65 CALL                             R7 3 2
       66 GETIMPORT                        R10 K5 [os.clock]
       68 CALL                             R10 0 1
       69 SUB                              R9 R10 R6
       70 GETIMPORT                        R11 K21 [Enum.AssetType.Plugin]
       72 GETTABLEKS                       R10 R11 K22 ["Value"]
       74 JUMPIFNOTEQ                      R5 R10 ; [+40]
       76 GETUPVAL                         R10 1
       77 JUMPIFNOT                        R10 ; [+14]
       78 GETUPVAL                         R10 2
       79 LOADK                            R12 K23 ["After attempt to install plugin %s"]
       80 FASTCALL1                        TOSTRING R3 ; [+3]
       81 MOVE                             R15 R3
       82 GETIMPORT                        R14 K11 [tostring]
       84 CALL                             R14 1 1
       85 NAMECALL                         R12 R12 K12 ["format"]
       87 CALL                             R12 2 -1
       88 NAMECALL                         R10 R10 K14 ["SetWaypoint"]
       90 CALL                             R10 -1 0
       91 JUMP                             ; [+9]
       92 GETUPVAL                         R10 2
       93 LOADK                            R12 K24 ["After attempt to install plugin %d"]
       94 MOVE                             R14 R3
       95 NAMECALL                         R12 R12 K12 ["format"]
       97 CALL                             R12 2 -1
       98 NAMECALL                         R10 R10 K14 ["SetWaypoint"]
      100 CALL                             R10 -1 0
      101 GETUPVAL                         R10 5
      102 MOVE                             R11 R0
      103 LOADB                            R12 0
      104 CALL                             R10 2 0
      105 GETTABLEKS                       R10 R0 K25 ["onSuccess"]
      107 JUMPIFNOT                        R10 ; [+74]
      108 GETTABLEKS                       R10 R0 K25 ["onSuccess"]
      110 MOVE                             R11 R3
      111 LOADNIL                          R12
      112 MOVE                             R13 R9
      113 CALL                             R10 3 0
      114 RETURN                           R7 2
      115 JUMPIFNOT                        R7 ; [+39]
      116 GETUPVAL                         R10 1
      117 JUMPIFNOT                        R10 ; [+14]
      118 GETUPVAL                         R10 2
      119 LOADK                            R12 K26 ["After insert asset %s"]
      120 FASTCALL1                        TOSTRING R3 ; [+3]
      121 MOVE                             R15 R3
      122 GETIMPORT                        R14 K11 [tostring]
      124 CALL                             R14 1 1
      125 NAMECALL                         R12 R12 K12 ["format"]
      127 CALL                             R12 2 -1
      128 NAMECALL                         R10 R10 K14 ["SetWaypoint"]
      130 CALL                             R10 -1 0
      131 JUMP                             ; [+9]
      132 GETUPVAL                         R10 2
      133 LOADK                            R12 K27 ["After insert asset %d"]
      134 MOVE                             R14 R3
      135 NAMECALL                         R12 R12 K12 ["format"]
      137 CALL                             R12 2 -1
      138 NAMECALL                         R10 R10 K14 ["SetWaypoint"]
      140 CALL                             R10 -1 0
      141 GETUPVAL                         R10 5
      142 MOVE                             R11 R0
      143 LOADB                            R12 0
      144 CALL                             R10 2 0
      145 GETTABLEKS                       R10 R0 K25 ["onSuccess"]
      147 JUMPIFNOT                        R10 ; [+34]
      148 GETTABLEKS                       R10 R0 K25 ["onSuccess"]
      150 MOVE                             R11 R3
      151 MOVE                             R12 R7
      152 MOVE                             R13 R9
      153 CALL                             R10 3 0
      154 RETURN                           R7 2
      155 GETUPVAL                         R10 1
      156 JUMPIFNOT                        R10 ; [+15]
      157 GETIMPORT                        R10 K29 [warn]
      159 LOADK                            R11 K30 ["Toolbox failed to insert asset %s %s: %s"]
      160 FASTCALL1                        TOSTRING R3 ; [+3]
      161 MOVE                             R14 R3
      162 GETIMPORT                        R13 K11 [tostring]
      164 CALL                             R13 1 1
      165 MOVE                             R14 R4
      166 ORK                              R15 R8 K31 [""]
      167 NAMECALL                         R11 R11 K12 ["format"]
      169 CALL                             R11 4 -1
      170 CALL                             R10 -1 0
      171 RETURN                           R7 2
      172 GETIMPORT                        R10 K29 [warn]
      174 LOADK                            R11 K32 ["Toolbox failed to insert asset %d %s: %s"]
      175 MOVE                             R13 R3
      176 MOVE                             R14 R4
      177 ORK                              R15 R8 K31 [""]
      178 NAMECALL                         R11 R11 K12 ["format"]
      180 CALL                             R11 4 -1
      181 CALL                             R10 -1 0
      182 RETURN                           R7 2

PROTO_50:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["plugin"]
        3 LOADB                            R1 1
        4 SETTABLEKS                       R1 R0 K1 ["UsesAssetInsertionDrag"]
        6 GETUPVAL                         R0 1
        7 JUMPIF                           R0 ; [+12]
        8 GETUPVAL                         R0 2
        9 JUMPIFNOT                        R0 ; [+10]
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R0 R1 K2 ["getIsIXPVariableEnabled"]
       13 JUMPIFNOT                        R0 ; [+6]
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R0 R1 K2 ["getIsIXPVariableEnabled"]
       17 LOADK                            R1 K3 ["MarketplaceModelsAsPackages"]
       18 LOADK                            R2 K4 ["MarketplaceModelsAsPackagesEnabled"]
       19 CALL                             R0 2 1
       20 LOADNIL                          R1
       21 JUMPIFNOT                        R0 ; [+39]
       22 GETUPVAL                         R3 3
       23 GETTABLEKS                       R2 R3 K5 ["categoryIsPackage"]
       25 GETUPVAL                         R4 0
       26 GETTABLEKS                       R3 R4 K6 ["categoryName"]
       28 CALL                             R2 1 1
       29 JUMPIF                           R2 ; [+29]
       30 GETUPVAL                         R4 0
       31 GETTABLEKS                       R3 R4 K7 ["assetSubTypes"]
       33 JUMPIFNOT                        R3 ; [+11]
       34 GETUPVAL                         R3 4
       35 GETTABLEKS                       R2 R3 K8 ["contains"]
       37 GETUPVAL                         R4 0
       38 GETTABLEKS                       R3 R4 K7 ["assetSubTypes"]
       40 GETUPVAL                         R5 4
       41 GETTABLEKS                       R4 R5 K9 ["Package"]
       43 CALL                             R2 2 1
       44 JUMPIF                           R2 ; [+14]
       45 GETUPVAL                         R4 3
       46 GETTABLEKS                       R3 R4 K10 ["getCategoryByName"]
       48 GETUPVAL                         R5 0
       49 GETTABLEKS                       R4 R5 K6 ["categoryName"]
       51 CALL                             R3 1 1
       52 GETUPVAL                         R5 3
       53 GETTABLEKS                       R4 R5 K11 ["FREE_MODELS"]
       55 JUMPIFEQ                         R3 R4 ; [+2]
       57 LOADB                            R2 0 +1
       58 LOADB                            R2 1
       59 MOVE                             R1 R2
       60 JUMP                             ; [+25]
       61 GETUPVAL                         R3 0
       62 GETTABLEKS                       R2 R3 K7 ["assetSubTypes"]
       64 JUMPIFEQKNIL                     R2 ; [+13]
       66 GETUPVAL                         R3 4
       67 GETTABLEKS                       R2 R3 K8 ["contains"]
       69 GETUPVAL                         R4 0
       70 GETTABLEKS                       R3 R4 K7 ["assetSubTypes"]
       72 GETUPVAL                         R5 4
       73 GETTABLEKS                       R4 R5 K9 ["Package"]
       75 CALL                             R2 2 1
       76 MOVE                             R1 R2
       77 JUMP                             ; [+8]
       78 GETUPVAL                         R3 3
       79 GETTABLEKS                       R2 R3 K5 ["categoryIsPackage"]
       81 GETUPVAL                         R4 0
       82 GETTABLEKS                       R3 R4 K6 ["categoryName"]
       84 CALL                             R2 1 1
       85 MOVE                             R1 R2
       86 GETUPVAL                         R3 5
       87 GETTABLEKS                       R2 R3 K12 ["constructAssetGameAssetIdUrl"]
       89 GETUPVAL                         R3 6
       90 GETUPVAL                         R5 0
       91 GETTABLEKS                       R4 R5 K13 ["assetTypeId"]
       93 MOVE                             R5 R1
       94 GETUPVAL                         R6 7
       95 CALL                             R2 4 1
       96 GETUPVAL                         R4 8
       97 GETTABLEKS                       R3 R4 K14 ["shouldDebugUrls"]
       99 CALL                             R3 0 1
      100 JUMPIFNOT                        R3 ; [+8]
      101 GETIMPORT                        R3 K16 [print]
      103 LOADK                            R4 K17 ["Dragging asset url %s"]
      104 MOVE                             R6 R2
      105 NAMECALL                         R4 R4 K18 ["format"]
      107 CALL                             R4 2 -1
      108 CALL                             R3 -1 0
      109 GETUPVAL                         R4 0
      110 GETTABLEKS                       R3 R4 K0 ["plugin"]
      112 DUPTABLE                         R5 K22 [{"Sender", "MimeType", "Data"}]
      113 LOADK                            R6 K23 ["LuaToolbox"]
      114 SETTABLEKS                       R6 R5 K19 ["Sender"]
      116 GETUPVAL                         R7 9
      117 JUMPIFNOT                        R7 ; [+2]
      118 LOADK                            R6 K24 ["text/x-roblox-asset-url"]
      119 JUMP                             ; [+1]
      120 LOADK                            R6 K25 ["text/plain"]
      121 SETTABLEKS                       R6 R5 K20 ["MimeType"]
      123 SETTABLEKS                       R2 R5 K21 ["Data"]
      125 NAMECALL                         R3 R3 K26 ["StartDrag"]
      127 CALL                             R3 2 0
      128 RETURN                           R0 0

PROTO_51:
        0 GETTABLEKS                       R1 R0 K0 ["assetId"]
        2 GETTABLEKS                       R2 R0 K1 ["assetName"]
        4 GETTABLEKS                       R3 R0 K2 ["assetTypeId"]
        6 GETIMPORT                        R5 K6 [Enum.AssetType.Plugin]
        8 GETTABLEKS                       R4 R5 K7 ["Value"]
       10 JUMPIFNOTEQ                      R3 R4 ; [+2]
       12 RETURN                           R0 0
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R4 R5 K8 ["shouldDebugWarnings"]
       16 CALL                             R4 0 1
       17 JUMPIFNOT                        R4 ; [+17]
       18 GETIMPORT                        R4 K10 [print]
       20 LOADK                            R5 K11 ["Inserting asset %s %s"]
       21 FASTCALL1                        TOSTRING R1 ; [+3]
       22 MOVE                             R8 R1
       23 GETIMPORT                        R7 K13 [tostring]
       25 CALL                             R7 1 1
       26 FASTCALL1                        TOSTRING R2 ; [+3]
       27 MOVE                             R9 R2
       28 GETIMPORT                        R8 K13 [tostring]
       30 CALL                             R8 1 1
       31 NAMECALL                         R5 R5 K14 ["format"]
       33 CALL                             R5 3 -1
       34 CALL                             R4 -1 0
       35 GETUPVAL                         R4 1
       36 JUMPIFNOT                        R4 ; [+14]
       37 GETUPVAL                         R4 2
       38 LOADK                            R6 K15 ["Before insert asset %s"]
       39 FASTCALL1                        TOSTRING R1 ; [+3]
       40 MOVE                             R9 R1
       41 GETIMPORT                        R8 K13 [tostring]
       43 CALL                             R8 1 1
       44 NAMECALL                         R6 R6 K14 ["format"]
       46 CALL                             R6 2 -1
       47 NAMECALL                         R4 R4 K16 ["SetWaypoint"]
       49 CALL                             R4 -1 0
       50 JUMP                             ; [+9]
       51 GETUPVAL                         R4 2
       52 LOADK                            R6 K17 ["Before insert asset %d"]
       53 MOVE                             R8 R1
       54 NAMECALL                         R6 R6 K14 ["format"]
       56 CALL                             R6 2 -1
       57 NAMECALL                         R4 R4 K16 ["SetWaypoint"]
       59 CALL                             R4 -1 0
       60 GETIMPORT                        R4 K19 [pcall]
       62 NEWCLOSURE                       R5 P0
       63 CAPTURE                          VAL R0
       64 CAPTURE                          UPVAL U3
       65 CAPTURE                          UPVAL U4
       66 CAPTURE                          UPVAL U5
       67 CAPTURE                          UPVAL U6
       68 CAPTURE                          UPVAL U7
       69 CAPTURE                          VAL R1
       70 CAPTURE                          VAL R2
       71 CAPTURE                          UPVAL U0
       72 CAPTURE                          UPVAL U8
       73 CALL                             R4 1 2
       74 JUMPIFNOT                        R4 ; [+5]
       75 GETUPVAL                         R6 9
       76 MOVE                             R7 R0
       77 LOADB                            R8 1
       78 CALL                             R6 2 0
       79 RETURN                           R4 1
       80 GETUPVAL                         R6 1
       81 JUMPIFNOT                        R6 ; [+15]
       82 GETIMPORT                        R6 K21 [warn]
       84 LOADK                            R7 K22 ["Toolbox failed to drag asset %s %s: %s"]
       85 FASTCALL1                        TOSTRING R1 ; [+3]
       86 MOVE                             R10 R1
       87 GETIMPORT                        R9 K13 [tostring]
       89 CALL                             R9 1 1
       90 MOVE                             R10 R2
       91 ORK                              R11 R5 K23 [""]
       92 NAMECALL                         R7 R7 K14 ["format"]
       94 CALL                             R7 4 -1
       95 CALL                             R6 -1 0
       96 RETURN                           R4 1
       97 GETIMPORT                        R6 K21 [warn]
       99 LOADK                            R7 K24 ["Toolbox failed to drag asset %d %s: %s"]
      100 MOVE                             R9 R1
      101 MOVE                             R10 R2
      102 ORK                              R11 R5 K23 [""]
      103 NAMECALL                         R7 R7 K14 ["format"]
      105 CALL                             R7 4 -1
      106 CALL                             R6 -1 0
      107 RETURN                           R4 1

PROTO_52:
        0 GETIMPORT                        R2 K1 [ipairs]
        2 MOVE                             R3 R1
        3 CALL                             R2 1 3
        4 FORGPREP_INEXT                   R2
        5 GETUPVAL                         R7 0
        6 JUMPIFNOT                        R7 ; [+15]
        7 GETUPVAL                         R7 1
        8 JUMPIFNOTEQKN                    R7 K2 [0] ; [+2]
       10 JUMP                             ; [+11]
       11 LOADN                            R7 1
       12 JUMPIFNOTLT                      R7 R5 ; [+9]
       14 SUBK                             R8 R5 K3 [1]
       15 GETUPVAL                         R9 1
       16 MOD                              R7 R8 R9
       17 JUMPIFNOTEQKN                    R7 K2 [0] ; [+4]
       19 GETIMPORT                        R7 K6 [task.wait]
       21 CALL                             R7 0 0
       22 SETTABLEKS                       R0 R6 K7 ["SourceAssetId"]
       24 GETUPVAL                         R7 2
       25 MOVE                             R8 R6
       26 MOVE                             R9 R0
       27 CALL                             R7 2 0
       28 FORGLOOP                         R2 2 [inext] ; [-24]
       30 RETURN                           R0 0

PROTO_53:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["_localization"]
        3 RETURN                           R0 0

PROTO_54:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["reportDragInsertFinished"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_55:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R2
        3 CALL                             R3 2 0
        4 GETIMPORT                        R3 K1 [spawn]
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          VAL R0
        9 CAPTURE                          VAL R1
       10 CALL                             R3 1 0
       11 GETIMPORT                        R4 K5 [Enum.AssetType.MeshPart]
       13 GETTABLEKS                       R3 R4 K6 ["Value"]
       15 JUMPIFNOTEQ                      R1 R3 ; [+9]
       17 GETUPVAL                         R3 2
       18 MOVE                             R4 R0
       19 MOVE                             R5 R2
       20 GETUPVAL                         R7 3
       21 GETTABLEKS                       R6 R7 K7 ["_localization"]
       23 CALL                             R3 3 1
       24 RETURN                           R3 1
       25 GETUPVAL                         R3 4
       26 SETTABLEKS                       R2 R3 K8 ["instances"]
       28 RETURN                           R2 1

PROTO_56:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+109]
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+26]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K0 ["assetTypeId"]
        7 GETIMPORT                        R2 K4 [Enum.AssetType.Audio]
        9 GETTABLEKS                       R1 R2 K5 ["Value"]
       11 JUMPIFNOTEQ                      R0 R1 ; [+18]
       13 GETUPVAL                         R0 2
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R1 R2 K6 ["assetName"]
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R2 R3 K7 ["assetId"]
       20 GETUPVAL                         R4 0
       21 GETTABLEKS                       R3 R4 K0 ["assetTypeId"]
       23 GETUPVAL                         R5 0
       24 GETTABLEKS                       R4 R5 K8 ["insertToolPromise"]
       26 GETUPVAL                         R6 0
       27 GETTABLEKS                       R5 R6 K9 ["localization"]
       29 CALL                             R0 5 0
       30 GETUPVAL                         R1 0
       31 GETTABLEKS                       R0 R1 K6 ["assetName"]
       33 GETUPVAL                         R2 0
       34 GETTABLEKS                       R1 R2 K10 ["instances"]
       36 GETUPVAL                         R3 0
       37 GETTABLEKS                       R2 R3 K8 ["insertToolPromise"]
       39 GETUPVAL                         R4 3
       40 GETTABLEKS                       R3 R4 K11 ["new"]
       42 NEWCLOSURE                       R4 P0
       43 CAPTURE                          VAL R1
       44 CAPTURE                          UPVAL U4
       45 CAPTURE                          UPVAL U5
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R0
       48 CAPTURE                          UPVAL U6
       49 CALL                             R3 1 1
       50 GETUPVAL                         R0 7
       51 CALL                             R0 0 1
       52 JUMPIFNOT                        R0 ; [+20]
       53 GETUPVAL                         R1 0
       54 GETTABLEKS                       R0 R1 K12 ["options"]
       56 JUMPIFNOT                        R0 ; [+16]
       57 GETUPVAL                         R2 0
       58 GETTABLEKS                       R1 R2 K12 ["options"]
       60 GETTABLEKS                       R0 R1 K13 ["shouldSandboxAsset"]
       62 JUMPIFNOT                        R0 ; [+10]
       63 GETUPVAL                         R1 8
       64 GETTABLEKS                       R0 R1 K14 ["SetCapabilitiesAndSandboxForModel"]
       66 GETUPVAL                         R2 0
       67 GETTABLEKS                       R1 R2 K10 ["instances"]
       69 GETUPVAL                         R3 0
       70 GETTABLEKS                       R2 R3 K7 ["assetId"]
       72 CALL                             R0 2 0
       73 GETUPVAL                         R1 9
       74 GETTABLEKS                       R0 R1 K15 ["contains"]
       76 GETUPVAL                         R2 0
       77 GETTABLEKS                       R1 R2 K16 ["assetSubTypes"]
       79 GETUPVAL                         R3 9
       80 GETTABLEKS                       R2 R3 K17 ["MaterialPack"]
       82 CALL                             R0 2 1
       83 JUMPIFNOT                        R0 ; [+11]
       84 GETUPVAL                         R3 0
       85 GETTABLEKS                       R0 R3 K10 ["instances"]
       87 LOADNIL                          R1
       88 LOADNIL                          R2
       89 FORGPREP                         R0
       90 GETUPVAL                         R5 10
       91 SETTABLEKS                       R5 R4 K18 ["Parent"]
       93 FORGLOOP                         R0 2 ; [-4]
       95 GETUPVAL                         R1 0
       96 GETTABLEKS                       R0 R1 K19 ["onSuccess"]
       98 JUMPIFNOT                        R0 ; [+10]
       99 GETUPVAL                         R1 0
      100 GETTABLEKS                       R0 R1 K19 ["onSuccess"]
      102 GETUPVAL                         R2 0
      103 GETTABLEKS                       R1 R2 K7 ["assetId"]
      105 GETUPVAL                         R3 0
      106 GETTABLEKS                       R2 R3 K10 ["instances"]
      108 CALL                             R0 2 0
      109 LOADNIL                          R0
      110 SETUPVAL                         R0 0
      111 RETURN                           R0 0

PROTO_57:
        0 GETIMPORT                        R0 K1 [spawn]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 CAPTURE                          UPVAL U6
       10 CAPTURE                          UPVAL U7
       11 CAPTURE                          UPVAL U8
       12 CAPTURE                          UPVAL U9
       13 CAPTURE                          UPVAL U10
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_58:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 SETTABLEKS                       R1 R0 K0 ["ProcessAssetInsertionDrag"]
        8 NEWCLOSURE                       R1 P1
        9 CAPTURE                          UPVAL U4
       10 CAPTURE                          UPVAL U5
       11 CAPTURE                          UPVAL U6
       12 CAPTURE                          UPVAL U7
       13 CAPTURE                          UPVAL U8
       14 CAPTURE                          UPVAL U9
       15 CAPTURE                          UPVAL U10
       16 CAPTURE                          UPVAL U11
       17 CAPTURE                          UPVAL U12
       18 CAPTURE                          UPVAL U13
       19 CAPTURE                          UPVAL U14
       20 SETTABLEKS                       R1 R0 K1 ["ProcessAssetInsertionDrop"]
       22 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R5 R0 K5 ["Src"]
       13 GETTABLEKS                       R4 R5 K6 ["Util"]
       15 GETTABLEKS                       R3 R4 K7 ["Analytics"]
       17 GETTABLEKS                       R2 R3 K7 ["Analytics"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K4 [require]
       22 GETTABLEKS                       R5 R0 K5 ["Src"]
       24 GETTABLEKS                       R4 R5 K6 ["Util"]
       26 GETTABLEKS                       R3 R4 K8 ["DebugFlags"]
       28 CALL                             R2 1 1
       29 GETIMPORT                        R3 K4 [require]
       31 GETTABLEKS                       R6 R0 K5 ["Src"]
       33 GETTABLEKS                       R5 R6 K6 ["Util"]
       35 GETTABLEKS                       R4 R5 K9 ["fastMoveTo"]
       37 CALL                             R3 1 1
       38 GETIMPORT                        R4 K4 [require]
       40 GETTABLEKS                       R7 R0 K5 ["Src"]
       42 GETTABLEKS                       R6 R7 K6 ["Util"]
       44 GETTABLEKS                       R5 R6 K10 ["InsertToolPromise"]
       46 CALL                             R4 1 1
       47 GETIMPORT                        R5 K4 [require]
       49 GETTABLEKS                       R8 R0 K5 ["Src"]
       51 GETTABLEKS                       R7 R8 K6 ["Util"]
       53 GETTABLEKS                       R6 R7 K11 ["Urls"]
       55 CALL                             R5 1 1
       56 GETIMPORT                        R6 K4 [require]
       58 GETTABLEKS                       R10 R0 K5 ["Src"]
       60 GETTABLEKS                       R9 R10 K6 ["Util"]
       62 GETTABLEKS                       R8 R9 K12 ["Inserts"]
       64 GETTABLEKS                       R7 R8 K13 ["SandboxAsset"]
       66 CALL                             R6 1 1
       67 GETTABLEKS                       R7 R0 K14 ["Packages"]
       69 GETIMPORT                        R8 K4 [require]
       71 GETTABLEKS                       R9 R7 K15 ["Framework"]
       73 CALL                             R8 1 1
       74 GETTABLEKS                       R10 R8 K6 ["Util"]
       76 GETTABLEKS                       R9 R10 K16 ["Promise"]
       78 GETIMPORT                        R10 K4 [require]
       80 GETTABLEKS                       R13 R0 K5 ["Src"]
       82 GETTABLEKS                       R12 R13 K17 ["Types"]
       84 GETTABLEKS                       R11 R12 K18 ["Category"]
       86 CALL                             R10 1 1
       87 GETIMPORT                        R11 K4 [require]
       89 GETTABLEKS                       R14 R0 K5 ["Src"]
       91 GETTABLEKS                       R13 R14 K17 ["Types"]
       93 GETTABLEKS                       R12 R13 K19 ["AssetSubTypes"]
       95 CALL                             R11 1 1
       96 GETIMPORT                        R13 K4 [require]
       98 GETTABLEKS                       R17 R0 K5 ["Src"]
      100 GETTABLEKS                       R16 R17 K6 ["Util"]
      102 GETTABLEKS                       R15 R16 K20 ["Permissions"]
      104 GETTABLEKS                       R14 R15 K21 ["Constants"]
      106 CALL                             R13 1 1
      107 GETTABLEKS                       R12 R13 K22 ["webKeys"]
      109 GETIMPORT                        R13 K4 [require]
      111 GETTABLEKS                       R17 R0 K5 ["Src"]
      113 GETTABLEKS                       R16 R17 K6 ["Util"]
      115 GETTABLEKS                       R15 R16 K23 ["SharedFlags"]
      117 GETTABLEKS                       R14 R15 K24 ["getFFlagToolboxUseAssetDependencyGrantEvent"]
      119 CALL                             R13 1 1
      120 GETIMPORT                        R14 K4 [require]
      122 GETTABLEKS                       R18 R0 K5 ["Src"]
      124 GETTABLEKS                       R17 R18 K6 ["Util"]
      126 GETTABLEKS                       R16 R17 K23 ["SharedFlags"]
      128 GETTABLEKS                       R15 R16 K25 ["getFIntToolboxAssetDependencyGrantEventTimeout"]
      130 CALL                             R14 1 1
      131 GETIMPORT                        R15 K4 [require]
      133 GETTABLEKS                       R19 R0 K5 ["Src"]
      135 GETTABLEKS                       R18 R19 K6 ["Util"]
      137 GETTABLEKS                       R17 R18 K23 ["SharedFlags"]
      139 GETTABLEKS                       R16 R17 K26 ["getFFlagToolboxCapabilities"]
      141 CALL                             R15 1 1
      142 GETIMPORT                        R16 K28 [game]
      144 LOADK                            R18 K29 ["ToolboxEnableAudioGrantDialog"]
      145 NAMECALL                         R16 R16 K30 ["GetFastFlag"]
      147 CALL                             R16 2 1
      148 GETIMPORT                        R17 K28 [game]
      150 LOADK                            R19 K31 ["ToolboxUnifyModelPackageInsertion2"]
      151 LOADB                            R20 0
      152 NAMECALL                         R17 R17 K32 ["DefineFastFlag"]
      154 CALL                             R17 3 1
      155 GETIMPORT                        R18 K28 [game]
      157 LOADK                            R20 K33 ["ToolboxSetMarketplaceModelsAsPackagesForIXP3"]
      158 NAMECALL                         R18 R18 K30 ["GetFastFlag"]
      160 CALL                             R18 2 1
      161 GETIMPORT                        R19 K28 [game]
      163 LOADK                            R21 K34 ["ToolboxSetMarketplaceModelsAsPackagesForAll"]
      164 NAMECALL                         R19 R19 K30 ["GetFastFlag"]
      166 CALL                             R19 2 1
      167 GETIMPORT                        R20 K28 [game]
      169 LOADK                            R22 K35 ["ToolboxDeleteTempModelFix"]
      170 NAMECALL                         R20 R20 K30 ["GetFastFlag"]
      172 CALL                             R20 2 1
      173 GETIMPORT                        R21 K28 [game]
      175 LOADK                            R23 K36 ["ToolboxVideoUsePermissionInsertion"]
      176 NAMECALL                         R21 R21 K30 ["GetFastFlag"]
      178 CALL                             R21 2 1
      179 GETIMPORT                        R22 K28 [game]
      181 LOADK                            R24 K37 ["ToolboxVideoTestUseLocalAudioFile"]
      182 NAMECALL                         R22 R22 K30 ["GetFastFlag"]
      184 CALL                             R22 2 1
      185 GETIMPORT                        R23 K28 [game]
      187 LOADK                            R25 K38 ["ToolboxYieldInsertPerInstanceModulus"]
      188 NAMECALL                         R23 R23 K39 ["GetFastInt"]
      190 CALL                             R23 2 1
      191 GETIMPORT                        R24 K28 [game]
      193 LOADK                            R26 K40 ["ToolboxYieldWhenInserting"]
      194 NAMECALL                         R24 R24 K30 ["GetFastFlag"]
      196 CALL                             R24 2 1
      197 GETIMPORT                        R25 K28 [game]
      199 LOADK                            R27 K41 ["ToolboxRemoveOldWarning"]
      200 LOADB                            R28 0
      201 NAMECALL                         R25 R25 K32 ["DefineFastFlag"]
      203 CALL                             R25 3 1
      204 GETIMPORT                        R26 K4 [require]
      206 GETTABLEKS                       R29 R0 K5 ["Src"]
      208 GETTABLEKS                       R28 R29 K6 ["Util"]
      210 GETTABLEKS                       R27 R28 K42 ["ToolboxCommunication"]
      212 CALL                             R26 1 1
      213 GETIMPORT                        R27 K28 [game]
      215 LOADK                            R29 K43 ["ChangeHistoryService"]
      216 NAMECALL                         R27 R27 K44 ["GetService"]
      218 CALL                             R27 2 1
      219 GETIMPORT                        R28 K28 [game]
      221 LOADK                            R30 K45 ["InsertService"]
      222 NAMECALL                         R28 R28 K44 ["GetService"]
      224 CALL                             R28 2 1
      225 GETIMPORT                        R29 K28 [game]
      227 LOADK                            R31 K46 ["Selection"]
      228 NAMECALL                         R29 R29 K44 ["GetService"]
      230 CALL                             R29 2 1
      231 GETIMPORT                        R30 K28 [game]
      233 LOADK                            R32 K47 ["StarterPack"]
      234 NAMECALL                         R30 R30 K44 ["GetService"]
      236 CALL                             R30 2 1
      237 GETIMPORT                        R31 K28 [game]
      239 LOADK                            R33 K48 ["Workspace"]
      240 NAMECALL                         R31 R31 K44 ["GetService"]
      242 CALL                             R31 2 1
      243 GETIMPORT                        R32 K28 [game]
      245 LOADK                            R34 K49 ["StudioService"]
      246 NAMECALL                         R32 R32 K44 ["GetService"]
      248 CALL                             R32 2 1
      249 GETIMPORT                        R33 K28 [game]
      251 LOADK                            R35 K50 ["Lighting"]
      252 NAMECALL                         R33 R33 K44 ["GetService"]
      254 CALL                             R33 2 1
      255 GETIMPORT                        R34 K28 [game]
      257 LOADK                            R36 K51 ["MaterialService"]
      258 NAMECALL                         R34 R34 K44 ["GetService"]
      260 CALL                             R34 2 1
      261 GETIMPORT                        R35 K28 [game]
      263 LOADK                            R37 K52 ["MarketplaceService"]
      264 NAMECALL                         R35 R35 K44 ["GetService"]
      266 CALL                             R35 2 1
      267 GETIMPORT                        R36 K28 [game]
      269 LOADK                            R38 K53 ["SoundService"]
      270 NAMECALL                         R36 R36 K44 ["GetService"]
      272 CALL                             R36 2 1
      273 GETIMPORT                        R37 K28 [game]
      275 LOADK                            R39 K54 ["AssetInsertionUseSpecialMimeTypeEnabled"]
      276 NAMECALL                         R37 R37 K55 ["GetEngineFeature"]
      278 CALL                             R37 2 1
      279 GETIMPORT                        R38 K4 [require]
      281 GETTABLEKS                       R41 R0 K5 ["Src"]
      283 GETTABLEKS                       R40 R41 K6 ["Util"]
      285 GETTABLEKS                       R39 R40 K56 ["parseAutoSetupAttributes"]
      287 CALL                             R38 1 1
      288 NEWTABLE                         R39 4 0
      290 GETIMPORT                        R40 K60 [Enum.RibbonTool.Move]
      292 LOADB                            R41 1
      293 SETTABLE                         R41 R39 R40
      294 GETIMPORT                        R40 K62 [Enum.RibbonTool.Rotate]
      296 LOADB                            R41 1
      297 SETTABLE                         R41 R39 R40
      298 GETIMPORT                        R40 K64 [Enum.RibbonTool.Scale]
      300 LOADB                            R41 1
      301 SETTABLE                         R41 R39 R40
      302 GETIMPORT                        R40 K66 [Enum.RibbonTool.Select]
      304 LOADB                            R41 1
      305 SETTABLE                         R41 R39 R40
      306 NEWTABLE                         R40 4 0
      308 GETIMPORT                        R42 K69 [Enum.AssetType.Model]
      310 GETTABLEKS                       R41 R42 K70 ["Value"]
      312 LOADB                            R42 1
      313 SETTABLE                         R42 R40 R41
      314 GETIMPORT                        R42 K72 [Enum.AssetType.Decal]
      316 GETTABLEKS                       R41 R42 K70 ["Value"]
      318 LOADB                            R42 1
      319 SETTABLE                         R42 R40 R41
      320 GETIMPORT                        R42 K74 [Enum.AssetType.MeshPart]
      322 GETTABLEKS                       R41 R42 K70 ["Value"]
      324 LOADB                            R42 1
      325 SETTABLE                         R42 R40 R41
      326 MOVE                             R42 R13
      327 CALL                             R42 0 1
      328 JUMPIFNOT                        R42 ; [+9]
      329 NEWTABLE                         R41 2 0
      331 LOADB                            R42 1
      332 SETTABLEKS                       R42 R41 K75 ["PublicAssetCannotBeGrantedTo"]
      334 LOADB                            R42 1
      335 SETTABLEKS                       R42 R41 K76 ["AssetTypeNotEnabled"]
      337 JUMP                             ; [+2]
      338 NEWTABLE                         R41 0 0
      340 DUPCLOSURE                       R42 K77 [PROTO_0]
      341 CAPTURE                          VAL R23
      342 DUPCLOSURE                       R43 K78 [PROTO_1]
      343 CAPTURE                          VAL R31
      344 DUPCLOSURE                       R44 K79 [PROTO_2]
      345 CAPTURE                          VAL R24
      346 CAPTURE                          VAL R23
      347 DUPCLOSURE                       R45 K80 [PROTO_4]
      348 CAPTURE                          VAL R12
      349 DUPCLOSURE                       R46 K81 [PROTO_5]
      350 CAPTURE                          VAL R35
      351 CAPTURE                          VAL R45
      352 DUPCLOSURE                       R47 K82 [PROTO_6]
      353 CAPTURE                          VAL R5
      354 CAPTURE                          VAL R2
      355 CAPTURE                          VAL R45
      356 CAPTURE                          VAL R36
      357 CAPTURE                          VAL R29
      358 CAPTURE                          VAL R31
      359 CAPTURE                          VAL R16
      360 CAPTURE                          VAL R46
      361 DUPCLOSURE                       R48 K83 [PROTO_7]
      362 CAPTURE                          VAL R24
      363 CAPTURE                          VAL R23
      364 CAPTURE                          VAL R1
      365 DUPCLOSURE                       R49 K84 [PROTO_11]
      366 CAPTURE                          VAL R9
      367 CAPTURE                          VAL R24
      368 CAPTURE                          VAL R23
      369 CAPTURE                          VAL R20
      370 DUPCLOSURE                       R50 K85 [PROTO_14]
      371 CAPTURE                          VAL R33
      372 CAPTURE                          VAL R11
      373 CAPTURE                          VAL R34
      374 CAPTURE                          VAL R4
      375 CAPTURE                          VAL R30
      376 CAPTURE                          VAL R2
      377 DUPCLOSURE                       R51 K86 [PROTO_15]
      378 CAPTURE                          VAL R3
      379 CAPTURE                          VAL R31
      380 DUPCLOSURE                       R52 K87 [PROTO_16]
      381 CAPTURE                          VAL R50
      382 CAPTURE                          VAL R51
      383 CAPTURE                          VAL R38
      384 CAPTURE                          VAL R15
      385 CAPTURE                          VAL R6
      386 CAPTURE                          VAL R26
      387 CAPTURE                          VAL R2
      388 CAPTURE                          VAL R29
      389 DUPCLOSURE                       R53 K88 [PROTO_19]
      390 CAPTURE                          VAL R31
      391 CAPTURE                          VAL R17
      392 CAPTURE                          VAL R19
      393 CAPTURE                          VAL R11
      394 CAPTURE                          VAL R10
      395 CAPTURE                          VAL R5
      396 CAPTURE                          VAL R2
      397 CAPTURE                          VAL R28
      398 CAPTURE                          VAL R44
      399 CAPTURE                          VAL R43
      400 CAPTURE                          VAL R48
      401 CAPTURE                          VAL R9
      402 CAPTURE                          VAL R24
      403 CAPTURE                          VAL R23
      404 CAPTURE                          VAL R20
      405 CAPTURE                          VAL R52
      406 CAPTURE                          VAL R15
      407 DUPCLOSURE                       R54 K89 [PROTO_21]
      408 CAPTURE                          VAL R5
      409 CAPTURE                          VAL R2
      410 CAPTURE                          VAL R29
      411 CAPTURE                          VAL R31
      412 DUPCLOSURE                       R55 K90 [PROTO_23]
      413 CAPTURE                          VAL R5
      414 CAPTURE                          VAL R2
      415 CAPTURE                          VAL R28
      416 CAPTURE                          VAL R29
      417 CAPTURE                          VAL R31
      418 LOADNIL                          R56
      419 JUMPIF                           R21 ; [+6]
      420 DUPCLOSURE                       R56 K91 [PROTO_24]
      421 CAPTURE                          VAL R5
      422 CAPTURE                          VAL R2
      423 CAPTURE                          VAL R29
      424 CAPTURE                          VAL R31
      425 JUMP                             ; [+6]
      426 DUPCLOSURE                       R56 K92 [PROTO_25]
      427 CAPTURE                          VAL R5
      428 CAPTURE                          VAL R2
      429 CAPTURE                          VAL R45
      430 CAPTURE                          VAL R29
      431 CAPTURE                          VAL R31
      432 DUPCLOSURE                       R57 K93 [PROTO_27]
      433 DUPCLOSURE                       R58 K94 [PROTO_29]
      434 CAPTURE                          VAL R2
      435 CAPTURE                          VAL R32
      436 DUPCLOSURE                       R59 K95 [PROTO_30]
      437 CAPTURE                          VAL R2
      438 NEWCLOSURE                       R60 P19
      439 CAPTURE                          VAL R11
      440 CAPTURE                          VAL R10
      441 CAPTURE                          VAL R19
      442 CAPTURE                          VAL R18
      443 CAPTURE                          VAL R17
      444 CAPTURE                          VAL R55
      445 CAPTURE                          VAL R47
      446 CAPTURE                          VAL R54
      447 CAPTURE                          VAL R58
      448 CAPTURE                          VAL R21
      449 CAPTURE                          REF R56
      450 CAPTURE                          VAL R57
      451 CAPTURE                          VAL R53
      452 CAPTURE                          VAL R15
      453 DUPCLOSURE                       R61 K96 [PROTO_32]
      454 CAPTURE                          VAL R1
      455 CAPTURE                          VAL R59
      456 DUPTABLE                         R62 K101 [{"_localization", "registerLocalization", "registerProcessDragHandler", "tryInsert"}]
      457 LOADNIL                          R63
      458 SETTABLEKS                       R63 R62 K97 ["_localization"]
      460 LOADNIL                          R63
      461 SETTABLEKS                       R63 R62 K98 ["registerLocalization"]
      463 LOADNIL                          R63
      464 SETTABLEKS                       R63 R62 K99 ["registerProcessDragHandler"]
      466 LOADNIL                          R63
      467 SETTABLEKS                       R63 R62 K100 ["tryInsert"]
      469 LOADNIL                          R63
      470 MOVE                             R64 R15
      471 CALL                             R64 0 1
      472 JUMPIFNOT                        R64 ; [+4]
      473 NEWCLOSURE                       R64 P21
      474 CAPTURE                          REF R63
      475 SETTABLEKS                       R64 R62 K102 ["onlyForTests_setActiveDraggingState"]
      477 MOVE                             R64 R13
      478 CALL                             R64 0 1
      479 JUMPIF                           R64 ; [+3]
      480 DUPCLOSURE                       R64 K103 [PROTO_34]
      481 SETGLOBAL                        R64 K104 ["didBatchGrantFail_DEPRECATED"]
      483 MOVE                             R64 R13
      484 CALL                             R64 0 1
      485 JUMPIFNOT                        R64 ; [+3]
      486 DUPCLOSURE                       R64 K105 [PROTO_35]
      487 SETGLOBAL                        R64 K106 ["didGrantFailForAssetId"]
      489 DUPCLOSURE                       R64 K107 [PROTO_36]
      490 SETTABLEKS                       R64 R62 K108 ["getGameId"]
      492 MOVE                             R64 R13
      493 CALL                             R64 0 1
      494 JUMPIF                           R64 ; [+6]
      495 DUPCLOSURE                       R64 K109 [PROTO_39]
      496 CAPTURE                          VAL R40
      497 CAPTURE                          VAL R62
      498 CAPTURE                          VAL R25
      499 SETTABLEKS                       R64 R62 K110 ["tryInsertWithBatchGrantPermissions_DEPRECATED"]
      501 MOVE                             R64 R13
      502 CALL                             R64 0 1
      503 JUMPIFNOT                        R64 ; [+7]
      504 DUPCLOSURE                       R64 K111 [PROTO_47]
      505 CAPTURE                          VAL R62
      506 CAPTURE                          VAL R40
      507 CAPTURE                          VAL R14
      508 CAPTURE                          VAL R41
      509 SETTABLEKS                       R64 R62 K112 ["tryInsertAfterPermissionsGranted"]
      511 NEWCLOSURE                       R64 P27
      512 CAPTURE                          VAL R39
      513 CAPTURE                          REF R63
      514 CAPTURE                          VAL R16
      515 CAPTURE                          VAL R62
      516 CAPTURE                          VAL R15
      517 SETTABLEKS                       R64 R62 K100 ["tryInsert"]
      519 DUPCLOSURE                       R64 K113 [PROTO_49]
      520 CAPTURE                          VAL R2
      521 CAPTURE                          VAL R22
      522 CAPTURE                          VAL R27
      523 CAPTURE                          VAL R62
      524 CAPTURE                          VAL R60
      525 CAPTURE                          VAL R61
      526 SETTABLEKS                       R64 R62 K114 ["doInsertAsset"]
      528 DUPCLOSURE                       R64 K115 [PROTO_51]
      529 CAPTURE                          VAL R2
      530 CAPTURE                          VAL R22
      531 CAPTURE                          VAL R27
      532 CAPTURE                          VAL R19
      533 CAPTURE                          VAL R18
      534 CAPTURE                          VAL R10
      535 CAPTURE                          VAL R11
      536 CAPTURE                          VAL R5
      537 CAPTURE                          VAL R37
      538 CAPTURE                          VAL R61
      539 SETTABLEKS                       R64 R62 K116 ["doDragInsertAsset"]
      541 DUPCLOSURE                       R64 K117 [PROTO_52]
      542 CAPTURE                          VAL R24
      543 CAPTURE                          VAL R23
      544 CAPTURE                          VAL R44
      545 DUPCLOSURE                       R65 K118 [PROTO_53]
      546 CAPTURE                          VAL R62
      547 SETTABLEKS                       R65 R62 K98 ["registerLocalization"]
      549 NEWCLOSURE                       R65 P32
      550 CAPTURE                          VAL R64
      551 CAPTURE                          VAL R1
      552 CAPTURE                          VAL R48
      553 CAPTURE                          VAL R62
      554 CAPTURE                          REF R63
      555 CAPTURE                          VAL R16
      556 CAPTURE                          VAL R46
      557 CAPTURE                          VAL R9
      558 CAPTURE                          VAL R24
      559 CAPTURE                          VAL R23
      560 CAPTURE                          VAL R20
      561 CAPTURE                          VAL R15
      562 CAPTURE                          VAL R6
      563 CAPTURE                          VAL R11
      564 CAPTURE                          VAL R34
      565 SETTABLEKS                       R65 R62 K99 ["registerProcessDragHandler"]
      567 CLOSEUPVALS                      R56
      568 RETURN                           R62 1
