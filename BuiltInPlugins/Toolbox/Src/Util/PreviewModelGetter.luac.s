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
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          REF R1
        5 FASTPCALL                        pcall 1 ; [+2]
        6 GETIMPORT                        R2 K1 [pcall]
        8 CALL                             R2 1 2
        9 JUMPIF                           R2 ; [+2]
       10 CLOSEUPVALS                      R1
       11 RETURN                           R2 2
       12 LOADNIL                          R4
       13 LENGTH                           R5 R1
       14 JUMPIFNOTEQKN                    R5 K2 [1] ; [+3]
       16 GETTABLEN                        R4 R1 1
       17 JUMP                             ; [+23]
       18 GETIMPORT                        R5 K5 [Instance.new]
       20 LOADK                            R6 K6 ["Model"]
       21 CALL                             R5 1 1
       22 MOVE                             R4 R5
       23 LOADK                            R5 K7 ["Preview"]
       24 SETTABLEKS                       R5 R4 K8 ["Name"]
       26 GETIMPORT                        R5 K10 [ipairs]
       28 MOVE                             R6 R1
       29 CALL                             R5 1 3
       30 FORGPREP_INEXT                   R5
       31 SETTABLEKS                       R4 R9 K11 ["Parent"]
       33 GETTABLEKS                       R10 R9 K11 ["Parent"]
       35 JUMPIF                           R10 ; [+3]
       36 NAMECALL                         R10 R9 K12 ["Destroy"]
       38 CALL                             R10 1 0
       39 FORGLOOP                         R5 2 [inext] ; [-9]
       41 GETUPVAL                         R5 1
       42 MOVE                             R6 R4
       43 CALL                             R5 1 0
       44 MOVE                             R5 R2
       45 MOVE                             R6 R4
       46 CLOSEUPVALS                      R1
       47 RETURN                           R5 2

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
       26 JUMP                             ; [+42]
       27 GETIMPORT                        R2 K8 [Instance.new]
       29 LOADK                            R3 K13 ["Sound"]
       30 CALL                             R2 1 1
       31 LOADK                            R3 K10 ["rbxassetid://%d"]
       32 GETUPVAL                         R5 2
       33 NAMECALL                         R3 R3 K11 ["format"]
       35 CALL                             R3 2 1
       36 SETTABLEKS                       R3 R2 K14 ["SoundId"]
       38 MOVE                             R0 R2
       39 JUMP                             ; [+29]
       40 GETUPVAL                         R2 0
       41 GETIMPORT                        R3 K16 [Enum.AssetType.Video]
       43 GETTABLEKS                       R3 R3 K4 ["Value"]
       45 JUMPIFNOTEQ                      R2 R3 ; [+18]
       47 GETIMPORT                        R2 K8 [Instance.new]
       49 LOADK                            R3 K17 ["VideoFrame"]
       50 CALL                             R2 1 1
       51 LOADB                            R5 1
       52 NAMECALL                         R3 R2 K18 ["SetStudioPreview"]
       54 CALL                             R3 2 0
       55 GETUPVAL                         R3 3
       56 GETTABLEKS                       R3 R3 K19 ["constructAssetIdString"]
       58 GETUPVAL                         R4 2
       59 CALL                             R3 1 1
       60 SETTABLEKS                       R3 R2 K15 ["Video"]
       62 MOVE                             R0 R2
       63 JUMP                             ; [+5]
       64 GETUPVAL                         R2 4
       65 GETUPVAL                         R3 2
       66 CALL                             R2 1 2
       67 MOVE                             R1 R2
       68 MOVE                             R0 R3
       69 JUMPIF                           R1 ; [+4]
       70 GETUPVAL                         R2 5
       71 MOVE                             R3 R0
       72 CALL                             R2 1 0
       73 RETURN                           R0 0
       74 GETUPVAL                         R2 6
       75 MOVE                             R3 R0
       76 CALL                             R2 1 0
       77 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R2 K1 [spawn]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          VAL R1
        9 CAPTURE                          VAL R0
       10 CALL                             R2 1 0
       11 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["new"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 CALL                             R2 1 1
       10 RETURN                           R2 1

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
       31 LOADK                            R6 K13 ["SoundService"]
       32 NAMECALL                         R4 R4 K14 ["GetService"]
       34 CALL                             R4 2 1
       35 DUPCLOSURE                       R5 K15 [PROTO_0]
       36 DUPCLOSURE                       R6 K16 [PROTO_2]
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R5
       39 DUPCLOSURE                       R7 K17 [PROTO_5]
       40 CAPTURE                          VAL R2
       41 CAPTURE                          VAL R4
       42 CAPTURE                          VAL R3
       43 CAPTURE                          VAL R6
       44 RETURN                           R7 1
