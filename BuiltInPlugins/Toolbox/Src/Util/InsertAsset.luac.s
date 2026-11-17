PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["getTabKeyForCategoryName"]
        3 GETTABLEKS                       R4 R0 K1 ["categoryName"]
        5 CALL                             R3 1 1
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K2 ["MARKETPLACE_KEY"]
        9 JUMPIFNOTEQ                      R3 R4 ; [+3]
       11 LOADB                            R3 0
       12 RETURN                           R3 1
       13 GETTABLEKS                       R3 R0 K3 ["creator"]
       15 JUMPIFEQKNIL                     R3 ; [+7]
       17 GETUPVAL                         R4 1
       18 GETTABLEKS                       R4 R4 K4 ["getClientCreatorType"]
       20 MOVE                             R5 R3
       21 CALL                             R4 1 1
       22 JUMP                             ; [+1]
       23 LOADNIL                          R4
       24 JUMPIFEQKNIL                     R4 ; [+11]
       26 GETUPVAL                         R5 2
       27 MOVE                             R6 R4
       28 GETTABLEKS                       R7 R3 K5 ["Id"]
       30 MOVE                             R8 R1
       31 MOVE                             R9 R2
       32 CALL                             R5 4 1
       33 JUMPIFNOT                        R5 ; [+2]
       34 LOADB                            R5 0
       35 RETURN                           R5 1
       36 LOADB                            R5 1
       37 RETURN                           R5 1

PROTO_1:
        0 JUMPIF                           R0 ; [+2]
        1 LOADB                            R1 0
        2 RETURN                           R1 1
        3 LOADB                            R1 0
        4 GETTABLEKS                       R2 R0 K0 ["Type"]
        6 JUMPIFNOTEQKN                    R2 K1 [1] ; [+9]
        8 GETTABLEKS                       R2 R0 K2 ["Id"]
       10 GETUPVAL                         R3 0
       11 CALL                             R3 0 1
       12 JUMPIFEQ                         R2 R3 ; [+2]
       14 LOADB                            R1 0 +1
       15 LOADB                            R1 1
       16 RETURN                           R1 1

PROTO_2:
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

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["CurrentCamera"]
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
       41 GETTABLEKS                       R7 R0 K17 ["CFrame"]
       43 GETTABLEKS                       R7 R7 K18 ["p"]
       45 GETTABLEKS                       R9 R2 K11 ["Direction"]
       47 MULK                             R8 R9 K19 [64]
       48 ADD                              R6 R7 R8
       49 RETURN                           R6 1

PROTO_4:
        0 JUMPIFNOT                        R0 ; [+37]
        1 JUMPIFNOT                        R1 ; [+36]
        2 LOADK                            R4 K0 ["Folder"]
        3 NAMECALL                         R2 R0 K1 ["IsA"]
        5 CALL                             R2 2 1
        6 JUMPIFNOT                        R2 ; [+31]
        7 GETIMPORT                        R2 K3 [ipairs]
        9 NAMECALL                         R3 R0 K4 ["GetChildren"]
       11 CALL                             R3 1 -1
       12 CALL                             R2 -1 3
       13 FORGPREP_INEXT                   R2
       14 GETUPVAL                         R7 0
       15 JUMPIFNOTEQKN                    R7 K5 [0] ; [+2]
       17 JUMP                             ; [+11]
       18 LOADN                            R7 1
       19 JUMPIFNOTLT                      R7 R5 ; [+9]
       21 SUBK                             R8 R5 K6 [1]
       22 GETUPVAL                         R9 0
       23 MOD                              R7 R8 R9
       24 JUMPIFNOTEQKN                    R7 K5 [0] ; [+4]
       26 GETIMPORT                        R7 K9 [task.wait]
       28 CALL                             R7 0 0
       29 LOADK                            R9 K10 ["Model"]
       30 NAMECALL                         R7 R6 K1 ["IsA"]
       32 CALL                             R7 2 1
       33 JUMPIFNOT                        R7 ; [+2]
       34 SETTABLEKS                       R1 R6 K11 ["SourceAssetId"]
       36 FORGLOOP                         R2 2 [inext] ; [-23]
       38 RETURN                           R0 0

PROTO_5:
        0 RETURN                           R0 1

PROTO_6:
        0 GETIMPORT                        R2 K1 [game]
        2 GETTABLEKS                       R2 R2 K2 ["GameId"]
        4 JUMPIFNOTEQKN                    R2 K3 [0] ; [+2]
        6 RETURN                           R0 0
        7 DUPTABLE                         R2 K5 [{"requests"}]
        8 NEWTABLE                         R3 0 1
       10 DUPTABLE                         R4 K9 [{"action", "subjectId", "subjectType"}]
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R5 R5 K10 ["UseAction"]
       14 SETTABLEKS                       R5 R4 K6 ["action"]
       16 GETIMPORT                        R5 K1 [game]
       18 GETTABLEKS                       R5 R5 K2 ["GameId"]
       20 SETTABLEKS                       R5 R4 K7 ["subjectId"]
       22 GETUPVAL                         R5 0
       23 GETTABLEKS                       R5 R5 K11 ["Universe"]
       25 SETTABLEKS                       R5 R4 K8 ["subjectType"]
       27 SETLIST                          R3 R4 1 [1]
       29 SETTABLEKS                       R3 R2 K4 ["requests"]
       31 MOVE                             R5 R0
       32 MOVE                             R6 R2
       33 NAMECALL                         R3 R1 K12 ["grantAssetPermissionWithTimeout"]
       35 CALL                             R3 3 1
       36 DUPCLOSURE                       R5 K13 [PROTO_5]
       37 NAMECALL                         R3 R3 K14 ["catch"]
       39 CALL                             R3 2 1
       40 NAMECALL                         R3 R3 K15 ["await"]
       42 CALL                             R3 1 -1
       43 RETURN                           R3 -1

PROTO_7:
        0 GETIMPORT                        R6 K1 [game]
        2 GETTABLEKS                       R6 R6 K2 ["GameId"]
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
       20 GETIMPORT                        R7 K12 [Enum.AssetType.Audio]
       22 GETTABLEKS                       R7 R7 K13 ["Value"]
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
       56 GETTABLEKS                       R9 R8 K25 ["Body"]
       58 GETTABLEKS                       R9 R9 K26 ["Error"]
       60 JUMPIFEQKNIL                     R9 ; [+29]
       62 GETTABLEKS                       R9 R8 K25 ["Body"]
       64 GETTABLEKS                       R9 R9 K26 ["Error"]
       66 GETTABLEKS                       R9 R9 K27 ["Code"]
       68 JUMPIFEQKNIL                     R9 ; [+21]
       70 GETTABLEKS                       R9 R8 K25 ["Body"]
       72 GETTABLEKS                       R9 R9 K26 ["Error"]
       74 GETTABLEKS                       R9 R9 K27 ["Code"]
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

PROTO_8:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["constructAssetIdString"]
        3 MOVE                             R6 R0
        4 CALL                             R5 1 1
        5 GETUPVAL                         R6 1
        6 GETTABLEKS                       R6 R6 K1 ["shouldDebugUrls"]
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
       79 GETIMPORT                        R10 K21 [Enum.AssetType.Audio]
       81 GETTABLEKS                       R10 R10 K22 ["Value"]
       83 MOVE                             R11 R2
       84 MOVE                             R12 R3
       85 MOVE                             R13 R4
       86 CALL                             R7 6 0
       87 RETURN                           R6 1

PROTO_9:
        0 LOADB                            R3 0
        1 NEWTABLE                         R4 0 0
        3 GETIMPORT                        R5 K1 [ipairs]
        5 MOVE                             R6 R1
        6 CALL                             R5 1 3
        7 FORGPREP_INEXT                   R5
        8 GETUPVAL                         R10 0
        9 JUMPIFNOTEQKN                    R10 K2 [0] ; [+2]
       11 JUMP                             ; [+11]
       12 LOADN                            R10 1
       13 JUMPIFNOTLT                      R10 R8 ; [+9]
       15 SUBK                             R11 R8 K3 [1]
       16 GETUPVAL                         R12 0
       17 MOD                              R10 R11 R12
       18 JUMPIFNOTEQKN                    R10 K2 [0] ; [+4]
       20 GETIMPORT                        R10 K6 [task.wait]
       22 CALL                             R10 0 0
       23 LOADK                            R12 K7 ["MeshPart"]
       24 NAMECALL                         R10 R9 K8 ["IsA"]
       26 CALL                             R10 2 1
       27 JUMPIFNOT                        R10 ; [+19]
       28 NAMECALL                         R11 R9 K9 ["GetChildren"]
       30 CALL                             R11 1 1
       31 LENGTH                           R10 R11
       32 LOADN                            R11 0
       33 JUMPIFNOTLT                      R11 R10 ; [+5]
       35 NAMECALL                         R10 R9 K10 ["ClearAllChildren"]
       37 CALL                             R10 1 0
       38 LOADB                            R3 1
       39 FASTCALL2                        TABLE_INSERT R4 R9 ; [+5]
       41 MOVE                             R11 R4
       42 MOVE                             R12 R9
       43 GETIMPORT                        R10 K13 [table.insert]
       45 CALL                             R10 2 0
       46 JUMP                             ; [+4]
       47 NAMECALL                         R10 R9 K14 ["Destroy"]
       49 CALL                             R10 1 0
       50 LOADB                            R3 1
       51 FORGLOOP                         R5 2 [inext] ; [-44]
       53 JUMPIFNOT                        R3 ; [+5]
       54 GETUPVAL                         R5 1
       55 GETTABLEKS                       R5 R5 K15 ["reportMeshPartFiltered"]
       57 MOVE                             R6 R0
       58 CALL                             R5 1 0
       59 LENGTH                           R5 R4
       60 JUMPIFNOTEQKN                    R5 K2 [0] ; [+12]
       62 GETIMPORT                        R5 K17 [warn]
       64 LOADK                            R8 K18 ["Common"]
       65 LOADK                            R9 K19 ["InsertAborted"]
       66 DUPTABLE                         R10 K21 [{"assetId"}]
       67 SETTABLEKS                       R0 R10 K20 ["assetId"]
       69 NAMECALL                         R6 R2 K22 ["getText"]
       71 CALL                             R6 4 -1
       72 CALL                             R5 -1 0
       73 RETURN                           R4 1

PROTO_10:
        0 GETIMPORT                        R0 K1 [ipairs]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 3
        4 FORGPREP_INEXT                   R0
        5 GETUPVAL                         R5 1
        6 JUMPIFNOTEQKN                    R5 K2 [0] ; [+2]
        8 JUMP                             ; [+11]
        9 LOADN                            R5 1
       10 JUMPIFNOTLT                      R5 R3 ; [+9]
       12 SUBK                             R6 R3 K3 [1]
       13 GETUPVAL                         R7 1
       14 MOD                              R5 R6 R7
       15 JUMPIFNOTEQKN                    R5 K2 [0] ; [+4]
       17 GETIMPORT                        R5 K6 [task.wait]
       19 CALL                             R5 0 0
       20 NAMECALL                         R5 R4 K7 ["Destroy"]
       22 CALL                             R5 1 0
       23 FORGLOOP                         R0 2 [inext] ; [-19]
       25 GETUPVAL                         R0 2
       26 LOADB                            R1 0
       27 CALL                             R0 1 0
       28 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_12:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 NEWCLOSURE                       R3 P1
        5 CAPTURE                          VAL R0
        6 GETUPVAL                         R4 0
        7 JUMPIF                           R4 ; [+3]
        8 MOVE                             R4 R0
        9 LOADB                            R5 1
       10 CALL                             R4 1 0
       11 GETUPVAL                         R4 2
       12 JUMPIF                           R4 ; [+3]
       13 MOVE                             R4 R0
       14 LOADB                            R5 1
       15 CALL                             R4 1 0
       16 LOADN                            R4 0
       17 LOADN                            R5 0
       18 GETIMPORT                        R6 K1 [ipairs]
       20 GETUPVAL                         R7 0
       21 CALL                             R6 1 3
       22 FORGPREP_INEXT                   R6
       23 GETUPVAL                         R12 1
       24 JUMPIFNOTEQKN                    R12 K2 [0] ; [+2]
       26 JUMP                             ; [+11]
       27 LOADN                            R12 1
       28 JUMPIFNOTLT                      R12 R5 ; [+9]
       30 SUBK                             R13 R5 K3 [1]
       31 GETUPVAL                         R14 1
       32 MOD                              R12 R13 R14
       33 JUMPIFNOTEQKN                    R12 K2 [0] ; [+4]
       35 GETIMPORT                        R12 K6 [task.wait]
       37 CALL                             R12 0 0
       38 LOADK                            R13 K7 ["Script"]
       39 NAMECALL                         R11 R10 K8 ["IsA"]
       41 CALL                             R11 2 1
       42 JUMPIFNOT                        R11 ; [+1]
       43 ADDK                             R4 R4 K3 [1]
       44 GETIMPORT                        R11 K1 [ipairs]
       46 NAMECALL                         R12 R10 K9 ["GetDescendants"]
       48 CALL                             R12 1 -1
       49 CALL                             R11 -1 3
       50 FORGPREP_INEXT                   R11
       51 GETUPVAL                         R17 1
       52 JUMPIFNOTEQKN                    R17 K2 [0] ; [+2]
       54 JUMP                             ; [+11]
       55 LOADN                            R17 1
       56 JUMPIFNOTLT                      R17 R5 ; [+9]
       58 SUBK                             R18 R5 K3 [1]
       59 GETUPVAL                         R19 1
       60 MOD                              R17 R18 R19
       61 JUMPIFNOTEQKN                    R17 K2 [0] ; [+4]
       63 GETIMPORT                        R17 K6 [task.wait]
       65 CALL                             R17 0 0
       66 LOADK                            R18 K7 ["Script"]
       67 NAMECALL                         R16 R15 K8 ["IsA"]
       69 CALL                             R16 2 1
       70 JUMPIFNOT                        R16 ; [+1]
       71 ADDK                             R4 R4 K3 [1]
       72 ADDK                             R5 R5 K3 [1]
       73 FORGLOOP                         R11 2 [inext] ; [-23]
       75 ADDK                             R5 R5 K3 [1]
       76 FORGLOOP                         R6 2 [inext] ; [-54]
       78 LOADN                            R6 1
       79 JUMPIFNOTLT                      R4 R6 ; [+4]
       81 MOVE                             R6 R0
       82 LOADB                            R7 1
       83 CALL                             R6 1 0
       84 LOADN                            R6 1
       85 JUMPIFNOTLE                      R6 R4 ; [+15]
       87 GETUPVAL                         R6 2
       88 DUPTABLE                         R8 K14 [{"assetName", "numScripts", "cancel", "insert"}]
       89 GETUPVAL                         R9 3
       90 SETTABLEKS                       R9 R8 K10 ["assetName"]
       92 SETTABLEKS                       R4 R8 K11 ["numScripts"]
       94 SETTABLEKS                       R2 R8 K12 ["cancel"]
       96 SETTABLEKS                       R3 R8 K13 ["insert"]
       98 NAMECALL                         R6 R6 K15 ["promptScriptWarningAndWait"]
      100 CALL                             R6 2 0
      101 GETUPVAL                         R6 4
      102 JUMPIFNOT                        R6 ; [+3]
      103 MOVE                             R6 R0
      104 LOADB                            R7 1
      105 CALL                             R6 1 0
      106 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["new"]
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R2
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U2
        9 CALL                             R3 1 -1
       10 RETURN                           R3 -1

