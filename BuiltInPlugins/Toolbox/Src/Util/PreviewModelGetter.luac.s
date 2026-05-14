PROTO_0:
        0 GETIMPORT                        R1 K1 [pairs]
        2 NAMECALL                         R2 R0 K2 ["GetDescendants"]
        4 CALL                             R2 1 -1
        5 CALL                             R1 -1 3
        6 FORGPREP_NEXT                    R1
        7 LOADK                            R8 K3 ["Script"]
        8 NAMECALL                         R6 R5 K4 ["IsA"]
       10 CALL                             R6 2 1
       11 JUMPIFNOT                        R6 ; [+3]
       12 LOADB                            R6 1
       13 SETTABLEKS                       R6 R5 K5 ["Disabled"]
       15 FORGLOOP                         R1 2 ; [-9]
       17 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["constructAssetIdUserContextString"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 GETIMPORT                        R1 K2 [game]
        7 MOVE                             R3 R0
        8 NAMECALL                         R1 R1 K3 ["GetObjectsAsync"]
       10 CALL                             R1 2 1
       11 SETUPVAL                         R1 2
       12 RETURN                           R0 0

PROTO_2:
        0 LOADNIL                          R1
        1 GETIMPORT                        R2 K1 [pcall]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          REF R1
        7 CALL                             R2 1 2
        8 JUMPIF                           R2 ; [+2]
        9 CLOSEUPVALS                      R1
       10 RETURN                           R2 2
       11 LOADNIL                          R4
       12 LENGTH                           R5 R1
       13 JUMPIFNOTEQKN                    R5 K2 [1] ; [+3]
       15 GETTABLEN                        R4 R1 1
       16 JUMP                             ; [+23]
       17 GETIMPORT                        R5 K5 [Instance.new]
       19 LOADK                            R6 K6 ["Model"]
       20 CALL                             R5 1 1
       21 MOVE                             R4 R5
       22 LOADK                            R5 K7 ["Preview"]
       23 SETTABLEKS                       R5 R4 K8 ["Name"]
       25 GETIMPORT                        R5 K10 [ipairs]
       27 MOVE                             R6 R1
       28 CALL                             R5 1 3
       29 FORGPREP_INEXT                   R5
       30 SETTABLEKS                       R4 R9 K11 ["Parent"]
       32 GETTABLEKS                       R10 R9 K11 ["Parent"]
       34 JUMPIF                           R10 ; [+3]
       35 NAMECALL                         R10 R9 K12 ["Destroy"]
       37 CALL                             R10 1 0
       38 FORGLOOP                         R5 2 [inext] ; [-9]
       40 GETUPVAL                         R5 1
       41 MOVE                             R6 R4
       42 CALL                             R5 1 0
       43 MOVE                             R5 R2
       44 MOVE                             R6 R4
       45 CLOSEUPVALS                      R1
       46 RETURN                           R5 2

PROTO_3:
        0 LOADNIL                          R0
        1 LOADB                            R1 1
        2 GETUPVAL                         R2 0
        3 GETIMPORT                        R3 K3 [Enum.AssetType.Audio]
        5 GETTABLEKS                       R3 R3 K4 ["Value"]
        7 JUMPIFNOTEQ                      R2 R3 ; [+32]
        9 GETUPVAL                         R2 1
       10 NAMECALL                         R2 R2 K5 ["GetAudioApiByDefault"]
       12 CALL                             R2 1 1
       13 JUMPIFNOT                        R2 ; [+13]
       14 GETIMPORT                        R2 K8 [Instance.new]
       16 LOADK                            R3 K9 ["AudioPlayer"]
       17 CALL                             R2 1 1
       18 LOADK                            R3 K10 ["rbxassetid://%d"]
       19 GETUPVAL                         R5 2
       20 NAMECALL                         R3 R3 K11 ["format"]
       22 CALL                             R3 2 1
       23 SETTABLEKS                       R3 R2 K12 ["AssetId"]
       25 MOVE                             R0 R2
       26 JUMP                             ; [+44]
       27 GETIMPORT                        R2 K8 [Instance.new]
       29 LOADK                            R3 K13 ["Sound"]
       30 CALL                             R2 1 1
       31 LOADK                            R3 K10 ["rbxassetid://%d"]
       32 GETUPVAL                         R5 2
       33 NAMECALL                         R3 R3 K11 ["format"]
       35 CALL                             R3 2 1
       36 SETTABLEKS                       R3 R2 K14 ["SoundId"]
       38 MOVE                             R0 R2
       39 JUMP                             ; [+31]
       40 GETUPVAL                         R2 0
       41 GETIMPORT                        R3 K16 [Enum.AssetType.Video]
       43 GETTABLEKS                       R3 R3 K4 ["Value"]
       45 JUMPIFNOTEQ                      R2 R3 ; [+20]
       47 GETIMPORT                        R2 K8 [Instance.new]
       49 LOADK                            R3 K17 ["VideoFrame"]
       50 CALL                             R2 1 1
       51 GETUPVAL                         R3 3
       52 JUMPIFNOT                        R3 ; [+4]
       53 LOADB                            R5 1
       54 NAMECALL                         R3 R2 K18 ["SetStudioPreview"]
       56 CALL                             R3 2 0
       57 GETUPVAL                         R3 4
       58 GETTABLEKS                       R3 R3 K19 ["constructAssetIdString"]
       60 GETUPVAL                         R4 2
       61 CALL                             R3 1 1
       62 SETTABLEKS                       R3 R2 K15 ["Video"]
       64 MOVE                             R0 R2
       65 JUMP                             ; [+5]
       66 GETUPVAL                         R2 5
       67 GETUPVAL                         R3 2
       68 CALL                             R2 1 2
       69 MOVE                             R1 R2
       70 MOVE                             R0 R3
       71 JUMPIF                           R1 ; [+4]
       72 GETUPVAL                         R2 6
       73 MOVE                             R3 R0
       74 CALL                             R2 1 0
       75 RETURN                           R0 0
       76 GETUPVAL                         R2 7
       77 MOVE                             R3 R0
       78 CALL                             R2 1 0
       79 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R2 K1 [spawn]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 CAPTURE                          VAL R1
       10 CAPTURE                          VAL R0
       11 CALL                             R2 1 0
       12 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["new"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          UPVAL U4
       10 CALL                             R2 1 1
       11 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K3 ["Packages"]
       11 GETIMPORT                        R2 K5 [require]
       13 GETTABLEKS                       R3 R1 K6 ["Framework"]
       15 CALL                             R2 1 1
       16 GETTABLEKS                       R2 R2 K7 ["Util"]
       18 GETTABLEKS                       R2 R2 K8 ["Promise"]
       20 GETIMPORT                        R3 K5 [require]
       22 GETTABLEKS                       R4 R0 K9 ["Src"]
       24 GETTABLEKS                       R4 R4 K7 ["Util"]
       26 GETTABLEKS                       R4 R4 K10 ["Urls"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K12 [game]
       31 LOADK                            R6 K13 ["VideoStudioPreviewPermissionFix"]
       32 NAMECALL                         R4 R4 K14 ["GetFastFlag"]
       34 CALL                             R4 2 1
       35 GETIMPORT                        R5 K12 [game]
       37 LOADK                            R7 K15 ["SoundService"]
       38 NAMECALL                         R5 R5 K16 ["GetService"]
       40 CALL                             R5 2 1
       41 DUPCLOSURE                       R6 K17 [PROTO_0]
       42 DUPCLOSURE                       R7 K18 [PROTO_2]
       43 CAPTURE                          VAL R3
       44 CAPTURE                          VAL R6
       45 DUPCLOSURE                       R8 K19 [PROTO_5]
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R5
       48 CAPTURE                          VAL R4
       49 CAPTURE                          VAL R3
       50 CAPTURE                          VAL R7
       51 RETURN                           R8 1
