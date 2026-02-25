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
        0 LOADK                            R0 K0 ["rbxassetid://%d"]
        1 GETUPVAL                         R2 0
        2 NAMECALL                         R0 R0 K1 ["format"]
        4 CALL                             R0 2 1
        5 GETIMPORT                        R1 K3 [game]
        7 MOVE                             R3 R0
        8 NAMECALL                         R1 R1 K4 ["GetObjectsAsync"]
       10 CALL                             R1 2 1
       11 SETUPVAL                         R1 1
       12 RETURN                           R0 0

PROTO_2:
        0 LOADNIL                          R1
        1 GETIMPORT                        R2 K1 [pcall]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          REF R1
        6 CALL                             R2 1 2
        7 JUMPIF                           R2 ; [+2]
        8 CLOSEUPVALS                      R1
        9 RETURN                           R3 1
       10 LOADNIL                          R4
       11 LENGTH                           R5 R1
       12 JUMPIFNOTEQKN                    R5 K2 [1] ; [+3]
       14 GETTABLEN                        R4 R1 1
       15 JUMP                             ; [+23]
       16 GETIMPORT                        R5 K5 [Instance.new]
       18 LOADK                            R6 K6 ["Model"]
       19 CALL                             R5 1 1
       20 MOVE                             R4 R5
       21 LOADK                            R5 K7 ["Preview"]
       22 SETTABLEKS                       R5 R4 K8 ["Name"]
       24 GETIMPORT                        R5 K10 [ipairs]
       26 MOVE                             R6 R1
       27 CALL                             R5 1 3
       28 FORGPREP_INEXT                   R5
       29 SETTABLEKS                       R4 R9 K11 ["Parent"]
       31 GETTABLEKS                       R10 R9 K11 ["Parent"]
       33 JUMPIF                           R10 ; [+3]
       34 NAMECALL                         R10 R9 K12 ["Destroy"]
       36 CALL                             R10 1 0
       37 FORGLOOP                         R5 2 [inext] ; [-9]
       39 GETUPVAL                         R5 0
       40 MOVE                             R6 R4
       41 CALL                             R5 1 0
       42 CLOSEUPVALS                      R1
       43 RETURN                           R4 1

PROTO_3:
        0 LOADNIL                          R0
        1 GETUPVAL                         R1 0
        2 GETIMPORT                        R3 K3 [Enum.AssetType.Audio]
        4 GETTABLEKS                       R2 R3 K4 ["Value"]
        6 JUMPIFNOTEQ                      R1 R2 ; [+32]
        8 GETUPVAL                         R1 1
        9 NAMECALL                         R1 R1 K5 ["GetAudioApiByDefault"]
       11 CALL                             R1 1 1
       12 JUMPIFNOT                        R1 ; [+13]
       13 GETIMPORT                        R1 K8 [Instance.new]
       15 LOADK                            R2 K9 ["AudioPlayer"]
       16 CALL                             R1 1 1
       17 LOADK                            R2 K10 ["rbxassetid://%d"]
       18 GETUPVAL                         R4 2
       19 NAMECALL                         R2 R2 K11 ["format"]
       21 CALL                             R2 2 1
       22 SETTABLEKS                       R2 R1 K12 ["AssetId"]
       24 MOVE                             R0 R1
       25 JUMP                             ; [+59]
       26 GETIMPORT                        R1 K8 [Instance.new]
       28 LOADK                            R2 K13 ["Sound"]
       29 CALL                             R1 1 1
       30 LOADK                            R2 K10 ["rbxassetid://%d"]
       31 GETUPVAL                         R4 2
       32 NAMECALL                         R2 R2 K11 ["format"]
       34 CALL                             R2 2 1
       35 SETTABLEKS                       R2 R1 K14 ["SoundId"]
       37 MOVE                             R0 R1
       38 JUMP                             ; [+46]
       39 GETUPVAL                         R1 0
       40 GETIMPORT                        R3 K16 [Enum.AssetType.Image]
       42 GETTABLEKS                       R2 R3 K4 ["Value"]
       44 JUMPIFNOTEQ                      R1 R2 ; [+14]
       46 GETIMPORT                        R1 K8 [Instance.new]
       48 LOADK                            R2 K17 ["Decal"]
       49 CALL                             R1 1 1
       50 LOADK                            R2 K10 ["rbxassetid://%d"]
       51 GETUPVAL                         R4 2
       52 NAMECALL                         R2 R2 K11 ["format"]
       54 CALL                             R2 2 1
       55 SETTABLEKS                       R2 R1 K18 ["Texture"]
       57 MOVE                             R0 R1
       58 JUMP                             ; [+26]
       59 GETUPVAL                         R1 3
       60 JUMPIFNOT                        R1 ; [+20]
       61 GETUPVAL                         R1 0
       62 GETIMPORT                        R3 K20 [Enum.AssetType.Video]
       64 GETTABLEKS                       R2 R3 K4 ["Value"]
       66 JUMPIFNOTEQ                      R1 R2 ; [+14]
       68 GETIMPORT                        R1 K8 [Instance.new]
       70 LOADK                            R2 K21 ["VideoFrame"]
       71 CALL                             R1 1 1
       72 LOADK                            R2 K10 ["rbxassetid://%d"]
       73 GETUPVAL                         R4 2
       74 NAMECALL                         R2 R2 K11 ["format"]
       76 CALL                             R2 2 1
       77 SETTABLEKS                       R2 R1 K19 ["Video"]
       79 MOVE                             R0 R1
       80 JUMP                             ; [+4]
       81 GETUPVAL                         R1 4
       82 GETUPVAL                         R2 2
       83 CALL                             R1 1 1
       84 MOVE                             R0 R1
       85 FASTCALL1                        TYPE R0 ; [+3]
       86 MOVE                             R2 R0
       87 GETIMPORT                        R1 K23 [type]
       89 CALL                             R1 1 1
       90 JUMPIFNOTEQKS                    R1 K24 ["string"] ; [+5]
       92 GETUPVAL                         R1 5
       93 MOVE                             R2 R0
       94 CALL                             R1 1 0
       95 RETURN                           R0 0
       96 GETUPVAL                         R1 6
       97 MOVE                             R2 R0
       98 CALL                             R1 1 0
       99 RETURN                           R0 0

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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["new"]
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
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R3 K4 [require]
       11 GETTABLEKS                       R5 R0 K5 ["Packages"]
       13 GETTABLEKS                       R4 R5 K6 ["Framework"]
       15 CALL                             R3 1 1
       16 GETTABLEKS                       R2 R3 K7 ["Util"]
       18 GETTABLEKS                       R1 R2 K8 ["Promise"]
       20 GETIMPORT                        R2 K10 [game]
       22 LOADK                            R4 K11 ["AssetManagerVideoPreviewFix"]
       23 NAMECALL                         R2 R2 K12 ["GetFastFlag"]
       25 CALL                             R2 2 1
       26 GETIMPORT                        R3 K10 [game]
       28 LOADK                            R5 K13 ["SoundService"]
       29 NAMECALL                         R3 R3 K14 ["GetService"]
       31 CALL                             R3 2 1
       32 DUPCLOSURE                       R4 K15 [PROTO_0]
       33 DUPCLOSURE                       R5 K16 [PROTO_2]
       34 CAPTURE                          VAL R4
       35 DUPCLOSURE                       R6 K17 [PROTO_5]
       36 CAPTURE                          VAL R1
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R2
       39 CAPTURE                          VAL R5
       40 RETURN                           R6 1