PROTO_14:
        0 GETIMPORT                        R0 K1 [game]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K2 ["ClassName"]
        5 NAMECALL                         R0 R0 K3 ["GetService"]
        7 CALL                             R0 2 1
        8 JUMPIFNOT                        R0 ; [+16]
        9 GETUPVAL                         R0 1
       10 GETTABLEKS                       R0 R0 K4 ["shouldDebugWarnings"]
       12 CALL                             R0 0 1
       13 JUMPIFNOT                        R0 ; [+10]
       14 GETIMPORT                        R0 K6 [warn]
       16 LOADK                            R1 K7 ["Attempted to insert unsupported service type: %*"]
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R3 R3 K2 ["ClassName"]
       20 NAMECALL                         R1 R1 K8 ["format"]
       22 CALL                             R1 2 1
       23 CALL                             R0 1 0
       24 RETURN                           R0 0
       25 GETUPVAL                         R0 0
       26 GETUPVAL                         R1 2
       27 SETTABLEKS                       R1 R0 K9 ["Parent"]
       29 GETUPVAL                         R0 0
       30 GETTABLEKS                       R0 R0 K9 ["Parent"]
       32 JUMPIF                           R0 ; [+4]
       33 GETUPVAL                         R0 0
       34 NAMECALL                         R0 R0 K10 ["Destroy"]
       36 CALL                             R0 1 0
       37 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+15]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["shouldDebugWarnings"]
        5 CALL                             R0 0 1
        6 JUMPIFNOT                        R0 ; [+10]
        7 GETIMPORT                        R0 K2 [warn]
        9 LOADK                            R1 K3 ["Attempted to insert unsupported instance type: %*"]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K4 ["ClassName"]
       13 NAMECALL                         R1 R1 K5 ["format"]
       15 CALL                             R1 2 1
       16 CALL                             R0 1 0
       17 RETURN                           R0 0

PROTO_16:
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
       18 JUMP                             ; [+59]
       19 GETUPVAL                         R10 1
       20 GETTABLEKS                       R10 R10 K6 ["contains"]
       22 MOVE                             R11 R3
       23 GETUPVAL                         R12 1
       24 GETTABLEKS                       R12 R12 K7 ["MaterialPack"]
       26 CALL                             R10 2 1
       27 JUMPIFNOT                        R10 ; [+4]
       28 GETUPVAL                         R10 2
       29 SETTABLEKS                       R10 R9 K5 ["Parent"]
       31 JUMP                             ; [+46]
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
       46 GETUPVAL                         R12 3
       47 GETTABLEKS                       R12 R12 K11 ["INSERT_TO_WORKSPACE"]
       49 JUMPIFNOTEQ                      R11 R12 ; [+3]
       51 MOVE                             R10 R1
       52 JUMP                             ; [+13]
       53 GETUPVAL                         R12 3
       54 GETTABLEKS                       R12 R12 K12 ["INSERT_TO_STARTER_PACK"]
       56 JUMPIFNOTEQ                      R11 R12 ; [+3]
       58 GETUPVAL                         R10 4
       59 JUMP                             ; [+6]
       60 GETUPVAL                         R12 3
       61 GETTABLEKS                       R12 R12 K13 ["INSERT_CANCELLED"]
       63 JUMPIFNOTEQ                      R11 R12 ; [+2]
       65 LOADNIL                          R10
       66 NEWCLOSURE                       R12 P0
       67 CAPTURE                          VAL R9
       68 CAPTURE                          UPVAL U5
       69 CAPTURE                          REF R10
       70 NEWCLOSURE                       R13 P1
       71 CAPTURE                          VAL R9
       72 CAPTURE                          UPVAL U5
       73 FASTPCALL                        xpcall 2 ; [+2]
       74 GETIMPORT                        R11 K15 [xpcall]
       76 CALL                             R11 2 0
       77 CLOSEUPVALS                      R10
       78 LENGTH                           R11 R4
       79 ADDK                             R10 R11 K16 [1]
       80 SETTABLE                         R9 R4 R10
       81 FORGLOOP                         R5 2 [inext] ; [-77]
       83 RETURN                           R0 0

PROTO_17:
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
       20 GETUPVAL                         R4 1
       21 GETTABLEKS                       R4 R4 K3 ["CurrentCamera"]
       23 GETTABLEKS                       R5 R4 K4 ["CFrame"]
       25 GETTABLEKS                       R7 R3 K2 ["Magnitude"]
       27 MULK                             R6 R7 K5 [1.2]
       28 GETTABLEKS                       R8 R5 K6 ["p"]
       30 GETTABLEKS                       R9 R2 K6 ["p"]
       32 SUB                              R7 R8 R9
       33 GETTABLEKS                       R7 R7 K7 ["unit"]
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

PROTO_18:
        0 NEWTABLE                         R10 0 0
        2 JUMPIFNOT                        R1 ; [+112]
        3 GETUPVAL                         R11 0
        4 MOVE                             R12 R2
        5 MOVE                             R13 R3
        6 MOVE                             R14 R4
        7 MOVE                             R15 R5
        8 MOVE                             R16 R10
        9 CALL                             R11 5 0
       10 GETUPVAL                         R11 1
       11 MOVE                             R12 R3
       12 MOVE                             R13 R6
       13 CALL                             R11 2 0
       14 GETUPVAL                         R11 2
       15 GETTABLEN                        R12 R4 1
       16 CALL                             R11 1 0
       17 LOADNIL                          R11
       18 GETUPVAL                         R12 3
       19 CALL                             R12 0 1
       20 JUMPIFNOT                        R12 ; [+35]
       21 GETUPVAL                         R12 4
       22 CALL                             R12 0 1
       23 JUMPIFNOT                        R12 ; [+32]
       24 GETUPVAL                         R12 5
       25 CALL                             R12 0 1
       26 JUMPIFNOT                        R12 ; [+27]
       27 MOVE                             R12 R7
       28 JUMPIFNOT                        R12 ; [+25]
       29 LOADB                            R12 0
       30 GETTABLEKS                       R13 R7 K0 ["shouldSandbox"]
       32 JUMPIFNOTEQKB                    R13 TRUE ; [+21]
       34 LOADB                            R12 0
       35 JUMPIFEQKNIL                     R4 ; [+18]
       37 JUMPIF                           R9 ; [+2]
       38 LOADB                            R13 0
       39 JUMP                             ; [+13]
       40 LOADB                            R13 0
       41 GETTABLEKS                       R14 R9 K1 ["Type"]
       43 JUMPIFNOTEQKN                    R14 K2 [1] ; [+9]
       45 GETTABLEKS                       R14 R9 K3 ["Id"]
       47 GETUPVAL                         R15 6
       48 CALL                             R15 0 1
       49 JUMPIFEQ                         R14 R15 ; [+2]
       51 LOADB                            R13 0 +1
       52 LOADB                            R13 1
       53 NOT                              R12 R13
       54 MOVE                             R11 R12
       55 JUMP                             ; [+31]
       56 GETUPVAL                         R12 4
       57 CALL                             R12 0 1
       58 JUMPIFNOT                        R12 ; [+16]
       59 GETUPVAL                         R12 5
       60 CALL                             R12 0 1
       61 JUMPIFNOT                        R12 ; [+11]
       62 MOVE                             R12 R7
       63 JUMPIFNOT                        R12 ; [+9]
       64 LOADB                            R12 0
       65 GETTABLEKS                       R13 R7 K0 ["shouldSandbox"]
       67 JUMPIFNOTEQKB                    R13 TRUE ; [+5]
       69 JUMPIFNOTEQKNIL                  R4 ; [+2]
       71 LOADB                            R12 0 +1
       72 LOADB                            R12 1
       73 MOVE                             R11 R12
       74 JUMP                             ; [+12]
       75 GETUPVAL                         R12 5
       76 CALL                             R12 0 1
       77 JUMPIFNOT                        R12 ; [+8]
       78 MOVE                             R12 R7
       79 JUMPIFNOT                        R12 ; [+6]
       80 GETTABLEKS                       R13 R7 K0 ["shouldSandbox"]
       82 JUMPIFEQKB                       R13 TRUE ; [+2]
       84 LOADB                            R12 0 +1
       85 LOADB                            R12 1
       86 MOVE                             R11 R12
       87 JUMPIFNOT                        R11 ; [+8]
       88 GETUPVAL                         R12 7
       89 GETTABLEKS                       R12 R12 K4 ["SetCapabilitiesAndSandboxForModel"]
       91 MOVE                             R13 R4
       92 MOVE                             R14 R0
       93 MOVE                             R15 R8
       94 CALL                             R12 3 0
       95 JUMP                             ; [+8]
       96 GETUPVAL                         R12 5
       97 CALL                             R12 0 1
       98 JUMPIF                           R12 ; [+5]
       99 JUMPIFEQKNIL                     R4 ; [+4]
      101 GETUPVAL                         R12 8
      102 MOVE                             R13 R4
      103 CALL                             R12 1 0
      104 GETUPVAL                         R12 9
      105 LOADK                            R14 K5 ["AssetInserted"]
      106 DUPTABLE                         R15 K8 [{"assetId", "assetInstance"}]
      107 SETTABLEKS                       R0 R15 K6 ["assetId"]
      109 SETTABLEKS                       R4 R15 K7 ["assetInstance"]
      111 NAMECALL                         R12 R12 K9 ["fire"]
      113 CALL                             R12 3 0
      114 JUMP                             ; [+12]
      115 GETUPVAL                         R11 10
      116 GETTABLEKS                       R11 R11 K10 ["shouldDebugWarnings"]
      118 CALL                             R11 0 1
      119 JUMPIFNOT                        R11 ; [+4]
      120 GETIMPORT                        R11 K12 [print]
      122 LOADK                            R12 K13 ["destroying temp model insert"]
      123 CALL                             R11 1 0
      124 NAMECALL                         R11 R3 K14 ["Destroy"]
      126 CALL                             R11 1 0
      127 GETUPVAL                         R11 11
      128 MOVE                             R13 R10
      129 NAMECALL                         R11 R11 K15 ["Set"]
      131 CALL                             R11 2 0
      132 RETURN                           R10 1

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["constructAssetIdString"]
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
       13 GETUPVAL                         R1 6
       14 GETTABLEKS                       R1 R1 K1 ["shouldDebugUrls"]
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
       33 GETUPVAL                         R1 6
       34 GETTABLEKS                       R1 R1 K1 ["shouldDebugUrls"]
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
       54 GETUPVAL                         R1 6
       55 GETTABLEKS                       R1 R1 K1 ["shouldDebugUrls"]
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

PROTO_20:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["shouldDebugWarnings"]
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
       28 GETUPVAL                         R9 9
       29 GETTABLEKS                       R9 R9 K7 ["capabilities"]
       31 JUMP                             ; [+1]
       32 LOADNIL                          R9
       33 GETUPVAL                         R11 8
       34 CALL                             R11 0 1
       35 JUMPIFNOT                        R11 ; [+4]
       36 GETUPVAL                         R10 9
       37 GETTABLEKS                       R10 R10 K8 ["plugin"]
       39 JUMP                             ; [+1]
       40 LOADNIL                          R10
       41 GETUPVAL                         R12 10
       42 CALL                             R12 0 1
       43 JUMPIFNOT                        R12 ; [+4]
       44 GETUPVAL                         R11 9
       45 GETTABLEKS                       R11 R11 K9 ["creator"]
       47 JUMP                             ; [+1]
       48 LOADNIL                          R11
       49 CALL                             R1 10 1
       50 RETURN                           R1 1

PROTO_21:
        0 GETUPVAL                         R10 0
        1 GETUPVAL                         R12 1
        2 JUMPIF                           R12 ; [+3]
        3 GETUPVAL                         R12 2
        4 JUMPIF                           R12 ; [+1]
        5 JUMPIFNOT                        R7 ; [+32]
        6 GETUPVAL                         R11 3
        7 GETTABLEKS                       R11 R11 K0 ["contains"]
        9 MOVE                             R12 R5
       10 GETUPVAL                         R13 3
       11 GETTABLEKS                       R13 R13 K1 ["Package"]
       13 CALL                             R11 2 1
       14 JUMPIF                           R11 ; [+24]
       15 JUMPIFEQKNIL                     R6 ; [+7]
       17 GETUPVAL                         R11 4
       18 GETTABLEKS                       R11 R11 K2 ["categoryIsPackage"]
       20 MOVE                             R12 R6
       21 CALL                             R11 1 1
       22 JUMPIF                           R11 ; [+16]
       23 MOVE                             R11 R7
       24 JUMPIFNOT                        R11 ; [+14]
       25 GETUPVAL                         R12 4
       26 GETTABLEKS                       R12 R12 K3 ["getCategoryByName"]
       28 MOVE                             R13 R6
       29 CALL                             R12 1 1
       30 GETUPVAL                         R13 4
       31 GETTABLEKS                       R13 R13 K4 ["FREE_MODELS"]
       33 JUMPIFEQ                         R12 R13 ; [+2]
       35 LOADB                            R11 0 +1
       36 LOADB                            R11 1
       37 JUMP                             ; [+1]
       38 LOADNIL                          R11
       39 LOADNIL                          R12
       40 NEWCLOSURE                       R14 P0
       41 CAPTURE                          UPVAL U5
       42 CAPTURE                          VAL R0
       43 CAPTURE                          UPVAL U1
       44 CAPTURE                          UPVAL U2
       45 CAPTURE                          VAL R7
       46 CAPTURE                          VAL R11
       47 CAPTURE                          UPVAL U6
       48 CAPTURE                          REF R12
       49 CAPTURE                          UPVAL U7
       50 FASTPCALL                        pcall 1 ; [+2]
       51 GETIMPORT                        R13 K6 [pcall]
       53 CALL                             R13 1 2
       54 JUMPIFNOT                        R13 ; [+83]
       55 JUMPIFNOT                        R12 ; [+82]
       56 GETUPVAL                         R15 1
       57 JUMPIF                           R15 ; [+1]
       58 JUMPIFNOT                        R7 ; [+6]
       59 JUMPIFNOT                        R11 ; [+5]
       60 GETTABLEN                        R15 R12 1
       61 JUMPIFNOT                        R15 ; [+3]
       62 GETTABLEN                        R15 R12 1
       63 SETTABLEKS                       R0 R15 K7 ["SourceAssetId"]
       65 GETTABLEN                        R15 R12 1
       66 JUMPIFNOT                        R15 ; [+8]
       67 GETTABLEN                        R15 R12 1
       68 GETTABLEKS                       R15 R15 K7 ["SourceAssetId"]
       70 JUMPIFNOT                        R15 ; [+4]
       71 GETUPVAL                         R15 8
       72 GETTABLEN                        R16 R12 1
       73 MOVE                             R17 R0
       74 CALL                             R15 2 0
       75 MOVE                             R15 R8
       76 JUMPIFNOT                        R15 ; [+2]
       77 GETTABLEKS                       R15 R8 K8 ["positionOverride"]
       79 JUMPIFNOT                        R15 ; [+3]
       80 GETTABLEKS                       R16 R8 K8 ["positionOverride"]
       82 JUMP                             ; [+2]
       83 GETUPVAL                         R16 9
       84 CALL                             R16 0 1
       85 GETIMPORT                        R17 K11 [Instance.new]
       87 LOADK                            R18 K12 ["Model"]
       88 CALL                             R17 1 1
       89 LOADK                            R18 K13 ["ToolboxTemporaryInsertModel"]
       90 SETTABLEKS                       R18 R17 K14 ["Name"]
       92 SETTABLEKS                       R10 R17 K15 ["Parent"]
       94 GETIMPORT                        R18 K19 [Enum.AssetType.MeshPart]
       96 GETTABLEKS                       R18 R18 K20 ["Value"]
       98 JUMPIFNOTEQ                      R3 R18 ; [+7]
      100 GETUPVAL                         R18 10
      101 MOVE                             R19 R0
      102 MOVE                             R20 R12
      103 MOVE                             R21 R4
      104 CALL                             R18 3 1
      105 MOVE                             R12 R18
      106 MOVE                             R19 R12
      107 GETUPVAL                         R20 11
      108 GETTABLEKS                       R20 R20 K10 ["new"]
      110 NEWCLOSURE                       R21 P1
      111 CAPTURE                          VAL R19
      112 CAPTURE                          UPVAL U12
      113 CAPTURE                          VAL R2
      114 CAPTURE                          VAL R1
      115 CAPTURE                          UPVAL U13
      116 CALL                             R20 1 1
      117 MOVE                             R18 R20
      118 NEWCLOSURE                       R20 P2
      119 CAPTURE                          UPVAL U6
      120 CAPTURE                          UPVAL U14
      121 CAPTURE                          VAL R0
      122 CAPTURE                          VAL R2
      123 CAPTURE                          VAL R17
      124 CAPTURE                          REF R12
      125 CAPTURE                          VAL R5
      126 CAPTURE                          VAL R16
      127 CAPTURE                          UPVAL U15
      128 CAPTURE                          VAL R9
      129 CAPTURE                          UPVAL U16
      130 NAMECALL                         R18 R18 K21 ["andThen"]
      132 CALL                             R18 2 1
      133 NAMECALL                         R18 R18 K22 ["await"]
      135 CALL                             R18 1 -1
      136 CLOSEUPVALS                      R12
      137 RETURN                           R18 -1
      138 LOADNIL                          R15
      139 MOVE                             R16 R14
      140 CLOSEUPVALS                      R12
      141 RETURN                           R15 2

PROTO_22:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["constructAssetIdString"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R1 R1 K1 ["shouldDebugUrls"]
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

PROTO_23:
        0 LOADNIL                          R3
        1 NEWCLOSURE                       R5 P0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          REF R3
        6 FASTPCALL                        pcall 1 ; [+2]
        7 GETIMPORT                        R4 K1 [pcall]
        9 CALL                             R4 1 2
       10 JUMPIFNOT                        R4 ; [+31]
       11 JUMPIFNOT                        R3 ; [+30]
       12 GETTABLEN                        R6 R3 1
       13 JUMPIFNOT                        R6 ; [+28]
       14 GETTABLEN                        R6 R3 1
       15 SETTABLEKS                       R2 R6 K2 ["Name"]
       17 SETTABLEKS                       R1 R6 K3 ["SourceAssetId"]
       19 GETUPVAL                         R8 2
       20 NAMECALL                         R8 R8 K4 ["Get"]
       22 CALL                             R8 1 1
       23 JUMPIF                           R8 ; [+2]
       24 NEWTABLE                         R8 0 0
       26 GETTABLEN                        R7 R8 1
       27 JUMPIF                           R7 ; [+1]
       28 GETUPVAL                         R7 3
       29 SETTABLEKS                       R7 R6 K5 ["Parent"]
       31 GETUPVAL                         R7 2
       32 NEWTABLE                         R9 0 1
       34 MOVE                             R10 R6
       35 SETLIST                          R9 R10 1 [1]
       37 NAMECALL                         R7 R7 K6 ["Set"]
       39 CALL                             R7 2 0
       40 CLOSEUPVALS                      R3
       41 RETURN                           R6 1
       42 LOADNIL                          R6
       43 MOVE                             R7 R5
       44 CLOSEUPVALS                      R3
       45 RETURN                           R6 2

PROTO_24:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["constructAssetIdString"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R1 R1 K1 ["shouldDebugUrls"]
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

PROTO_25:
        0 LOADNIL                          R1
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          REF R1
        6 CAPTURE                          UPVAL U2
        7 FASTPCALL                        pcall 1 ; [+2]
        8 GETIMPORT                        R2 K1 [pcall]
       10 CALL                             R2 1 2
       11 JUMPIFNOT                        R2 ; [+27]
       12 JUMPIFNOT                        R1 ; [+26]
       13 GETTABLEN                        R4 R1 1
       14 JUMPIFNOT                        R4 ; [+24]
       15 GETTABLEN                        R4 R1 1
       16 SETTABLEKS                       R0 R4 K2 ["SourceAssetId"]
       18 GETTABLEN                        R4 R1 1
       19 GETUPVAL                         R6 3
       20 NAMECALL                         R6 R6 K3 ["Get"]
       22 CALL                             R6 1 1
       23 JUMPIF                           R6 ; [+2]
       24 NEWTABLE                         R6 0 0
       26 GETTABLEN                        R5 R6 1
       27 JUMPIF                           R5 ; [+1]
       28 GETUPVAL                         R5 4
       29 SETTABLEKS                       R5 R4 K4 ["Parent"]
       31 GETUPVAL                         R4 3
       32 MOVE                             R6 R1
       33 NAMECALL                         R4 R4 K5 ["set"]
       35 CALL                             R4 2 0
       36 GETTABLEN                        R4 R1 1
       37 CLOSEUPVALS                      R1
       38 RETURN                           R4 1
       39 LOADNIL                          R4
       40 MOVE                             R5 R3
       41 CLOSEUPVALS                      R1
       42 RETURN                           R4 2

PROTO_26:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["constructAssetIdString"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K1 ["shouldDebugUrls"]
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

PROTO_27:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["constructAssetIdString"]
        3 MOVE                             R4 R0
        4 CALL                             R3 1 1
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R4 R4 K1 ["shouldDebugUrls"]
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

PROTO_28:
        0 RETURN                           R0 0

PROTO_29:
        0 DUPCLOSURE                       R3 K0 [PROTO_28]
        1 FASTPCALL                        pcall 1 ; [+2]
        2 GETIMPORT                        R2 K2 [pcall]
        4 CALL                             R2 1 2
        5 RETURN                           R2 2

PROTO_30:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["shouldDebugUrls"]
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

PROTO_31:
        0 NEWCLOSURE                       R4 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          VAL R1
        5 FASTPCALL                        pcall 1 ; [+2]
        6 GETIMPORT                        R3 K1 [pcall]
        8 CALL                             R3 1 2
        9 RETURN                           R3 2

PROTO_32:
        0 GETIMPORT                        R1 K3 [Enum.AssetType.Model]
        2 GETTABLEKS                       R1 R1 K4 ["Value"]
        4 JUMPIFNOTEQ                      R0 R1 ; [+3]
        6 LOADK                            R1 K2 ["Model"]
        7 RETURN                           R1 1
        8 GETIMPORT                        R1 K6 [Enum.AssetType.Decal]
       10 GETTABLEKS                       R1 R1 K4 ["Value"]
       12 JUMPIFNOTEQ                      R0 R1 ; [+3]
       14 LOADK                            R1 K5 ["Decal"]
       15 RETURN                           R1 1
       16 GETIMPORT                        R1 K8 [Enum.AssetType.Audio]
       18 GETTABLEKS                       R1 R1 K4 ["Value"]
       20 JUMPIFNOTEQ                      R0 R1 ; [+3]
       22 LOADK                            R1 K7 ["Audio"]
       23 RETURN                           R1 1
       24 GETIMPORT                        R1 K10 [Enum.AssetType.FontFamily]
       26 GETTABLEKS                       R1 R1 K4 ["Value"]
       28 JUMPIFNOTEQ                      R0 R1 ; [+3]
       30 LOADK                            R1 K9 ["FontFamily"]
       31 RETURN                           R1 1
       32 GETIMPORT                        R1 K12 [Enum.AssetType.MeshPart]
       34 GETTABLEKS                       R1 R1 K4 ["Value"]
       36 JUMPIFNOTEQ                      R0 R1 ; [+3]
       38 LOADK                            R1 K13 ["Mesh"]
       39 RETURN                           R1 1
       40 GETIMPORT                        R1 K15 [Enum.AssetType.Plugin]
       42 GETTABLEKS                       R1 R1 K4 ["Value"]
       44 JUMPIFNOTEQ                      R0 R1 ; [+3]
       46 LOADK                            R1 K14 ["Plugin"]
       47 RETURN                           R1 1
       48 GETIMPORT                        R1 K17 [Enum.AssetType.Video]
       50 GETTABLEKS                       R1 R1 K4 ["Value"]
       52 JUMPIFNOTEQ                      R0 R1 ; [+3]
       54 LOADK                            R1 K16 ["Video"]
       55 RETURN                           R1 1
       56 GETIMPORT                        R1 K19 [Enum.AssetType.Animation]
       58 GETTABLEKS                       R1 R1 K4 ["Value"]
       60 JUMPIFNOTEQ                      R0 R1 ; [+3]
       62 LOADK                            R1 K18 ["Animation"]
       63 RETURN                           R1 1
       64 GETUPVAL                         R1 0
       65 GETTABLEKS                       R1 R1 K20 ["shouldDebugWarnings"]
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

PROTO_33:
        0 GETTABLEKS                       R4 R0 K0 ["assetSubTypes"]
        2 JUMPIFEQKNIL                     R4 ; [+11]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K1 ["contains"]
        7 GETTABLEKS                       R4 R0 K0 ["assetSubTypes"]
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R5 R5 K2 ["Package"]
       12 CALL                             R3 2 1
       13 JUMP                             ; [+6]
       14 GETUPVAL                         R3 1
       15 GETTABLEKS                       R3 R3 K3 ["categoryIsPackage"]
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
       43 GETIMPORT                        R6 K13 [Enum.AssetType.Audio]
       45 GETTABLEKS                       R6 R6 K14 ["Value"]
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
       62 GETIMPORT                        R6 K18 [Enum.AssetType.Decal]
       64 GETTABLEKS                       R6 R6 K14 ["Value"]
       66 JUMPIFNOTEQ                      R5 R6 ; [+10]
       68 GETUPVAL                         R5 7
       69 GETTABLEKS                       R6 R0 K19 ["plugin"]
       71 GETTABLEKS                       R7 R0 K8 ["assetId"]
       73 GETTABLEKS                       R8 R0 K15 ["assetName"]
       75 CALL                             R5 3 -1
       76 RETURN                           R5 -1
       77 GETTABLEKS                       R5 R0 K9 ["assetTypeId"]
       79 GETIMPORT                        R6 K21 [Enum.AssetType.Plugin]
       81 GETTABLEKS                       R6 R6 K14 ["Value"]
       83 JUMPIFNOTEQ                      R5 R6 ; [+10]
       85 GETUPVAL                         R5 8
       86 GETTABLEKS                       R6 R0 K8 ["assetId"]
       88 GETTABLEKS                       R7 R0 K22 ["assetVersionId"]
       90 GETTABLEKS                       R8 R0 K15 ["assetName"]
       92 CALL                             R5 3 -1
       93 RETURN                           R5 -1
       94 GETTABLEKS                       R5 R0 K9 ["assetTypeId"]
       96 GETIMPORT                        R6 K24 [Enum.AssetType.Video]
       98 GETTABLEKS                       R6 R6 K14 ["Value"]
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
      121 GETIMPORT                        R6 K26 [Enum.AssetType.FontFamily]
      123 GETTABLEKS                       R6 R6 K14 ["Value"]
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

PROTO_34:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["incrementToolboxInsertCounter"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R4 R0 K1 ["assetTypeId"]
        6 CALL                             R3 1 1
        7 CALL                             R2 1 0
        8 GETTABLEKS                       R2 R0 K2 ["categoryName"]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K3 ["incrementToolboxCategoryInsertCounter"]
       13 MOVE                             R4 R2
       14 CALL                             R3 1 0
       15 JUMPIF                           R1 ; [+14]
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K4 ["onAssetInserted"]
       19 GETTABLEKS                       R4 R0 K5 ["assetId"]
       21 GETTABLEKS                       R5 R0 K6 ["searchTerm"]
       23 GETTABLEKS                       R6 R0 K7 ["assetIndex"]
       25 MOVE                             R7 R2
       26 GETTABLEKS                       R8 R0 K8 ["layoutMode"]
       28 CALL                             R3 5 0
       29 JUMP                             ; [+11]
       30 GETUPVAL                         R3 0
       31 GETTABLEKS                       R3 R3 K9 ["onAssetDragInserted"]
       33 GETTABLEKS                       R4 R0 K5 ["assetId"]
       35 GETTABLEKS                       R5 R0 K6 ["searchTerm"]
       37 GETTABLEKS                       R6 R0 K7 ["assetIndex"]
       39 MOVE                             R7 R2
       40 CALL                             R3 4 0
       41 GETUPVAL                         R3 0
       42 GETTABLEKS                       R3 R3 K10 ["incrementWorkspaceInsertCounter"]
       44 CALL                             R3 0 0
       45 RETURN                           R0 0

PROTO_35:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_37:
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

PROTO_38:
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

PROTO_39:
        0 GETIMPORT                        R0 K1 [game]
        2 GETTABLEKS                       R0 R0 K2 ["GameId"]
        4 RETURN                           R0 1

PROTO_40:
        0 GETIMPORT                        R0 K1 [game]
        2 GETTABLEKS                       R0 R0 K2 ["CreatorType"]
        4 GETIMPORT                        R1 K1 [game]
        6 GETTABLEKS                       R1 R1 K3 ["CreatorId"]
        8 RETURN                           R0 2

PROTO_41:
        0 GETGLOBAL                        R1 K0 ["didBatchGrantFail_DEPRECATED"]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 2
        4 JUMPIFNOT                        R1 ; [+14]
        5 GETIMPORT                        R3 K2 [warn]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K3 ["_localization"]
       10 LOADK                            R6 K4 ["GrantAssetPermission"]
       11 LOADK                            R7 K5 ["Failure"]
       12 DUPTABLE                         R8 K7 [{"assetId"}]
       13 SETTABLEKS                       R2 R8 K6 ["assetId"]
       15 NAMECALL                         R4 R4 K8 ["getText"]
       17 CALL                             R4 4 -1
       18 CALL                             R3 -1 0
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R3 R3 K9 ["tryInsert"]
       22 GETUPVAL                         R4 1
       23 GETUPVAL                         R5 2
       24 GETUPVAL                         R6 3
       25 GETUPVAL                         R7 4
       26 CALL                             R3 4 0
       27 RETURN                           R0 0

PROTO_42:
        0 GETIMPORT                        R0 K1 [warn]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["_localization"]
        5 LOADK                            R3 K3 ["GrantAssetPermission"]
        6 LOADK                            R4 K4 ["Failure"]
        7 DUPTABLE                         R5 K6 [{"assetId"}]
        8 GETUPVAL                         R6 1
        9 GETTABLEKS                       R6 R6 K5 ["assetId"]
       11 SETTABLEKS                       R6 R5 K5 ["assetId"]
       13 NAMECALL                         R1 R1 K7 ["getText"]
       15 CALL                             R1 4 -1
       16 CALL                             R0 -1 0
       17 GETUPVAL                         R0 0
       18 GETTABLEKS                       R0 R0 K8 ["tryInsert"]
       20 GETUPVAL                         R1 1
       21 GETUPVAL                         R2 2
       22 GETUPVAL                         R3 3
       23 GETUPVAL                         R4 4
       24 CALL                             R0 4 0
       25 RETURN                           R0 0

PROTO_43:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R6 R0 K0 ["assetTypeId"]
        3 GETTABLE                         R4 R5 R6
        4 JUMPIF                           R4 ; [+9]
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R4 R4 K1 ["tryInsert"]
        8 MOVE                             R5 R0
        9 MOVE                             R6 R1
       10 MOVE                             R7 R2
       11 MOVE                             R8 R3
       12 CALL                             R4 4 -1
       13 RETURN                           R4 -1
       14 GETUPVAL                         R4 1
       15 GETTABLEKS                       R4 R4 K2 ["getGameId"]
       17 CALL                             R4 0 1
       18 FASTCALL1                        TYPE R4 ; [+3]
       19 MOVE                             R6 R4
       20 GETIMPORT                        R5 K4 [type]
       22 CALL                             R5 1 1
       23 JUMPIFNOTEQKS                    R5 K5 ["number"] ; [+3]
       25 JUMPIFNOTEQKN                    R4 K6 [0] ; [+29]
       27 GETUPVAL                         R5 2
       28 JUMPIF                           R5 ; [+17]
       29 GETUPVAL                         R5 1
       30 GETTABLEKS                       R5 R5 K7 ["_localization"]
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
       46 GETUPVAL                         R5 1
       47 GETTABLEKS                       R5 R5 K1 ["tryInsert"]
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

PROTO_44:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 LOADNIL                          R0
        7 SETUPVAL                         R0 0
        8 GETUPVAL                         R0 1
        9 JUMPIFNOT                        R0 ; [+9]
       10 GETIMPORT                        R1 K3 [task.cancel]
       12 GETUPVAL                         R2 1
       13 FASTPCALL                        pcall 2 ; [+2]
       14 GETIMPORT                        R0 K5 [pcall]
       16 CALL                             R0 2 0
       17 LOADNIL                          R0
       18 SETUPVAL                         R0 1
       19 RETURN                           R0 0

PROTO_45:
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
       14 JUMPIFNOT                        R0 ; [+9]
       15 GETIMPORT                        R1 K3 [task.cancel]
       17 GETUPVAL                         R2 2
       18 FASTPCALL                        pcall 2 ; [+2]
       19 GETIMPORT                        R0 K5 [pcall]
       21 CALL                             R0 2 0
       22 LOADNIL                          R0
       23 SETUPVAL                         R0 2
       24 GETUPVAL                         R0 3
       25 GETTABLEKS                       R0 R0 K6 ["tryInsert"]
       27 GETUPVAL                         R1 4
       28 GETUPVAL                         R2 5
       29 GETUPVAL                         R3 6
       30 GETUPVAL                         R4 7
       31 CALL                             R0 4 0
       32 RETURN                           R0 0

PROTO_46:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["JSONDecode"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_47:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 FASTPCALL                        pcall 1 ; [+2]
        4 GETIMPORT                        R1 K1 [pcall]
        6 CALL                             R1 1 2
        7 JUMPIF                           R1 ; [+1]
        8 RETURN                           R0 0
        9 GETTABLEKS                       R3 R2 K2 ["AssetId"]
       11 GETUPVAL                         R4 1
       12 JUMPIFEQ                         R3 R4 ; [+2]
       14 RETURN                           R0 0
       15 GETTABLEKS                       R3 R2 K3 ["IsComplete"]
       17 JUMPIFNOTEQKB                    R3 TRUE ; [+33]
       19 GETUPVAL                         R3 2
       20 JUMPIFNOT                        R3 ; [+1]
       21 RETURN                           R0 0
       22 LOADB                            R3 1
       23 SETUPVAL                         R3 2
       24 GETUPVAL                         R3 3
       25 JUMPIFNOT                        R3 ; [+6]
       26 GETUPVAL                         R3 3
       27 NAMECALL                         R3 R3 K4 ["Disconnect"]
       29 CALL                             R3 1 0
       30 LOADNIL                          R3
       31 SETUPVAL                         R3 3
       32 GETUPVAL                         R3 4
       33 JUMPIFNOT                        R3 ; [+9]
       34 GETIMPORT                        R4 K7 [task.cancel]
       36 GETUPVAL                         R5 4
       37 FASTPCALL                        pcall 2 ; [+2]
       38 GETIMPORT                        R3 K1 [pcall]
       40 CALL                             R3 2 0
       41 LOADNIL                          R3
       42 SETUPVAL                         R3 4
       43 GETUPVAL                         R3 5
       44 GETTABLEKS                       R3 R3 K8 ["tryInsert"]
       46 GETUPVAL                         R4 6
       47 GETUPVAL                         R5 7
       48 GETUPVAL                         R6 8
       49 GETUPVAL                         R7 9
       50 CALL                             R3 4 0
       51 RETURN                           R0 0

PROTO_48:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_localization"]
        3 LOADK                            R2 K1 ["AAC"]
        4 LOADK                            R3 K2 ["AssetDependencyGrantEventTimeoutWarning"]
        5 DUPTABLE                         R4 K5 [{"timeoutSeconds", "assetId"}]
        6 GETUPVAL                         R5 1
        7 SETTABLEKS                       R5 R4 K3 ["timeoutSeconds"]
        9 GETUPVAL                         R5 2
       10 GETTABLEKS                       R5 R5 K4 ["assetId"]
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
       35 JUMPIFNOT                        R1 ; [+9]
       36 GETIMPORT                        R2 K12 [task.cancel]
       38 GETUPVAL                         R3 5
       39 FASTPCALL                        pcall 2 ; [+2]
       40 GETIMPORT                        R1 K14 [pcall]
       42 CALL                             R1 2 0
       43 LOADNIL                          R1
       44 SETUPVAL                         R1 5
       45 GETUPVAL                         R1 0
       46 GETTABLEKS                       R1 R1 K15 ["tryInsert"]
       48 GETUPVAL                         R2 2
       49 GETUPVAL                         R3 6
       50 GETUPVAL                         R4 7
       51 GETUPVAL                         R5 8
       52 CALL                             R1 4 0
       53 RETURN                           R0 0

PROTO_49:
        0 GETGLOBAL                        R1 K0 ["didGrantFailForAssetId"]
        2 MOVE                             R2 R0
        3 GETUPVAL                         R3 0
        4 CALL                             R1 2 2
        5 JUMPIFNOT                        R1 ; [+51]
        6 GETUPVAL                         R4 1
        7 GETTABLE                         R3 R4 R2
        8 JUMPIF                           R3 ; [+15]
        9 GETIMPORT                        R3 K2 [warn]
       11 GETUPVAL                         R4 2
       12 GETTABLEKS                       R4 R4 K3 ["_localization"]
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
       38 JUMPIFNOT                        R3 ; [+9]
       39 GETIMPORT                        R4 K12 [task.cancel]
       41 GETUPVAL                         R5 5
       42 FASTPCALL                        pcall 2 ; [+2]
       43 GETIMPORT                        R3 K14 [pcall]
       45 CALL                             R3 2 0
       46 LOADNIL                          R3
       47 SETUPVAL                         R3 5
       48 GETUPVAL                         R3 2
       49 GETTABLEKS                       R3 R3 K15 ["tryInsert"]
       51 GETUPVAL                         R4 6
       52 GETUPVAL                         R5 7
       53 GETUPVAL                         R6 8
       54 GETUPVAL                         R7 9
       55 CALL                             R3 4 0
       56 RETURN                           R0 0
       57 GETUPVAL                         R3 10
       58 GETIMPORT                        R4 K19 [Enum.AssetType.Model]
       60 GETTABLEKS                       R4 R4 K20 ["Value"]
       62 JUMPIFEQ                         R3 R4 ; [+33]
       64 GETUPVAL                         R3 3
       65 JUMPIFNOT                        R3 ; [+1]
       66 RETURN                           R0 0
       67 LOADB                            R3 1
       68 SETUPVAL                         R3 3
       69 GETUPVAL                         R3 4
       70 JUMPIFNOT                        R3 ; [+6]
       71 GETUPVAL                         R3 4
       72 NAMECALL                         R3 R3 K9 ["Disconnect"]
       74 CALL                             R3 1 0
       75 LOADNIL                          R3
       76 SETUPVAL                         R3 4
       77 GETUPVAL                         R3 5
       78 JUMPIFNOT                        R3 ; [+9]
       79 GETIMPORT                        R4 K12 [task.cancel]
       81 GETUPVAL                         R5 5
       82 FASTPCALL                        pcall 2 ; [+2]
       83 GETIMPORT                        R3 K14 [pcall]
       85 CALL                             R3 2 0
       86 LOADNIL                          R3
       87 SETUPVAL                         R3 5
       88 GETUPVAL                         R3 2
       89 GETTABLEKS                       R3 R3 K15 ["tryInsert"]
       91 GETUPVAL                         R4 6
       92 GETUPVAL                         R5 7
       93 GETUPVAL                         R6 8
       94 GETUPVAL                         R7 9
       95 CALL                             R3 4 0
       96 RETURN                           R0 0

PROTO_50:
        0 GETIMPORT                        R1 K1 [warn]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K2 ["_localization"]
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
       30 JUMPIFNOT                        R1 ; [+9]
       31 GETIMPORT                        R2 K11 [task.cancel]
       33 GETUPVAL                         R3 4
       34 FASTPCALL                        pcall 2 ; [+2]
       35 GETIMPORT                        R1 K13 [pcall]
       37 CALL                             R1 2 0
       38 LOADNIL                          R1
       39 SETUPVAL                         R1 4
       40 GETUPVAL                         R1 0
       41 GETTABLEKS                       R1 R1 K14 ["tryInsert"]
       43 GETUPVAL                         R2 5
       44 GETUPVAL                         R3 6
       45 GETUPVAL                         R4 7
       46 GETUPVAL                         R5 8
       47 CALL                             R1 4 0
       48 RETURN                           R0 0

PROTO_51:
        0 GETTABLEKS                       R4 R0 K0 ["plugin"]
        2 LOADK                            R6 K1 ["AssetAccessController"]
        3 NAMECALL                         R4 R4 K2 ["GetPluginComponent"]
        5 CALL                             R4 2 1
        6 GETIMPORT                        R5 K4 [game]
        8 LOADK                            R7 K5 ["HttpService"]
        9 NAMECALL                         R5 R5 K6 ["GetService"]
       11 CALL                             R5 2 1
       12 GETUPVAL                         R6 0
       13 CALL                             R6 0 1
       14 JUMPIFNOT                        R6 ; [+75]
       15 GETUPVAL                         R7 1
       16 GETTABLEKS                       R8 R0 K7 ["assetTypeId"]
       18 GETTABLE                         R6 R7 R8
       19 JUMPIFNOT                        R6 ; [+70]
       20 GETUPVAL                         R6 2
       21 GETTABLEKS                       R6 R6 K8 ["getGameId"]
       23 CALL                             R6 0 1
       24 GETUPVAL                         R7 2
       25 GETTABLEKS                       R7 R7 K9 ["getCreatorTypeAndId"]
       27 CALL                             R7 0 2
       28 JUMPIFNOT                        R4 ; [+61]
       29 FASTCALL1                        TYPE R6 ; [+3]
       30 MOVE                             R10 R6
       31 GETIMPORT                        R9 K11 [type]
       33 CALL                             R9 1 1
       34 JUMPIFNOTEQKS                    R9 K12 ["number"] ; [+55]
       36 JUMPIFEQKN                       R6 K13 [0] ; [+53]
       38 GETUPVAL                         R10 3
       39 GETTABLEKS                       R10 R10 K14 ["getTabKeyForCategoryName"]
       41 GETTABLEKS                       R11 R0 K15 ["categoryName"]
       43 CALL                             R10 1 1
       44 GETUPVAL                         R11 3
       45 GETTABLEKS                       R11 R11 K16 ["MARKETPLACE_KEY"]
       47 JUMPIFNOTEQ                      R10 R11 ; [+3]
       49 LOADB                            R9 0
       50 JUMP                             ; [+24]
       51 GETTABLEKS                       R10 R0 K17 ["creator"]
       53 JUMPIFEQKNIL                     R10 ; [+7]
       55 GETUPVAL                         R11 4
       56 GETTABLEKS                       R11 R11 K18 ["getClientCreatorType"]
       58 MOVE                             R12 R10
       59 CALL                             R11 1 1
       60 JUMP                             ; [+1]
       61 LOADNIL                          R11
       62 JUMPIFEQKNIL                     R11 ; [+11]
       64 GETUPVAL                         R12 5
       65 MOVE                             R13 R11
       66 GETTABLEKS                       R14 R10 K19 ["Id"]
       68 MOVE                             R15 R7
       69 MOVE                             R16 R8
       70 CALL                             R12 4 1
       71 JUMPIFNOT                        R12 ; [+2]
       72 LOADB                            R9 0
       73 JUMP                             ; [+1]
       74 LOADB                            R9 1
       75 JUMPIFNOT                        R9 ; [+14]
       76 GETUPVAL                         R9 6
       77 MOVE                             R10 R4
       78 NEWTABLE                         R11 0 1
       80 GETTABLEKS                       R12 R0 K20 ["assetId"]
       82 SETLIST                          R11 R12 1 [1]
       84 CALL                             R9 2 1
       85 GETTABLEKS                       R11 R0 K20 ["assetId"]
       87 GETTABLE                         R10 R9 R11
       88 JUMPIFNOT                        R10 ; [+1]
       89 RETURN                           R0 0
       90 JUMPIFNOT                        R4 ; [+3]
       91 GETTABLEKS                       R6 R4 K21 ["DependencyGrantProgressReceived"]
       93 JUMPIF                           R6 ; [+9]
       94 GETUPVAL                         R6 2
       95 GETTABLEKS                       R6 R6 K22 ["tryInsert"]
       97 MOVE                             R7 R0
       98 MOVE                             R8 R1
       99 MOVE                             R9 R2
      100 MOVE                             R10 R3
      101 CALL                             R6 4 -1
      102 RETURN                           R6 -1
      103 GETUPVAL                         R7 7
      104 GETTABLEKS                       R8 R0 K7 ["assetTypeId"]
      106 GETTABLE                         R6 R7 R8
      107 JUMPIF                           R6 ; [+9]
      108 GETUPVAL                         R6 2
      109 GETTABLEKS                       R6 R6 K22 ["tryInsert"]
      111 MOVE                             R7 R0
      112 MOVE                             R8 R1
      113 MOVE                             R9 R2
      114 MOVE                             R10 R3
      115 CALL                             R6 4 -1
      116 RETURN                           R6 -1
      117 GETUPVAL                         R6 2
      118 GETTABLEKS                       R6 R6 K8 ["getGameId"]
      120 CALL                             R6 0 1
      121 FASTCALL1                        TYPE R6 ; [+3]
      122 MOVE                             R8 R6
      123 GETIMPORT                        R7 K11 [type]
      125 CALL                             R7 1 1
      126 JUMPIFNOTEQKS                    R7 K12 ["number"] ; [+3]
      128 JUMPIFNOTEQKN                    R6 K13 [0] ; [+10]
      130 GETUPVAL                         R7 2
      131 GETTABLEKS                       R7 R7 K22 ["tryInsert"]
      133 MOVE                             R8 R0
      134 MOVE                             R9 R1
      135 MOVE                             R10 R2
      136 MOVE                             R11 R3
      137 CALL                             R7 4 -1
      138 RETURN                           R7 -1
      139 GETTABLEKS                       R7 R0 K20 ["assetId"]
      141 GETTABLEKS                       R8 R0 K7 ["assetTypeId"]
      143 LOADNIL                          R9
      144 LOADNIL                          R10
      145 LOADB                            R11 0
      146 NEWCLOSURE                       R12 P0
      147 CAPTURE                          REF R9
      148 CAPTURE                          REF R10
      149 NEWCLOSURE                       R13 P1
      150 CAPTURE                          REF R11
      151 CAPTURE                          REF R9
      152 CAPTURE                          REF R10
      153 CAPTURE                          UPVAL U2
      154 CAPTURE                          VAL R0
      155 CAPTURE                          VAL R1
      156 CAPTURE                          VAL R2
      157 CAPTURE                          VAL R3
      158 GETTABLEKS                       R14 R4 K21 ["DependencyGrantProgressReceived"]
      160 NEWCLOSURE                       R16 P2
      161 CAPTURE                          VAL R5
      162 CAPTURE                          VAL R7
      163 CAPTURE                          REF R11
      164 CAPTURE                          REF R9
      165 CAPTURE                          REF R10
      166 CAPTURE                          UPVAL U2
      167 CAPTURE                          VAL R0
      168 CAPTURE                          VAL R1
      169 CAPTURE                          VAL R2
      170 CAPTURE                          VAL R3
      171 NAMECALL                         R14 R14 K23 ["Connect"]
      173 CALL                             R14 2 1
      174 MOVE                             R9 R14
      175 GETUPVAL                         R14 8
      176 CALL                             R14 0 1
      177 GETIMPORT                        R15 K26 [task.delay]
      179 MOVE                             R16 R14
      180 NEWCLOSURE                       R17 P3
      181 CAPTURE                          UPVAL U2
      182 CAPTURE                          VAL R14
      183 CAPTURE                          VAL R0
      184 CAPTURE                          REF R11
      185 CAPTURE                          REF R9
      186 CAPTURE                          REF R10
      187 CAPTURE                          VAL R1
      188 CAPTURE                          VAL R2
      189 CAPTURE                          VAL R3
      190 CALL                             R15 2 1
      191 MOVE                             R10 R15
      192 NEWTABLE                         R17 0 1
      194 MOVE                             R18 R7
      195 SETLIST                          R17 R18 1 [1]
      197 MOVE                             R18 R6
      198 NAMECALL                         R15 R3 K27 ["batchGrantAssetPermissions"]
      200 CALL                             R15 3 1
      201 NEWCLOSURE                       R17 P4
      202 CAPTURE                          VAL R7
      203 CAPTURE                          UPVAL U9
      204 CAPTURE                          UPVAL U2
      205 CAPTURE                          REF R11
      206 CAPTURE                          REF R9
      207 CAPTURE                          REF R10
      208 CAPTURE                          VAL R0
      209 CAPTURE                          VAL R1
      210 CAPTURE                          VAL R2
      211 CAPTURE                          VAL R3
      212 CAPTURE                          VAL R8
      213 NAMECALL                         R15 R15 K28 ["andThen"]
      215 CALL                             R15 2 1
      216 NEWCLOSURE                       R17 P5
      217 CAPTURE                          UPVAL U2
      218 CAPTURE                          VAL R7
      219 CAPTURE                          REF R11
      220 CAPTURE                          REF R9
      221 CAPTURE                          REF R10
      222 CAPTURE                          VAL R0
      223 CAPTURE                          VAL R1
      224 CAPTURE                          VAL R2
      225 CAPTURE                          VAL R3
      226 NAMECALL                         R15 R15 K29 ["catch"]
      228 CALL                             R15 2 0
      229 CLOSEUPVALS                      R9
      230 RETURN                           R0 0

PROTO_52:
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
       42 GETUPVAL                         R6 3
       43 GETTABLEKS                       R6 R6 K19 ["_localization"]
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
       64 GETUPVAL                         R5 3
       65 GETTABLEKS                       R5 R5 K20 ["doDragInsertAsset"]
       67 MOVE                             R6 R0
       68 CALL                             R5 1 0
       69 RETURN                           R0 0
       70 GETUPVAL                         R4 3
       71 GETTABLEKS                       R4 R4 K21 ["doInsertAsset"]
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

PROTO_53:
        0 GETTABLEKS                       R3 R0 K0 ["assetId"]
        2 GETTABLEKS                       R4 R0 K1 ["assetName"]
        4 GETTABLEKS                       R5 R0 K2 ["assetTypeId"]
        6 GETIMPORT                        R6 K5 [os.clock]
        8 CALL                             R6 0 1
        9 GETUPVAL                         R7 0
       10 GETTABLEKS                       R7 R7 K6 ["shouldDebugWarnings"]
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
       56 GETUPVAL                         R7 3
       57 GETTABLEKS                       R7 R7 K16 ["_localization"]
       59 SETTABLEKS                       R7 R0 K17 ["localization"]
       61 GETUPVAL                         R7 4
       62 MOVE                             R8 R0
       63 MOVE                             R9 R1
       64 MOVE                             R10 R2
       65 CALL                             R7 3 2
       66 GETIMPORT                        R10 K5 [os.clock]
       68 CALL                             R10 0 1
       69 SUB                              R9 R10 R6
       70 GETIMPORT                        R10 K21 [Enum.AssetType.Plugin]
       72 GETTABLEKS                       R10 R10 K22 ["Value"]
       74 JUMPIFNOTEQ                      R5 R10 ; [+68]
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
      102 GETTABLEKS                       R10 R10 K25 ["incrementToolboxInsertCounter"]
      104 GETUPVAL                         R11 6
      105 GETTABLEKS                       R12 R0 K2 ["assetTypeId"]
      107 CALL                             R11 1 1
      108 CALL                             R10 1 0
      109 GETTABLEKS                       R10 R0 K26 ["categoryName"]
      111 GETUPVAL                         R11 5
      112 GETTABLEKS                       R11 R11 K27 ["incrementToolboxCategoryInsertCounter"]
      114 MOVE                             R12 R10
      115 CALL                             R11 1 0
      116 GETUPVAL                         R11 5
      117 GETTABLEKS                       R11 R11 K28 ["onAssetInserted"]
      119 GETTABLEKS                       R12 R0 K0 ["assetId"]
      121 GETTABLEKS                       R13 R0 K29 ["searchTerm"]
      123 GETTABLEKS                       R14 R0 K30 ["assetIndex"]
      125 MOVE                             R15 R10
      126 GETTABLEKS                       R16 R0 K31 ["layoutMode"]
      128 CALL                             R11 5 0
      129 GETUPVAL                         R11 5
      130 GETTABLEKS                       R11 R11 K32 ["incrementWorkspaceInsertCounter"]
      132 CALL                             R11 0 0
      133 GETTABLEKS                       R10 R0 K33 ["onSuccess"]
      135 JUMPIFNOT                        R10 ; [+102]
      136 GETTABLEKS                       R10 R0 K33 ["onSuccess"]
      138 MOVE                             R11 R3
      139 LOADNIL                          R12
      140 MOVE                             R13 R9
      141 CALL                             R10 3 0
      142 RETURN                           R7 2
      143 JUMPIFNOT                        R7 ; [+67]
      144 GETUPVAL                         R10 1
      145 JUMPIFNOT                        R10 ; [+14]
      146 GETUPVAL                         R10 2
      147 LOADK                            R12 K34 ["After insert asset %s"]
      148 FASTCALL1                        TOSTRING R3 ; [+3]
      149 MOVE                             R15 R3
      150 GETIMPORT                        R14 K11 [tostring]
      152 CALL                             R14 1 1
      153 NAMECALL                         R12 R12 K12 ["format"]
      155 CALL                             R12 2 -1
      156 NAMECALL                         R10 R10 K14 ["SetWaypoint"]
      158 CALL                             R10 -1 0
      159 JUMP                             ; [+9]
      160 GETUPVAL                         R10 2
      161 LOADK                            R12 K35 ["After insert asset %d"]
      162 MOVE                             R14 R3
      163 NAMECALL                         R12 R12 K12 ["format"]
      165 CALL                             R12 2 -1
      166 NAMECALL                         R10 R10 K14 ["SetWaypoint"]
      168 CALL                             R10 -1 0
      169 GETUPVAL                         R10 5
      170 GETTABLEKS                       R10 R10 K25 ["incrementToolboxInsertCounter"]
      172 GETUPVAL                         R11 6
      173 GETTABLEKS                       R12 R0 K2 ["assetTypeId"]
      175 CALL                             R11 1 1
      176 CALL                             R10 1 0
      177 GETTABLEKS                       R10 R0 K26 ["categoryName"]
      179 GETUPVAL                         R11 5
      180 GETTABLEKS                       R11 R11 K27 ["incrementToolboxCategoryInsertCounter"]
      182 MOVE                             R12 R10
      183 CALL                             R11 1 0
      184 GETUPVAL                         R11 5
      185 GETTABLEKS                       R11 R11 K28 ["onAssetInserted"]
      187 GETTABLEKS                       R12 R0 K0 ["assetId"]
      189 GETTABLEKS                       R13 R0 K29 ["searchTerm"]
      191 GETTABLEKS                       R14 R0 K30 ["assetIndex"]
      193 MOVE                             R15 R10
      194 GETTABLEKS                       R16 R0 K31 ["layoutMode"]
      196 CALL                             R11 5 0
      197 GETUPVAL                         R11 5
      198 GETTABLEKS                       R11 R11 K32 ["incrementWorkspaceInsertCounter"]
      200 CALL                             R11 0 0
      201 GETTABLEKS                       R10 R0 K33 ["onSuccess"]
      203 JUMPIFNOT                        R10 ; [+34]
      204 GETTABLEKS                       R10 R0 K33 ["onSuccess"]
      206 MOVE                             R11 R3
      207 MOVE                             R12 R7
      208 MOVE                             R13 R9
      209 CALL                             R10 3 0
      210 RETURN                           R7 2
      211 GETUPVAL                         R10 1
      212 JUMPIFNOT                        R10 ; [+15]
      213 GETIMPORT                        R10 K37 [warn]
      215 LOADK                            R11 K38 ["Toolbox failed to insert asset %s %s: %s"]
      216 FASTCALL1                        TOSTRING R3 ; [+3]
      217 MOVE                             R14 R3
      218 GETIMPORT                        R13 K11 [tostring]
      220 CALL                             R13 1 1
      221 MOVE                             R14 R4
      222 ORK                              R15 R8 K39 [""]
      223 NAMECALL                         R11 R11 K12 ["format"]
      225 CALL                             R11 4 -1
      226 CALL                             R10 -1 0
      227 RETURN                           R7 2
      228 GETIMPORT                        R10 K37 [warn]
      230 LOADK                            R11 K40 ["Toolbox failed to insert asset %d %s: %s"]
      231 MOVE                             R13 R3
      232 MOVE                             R14 R4
      233 ORK                              R15 R8 K39 [""]
      234 NAMECALL                         R11 R11 K12 ["format"]
      236 CALL                             R11 4 -1
      237 CALL                             R10 -1 0
      238 RETURN                           R7 2

PROTO_54:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["plugin"]
        3 LOADB                            R1 1
        4 SETTABLEKS                       R1 R0 K1 ["UsesAssetInsertionDrag"]
        6 GETUPVAL                         R0 1
        7 JUMPIF                           R0 ; [+12]
        8 GETUPVAL                         R0 2
        9 JUMPIFNOT                        R0 ; [+10]
       10 GETUPVAL                         R0 0
       11 GETTABLEKS                       R0 R0 K2 ["getIsIXPVariableEnabled"]
       13 JUMPIFNOT                        R0 ; [+6]
       14 GETUPVAL                         R0 0
       15 GETTABLEKS                       R0 R0 K2 ["getIsIXPVariableEnabled"]
       17 LOADK                            R1 K3 ["MarketplaceModelsAsPackages"]
       18 LOADK                            R2 K4 ["MarketplaceModelsAsPackagesEnabled"]
       19 CALL                             R0 2 1
       20 LOADNIL                          R1
       21 JUMPIFNOT                        R0 ; [+39]
       22 GETUPVAL                         R2 3
       23 GETTABLEKS                       R2 R2 K5 ["categoryIsPackage"]
       25 GETUPVAL                         R3 0
       26 GETTABLEKS                       R3 R3 K6 ["categoryName"]
       28 CALL                             R2 1 1
       29 JUMPIF                           R2 ; [+29]
       30 GETUPVAL                         R3 0
       31 GETTABLEKS                       R3 R3 K7 ["assetSubTypes"]
       33 JUMPIFNOT                        R3 ; [+11]
       34 GETUPVAL                         R2 4
       35 GETTABLEKS                       R2 R2 K8 ["contains"]
       37 GETUPVAL                         R3 0
       38 GETTABLEKS                       R3 R3 K7 ["assetSubTypes"]
       40 GETUPVAL                         R4 4
       41 GETTABLEKS                       R4 R4 K9 ["Package"]
       43 CALL                             R2 2 1
       44 JUMPIF                           R2 ; [+14]
       45 GETUPVAL                         R3 3
       46 GETTABLEKS                       R3 R3 K10 ["getCategoryByName"]
       48 GETUPVAL                         R4 0
       49 GETTABLEKS                       R4 R4 K6 ["categoryName"]
       51 CALL                             R3 1 1
       52 GETUPVAL                         R4 3
       53 GETTABLEKS                       R4 R4 K11 ["FREE_MODELS"]
       55 JUMPIFEQ                         R3 R4 ; [+2]
       57 LOADB                            R2 0 +1
       58 LOADB                            R2 1
       59 MOVE                             R1 R2
       60 JUMP                             ; [+25]
       61 GETUPVAL                         R2 0
       62 GETTABLEKS                       R2 R2 K7 ["assetSubTypes"]
       64 JUMPIFEQKNIL                     R2 ; [+13]
       66 GETUPVAL                         R2 4
       67 GETTABLEKS                       R2 R2 K8 ["contains"]
       69 GETUPVAL                         R3 0
       70 GETTABLEKS                       R3 R3 K7 ["assetSubTypes"]
       72 GETUPVAL                         R4 4
       73 GETTABLEKS                       R4 R4 K9 ["Package"]
       75 CALL                             R2 2 1
       76 MOVE                             R1 R2
       77 JUMP                             ; [+8]
       78 GETUPVAL                         R2 3
       79 GETTABLEKS                       R2 R2 K5 ["categoryIsPackage"]
       81 GETUPVAL                         R3 0
       82 GETTABLEKS                       R3 R3 K6 ["categoryName"]
       84 CALL                             R2 1 1
       85 MOVE                             R1 R2
       86 GETUPVAL                         R2 5
       87 GETTABLEKS                       R2 R2 K12 ["constructAssetGameAssetIdUrl"]
       89 GETUPVAL                         R3 6
       90 GETUPVAL                         R4 0
       91 GETTABLEKS                       R4 R4 K13 ["assetTypeId"]
       93 MOVE                             R5 R1
       94 GETUPVAL                         R6 7
       95 CALL                             R2 4 1
       96 GETUPVAL                         R3 8
       97 GETTABLEKS                       R3 R3 K14 ["shouldDebugUrls"]
       99 CALL                             R3 0 1
      100 JUMPIFNOT                        R3 ; [+8]
      101 GETIMPORT                        R3 K16 [print]
      103 LOADK                            R4 K17 ["Dragging asset url %s"]
      104 MOVE                             R6 R2
      105 NAMECALL                         R4 R4 K18 ["format"]
      107 CALL                             R4 2 -1
      108 CALL                             R3 -1 0
      109 GETUPVAL                         R3 0
      110 GETTABLEKS                       R3 R3 K0 ["plugin"]
      112 DUPTABLE                         R5 K23 [{["Sender"] = "LuaToolbox", ["MimeType"], ["Data"]}]
      113 GETUPVAL                         R7 9
      114 JUMPIFNOT                        R7 ; [+2]
      115 LOADK                            R6 K24 ["text/x-roblox-asset-url"]
      116 JUMP                             ; [+1]
      117 LOADK                            R6 K25 ["text/plain"]
      118 SETTABLEKS                       R6 R5 K21 ["MimeType"]
      120 SETTABLEKS                       R2 R5 K22 ["Data"]
      122 NAMECALL                         R3 R3 K26 ["StartDrag"]
      124 CALL                             R3 2 0
      125 RETURN                           R0 0

PROTO_55:
        0 GETTABLEKS                       R1 R0 K0 ["assetId"]
        2 GETTABLEKS                       R2 R0 K1 ["assetName"]
        4 GETTABLEKS                       R3 R0 K2 ["assetTypeId"]
        6 GETIMPORT                        R4 K6 [Enum.AssetType.Plugin]
        8 GETTABLEKS                       R4 R4 K7 ["Value"]
       10 JUMPIFNOTEQ                      R3 R4 ; [+2]
       12 RETURN                           R0 0
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R4 R4 K8 ["shouldDebugWarnings"]
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
       60 NEWCLOSURE                       R5 P0
       61 CAPTURE                          VAL R0
       62 CAPTURE                          UPVAL U3
       63 CAPTURE                          UPVAL U4
       64 CAPTURE                          UPVAL U5
       65 CAPTURE                          UPVAL U6
       66 CAPTURE                          UPVAL U7
       67 CAPTURE                          VAL R1
       68 CAPTURE                          VAL R2
       69 CAPTURE                          UPVAL U0
       70 CAPTURE                          UPVAL U8
       71 FASTPCALL                        pcall 1 ; [+2]
       72 GETIMPORT                        R4 K19 [pcall]
       74 CALL                             R4 1 2
       75 JUMPIFNOT                        R4 ; [+31]
       76 GETUPVAL                         R6 9
       77 GETTABLEKS                       R6 R6 K20 ["incrementToolboxInsertCounter"]
       79 GETUPVAL                         R7 10
       80 GETTABLEKS                       R8 R0 K2 ["assetTypeId"]
       82 CALL                             R7 1 1
       83 CALL                             R6 1 0
       84 GETTABLEKS                       R6 R0 K21 ["categoryName"]
       86 GETUPVAL                         R7 9
       87 GETTABLEKS                       R7 R7 K22 ["incrementToolboxCategoryInsertCounter"]
       89 MOVE                             R8 R6
       90 CALL                             R7 1 0
       91 GETUPVAL                         R7 9
       92 GETTABLEKS                       R7 R7 K23 ["onAssetDragInserted"]
       94 GETTABLEKS                       R8 R0 K0 ["assetId"]
       96 GETTABLEKS                       R9 R0 K24 ["searchTerm"]
       98 GETTABLEKS                       R10 R0 K25 ["assetIndex"]
      100 MOVE                             R11 R6
      101 CALL                             R7 4 0
      102 GETUPVAL                         R7 9
      103 GETTABLEKS                       R7 R7 K26 ["incrementWorkspaceInsertCounter"]
      105 CALL                             R7 0 0
      106 RETURN                           R4 1
      107 GETUPVAL                         R6 1
      108 JUMPIFNOT                        R6 ; [+15]
      109 GETIMPORT                        R6 K28 [warn]
      111 LOADK                            R7 K29 ["Toolbox failed to drag asset %s %s: %s"]
      112 FASTCALL1                        TOSTRING R1 ; [+3]
      113 MOVE                             R10 R1
      114 GETIMPORT                        R9 K13 [tostring]
      116 CALL                             R9 1 1
      117 MOVE                             R10 R2
      118 ORK                              R11 R5 K30 [""]
      119 NAMECALL                         R7 R7 K14 ["format"]
      121 CALL                             R7 4 -1
      122 CALL                             R6 -1 0
      123 RETURN                           R4 1
      124 GETIMPORT                        R6 K28 [warn]
      126 LOADK                            R7 K31 ["Toolbox failed to drag asset %d %s: %s"]
      127 MOVE                             R9 R1
      128 MOVE                             R10 R2
      129 ORK                              R11 R5 K30 [""]
      130 NAMECALL                         R7 R7 K14 ["format"]
      132 CALL                             R7 4 -1
      133 CALL                             R6 -1 0
      134 RETURN                           R4 1

PROTO_56:
        0 GETIMPORT                        R2 K1 [ipairs]
        2 MOVE                             R3 R1
        3 CALL                             R2 1 3
        4 FORGPREP_INEXT                   R2
        5 GETUPVAL                         R7 0
        6 JUMPIFNOTEQKN                    R7 K2 [0] ; [+2]
        8 JUMP                             ; [+11]
        9 LOADN                            R7 1
       10 JUMPIFNOTLT                      R7 R5 ; [+9]
       12 SUBK                             R8 R5 K3 [1]
       13 GETUPVAL                         R9 0
       14 MOD                              R7 R8 R9
       15 JUMPIFNOTEQKN                    R7 K2 [0] ; [+4]
       17 GETIMPORT                        R7 K6 [task.wait]
       19 CALL                             R7 0 0
       20 SETTABLEKS                       R0 R6 K7 ["SourceAssetId"]
       22 GETUPVAL                         R7 1
       23 MOVE                             R8 R6
       24 MOVE                             R9 R0
       25 CALL                             R7 2 0
       26 FORGLOOP                         R2 2 [inext] ; [-22]
       28 RETURN                           R0 0

PROTO_57:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["_localization"]
        3 RETURN                           R0 0

PROTO_58:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["reportDragInsertFinished"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_59:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R2
        3 CALL                             R3 2 0
        4 GETUPVAL                         R3 1
        5 CALL                             R3 0 1
        6 JUMPIFNOT                        R3 ; [+46]
        7 GETUPVAL                         R3 2
        8 JUMPIFNOT                        R3 ; [+44]
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R3 R3 K0 ["options"]
       12 JUMPIFNOT                        R3 ; [+40]
       13 GETUPVAL                         R3 2
       14 GETTABLEKS                       R3 R3 K0 ["options"]
       16 GETTABLEKS                       R3 R3 K1 ["capabilities"]
       18 JUMPIFNOT                        R3 ; [+34]
       19 GETUPVAL                         R3 2
       20 GETTABLEKS                       R3 R3 K0 ["options"]
       22 GETTABLEKS                       R3 R3 K1 ["capabilities"]
       24 GETTABLEKS                       R3 R3 K2 ["shouldSandbox"]
       26 JUMPIFNOTEQKB                    R3 TRUE ; [+26]
       28 GETUPVAL                         R4 2
       29 GETTABLEKS                       R4 R4 K0 ["options"]
       31 GETTABLEKS                       R4 R4 K3 ["creator"]
       33 JUMPIF                           R4 ; [+2]
       34 LOADB                            R3 0
       35 JUMP                             ; [+13]
       36 LOADB                            R3 0
       37 GETTABLEKS                       R5 R4 K4 ["Type"]
       39 JUMPIFNOTEQKN                    R5 K5 [1] ; [+9]
       41 GETTABLEKS                       R5 R4 K6 ["Id"]
       43 GETUPVAL                         R6 3
       44 CALL                             R6 0 1
       45 JUMPIFEQ                         R5 R6 ; [+2]
       47 LOADB                            R3 0 +1
       48 LOADB                            R3 1
       49 JUMPIF                           R3 ; [+3]
       50 GETUPVAL                         R3 4
       51 MOVE                             R4 R2
       52 CALL                             R3 1 0
       53 GETIMPORT                        R3 K8 [spawn]
       55 NEWCLOSURE                       R4 P0
       56 CAPTURE                          UPVAL U5
       57 CAPTURE                          VAL R0
       58 CAPTURE                          VAL R1
       59 CALL                             R3 1 0
       60 GETIMPORT                        R3 K12 [Enum.AssetType.MeshPart]
       62 GETTABLEKS                       R3 R3 K13 ["Value"]
       64 JUMPIFNOTEQ                      R1 R3 ; [+9]
       66 GETUPVAL                         R3 6
       67 MOVE                             R4 R0
       68 MOVE                             R5 R2
       69 GETUPVAL                         R6 7
       70 GETTABLEKS                       R6 R6 K14 ["_localization"]
       72 CALL                             R3 3 1
       73 RETURN                           R3 1
       74 GETUPVAL                         R3 2
       75 SETTABLEKS                       R2 R3 K15 ["instances"]
       77 RETURN                           R2 1

PROTO_60:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+231]
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+26]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["assetTypeId"]
        7 GETIMPORT                        R1 K4 [Enum.AssetType.Audio]
        9 GETTABLEKS                       R1 R1 K5 ["Value"]
       11 JUMPIFNOTEQ                      R0 R1 ; [+18]
       13 GETUPVAL                         R0 2
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R1 R1 K6 ["assetName"]
       17 GETUPVAL                         R2 0
       18 GETTABLEKS                       R2 R2 K7 ["assetId"]
       20 GETUPVAL                         R3 0
       21 GETTABLEKS                       R3 R3 K0 ["assetTypeId"]
       23 GETUPVAL                         R4 0
       24 GETTABLEKS                       R4 R4 K8 ["insertToolPromise"]
       26 GETUPVAL                         R5 0
       27 GETTABLEKS                       R5 R5 K9 ["localization"]
       29 CALL                             R0 5 0
       30 GETUPVAL                         R0 0
       31 GETTABLEKS                       R0 R0 K6 ["assetName"]
       33 GETUPVAL                         R1 0
       34 GETTABLEKS                       R1 R1 K10 ["instances"]
       36 GETUPVAL                         R2 0
       37 GETTABLEKS                       R2 R2 K8 ["insertToolPromise"]
       39 GETUPVAL                         R3 3
       40 GETTABLEKS                       R3 R3 K11 ["new"]
       42 NEWCLOSURE                       R4 P0
       43 CAPTURE                          VAL R1
       44 CAPTURE                          UPVAL U4
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R0
       47 CAPTURE                          UPVAL U5
       48 CALL                             R3 1 1
       49 LOADNIL                          R0
       50 GETUPVAL                         R1 6
       51 CALL                             R1 0 1
       52 JUMPIFNOT                        R1 ; [+56]
       53 GETUPVAL                         R1 7
       54 CALL                             R1 0 1
       55 JUMPIFNOT                        R1 ; [+53]
       56 GETUPVAL                         R1 8
       57 CALL                             R1 0 1
       58 JUMPIFNOT                        R1 ; [+48]
       59 GETUPVAL                         R1 0
       60 GETTABLEKS                       R1 R1 K12 ["options"]
       62 JUMPIFNOT                        R1 ; [+44]
       63 GETUPVAL                         R1 0
       64 GETTABLEKS                       R1 R1 K12 ["options"]
       66 GETTABLEKS                       R1 R1 K13 ["capabilities"]
       68 JUMPIFNOT                        R1 ; [+38]
       69 LOADB                            R1 0
       70 GETUPVAL                         R2 0
       71 GETTABLEKS                       R2 R2 K12 ["options"]
       73 GETTABLEKS                       R2 R2 K13 ["capabilities"]
       75 GETTABLEKS                       R2 R2 K14 ["shouldSandbox"]
       77 JUMPIFNOTEQKB                    R2 TRUE ; [+29]
       79 LOADB                            R1 0
       80 GETUPVAL                         R2 0
       81 GETTABLEKS                       R2 R2 K10 ["instances"]
       83 JUMPIFEQKNIL                     R2 ; [+23]
       85 GETUPVAL                         R3 0
       86 GETTABLEKS                       R3 R3 K12 ["options"]
       88 GETTABLEKS                       R3 R3 K15 ["creator"]
       90 JUMPIF                           R3 ; [+2]
       91 LOADB                            R2 0
       92 JUMP                             ; [+13]
       93 LOADB                            R2 0
       94 GETTABLEKS                       R4 R3 K16 ["Type"]
       96 JUMPIFNOTEQKN                    R4 K17 [1] ; [+9]
       98 GETTABLEKS                       R4 R3 K18 ["Id"]
      100 GETUPVAL                         R5 9
      101 CALL                             R5 0 1
      102 JUMPIFEQ                         R4 R5 ; [+2]
      104 LOADB                            R2 0 +1
      105 LOADB                            R2 1
      106 NOT                              R1 R2
      107 MOVE                             R0 R1
      108 JUMP                             ; [+60]
      109 GETUPVAL                         R1 7
      110 CALL                             R1 0 1
      111 JUMPIFNOT                        R1 ; [+32]
      112 GETUPVAL                         R1 8
      113 CALL                             R1 0 1
      114 JUMPIFNOT                        R1 ; [+27]
      115 GETUPVAL                         R1 0
      116 GETTABLEKS                       R1 R1 K12 ["options"]
      118 JUMPIFNOT                        R1 ; [+23]
      119 GETUPVAL                         R1 0
      120 GETTABLEKS                       R1 R1 K12 ["options"]
      122 GETTABLEKS                       R1 R1 K13 ["capabilities"]
      124 JUMPIFNOT                        R1 ; [+17]
      125 LOADB                            R1 0
      126 GETUPVAL                         R2 0
      127 GETTABLEKS                       R2 R2 K12 ["options"]
      129 GETTABLEKS                       R2 R2 K13 ["capabilities"]
      131 GETTABLEKS                       R2 R2 K14 ["shouldSandbox"]
      133 JUMPIFNOTEQKB                    R2 TRUE ; [+8]
      135 GETUPVAL                         R2 0
      136 GETTABLEKS                       R2 R2 K10 ["instances"]
      138 JUMPIFNOTEQKNIL                  R2 ; [+2]
      140 LOADB                            R1 0 +1
      141 LOADB                            R1 1
      142 MOVE                             R0 R1
      143 JUMP                             ; [+25]
      144 GETUPVAL                         R1 8
      145 CALL                             R1 0 1
      146 JUMPIFNOT                        R1 ; [+21]
      147 GETUPVAL                         R1 0
      148 GETTABLEKS                       R1 R1 K12 ["options"]
      150 JUMPIFNOT                        R1 ; [+17]
      151 GETUPVAL                         R1 0
      152 GETTABLEKS                       R1 R1 K12 ["options"]
      154 GETTABLEKS                       R1 R1 K13 ["capabilities"]
      156 JUMPIFNOT                        R1 ; [+11]
      157 GETUPVAL                         R2 0
      158 GETTABLEKS                       R2 R2 K12 ["options"]
      160 GETTABLEKS                       R2 R2 K13 ["capabilities"]
      162 GETTABLEKS                       R2 R2 K14 ["shouldSandbox"]
      164 JUMPIFEQKB                       R2 TRUE ; [+2]
      166 LOADB                            R1 0 +1
      167 LOADB                            R1 1
      168 MOVE                             R0 R1
      169 JUMPIFNOT                        R0 ; [+12]
      170 GETUPVAL                         R1 10
      171 GETTABLEKS                       R1 R1 K19 ["SetCapabilitiesAndSandboxForModel"]
      173 GETUPVAL                         R2 0
      174 GETTABLEKS                       R2 R2 K10 ["instances"]
      176 GETUPVAL                         R3 0
      177 GETTABLEKS                       R3 R3 K7 ["assetId"]
      179 GETUPVAL                         R4 11
      180 CALL                             R1 3 0
      181 JUMP                             ; [+13]
      182 GETUPVAL                         R1 8
      183 CALL                             R1 0 1
      184 JUMPIF                           R1 ; [+10]
      185 GETUPVAL                         R1 0
      186 GETTABLEKS                       R1 R1 K10 ["instances"]
      188 JUMPIFEQKNIL                     R1 ; [+6]
      190 GETUPVAL                         R1 12
      191 GETUPVAL                         R2 0
      192 GETTABLEKS                       R2 R2 K10 ["instances"]
      194 CALL                             R1 1 0
      195 GETUPVAL                         R1 13
      196 GETTABLEKS                       R1 R1 K20 ["contains"]
      198 GETUPVAL                         R2 0
      199 GETTABLEKS                       R2 R2 K21 ["assetSubTypes"]
      201 GETUPVAL                         R3 13
      202 GETTABLEKS                       R3 R3 K22 ["MaterialPack"]
      204 CALL                             R1 2 1
      205 JUMPIFNOT                        R1 ; [+11]
      206 GETUPVAL                         R1 0
      207 GETTABLEKS                       R1 R1 K10 ["instances"]
      209 LOADNIL                          R2
      210 LOADNIL                          R3
      211 FORGPREP                         R1
      212 GETUPVAL                         R6 14
      213 SETTABLEKS                       R6 R5 K23 ["Parent"]
      215 FORGLOOP                         R1 2 ; [-4]
      217 GETUPVAL                         R1 0
      218 GETTABLEKS                       R1 R1 K24 ["onSuccess"]
      220 JUMPIFNOT                        R1 ; [+10]
      221 GETUPVAL                         R1 0
      222 GETTABLEKS                       R1 R1 K24 ["onSuccess"]
      224 GETUPVAL                         R2 0
      225 GETTABLEKS                       R2 R2 K7 ["assetId"]
      227 GETUPVAL                         R3 0
      228 GETTABLEKS                       R3 R3 K10 ["instances"]
      230 CALL                             R1 2 0
      231 LOADNIL                          R1
      232 SETUPVAL                         R1 0
      233 RETURN                           R0 0

PROTO_61:
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
       14 CAPTURE                          UPVAL U11
       15 CAPTURE                          UPVAL U12
       16 CAPTURE                          UPVAL U13
       17 CAPTURE                          UPVAL U14
       18 CALL                             R0 1 0
       19 RETURN                           R0 0

PROTO_62:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CAPTURE                          UPVAL U5
        7 CAPTURE                          UPVAL U6
        8 CAPTURE                          UPVAL U7
        9 SETTABLEKS                       R1 R0 K0 ["ProcessAssetInsertionDrag"]
       11 NEWCLOSURE                       R1 P1
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          UPVAL U8
       14 CAPTURE                          UPVAL U9
       15 CAPTURE                          UPVAL U10
       16 CAPTURE                          UPVAL U11
       17 CAPTURE                          UPVAL U12
       18 CAPTURE                          UPVAL U13
       19 CAPTURE                          UPVAL U14
       20 CAPTURE                          UPVAL U15
       21 CAPTURE                          UPVAL U3
       22 CAPTURE                          UPVAL U16
       23 CAPTURE                          VAL R0
       24 CAPTURE                          UPVAL U4
       25 CAPTURE                          UPVAL U17
       26 CAPTURE                          UPVAL U18
       27 SETTABLEKS                       R1 R0 K1 ["ProcessAssetInsertionDrop"]
       29 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Util"]
       15 GETTABLEKS                       R2 R2 K7 ["Analytics"]
       17 GETTABLEKS                       R2 R2 K7 ["Analytics"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K4 [require]
       22 GETTABLEKS                       R3 R0 K5 ["Src"]
       24 GETTABLEKS                       R3 R3 K6 ["Util"]
       26 GETTABLEKS                       R3 R3 K8 ["DebugFlags"]
       28 CALL                             R2 1 1
       29 GETIMPORT                        R3 K4 [require]
       31 GETTABLEKS                       R4 R0 K5 ["Src"]
       33 GETTABLEKS                       R4 R4 K6 ["Util"]
       35 GETTABLEKS                       R4 R4 K9 ["fastMoveTo"]
       37 CALL                             R3 1 1
       38 GETIMPORT                        R4 K4 [require]
       40 GETTABLEKS                       R5 R0 K5 ["Src"]
       42 GETTABLEKS                       R5 R5 K6 ["Util"]
       44 GETTABLEKS                       R5 R5 K10 ["InsertToolPromise"]
       46 CALL                             R4 1 1
       47 GETIMPORT                        R5 K4 [require]
       49 GETTABLEKS                       R6 R0 K5 ["Src"]
       51 GETTABLEKS                       R6 R6 K6 ["Util"]
       53 GETTABLEKS                       R6 R6 K11 ["Urls"]
       55 CALL                             R5 1 1
       56 GETIMPORT                        R6 K4 [require]
       58 GETTABLEKS                       R7 R0 K5 ["Src"]
       60 GETTABLEKS                       R7 R7 K6 ["Util"]
       62 GETTABLEKS                       R7 R7 K12 ["Inserts"]
       64 GETTABLEKS                       R7 R7 K13 ["SandboxAsset"]
       66 CALL                             R6 1 1
       67 GETIMPORT                        R7 K4 [require]
       69 GETTABLEKS                       R8 R0 K5 ["Src"]
       71 GETTABLEKS                       R8 R8 K6 ["Util"]
       73 GETTABLEKS                       R8 R8 K12 ["Inserts"]
       75 GETTABLEKS                       R8 R8 K14 ["sandboxProceduralModels"]
       77 CALL                             R7 1 1
       78 GETIMPORT                        R8 K4 [require]
       80 GETTABLEKS                       R9 R0 K5 ["Src"]
       82 GETTABLEKS                       R9 R9 K6 ["Util"]
       84 GETTABLEKS                       R9 R9 K15 ["Publishing"]
       86 GETTABLEKS                       R9 R9 K16 ["publishDraftAssets"]
       88 CALL                             R8 1 1
       89 GETIMPORT                        R9 K4 [require]
       91 GETTABLEKS                       R10 R0 K5 ["Src"]
       93 GETTABLEKS                       R10 R10 K6 ["Util"]
       95 GETTABLEKS                       R10 R10 K15 ["Publishing"]
       97 GETTABLEKS                       R10 R10 K17 ["parsePublishableAssetTypeIds"]
       99 CALL                             R9 1 1
      100 GETIMPORT                        R10 K4 [require]
      102 GETTABLEKS                       R11 R0 K5 ["Src"]
      104 GETTABLEKS                       R11 R11 K6 ["Util"]
      106 GETTABLEKS                       R11 R11 K15 ["Publishing"]
      108 GETTABLEKS                       R11 R11 K18 ["isAssetOwnedByAccount"]
      110 CALL                             R10 1 1
      111 GETIMPORT                        R11 K4 [require]
      113 GETTABLEKS                       R12 R0 K5 ["Src"]
      115 GETTABLEKS                       R12 R12 K6 ["Util"]
      117 GETTABLEKS                       R12 R12 K19 ["CreatorInfoHelper"]
      119 CALL                             R11 1 1
      120 GETTABLEKS                       R12 R0 K20 ["Packages"]
      122 GETIMPORT                        R13 K4 [require]
      124 GETTABLEKS                       R14 R12 K21 ["Framework"]
      126 CALL                             R13 1 1
      127 GETTABLEKS                       R14 R13 K6 ["Util"]
      129 GETTABLEKS                       R14 R14 K22 ["Promise"]
      131 GETIMPORT                        R15 K4 [require]
      133 GETTABLEKS                       R16 R0 K5 ["Src"]
      135 GETTABLEKS                       R16 R16 K23 ["Types"]
      137 GETTABLEKS                       R16 R16 K24 ["Category"]
      139 CALL                             R15 1 1
      140 GETIMPORT                        R16 K4 [require]
      142 GETTABLEKS                       R17 R0 K5 ["Src"]
      144 GETTABLEKS                       R17 R17 K23 ["Types"]
      146 GETTABLEKS                       R17 R17 K25 ["AssetSubTypes"]
      148 CALL                             R16 1 1
      149 GETIMPORT                        R17 K4 [require]
      151 GETTABLEKS                       R18 R0 K5 ["Src"]
      153 GETTABLEKS                       R18 R18 K6 ["Util"]
      155 GETTABLEKS                       R18 R18 K26 ["Permissions"]
      157 GETTABLEKS                       R18 R18 K27 ["Constants"]
      159 CALL                             R17 1 1
      160 GETTABLEKS                       R17 R17 K28 ["webKeys"]
      162 GETIMPORT                        R18 K4 [require]
      164 GETTABLEKS                       R19 R0 K5 ["Src"]
      166 GETTABLEKS                       R19 R19 K6 ["Util"]
      168 GETTABLEKS                       R19 R19 K29 ["SharedFlags"]
      170 GETTABLEKS                       R19 R19 K30 ["getFFlagToolboxUseAssetDependencyGrantEvent"]
      172 CALL                             R18 1 1
      173 GETIMPORT                        R19 K4 [require]
      175 GETTABLEKS                       R20 R0 K5 ["Src"]
      177 GETTABLEKS                       R20 R20 K6 ["Util"]
      179 GETTABLEKS                       R20 R20 K29 ["SharedFlags"]
      181 GETTABLEKS                       R20 R20 K31 ["getFIntToolboxAssetDependencyGrantEventTimeout"]
      183 CALL                             R19 1 1
      184 GETIMPORT                        R20 K4 [require]
      186 GETTABLEKS                       R21 R0 K5 ["Src"]
      188 GETTABLEKS                       R21 R21 K6 ["Util"]
      190 GETTABLEKS                       R21 R21 K29 ["SharedFlags"]
      192 GETTABLEKS                       R21 R21 K32 ["getFFlagToolboxPublishDraftAssetsOnInsert"]
      194 CALL                             R20 1 1
      195 GETIMPORT                        R21 K4 [require]
      197 GETTABLEKS                       R22 R0 K5 ["Src"]
      199 GETTABLEKS                       R22 R22 K6 ["Util"]
      201 GETTABLEKS                       R22 R22 K29 ["SharedFlags"]
      203 GETTABLEKS                       R22 R22 K33 ["getFStringToolboxPublishDraftAssetTypesCSV"]
      205 CALL                             R21 1 1
      206 GETIMPORT                        R22 K4 [require]
      208 GETTABLEKS                       R23 R0 K5 ["Src"]
      210 GETTABLEKS                       R23 R23 K6 ["Util"]
      212 GETTABLEKS                       R23 R23 K29 ["SharedFlags"]
      214 GETTABLEKS                       R23 R23 K34 ["getFFlagToolboxResandboxProceduralModels"]
      216 CALL                             R22 1 1
      217 GETIMPORT                        R23 K4 [require]
      219 GETTABLEKS                       R24 R0 K5 ["Src"]
      221 GETTABLEKS                       R24 R24 K6 ["Util"]
      223 GETTABLEKS                       R24 R24 K29 ["SharedFlags"]
      225 GETTABLEKS                       R24 R24 K35 ["getFFlagToolboxFailedDragSkipSandbox"]
      227 CALL                             R23 1 1
      228 GETIMPORT                        R24 K4 [require]
      230 GETTABLEKS                       R25 R0 K5 ["Src"]
      232 GETTABLEKS                       R25 R25 K6 ["Util"]
      234 GETTABLEKS                       R25 R25 K29 ["SharedFlags"]
      236 GETTABLEKS                       R25 R25 K36 ["getFFlagToolboxCapabilities"]
      238 CALL                             R24 1 1
      239 GETIMPORT                        R25 K4 [require]
      241 GETTABLEKS                       R26 R0 K5 ["Src"]
      243 GETTABLEKS                       R26 R26 K6 ["Util"]
      245 GETTABLEKS                       R26 R26 K29 ["SharedFlags"]
      247 GETTABLEKS                       R26 R26 K37 ["getFFlagToolboxDoNotSandboxCreatedAssets"]
      249 CALL                             R25 1 1
      250 GETIMPORT                        R26 K4 [require]
      252 GETTABLEKS                       R27 R0 K5 ["Src"]
      254 GETTABLEKS                       R27 R27 K6 ["Util"]
      256 GETTABLEKS                       R27 R27 K38 ["getUserId"]
      258 CALL                             R26 1 1
      259 GETIMPORT                        R27 K40 [game]
      261 LOADK                            R29 K41 ["ToolboxEnableAudioGrantDialog"]
      262 NAMECALL                         R27 R27 K42 ["GetFastFlag"]
      264 CALL                             R27 2 1
      265 GETIMPORT                        R28 K40 [game]
      267 LOADK                            R30 K43 ["ToolboxUnifyModelPackageInsertion2"]
      268 LOADB                            R31 0
      269 NAMECALL                         R28 R28 K44 ["DefineFastFlag"]
      271 CALL                             R28 3 1
      272 GETIMPORT                        R29 K40 [game]
      274 LOADK                            R31 K45 ["ToolboxSetMarketplaceModelsAsPackagesForIXP3"]
      275 NAMECALL                         R29 R29 K42 ["GetFastFlag"]
      277 CALL                             R29 2 1
      278 GETIMPORT                        R30 K40 [game]
      280 LOADK                            R32 K46 ["ToolboxSetMarketplaceModelsAsPackagesForAll"]
      281 NAMECALL                         R30 R30 K42 ["GetFastFlag"]
      283 CALL                             R30 2 1
      284 GETIMPORT                        R31 K40 [game]
      286 LOADK                            R33 K47 ["ToolboxDeleteTempModelFix"]
      287 NAMECALL                         R31 R31 K42 ["GetFastFlag"]
      289 CALL                             R31 2 1
      290 GETIMPORT                        R32 K40 [game]
      292 LOADK                            R34 K48 ["ToolboxVideoUsePermissionInsertion"]
      293 NAMECALL                         R32 R32 K42 ["GetFastFlag"]
      295 CALL                             R32 2 1
      296 GETIMPORT                        R33 K40 [game]
      298 LOADK                            R35 K49 ["ToolboxVideoTestUseLocalAudioFile"]
      299 NAMECALL                         R33 R33 K42 ["GetFastFlag"]
      301 CALL                             R33 2 1
      302 GETIMPORT                        R34 K40 [game]
      304 LOADK                            R36 K50 ["ToolboxYieldInsertPerInstanceModulus"]
      305 NAMECALL                         R34 R34 K51 ["GetFastInt"]
      307 CALL                             R34 2 1
      308 GETIMPORT                        R35 K40 [game]
      310 LOADK                            R37 K52 ["ToolboxRemoveOldWarning"]
      311 LOADB                            R38 0
      312 NAMECALL                         R35 R35 K44 ["DefineFastFlag"]
      314 CALL                             R35 3 1
      315 GETIMPORT                        R36 K4 [require]
      317 GETTABLEKS                       R37 R0 K5 ["Src"]
      319 GETTABLEKS                       R37 R37 K6 ["Util"]
      321 GETTABLEKS                       R37 R37 K53 ["ToolboxCommunication"]
      323 CALL                             R36 1 1
      324 GETIMPORT                        R37 K40 [game]
      326 LOADK                            R39 K54 ["ChangeHistoryService"]
      327 NAMECALL                         R37 R37 K55 ["GetService"]
      329 CALL                             R37 2 1
      330 GETIMPORT                        R38 K40 [game]
      332 LOADK                            R40 K56 ["InsertService"]
      333 NAMECALL                         R38 R38 K55 ["GetService"]
      335 CALL                             R38 2 1
      336 GETIMPORT                        R39 K40 [game]
      338 LOADK                            R41 K57 ["Selection"]
      339 NAMECALL                         R39 R39 K55 ["GetService"]
      341 CALL                             R39 2 1
      342 GETIMPORT                        R40 K40 [game]
      344 LOADK                            R42 K58 ["StarterPack"]
      345 NAMECALL                         R40 R40 K55 ["GetService"]
      347 CALL                             R40 2 1
      348 GETIMPORT                        R41 K40 [game]
      350 LOADK                            R43 K59 ["Workspace"]
      351 NAMECALL                         R41 R41 K55 ["GetService"]
      353 CALL                             R41 2 1
      354 GETIMPORT                        R42 K40 [game]
      356 LOADK                            R44 K60 ["StudioService"]
      357 NAMECALL                         R42 R42 K55 ["GetService"]
      359 CALL                             R42 2 1
      360 GETIMPORT                        R43 K40 [game]
      362 LOADK                            R45 K61 ["Lighting"]
      363 NAMECALL                         R43 R43 K55 ["GetService"]
      365 CALL                             R43 2 1
      366 GETIMPORT                        R44 K40 [game]
      368 LOADK                            R46 K62 ["MaterialService"]
      369 NAMECALL                         R44 R44 K55 ["GetService"]
      371 CALL                             R44 2 1
      372 GETIMPORT                        R45 K40 [game]
      374 LOADK                            R47 K63 ["MarketplaceService"]
      375 NAMECALL                         R45 R45 K55 ["GetService"]
      377 CALL                             R45 2 1
      378 GETIMPORT                        R46 K40 [game]
      380 LOADK                            R48 K64 ["SoundService"]
      381 NAMECALL                         R46 R46 K55 ["GetService"]
      383 CALL                             R46 2 1
      384 GETIMPORT                        R47 K40 [game]
      386 LOADK                            R49 K65 ["AssetInsertionUseSpecialMimeTypeEnabled"]
      387 NAMECALL                         R47 R47 K66 ["GetEngineFeature"]
      389 CALL                             R47 2 1
      390 GETIMPORT                        R48 K4 [require]
      392 GETTABLEKS                       R49 R0 K5 ["Src"]
      394 GETTABLEKS                       R49 R49 K6 ["Util"]
      396 GETTABLEKS                       R49 R49 K67 ["parseAutoSetupAttributes"]
      398 CALL                             R48 1 1
      399 NEWTABLE                         R49 4 0
      401 GETIMPORT                        R50 K71 [Enum.RibbonTool.Move]
      403 LOADB                            R51 1
      404 SETTABLE                         R51 R49 R50
      405 GETIMPORT                        R50 K73 [Enum.RibbonTool.Rotate]
      407 LOADB                            R51 1
      408 SETTABLE                         R51 R49 R50
      409 GETIMPORT                        R50 K75 [Enum.RibbonTool.Scale]
      411 LOADB                            R51 1
      412 SETTABLE                         R51 R49 R50
      413 GETIMPORT                        R50 K77 [Enum.RibbonTool.Select]
      415 LOADB                            R51 1
      416 SETTABLE                         R51 R49 R50
      417 NEWTABLE                         R50 4 0
      419 GETIMPORT                        R51 K80 [Enum.AssetType.Model]
      421 GETTABLEKS                       R51 R51 K81 ["Value"]
      423 LOADB                            R52 1
      424 SETTABLE                         R52 R50 R51
      425 GETIMPORT                        R51 K83 [Enum.AssetType.Decal]
      427 GETTABLEKS                       R51 R51 K81 ["Value"]
      429 LOADB                            R52 1
      430 SETTABLE                         R52 R50 R51
      431 GETIMPORT                        R51 K85 [Enum.AssetType.MeshPart]
      433 GETTABLEKS                       R51 R51 K81 ["Value"]
      435 LOADB                            R52 1
      436 SETTABLE                         R52 R50 R51
      437 MOVE                             R51 R9
      438 MOVE                             R52 R21
      439 CALL                             R52 0 -1
      440 CALL                             R51 -1 1
      441 MOVE                             R53 R18
      442 CALL                             R53 0 1
      443 JUMPIFNOT                        R53 ; [+9]
      444 NEWTABLE                         R52 2 0
      446 LOADB                            R53 1
      447 SETTABLEKS                       R53 R52 K86 ["PublicAssetCannotBeGrantedTo"]
      449 LOADB                            R53 1
      450 SETTABLEKS                       R53 R52 K87 ["AssetTypeNotEnabled"]
      452 JUMP                             ; [+2]
      453 NEWTABLE                         R52 0 0
      455 DUPCLOSURE                       R53 K88 [PROTO_0]
      456 CAPTURE                          VAL R15
      457 CAPTURE                          VAL R11
      458 CAPTURE                          VAL R10
      459 DUPCLOSURE                       R54 K89 [PROTO_1]
      460 CAPTURE                          VAL R26
      461 DUPCLOSURE                       R55 K90 [PROTO_2]
      462 CAPTURE                          VAL R34
      463 DUPCLOSURE                       R56 K91 [PROTO_3]
      464 CAPTURE                          VAL R41
      465 DUPCLOSURE                       R57 K92 [PROTO_4]
      466 CAPTURE                          VAL R34
      467 DUPCLOSURE                       R58 K93 [PROTO_6]
      468 CAPTURE                          VAL R17
      469 DUPCLOSURE                       R59 K94 [PROTO_7]
      470 CAPTURE                          VAL R45
      471 CAPTURE                          VAL R58
      472 DUPCLOSURE                       R60 K95 [PROTO_8]
      473 CAPTURE                          VAL R5
      474 CAPTURE                          VAL R2
      475 CAPTURE                          VAL R58
      476 CAPTURE                          VAL R46
      477 CAPTURE                          VAL R39
      478 CAPTURE                          VAL R41
      479 CAPTURE                          VAL R27
      480 CAPTURE                          VAL R59
      481 DUPCLOSURE                       R61 K96 [PROTO_9]
      482 CAPTURE                          VAL R34
      483 CAPTURE                          VAL R1
      484 DUPCLOSURE                       R62 K97 [PROTO_13]
      485 CAPTURE                          VAL R14
      486 CAPTURE                          VAL R34
      487 CAPTURE                          VAL R31
      488 DUPCLOSURE                       R63 K98 [PROTO_16]
      489 CAPTURE                          VAL R43
      490 CAPTURE                          VAL R16
      491 CAPTURE                          VAL R44
      492 CAPTURE                          VAL R4
      493 CAPTURE                          VAL R40
      494 CAPTURE                          VAL R2
      495 DUPCLOSURE                       R64 K99 [PROTO_17]
      496 CAPTURE                          VAL R3
      497 CAPTURE                          VAL R41
      498 DUPCLOSURE                       R65 K100 [PROTO_18]
      499 CAPTURE                          VAL R63
      500 CAPTURE                          VAL R64
      501 CAPTURE                          VAL R48
      502 CAPTURE                          VAL R25
      503 CAPTURE                          VAL R23
      504 CAPTURE                          VAL R24
      505 CAPTURE                          VAL R26
      506 CAPTURE                          VAL R6
      507 CAPTURE                          VAL R7
      508 CAPTURE                          VAL R36
      509 CAPTURE                          VAL R2
      510 CAPTURE                          VAL R39
      511 DUPCLOSURE                       R66 K101 [PROTO_21]
      512 CAPTURE                          VAL R41
      513 CAPTURE                          VAL R28
      514 CAPTURE                          VAL R30
      515 CAPTURE                          VAL R16
      516 CAPTURE                          VAL R15
      517 CAPTURE                          VAL R5
      518 CAPTURE                          VAL R2
      519 CAPTURE                          VAL R38
      520 CAPTURE                          VAL R57
      521 CAPTURE                          VAL R56
      522 CAPTURE                          VAL R61
      523 CAPTURE                          VAL R14
      524 CAPTURE                          VAL R34
      525 CAPTURE                          VAL R31
      526 CAPTURE                          VAL R65
      527 CAPTURE                          VAL R24
      528 CAPTURE                          VAL R25
      529 DUPCLOSURE                       R67 K102 [PROTO_23]
      530 CAPTURE                          VAL R5
      531 CAPTURE                          VAL R2
      532 CAPTURE                          VAL R39
      533 CAPTURE                          VAL R41
      534 DUPCLOSURE                       R68 K103 [PROTO_25]
      535 CAPTURE                          VAL R5
      536 CAPTURE                          VAL R2
      537 CAPTURE                          VAL R38
      538 CAPTURE                          VAL R39
      539 CAPTURE                          VAL R41
      540 LOADNIL                          R69
      541 JUMPIF                           R32 ; [+6]
      542 DUPCLOSURE                       R69 K104 [PROTO_26]
      543 CAPTURE                          VAL R5
      544 CAPTURE                          VAL R2
      545 CAPTURE                          VAL R39
      546 CAPTURE                          VAL R41
      547 JUMP                             ; [+6]
      548 DUPCLOSURE                       R69 K105 [PROTO_27]
      549 CAPTURE                          VAL R5
      550 CAPTURE                          VAL R2
      551 CAPTURE                          VAL R58
      552 CAPTURE                          VAL R39
      553 CAPTURE                          VAL R41
      554 DUPCLOSURE                       R70 K106 [PROTO_29]
      555 DUPCLOSURE                       R71 K107 [PROTO_31]
      556 CAPTURE                          VAL R2
      557 CAPTURE                          VAL R42
      558 DUPCLOSURE                       R72 K108 [PROTO_32]
      559 CAPTURE                          VAL R2
      560 NEWCLOSURE                       R73 P21
      561 CAPTURE                          VAL R16
      562 CAPTURE                          VAL R15
      563 CAPTURE                          VAL R30
      564 CAPTURE                          VAL R29
      565 CAPTURE                          VAL R28
      566 CAPTURE                          VAL R68
      567 CAPTURE                          VAL R60
      568 CAPTURE                          VAL R67
      569 CAPTURE                          VAL R71
      570 CAPTURE                          VAL R32
      571 CAPTURE                          REF R69
      572 CAPTURE                          VAL R70
      573 CAPTURE                          VAL R66
      574 CAPTURE                          VAL R24
      575 DUPCLOSURE                       R74 K109 [PROTO_34]
      576 CAPTURE                          VAL R1
      577 CAPTURE                          VAL R72
      578 DUPTABLE                         R75 K115 [{["_localization"] = , ["registerLocalization"] = , ["registerProcessDragHandler"] = , ["tryInsert"] = }]
      579 LOADNIL                          R76
      580 MOVE                             R77 R24
      581 CALL                             R77 0 1
      582 JUMPIFNOT                        R77 ; [+8]
      583 NEWCLOSURE                       R77 P23
      584 CAPTURE                          REF R76
      585 SETTABLEKS                       R77 R75 K116 ["onlyForTests_setActiveDraggingState"]
      587 NEWCLOSURE                       R77 P24
      588 CAPTURE                          REF R76
      589 SETTABLEKS                       R77 R75 K117 ["onlyForTests_getActiveDraggingState"]
      591 MOVE                             R77 R18
      592 CALL                             R77 0 1
      593 JUMPIF                           R77 ; [+3]
      594 DUPCLOSURE                       R77 K118 [PROTO_37]
      595 SETGLOBAL                        R77 K119 ["didBatchGrantFail_DEPRECATED"]
      597 MOVE                             R77 R18
      598 CALL                             R77 0 1
      599 JUMPIFNOT                        R77 ; [+3]
      600 DUPCLOSURE                       R77 K120 [PROTO_38]
      601 SETGLOBAL                        R77 K121 ["didGrantFailForAssetId"]
      603 DUPCLOSURE                       R77 K122 [PROTO_39]
      604 SETTABLEKS                       R77 R75 K123 ["getGameId"]
      606 DUPCLOSURE                       R77 K124 [PROTO_40]
      607 SETTABLEKS                       R77 R75 K125 ["getCreatorTypeAndId"]
      609 MOVE                             R77 R18
      610 CALL                             R77 0 1
      611 JUMPIF                           R77 ; [+6]
      612 DUPCLOSURE                       R77 K126 [PROTO_43]
      613 CAPTURE                          VAL R50
      614 CAPTURE                          VAL R75
      615 CAPTURE                          VAL R35
      616 SETTABLEKS                       R77 R75 K127 ["tryInsertWithBatchGrantPermissions_DEPRECATED"]
      618 MOVE                             R77 R18
      619 CALL                             R77 0 1
      620 JUMPIFNOT                        R77 ; [+13]
      621 DUPCLOSURE                       R77 K128 [PROTO_51]
      622 CAPTURE                          VAL R20
      623 CAPTURE                          VAL R51
      624 CAPTURE                          VAL R75
      625 CAPTURE                          VAL R15
      626 CAPTURE                          VAL R11
      627 CAPTURE                          VAL R10
      628 CAPTURE                          VAL R8
      629 CAPTURE                          VAL R50
      630 CAPTURE                          VAL R19
      631 CAPTURE                          VAL R52
      632 SETTABLEKS                       R77 R75 K129 ["tryInsertAfterPermissionsGranted"]
      634 NEWCLOSURE                       R77 P31
      635 CAPTURE                          VAL R49
      636 CAPTURE                          REF R76
      637 CAPTURE                          VAL R27
      638 CAPTURE                          VAL R75
      639 CAPTURE                          VAL R24
      640 SETTABLEKS                       R77 R75 K114 ["tryInsert"]
      642 DUPCLOSURE                       R77 K130 [PROTO_53]
      643 CAPTURE                          VAL R2
      644 CAPTURE                          VAL R33
      645 CAPTURE                          VAL R37
      646 CAPTURE                          VAL R75
      647 CAPTURE                          VAL R73
      648 CAPTURE                          VAL R1
      649 CAPTURE                          VAL R72
      650 SETTABLEKS                       R77 R75 K131 ["doInsertAsset"]
      652 DUPCLOSURE                       R77 K132 [PROTO_55]
      653 CAPTURE                          VAL R2
      654 CAPTURE                          VAL R33
      655 CAPTURE                          VAL R37
      656 CAPTURE                          VAL R30
      657 CAPTURE                          VAL R29
      658 CAPTURE                          VAL R15
      659 CAPTURE                          VAL R16
      660 CAPTURE                          VAL R5
      661 CAPTURE                          VAL R47
      662 CAPTURE                          VAL R1
      663 CAPTURE                          VAL R72
      664 SETTABLEKS                       R77 R75 K133 ["doDragInsertAsset"]
      666 DUPCLOSURE                       R77 K134 [PROTO_56]
      667 CAPTURE                          VAL R34
      668 CAPTURE                          VAL R57
      669 DUPCLOSURE                       R78 K135 [PROTO_57]
      670 CAPTURE                          VAL R75
      671 SETTABLEKS                       R78 R75 K112 ["registerLocalization"]
      673 NEWCLOSURE                       R78 P36
      674 CAPTURE                          VAL R77
      675 CAPTURE                          VAL R22
      676 CAPTURE                          REF R76
      677 CAPTURE                          VAL R26
      678 CAPTURE                          VAL R7
      679 CAPTURE                          VAL R1
      680 CAPTURE                          VAL R61
      681 CAPTURE                          VAL R75
      682 CAPTURE                          VAL R27
      683 CAPTURE                          VAL R59
      684 CAPTURE                          VAL R14
      685 CAPTURE                          VAL R34
      686 CAPTURE                          VAL R31
      687 CAPTURE                          VAL R25
      688 CAPTURE                          VAL R23
      689 CAPTURE                          VAL R24
      690 CAPTURE                          VAL R6
      691 CAPTURE                          VAL R16
      692 CAPTURE                          VAL R44
      693 SETTABLEKS                       R78 R75 K113 ["registerProcessDragHandler"]
      695 CLOSEUPVALS                      R69
      696 RETURN                           R75 1
