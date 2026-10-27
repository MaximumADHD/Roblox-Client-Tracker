PROTO_0:
        0 GETUPVAL                         R3 0
        1 MOVE                             R5 R0
        2 MOVE                             R6 R1
        3 MOVE                             R7 R2
        4 NAMECALL                         R3 R3 K0 ["getText"]
        6 CALL                             R3 4 -1
        7 RETURN                           R3 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Contexts"]
        3 GETTABLEKS                       R0 R0 K1 ["Localization"]
        5 GETTABLEKS                       R0 R0 K1 ["Localization"]
        7 GETTABLEKS                       R0 R0 K2 ["new"]
        9 DUPTABLE                         R1 K7 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "Gen3d"}]
       10 GETUPVAL                         R2 1
       11 SETTABLEKS                       R2 R1 K3 ["stringResourceTable"]
       13 GETUPVAL                         R2 2
       14 SETTABLEKS                       R2 R1 K4 ["translationResourceTable"]
       16 CALL                             R0 1 1
       17 NEWCLOSURE                       R1 P0
       18 CAPTURE                          VAL R0
       19 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Constants"]
        3 GETTABLEKS                       R1 R1 K1 ["Enums"]
        5 GETTABLEKS                       R1 R1 K2 ["SceneQuality"]
        7 GETTABLEKS                       R2 R1 K3 ["Minimal"]
        9 JUMPIFEQ                         R0 R2 ; [+13]
       11 GETTABLEKS                       R2 R1 K4 ["Low"]
       13 JUMPIFEQ                         R0 R2 ; [+9]
       15 GETTABLEKS                       R2 R1 K5 ["Medium"]
       17 JUMPIFEQ                         R0 R2 ; [+5]
       19 GETTABLEKS                       R2 R1 K6 ["High"]
       21 JUMPIFNOTEQ                      R0 R2 ; [+2]
       23 RETURN                           R0 1
       24 LOADNIL                          R2
       25 RETURN                           R2 1

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["images"]
        2 FASTCALL1                        TYPEOF R2 ; [+2]
        3 GETIMPORT                        R1 K2 [typeof]
        5 CALL                             R1 1 1
        6 JUMPIFEQKS                       R1 K3 ["table"] ; [+3]
        8 LOADNIL                          R1
        9 RETURN                           R1 1
       10 NEWTABLE                         R1 0 0
       12 GETTABLEKS                       R2 R0 K0 ["images"]
       14 LOADNIL                          R3
       15 LOADNIL                          R4
       16 FORGPREP                         R2
       17 FASTCALL1                        TYPEOF R6 ; [+3]
       18 MOVE                             R8 R6
       19 GETIMPORT                        R7 K2 [typeof]
       21 CALL                             R7 1 1
       22 JUMPIFNOTEQKS                    R7 K3 ["table"] ; [+13]
       24 GETTABLEKS                       R8 R6 K4 ["data"]
       26 FASTCALL1                        TYPEOF R8 ; [+2]
       27 GETIMPORT                        R7 K2 [typeof]
       29 CALL                             R7 1 1
       30 JUMPIFNOTEQKS                    R7 K5 ["string"] ; [+5]
       32 GETTABLEKS                       R7 R6 K4 ["data"]
       34 JUMPIFNOTEQKS                    R7 K6 [""] ; [+3]
       36 LOADNIL                          R7
       37 RETURN                           R7 1
       38 GETTABLEKS                       R9 R6 K7 ["mimeType"]
       40 FASTCALL1                        TYPEOF R9 ; [+2]
       41 GETIMPORT                        R8 K2 [typeof]
       43 CALL                             R8 1 1
       44 JUMPIFNOTEQKS                    R8 K5 ["string"] ; [+8]
       46 GETTABLEKS                       R8 R6 K7 ["mimeType"]
       48 JUMPIFEQKS                       R8 K6 [""] ; [+4]
       50 GETTABLEKS                       R7 R6 K7 ["mimeType"]
       52 JUMP                             ; [+1]
       53 LOADK                            R7 K8 ["image/png"]
       54 DUPTABLE                         R10 K11 [{["type"] = "image", ["data"], ["mimeType"]}]
       55 GETTABLEKS                       R11 R6 K4 ["data"]
       57 SETTABLEKS                       R11 R10 K4 ["data"]
       59 SETTABLEKS                       R7 R10 K7 ["mimeType"]
       61 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
       63 MOVE                             R9 R1
       64 GETIMPORT                        R8 K13 [table.insert]
       66 CALL                             R8 2 0
       67 FORGLOOP                         R2 2 ; [-51]
       69 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+9]
        2 JUMPIFNOTEQKS                    R0 K0 ["InvalidBounds"] ; [+8]
        4 GETUPVAL                         R2 1
        5 GETUPVAL                         R3 2
        6 LOADK                            R4 K1 ["SceneGen"]
        7 MOVE                             R5 R0
        8 LOADK                            R6 K2 ["Enter finite coordinates and scene sizes between 1 and 2048 studs."]
        9 CALL                             R2 4 -1
       10 RETURN                           R2 -1
       11 GETUPVAL                         R2 2
       12 LOADK                            R3 K1 ["SceneGen"]
       13 MOVE                             R4 R0
       14 MOVE                             R5 R1
       15 CALL                             R2 3 -1
       16 RETURN                           R2 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 NAMECALL                         R5 R4 K0 ["Disconnect"]
        6 CALL                             R5 1 0
        7 FORGLOOP                         R0 2 ; [-4]
        9 GETIMPORT                        R0 K3 [table.clear]
       11 GETUPVAL                         R1 0
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 JUMPIFNOT                        R1 ; [+6]
        3 JUMPIFEQKNIL                     R0 ; [+5]
        5 GETTABLEKS                       R1 R0 K0 ["Parent"]
        7 JUMPIFNOTEQKNIL                  R1 ; [+2]
        9 RETURN                           R0 0
       10 GETUPVAL                         R1 2
       11 GETTABLEKS                       R1 R1 K1 ["SceneBoundsOps"]
       13 GETTABLEKS                       R1 R1 K2 ["getPosition"]
       15 MOVE                             R2 R0
       16 CALL                             R1 1 1
       17 GETUPVAL                         R2 3
       18 GETUPVAL                         R4 4
       19 GETTABLEKS                       R4 R4 K3 ["SceneGenBoundsChanged"]
       21 LOADNIL                          R5
       22 DUPTABLE                         R6 K7 [{"editSessionId", "bounds", "errorMessage"}]
       23 GETUPVAL                         R7 5
       24 SETTABLEKS                       R7 R6 K4 ["editSessionId"]
       26 DUPTABLE                         R7 K10 [{"size", "position"}]
       27 DUPTABLE                         R8 K14 [{"x", "y", "z"}]
       28 GETTABLEKS                       R9 R0 K15 ["Size"]
       30 GETTABLEKS                       R9 R9 K16 ["X"]
       32 SETTABLEKS                       R9 R8 K11 ["x"]
       34 GETTABLEKS                       R9 R0 K15 ["Size"]
       36 GETTABLEKS                       R9 R9 K17 ["Y"]
       38 SETTABLEKS                       R9 R8 K12 ["y"]
       40 GETTABLEKS                       R9 R0 K15 ["Size"]
       42 GETTABLEKS                       R9 R9 K18 ["Z"]
       44 SETTABLEKS                       R9 R8 K13 ["z"]
       46 SETTABLEKS                       R8 R7 K8 ["size"]
       48 DUPTABLE                         R8 K14 [{"x", "y", "z"}]
       49 GETTABLEKS                       R9 R1 K16 ["X"]
       51 SETTABLEKS                       R9 R8 K11 ["x"]
       53 GETTABLEKS                       R9 R1 K17 ["Y"]
       55 SETTABLEKS                       R9 R8 K12 ["y"]
       57 GETTABLEKS                       R9 R1 K18 ["Z"]
       59 SETTABLEKS                       R9 R8 K13 ["z"]
       61 SETTABLEKS                       R8 R7 K9 ["position"]
       63 SETTABLEKS                       R7 R6 K5 ["bounds"]
       65 GETIMPORT                        R8 K20 [next]
       67 GETUPVAL                         R9 6
       68 CALL                             R8 1 1
       69 JUMPIFNOT                        R8 ; [+15]
       70 GETUPVAL                         R8 1
       71 JUMPIFNOT                        R8 ; [+7]
       72 GETUPVAL                         R7 7
       73 GETUPVAL                         R8 8
       74 LOADK                            R9 K21 ["SceneGen"]
       75 LOADK                            R10 K22 ["InvalidBounds"]
       76 LOADK                            R11 K23 ["Enter finite coordinates and scene sizes between 1 and 2048 studs."]
       77 CALL                             R7 4 1
       78 JUMP                             ; [+7]
       79 GETUPVAL                         R7 8
       80 LOADK                            R8 K21 ["SceneGen"]
       81 LOADK                            R9 K22 ["InvalidBounds"]
       82 LOADNIL                          R10
       83 CALL                             R7 3 1
       84 JUMP                             ; [+1]
       85 LOADNIL                          R7
       86 SETTABLEKS                       R7 R6 K6 ["errorMessage"]
       88 NAMECALL                         R2 R2 K24 ["FireGuest"]
       90 CALL                             R2 4 0
       91 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 NAMECALL                         R5 R4 K0 ["Disconnect"]
        6 CALL                             R5 1 0
        7 FORGLOOP                         R0 2 ; [-4]
        9 GETIMPORT                        R0 K3 [table.clear]
       11 GETUPVAL                         R1 0
       12 CALL                             R0 1 0
       13 GETUPVAL                         R0 1
       14 LOADNIL                          R1
       15 SETUPVAL                         R1 2
       16 LOADNIL                          R1
       17 SETUPVAL                         R1 1
       18 JUMPIFEQKNIL                     R0 ; [+6]
       20 GETUPVAL                         R1 3
       21 GETTABLEKS                       R1 R1 K4 ["destroy"]
       23 MOVE                             R2 R0
       24 CALL                             R1 1 0
       25 GETUPVAL                         R1 4
       26 GETUPVAL                         R3 5
       27 GETTABLEKS                       R3 R3 K5 ["SceneGenBoundsChanged"]
       29 LOADNIL                          R4
       30 DUPTABLE                         R5 K8 [{"editSessionId", "errorMessage"}]
       31 GETUPVAL                         R6 6
       32 SETTABLEKS                       R6 R5 K6 ["editSessionId"]
       34 GETUPVAL                         R6 7
       35 LOADK                            R7 K9 ["GenerateLayout"]
       36 LOADK                            R8 K10 ["ViewportNoBox"]
       37 CALL                             R6 2 1
       38 SETTABLEKS                       R6 R5 K7 ["errorMessage"]
       40 NAMECALL                         R1 R1 K11 ["FireGuest"]
       42 CALL                             R1 4 0
       43 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 NAMECALL                         R5 R4 K0 ["Disconnect"]
        6 CALL                             R5 1 0
        7 FORGLOOP                         R0 2 ; [-4]
        9 GETIMPORT                        R0 K3 [table.clear]
       11 GETUPVAL                         R1 0
       12 CALL                             R0 1 0
       13 GETUPVAL                         R0 1
       14 GETUPVAL                         R1 2
       15 JUMPIFNOT                        R1 ; [+49]
       16 JUMPIFEQKNIL                     R0 ; [+48]
       18 GETUPVAL                         R2 0
       19 LOADK                            R5 K4 ["Size"]
       20 NAMECALL                         R3 R0 K5 ["GetPropertyChangedSignal"]
       22 CALL                             R3 2 1
       23 GETUPVAL                         R5 3
       24 NAMECALL                         R3 R3 K6 ["Connect"]
       26 CALL                             R3 2 -1
       27 FASTCALL                         TABLE_INSERT ; [+2]
       28 GETIMPORT                        R1 K8 [table.insert]
       30 CALL                             R1 -1 0
       31 GETUPVAL                         R2 0
       32 LOADK                            R5 K9 ["CFrame"]
       33 NAMECALL                         R3 R0 K5 ["GetPropertyChangedSignal"]
       35 CALL                             R3 2 1
       36 GETUPVAL                         R5 3
       37 NAMECALL                         R3 R3 K6 ["Connect"]
       39 CALL                             R3 2 -1
       40 FASTCALL                         TABLE_INSERT ; [+2]
       41 GETIMPORT                        R1 K8 [table.insert]
       43 CALL                             R1 -1 0
       44 GETUPVAL                         R2 0
       45 GETTABLEKS                       R3 R0 K10 ["Destroying"]
       47 NEWCLOSURE                       R5 P0
       48 CAPTURE                          UPVAL U0
       49 CAPTURE                          UPVAL U4
       50 CAPTURE                          UPVAL U1
       51 CAPTURE                          UPVAL U5
       52 CAPTURE                          UPVAL U6
       53 CAPTURE                          UPVAL U7
       54 CAPTURE                          UPVAL U8
       55 CAPTURE                          UPVAL U9
       56 NAMECALL                         R3 R3 K6 ["Connect"]
       58 CALL                             R3 2 -1
       59 FASTCALL                         TABLE_INSERT ; [+2]
       60 GETIMPORT                        R1 K8 [table.insert]
       62 CALL                             R1 -1 0
       63 GETUPVAL                         R1 3
       64 CALL                             R1 0 0
       65 RETURN                           R0 0

PROTO_9:
        0 JUMPIFEQKNIL                     R0 ; [+5]
        2 GETTABLEKS                       R1 R0 K0 ["destroyed"]
        4 JUMPIF                           R1 ; [+1]
        5 RETURN                           R0 1
        6 LOADNIL                          R1
        7 RETURN                           R1 1

PROTO_10:
        0 LOADN                            R0 0
        1 GETUPVAL                         R1 0
        2 LOADNIL                          R2
        3 LOADNIL                          R3
        4 FORGPREP                         R1
        5 GETTABLEKS                       R6 R5 K0 ["status"]
        7 JUMPIFNOTEQKS                    R6 K1 ["running"] ; [+2]
        9 ADDK                             R0 R0 K2 [1]
       10 FORGLOOP                         R1 2 ; [-6]
       12 RETURN                           R0 1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_12:
        0 JUMPIFNOTEQKNIL                  R0 ; [+2]
        2 RETURN                           R0 0
        3 GETIMPORT                        R2 K2 [task.delay]
        5 MOVE                             R3 R1
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          VAL R0
        8 CALL                             R2 2 0
        9 RETURN                           R0 0

PROTO_13:
        0 JUMPIFEQKNIL                     R0 ; [+6]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["destroy"]
        5 MOVE                             R3 R0
        6 CALL                             R2 1 0
        7 JUMPIFEQKNIL                     R1 ; [+4]
        9 NAMECALL                         R2 R1 K1 ["Destroy"]
       11 CALL                             R2 1 0
       12 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 NAMECALL                         R5 R4 K0 ["Disconnect"]
        6 CALL                             R5 1 0
        7 FORGLOOP                         R0 2 ; [-4]
        9 GETIMPORT                        R0 K3 [table.clear]
       11 GETUPVAL                         R1 0
       12 CALL                             R0 1 0
       13 GETIMPORT                        R0 K3 [table.clear]
       15 GETUPVAL                         R1 1
       16 CALL                             R0 1 0
       17 GETUPVAL                         R0 2
       18 GETUPVAL                         R1 3
       19 LOADNIL                          R2
       20 SETUPVAL                         R2 2
       21 LOADNIL                          R2
       22 SETUPVAL                         R2 3
       23 JUMPIFEQKNIL                     R0 ; [+6]
       25 GETUPVAL                         R2 4
       26 GETTABLEKS                       R2 R2 K4 ["destroy"]
       28 MOVE                             R3 R0
       29 CALL                             R2 1 0
       30 JUMPIFEQKNIL                     R1 ; [+4]
       32 NAMECALL                         R2 R1 K5 ["Destroy"]
       34 CALL                             R2 1 0
       35 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["View"]
        3 GETTABLEKS                       R1 R1 K1 ["sendIntent"]
        5 GETUPVAL                         R2 1
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K2 ["Intents"]
        9 GETTABLEKS                       R3 R3 K3 ["Open"]
       11 MOVE                             R4 R0
       12 CALL                             R1 3 0
       13 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["CurrentCamera"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+15]
        5 GETIMPORT                        R1 K3 [CFrame.new]
        7 LOADN                            R3 0
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K5 ["Y"]
       11 DIVK                             R4 R5 K4 [2]
       12 LOADN                            R5 0
       13 FASTCALL                         VECTOR ; [+2]
       14 GETIMPORT                        R2 K7 [Vector3.new]
       16 CALL                             R2 3 1
       17 CALL                             R1 1 -1
       18 RETURN                           R1 -1
       19 GETUPVAL                         R1 2
       20 GETTABLEKS                       R1 R1 K8 ["PlacementOps"]
       22 GETTABLEKS                       R1 R1 K9 ["computeDropCFrame"]
       24 MOVE                             R2 R0
       25 GETUPVAL                         R3 1
       26 LOADK                            R4 K10 ["TerrainOnly"]
       27 CALL                             R1 3 -1
       28 RETURN                           R1 -1

PROTO_17:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 SETUPVAL                         R1 0
        3 JUMPIFEQKNIL                     R0 ; [+4]
        5 GETUPVAL                         R2 1
        6 GETTABLE                         R1 R2 R0
        7 JUMP                             ; [+1]
        8 LOADNIL                          R1
        9 JUMPIFEQKNIL                     R0 ; [+7]
       11 JUMPIFEQKNIL                     R1 ; [+5]
       13 GETTABLEKS                       R2 R1 K0 ["status"]
       15 JUMPIFEQKS                       R2 K1 ["failed"] ; [+2]
       17 RETURN                           R0 0
       18 GETUPVAL                         R2 1
       19 LOADNIL                          R3
       20 SETTABLE                         R3 R2 R0
       21 GETUPVAL                         R2 2
       22 LOADNIL                          R3
       23 LOADNIL                          R4
       24 FORGPREP                         R2
       25 NAMECALL                         R7 R6 K2 ["Disconnect"]
       27 CALL                             R7 1 0
       28 FORGLOOP                         R2 2 ; [-4]
       30 GETIMPORT                        R2 K5 [table.clear]
       32 GETUPVAL                         R3 2
       33 CALL                             R2 1 0
       34 GETIMPORT                        R2 K5 [table.clear]
       36 GETUPVAL                         R3 3
       37 CALL                             R2 1 0
       38 GETUPVAL                         R2 4
       39 GETUPVAL                         R3 5
       40 LOADNIL                          R4
       41 SETUPVAL                         R4 4
       42 LOADNIL                          R4
       43 SETUPVAL                         R4 5
       44 JUMPIFEQKNIL                     R2 ; [+6]
       46 GETUPVAL                         R4 6
       47 GETTABLEKS                       R4 R4 K6 ["destroy"]
       49 MOVE                             R5 R2
       50 CALL                             R4 1 0
       51 JUMPIFEQKNIL                     R3 ; [+4]
       53 NAMECALL                         R4 R3 K7 ["Destroy"]
       55 CALL                             R4 1 0
       56 GETTABLEKS                       R2 R1 K8 ["part"]
       58 SETUPVAL                         R2 5
       59 GETTABLEKS                       R2 R1 K9 ["box"]
       61 SETUPVAL                         R2 4
       62 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+63]
        3 GETUPVAL                         R0 0
        4 LOADNIL                          R1
        5 SETUPVAL                         R1 0
        6 JUMPIFEQKNIL                     R0 ; [+4]
        8 GETUPVAL                         R2 1
        9 GETTABLE                         R1 R2 R0
       10 JUMP                             ; [+1]
       11 LOADNIL                          R1
       12 JUMPIFEQKNIL                     R0 ; [+52]
       14 JUMPIFEQKNIL                     R1 ; [+50]
       16 GETTABLEKS                       R2 R1 K0 ["status"]
       18 JUMPIFEQKS                       R2 K1 ["failed"] ; [+2]
       20 JUMP                             ; [+44]
       21 GETUPVAL                         R2 1
       22 LOADNIL                          R3
       23 SETTABLE                         R3 R2 R0
       24 GETUPVAL                         R2 2
       25 LOADNIL                          R3
       26 LOADNIL                          R4
       27 FORGPREP                         R2
       28 NAMECALL                         R7 R6 K2 ["Disconnect"]
       30 CALL                             R7 1 0
       31 FORGLOOP                         R2 2 ; [-4]
       33 GETIMPORT                        R2 K5 [table.clear]
       35 GETUPVAL                         R3 2
       36 CALL                             R2 1 0
       37 GETIMPORT                        R2 K5 [table.clear]
       39 GETUPVAL                         R3 3
       40 CALL                             R2 1 0
       41 GETUPVAL                         R2 4
       42 GETUPVAL                         R3 5
       43 LOADNIL                          R4
       44 SETUPVAL                         R4 4
       45 LOADNIL                          R4
       46 SETUPVAL                         R4 5
       47 JUMPIFEQKNIL                     R2 ; [+6]
       49 GETUPVAL                         R4 6
       50 GETTABLEKS                       R4 R4 K6 ["destroy"]
       52 MOVE                             R5 R2
       53 CALL                             R4 1 0
       54 JUMPIFEQKNIL                     R3 ; [+4]
       56 NAMECALL                         R4 R3 K7 ["Destroy"]
       58 CALL                             R4 1 0
       59 GETTABLEKS                       R2 R1 K8 ["part"]
       61 SETUPVAL                         R2 5
       62 GETTABLEKS                       R2 R1 K9 ["box"]
       64 SETUPVAL                         R2 4
       65 GETUPVAL                         R0 5
       66 JUMPIFEQKNIL                     R0 ; [+62]
       68 GETTABLEKS                       R1 R0 K10 ["Parent"]
       70 JUMPIFEQKNIL                     R1 ; [+58]
       72 LOADB                            R1 0
       73 SETTABLEKS                       R1 R0 K11 ["Locked"]
       75 GETUPVAL                         R2 4
       76 JUMPIFEQKNIL                     R2 ; [+6]
       78 GETTABLEKS                       R3 R2 K12 ["destroyed"]
       80 JUMPIF                           R3 ; [+2]
       81 MOVE                             R1 R2
       82 JUMP                             ; [+1]
       83 LOADNIL                          R1
       84 JUMPIFNOTEQKNIL                  R1 ; [+9]
       86 GETUPVAL                         R2 6
       87 GETTABLEKS                       R2 R2 K13 ["attachToInstance"]
       89 MOVE                             R3 R0
       90 DUPTABLE                         R4 K16 [{["autoDestroyOnSuccess"] = True}]
       91 CALL                             R2 2 1
       92 SETUPVAL                         R2 4
       93 JUMP                             ; [+6]
       94 GETUPVAL                         R2 6
       95 GETTABLEKS                       R2 R2 K17 ["setStatus"]
       97 MOVE                             R3 R1
       98 LOADK                            R4 K18 ["pending"]
       99 CALL                             R2 2 0
      100 GETUPVAL                         R2 7
      101 NEWTABLE                         R4 0 1
      103 MOVE                             R5 R0
      104 SETLIST                          R4 R5 1 [1]
      106 NAMECALL                         R2 R2 K19 ["Set"]
      108 CALL                             R2 2 0
      109 GETUPVAL                         R2 8
      110 NAMECALL                         R2 R2 K20 ["GetSelectedRibbonTool"]
      112 CALL                             R2 1 1
      113 GETIMPORT                        R3 K24 [Enum.RibbonTool.Scale]
      115 JUMPIFEQ                         R2 R3 ; [+10]
      117 GETUPVAL                         R2 8
      118 GETIMPORT                        R4 K24 [Enum.RibbonTool.Scale]
      120 GETIMPORT                        R5 K27 [UDim2.new]
      122 CALL                             R5 0 -1
      123 NAMECALL                         R2 R2 K28 ["SelectRibbonTool"]
      125 CALL                             R2 -1 0
      126 GETUPVAL                         R2 9
      127 CALL                             R2 0 0
      128 RETURN                           R0 0
      129 GETUPVAL                         R1 2
      130 LOADNIL                          R2
      131 LOADNIL                          R3
      132 FORGPREP                         R1
      133 NAMECALL                         R6 R5 K2 ["Disconnect"]
      135 CALL                             R6 1 0
      136 FORGLOOP                         R1 2 ; [-4]
      138 GETIMPORT                        R1 K5 [table.clear]
      140 GETUPVAL                         R2 2
      141 CALL                             R1 1 0
      142 GETIMPORT                        R1 K5 [table.clear]
      144 GETUPVAL                         R2 3
      145 CALL                             R1 1 0
      146 GETUPVAL                         R1 4
      147 GETUPVAL                         R2 5
      148 LOADNIL                          R3
      149 SETUPVAL                         R3 4
      150 LOADNIL                          R3
      151 SETUPVAL                         R3 5
      152 JUMPIFEQKNIL                     R1 ; [+6]
      154 GETUPVAL                         R3 6
      155 GETTABLEKS                       R3 R3 K6 ["destroy"]
      157 MOVE                             R4 R1
      158 CALL                             R3 1 0
      159 JUMPIFEQKNIL                     R2 ; [+4]
      161 NAMECALL                         R3 R2 K7 ["Destroy"]
      163 CALL                             R3 1 0
      164 GETUPVAL                         R2 10
      165 GETTABLEKS                       R2 R2 K29 ["CurrentCamera"]
      167 JUMPIFNOTEQKNIL                  R2 ; [+16]
      169 GETIMPORT                        R3 K31 [CFrame.new]
      171 LOADN                            R5 0
      172 GETUPVAL                         R7 11
      173 GETTABLEKS                       R7 R7 K33 ["Y"]
      175 DIVK                             R6 R7 K32 [2]
      176 LOADN                            R7 0
      177 FASTCALL                         VECTOR ; [+2]
      178 GETIMPORT                        R4 K35 [Vector3.new]
      180 CALL                             R4 3 1
      181 CALL                             R3 1 1
      182 MOVE                             R1 R3
      183 JUMP                             ; [+10]
      184 GETUPVAL                         R3 12
      185 GETTABLEKS                       R3 R3 K36 ["PlacementOps"]
      187 GETTABLEKS                       R3 R3 K37 ["computeDropCFrame"]
      189 MOVE                             R4 R2
      190 GETUPVAL                         R5 11
      191 LOADK                            R6 K38 ["TerrainOnly"]
      192 CALL                             R3 3 1
      193 MOVE                             R1 R3
      194 GETIMPORT                        R2 K40 [Instance.new]
      196 LOADK                            R3 K41 ["Part"]
      197 CALL                             R2 1 1
      198 LOADK                            R3 K42 ["Gen3dSceneBox"]
      199 SETTABLEKS                       R3 R2 K43 ["Name"]
      201 LOADB                            R3 1
      202 SETTABLEKS                       R3 R2 K44 ["Anchored"]
      204 LOADB                            R3 0
      205 SETTABLEKS                       R3 R2 K45 ["CanCollide"]
      207 LOADB                            R3 0
      208 SETTABLEKS                       R3 R2 K46 ["CanTouch"]
      210 LOADB                            R3 0
      211 SETTABLEKS                       R3 R2 K47 ["CanQuery"]
      213 LOADN                            R3 1
      214 SETTABLEKS                       R3 R2 K48 ["Transparency"]
      216 LOADB                            R3 0
      217 SETTABLEKS                       R3 R2 K49 ["Archivable"]
      219 GETUPVAL                         R3 11
      220 SETTABLEKS                       R3 R2 K50 ["Size"]
      222 SETTABLEKS                       R1 R2 K30 ["CFrame"]
      224 GETUPVAL                         R3 13
      225 JUMPIFNOT                        R3 ; [+56]
      226 GETUPVAL                         R3 14
      227 JUMPIFEQKNIL                     R3 ; [+54]
      229 GETUPVAL                         R3 14
      230 GETTABLEKS                       R3 R3 K51 ["size"]
      232 GETUPVAL                         R4 14
      233 GETTABLEKS                       R4 R4 K52 ["position"]
      235 GETTABLEKS                       R5 R3 K53 ["x"]
      237 JUMPIFNOT                        R5 ; [+44]
      238 GETTABLEKS                       R5 R3 K54 ["y"]
      240 JUMPIFNOT                        R5 ; [+41]
      241 GETTABLEKS                       R5 R3 K55 ["z"]
      243 JUMPIFNOT                        R5 ; [+38]
      244 GETTABLEKS                       R5 R4 K53 ["x"]
      246 JUMPIFNOT                        R5 ; [+35]
      247 GETTABLEKS                       R5 R4 K54 ["y"]
      249 JUMPIFNOT                        R5 ; [+32]
      250 GETTABLEKS                       R5 R4 K55 ["z"]
      252 JUMPIFNOT                        R5 ; [+29]
      253 GETTABLEKS                       R6 R3 K53 ["x"]
      255 GETTABLEKS                       R7 R3 K54 ["y"]
      257 GETTABLEKS                       R8 R3 K55 ["z"]
      259 FASTCALL                         VECTOR ; [+2]
      260 GETIMPORT                        R5 K35 [Vector3.new]
      262 CALL                             R5 3 1
      263 SETTABLEKS                       R5 R2 K50 ["Size"]
      265 GETUPVAL                         R5 12
      266 GETTABLEKS                       R5 R5 K56 ["SceneBoundsOps"]
      268 GETTABLEKS                       R5 R5 K57 ["setPosition"]
      270 MOVE                             R6 R2
      271 GETTABLEKS                       R8 R4 K53 ["x"]
      273 GETTABLEKS                       R9 R4 K54 ["y"]
      275 GETTABLEKS                       R10 R4 K55 ["z"]
      277 FASTCALL                         VECTOR ; [+2]
      278 GETIMPORT                        R7 K35 [Vector3.new]
      280 CALL                             R7 3 1
      281 CALL                             R5 2 0
      282 GETUPVAL                         R3 12
      283 GETTABLEKS                       R3 R3 K56 ["SceneBoundsOps"]
      285 GETTABLEKS                       R3 R3 K58 ["updatePivot"]
      287 MOVE                             R4 R2
      288 CALL                             R3 1 0
      289 LOADK                            R5 K59 ["Gen3dSceneGenBox"]
      290 NAMECALL                         R3 R2 K60 ["AddTag"]
      292 CALL                             R3 2 0
      293 GETUPVAL                         R3 10
      294 SETTABLEKS                       R3 R2 K10 ["Parent"]
      296 SETUPVAL                         R2 5
      297 GETUPVAL                         R3 6
      298 GETTABLEKS                       R3 R3 K13 ["attachToInstance"]
      300 MOVE                             R4 R2
      301 DUPTABLE                         R5 K16 [{["autoDestroyOnSuccess"] = True}]
      302 CALL                             R3 2 1
      303 SETUPVAL                         R3 4
      304 GETUPVAL                         R3 10
      305 GETTABLEKS                       R3 R3 K29 ["CurrentCamera"]
      307 JUMPIFEQKNIL                     R3 ; [+16]
      309 GETUPVAL                         R7 13
      310 JUMPIFNOT                        R7 ; [+3]
      311 GETTABLEKS                       R6 R2 K30 ["CFrame"]
      313 JUMP                             ; [+1]
      314 MOVE                             R6 R1
      315 GETUPVAL                         R8 13
      316 JUMPIFNOT                        R8 ; [+3]
      317 GETTABLEKS                       R7 R2 K50 ["Size"]
      319 JUMP                             ; [+1]
      320 GETUPVAL                         R7 11
      321 NAMECALL                         R4 R3 K61 ["ZoomToExtents"]
      323 CALL                             R4 3 0
      324 GETUPVAL                         R4 7
      325 NEWTABLE                         R6 0 1
      327 MOVE                             R7 R2
      328 SETLIST                          R6 R7 1 [1]
      330 NAMECALL                         R4 R4 K19 ["Set"]
      332 CALL                             R4 2 0
      333 GETUPVAL                         R4 8
      334 NAMECALL                         R4 R4 K20 ["GetSelectedRibbonTool"]
      336 CALL                             R4 1 1
      337 GETIMPORT                        R5 K24 [Enum.RibbonTool.Scale]
      339 JUMPIFEQ                         R4 R5 ; [+10]
      341 GETUPVAL                         R4 8
      342 GETIMPORT                        R6 K24 [Enum.RibbonTool.Scale]
      344 GETIMPORT                        R7 K27 [UDim2.new]
      346 CALL                             R7 0 -1
      347 NAMECALL                         R4 R4 K28 ["SelectRibbonTool"]
      349 CALL                             R4 -1 0
      350 GETUPVAL                         R4 9
      351 CALL                             R4 0 0
      352 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFEQKNIL                     R1 ; [+5]
        4 GETTABLEKS                       R2 R1 K0 ["status"]
        6 JUMPIFEQKS                       R2 K1 ["failed"] ; [+2]
        8 RETURN                           R0 0
        9 SETUPVAL                         R0 1
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R2 R2 K2 ["View"]
       13 GETTABLEKS                       R2 R2 K3 ["sendIntent"]
       15 GETUPVAL                         R3 3
       16 GETUPVAL                         R4 2
       17 GETTABLEKS                       R4 R4 K4 ["Intents"]
       19 GETTABLEKS                       R4 R4 K5 ["Open"]
       21 MOVE                             R5 R0
       22 CALL                             R2 3 0
       23 GETUPVAL                         R2 4
       24 JUMPIFNOT                        R2 ; [+2]
       25 GETUPVAL                         R2 5
       26 CALL                             R2 0 0
       27 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R5 0
        1 GETUPVAL                         R7 1
        2 GETTABLEKS                       R7 R7 K0 ["SceneGenComplete"]
        4 LOADNIL                          R8
        5 DUPTABLE                         R9 K6 [{"requestId", "ok", "cancelled", "rejected", "errorMessage"}]
        6 SETTABLEKS                       R0 R9 K1 ["requestId"]
        8 SETTABLEKS                       R1 R9 K2 ["ok"]
       10 SETTABLEKS                       R3 R9 K3 ["cancelled"]
       12 SETTABLEKS                       R4 R9 K4 ["rejected"]
       14 SETTABLEKS                       R2 R9 K5 ["errorMessage"]
       16 NAMECALL                         R5 R5 K7 ["FireGuest"]
       18 CALL                             R5 4 0
       19 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLE                         R1 R2 R0
        3 JUMPIFEQKNIL                     R1 ; [+24]
        5 GETTABLEKS                       R2 R1 K0 ["status"]
        7 JUMPIFEQKS                       R2 K1 ["failed"] ; [+2]
        9 RETURN                           R0 0
       10 SETUPVAL                         R0 2
       11 GETUPVAL                         R2 3
       12 GETTABLEKS                       R2 R2 K2 ["View"]
       14 GETTABLEKS                       R2 R2 K3 ["sendIntent"]
       16 GETUPVAL                         R3 4
       17 GETUPVAL                         R4 3
       18 GETTABLEKS                       R4 R4 K4 ["Intents"]
       20 GETTABLEKS                       R4 R4 K5 ["Open"]
       22 MOVE                             R5 R0
       23 CALL                             R2 3 0
       24 GETUPVAL                         R2 5
       25 JUMPIFNOT                        R2 ; [+2]
       26 GETUPVAL                         R2 6
       27 CALL                             R2 0 0
       28 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLE                         R0 R1 R2
        3 GETUPVAL                         R1 2
        4 JUMPIFNOTEQ                      R0 R1 ; [+6]
        6 GETUPVAL                         R0 2
        7 GETTABLEKS                       R0 R0 K0 ["status"]
        9 JUMPIFEQKS                       R0 K1 ["failed"] ; [+2]
       11 RETURN                           R0 0
       12 GETUPVAL                         R0 0
       13 GETUPVAL                         R1 1
       14 LOADNIL                          R2
       15 SETTABLE                         R2 R0 R1
       16 GETUPVAL                         R0 2
       17 GETTABLEKS                       R0 R0 K2 ["part"]
       19 NAMECALL                         R0 R0 K3 ["Destroy"]
       21 CALL                             R0 1 0
       22 GETUPVAL                         R0 1
       23 GETUPVAL                         R1 3
       24 GETUPVAL                         R3 4
       25 GETTABLEKS                       R3 R3 K4 ["SceneGenComplete"]
       27 LOADNIL                          R4
       28 DUPTABLE                         R5 K13 [{["requestId"], ["ok"] = False, ["cancelled"] = True, ["rejected"] = , ["errorMessage"] = }]
       29 SETTABLEKS                       R0 R5 K5 ["requestId"]
       31 NAMECALL                         R1 R1 K14 ["FireGuest"]
       33 CALL                             R1 4 0
       34 RETURN                           R0 0

PROTO_23:
        0 LOADK                            R3 K0 ["failed"]
        1 SETTABLEKS                       R3 R1 K1 ["status"]
        3 GETTABLEKS                       R3 R1 K2 ["part"]
        5 LOADB                            R4 0
        6 SETTABLEKS                       R4 R3 K3 ["Locked"]
        8 GETTABLEKS                       R4 R1 K4 ["box"]
       10 JUMPIFEQKNIL                     R4 ; [+6]
       12 GETTABLEKS                       R5 R4 K5 ["destroyed"]
       14 JUMPIF                           R5 ; [+2]
       15 MOVE                             R3 R4
       16 JUMP                             ; [+1]
       17 LOADNIL                          R3
       18 JUMPIFEQKNIL                     R3 ; [+32]
       20 GETUPVAL                         R4 0
       21 GETTABLEKS                       R4 R4 K6 ["setStatus"]
       23 MOVE                             R5 R3
       24 LOADK                            R6 K0 ["failed"]
       25 MOVE                             R7 R2
       26 DUPTABLE                         R8 K8 [{"onActivated"}]
       27 NEWCLOSURE                       R9 P0
       28 CAPTURE                          VAL R0
       29 CAPTURE                          UPVAL U1
       30 CAPTURE                          UPVAL U2
       31 CAPTURE                          UPVAL U3
       32 CAPTURE                          UPVAL U4
       33 CAPTURE                          UPVAL U5
       34 CAPTURE                          UPVAL U6
       35 SETTABLEKS                       R9 R8 K7 ["onActivated"]
       37 CALL                             R4 4 0
       38 GETTABLEKS                       R4 R3 K9 ["container"]
       40 GETTABLEKS                       R4 R4 K10 ["Destroying"]
       42 NEWCLOSURE                       R6 P1
       43 CAPTURE                          UPVAL U1
       44 CAPTURE                          VAL R0
       45 CAPTURE                          VAL R1
       46 CAPTURE                          UPVAL U7
       47 CAPTURE                          UPVAL U8
       48 NAMECALL                         R4 R4 K11 ["Once"]
       50 CALL                             R4 2 0
       51 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["LayoutGenOps"]
        3 GETTABLEKS                       R0 R0 K1 ["cancelGenerationAsync"]
        5 DUPTABLE                         R1 K3 [{"requestId"}]
        6 GETUPVAL                         R2 1
        7 SETTABLEKS                       R2 R1 K2 ["requestId"]
        9 GETUPVAL                         R2 2
       10 CALL                             R0 2 0
       11 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFEQKNIL                     R1 ; [+5]
        4 GETTABLEKS                       R2 R1 K0 ["status"]
        6 JUMPIFEQKS                       R2 K1 ["running"] ; [+2]
        8 RETURN                           R0 0
        9 GETUPVAL                         R2 0
       10 LOADNIL                          R3
       11 SETTABLE                         R3 R2 R0
       12 GETIMPORT                        R2 K3 [pcall]
       14 NEWCLOSURE                       R3 P0
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          VAL R0
       17 CAPTURE                          UPVAL U2
       18 CALL                             R2 1 0
       19 GETTABLEKS                       R2 R1 K4 ["box"]
       21 GETTABLEKS                       R3 R1 K5 ["part"]
       23 JUMPIFEQKNIL                     R2 ; [+6]
       25 GETUPVAL                         R4 3
       26 GETTABLEKS                       R4 R4 K6 ["destroy"]
       28 MOVE                             R5 R2
       29 CALL                             R4 1 0
       30 JUMPIFEQKNIL                     R3 ; [+4]
       32 NAMECALL                         R4 R3 K7 ["Destroy"]
       34 CALL                             R4 1 0
       35 GETUPVAL                         R2 4
       36 JUMPIFNOT                        R2 ; [+9]
       37 GETUPVAL                         R2 5
       38 JUMPIFNOTEQKNIL                  R2 ; [+7]
       40 GETUPVAL                         R2 6
       41 JUMPIFNOT                        R2 ; [+2]
       42 GETUPVAL                         R2 7
       43 JUMPIFNOT                        R2 ; [+2]
       44 GETUPVAL                         R2 8
       45 CALL                             R2 0 0
       46 GETUPVAL                         R2 9
       47 GETUPVAL                         R4 10
       48 GETTABLEKS                       R4 R4 K8 ["SceneGenComplete"]
       50 LOADNIL                          R5
       51 DUPTABLE                         R6 K17 [{["requestId"], ["ok"] = False, ["cancelled"] = True, ["rejected"] = , ["errorMessage"] = }]
       52 SETTABLEKS                       R0 R6 K9 ["requestId"]
       54 NAMECALL                         R2 R2 K18 ["FireGuest"]
       56 CALL                             R2 4 0
       57 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIFEQKNIL                     R2 ; [+5]
        4 GETTABLEKS                       R3 R2 K0 ["status"]
        6 JUMPIFEQKS                       R3 K1 ["running"] ; [+2]
        8 RETURN                           R0 0
        9 GETTABLEKS                       R4 R2 K2 ["box"]
       11 JUMPIFEQKNIL                     R4 ; [+6]
       13 GETTABLEKS                       R5 R4 K3 ["destroyed"]
       15 JUMPIF                           R5 ; [+2]
       16 MOVE                             R3 R4
       17 JUMP                             ; [+1]
       18 LOADNIL                          R3
       19 JUMPIFNOTEQKNIL                  R3 ; [+2]
       21 RETURN                           R0 0
       22 JUMPIFEQKNIL                     R1 ; [+5]
       24 JUMPIFEQKS                       R1 K4 [""] ; [+3]
       26 MOVE                             R4 R1
       27 JUMP                             ; [+4]
       28 GETUPVAL                         R4 1
       29 LOADK                            R5 K5 ["GenerateLayout"]
       30 LOADK                            R6 K6 ["ViewportGenerating"]
       31 CALL                             R4 2 1
       32 GETUPVAL                         R5 2
       33 GETTABLEKS                       R5 R5 K7 ["setStatus"]
       35 MOVE                             R6 R3
       36 LOADK                            R7 K1 ["running"]
       37 MOVE                             R8 R4
       38 DUPTABLE                         R9 K9 [{"details"}]
       39 DUPTABLE                         R10 K12 [{"cancelText", "onCancel"}]
       40 GETUPVAL                         R11 1
       41 LOADK                            R12 K13 ["Common"]
       42 LOADK                            R13 K14 ["Cancel"]
       43 CALL                             R11 2 1
       44 SETTABLEKS                       R11 R10 K10 ["cancelText"]
       46 NEWCLOSURE                       R11 P0
       47 CAPTURE                          UPVAL U3
       48 CAPTURE                          VAL R0
       49 SETTABLEKS                       R11 R10 K11 ["onCancel"]
       51 SETTABLEKS                       R10 R9 K8 ["details"]
       53 CALL                             R5 4 0
       54 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 CALL                             R3 2 -1
        4 RETURN                           R3 -1

PROTO_29:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getStatusAsync"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R2 R1 K1 ["currentStage"]
        7 GETUPVAL                         R3 1
        8 JUMPIFEQ                         R2 R3 ; [+8]
       10 GETTABLEKS                       R2 R1 K1 ["currentStage"]
       12 SETUPVAL                         R2 1
       13 GETUPVAL                         R2 2
       14 GETUPVAL                         R3 3
       15 GETUPVAL                         R4 1
       16 CALL                             R2 2 0
       17 RETURN                           R1 1

PROTO_30:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["sceneGeneration"]
        3 GETIMPORT                        R2 K3 [table.clone]
        5 GETUPVAL                         R3 0
        6 CALL                             R2 1 1
        7 DUPTABLE                         R3 K5 [{"getText"}]
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          UPVAL U1
       10 SETTABLEKS                       R4 R3 K4 ["getText"]
       12 SETTABLEKS                       R3 R2 K6 ["translator"]
       14 LOADNIL                          R3
       15 DUPTABLE                         R4 K9 [{"startAsync", "getStatusAsync"}]
       16 GETTABLEKS                       R5 R1 K7 ["startAsync"]
       18 SETTABLEKS                       R5 R4 K7 ["startAsync"]
       20 NEWCLOSURE                       R5 P1
       21 CAPTURE                          VAL R1
       22 CAPTURE                          REF R3
       23 CAPTURE                          UPVAL U2
       24 CAPTURE                          VAL R0
       25 SETTABLEKS                       R5 R4 K8 ["getStatusAsync"]
       27 SETTABLEKS                       R4 R2 K0 ["sceneGeneration"]
       29 CLOSEUPVALS                      R3
       30 RETURN                           R2 1

PROTO_31:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+11]
        2 GETUPVAL                         R1 1
        3 GETIMPORT                        R2 K2 [coroutine.running]
        5 CALL                             R2 0 -1
        6 FASTCALL                         TABLE_INSERT ; [+2]
        7 GETIMPORT                        R0 K5 [table.insert]
        9 CALL                             R0 -1 0
       10 GETIMPORT                        R0 K7 [coroutine.yield]
       12 CALL                             R0 0 0
       13 LOADB                            R0 1
       14 SETUPVAL                         R0 0
       15 RETURN                           R0 0

PROTO_32:
        0 LOADB                            R0 0
        1 SETUPVAL                         R0 0
        2 GETIMPORT                        R0 K2 [table.remove]
        4 GETUPVAL                         R1 1
        5 LOADN                            R2 1
        6 CALL                             R0 2 1
        7 JUMPIFEQKNIL                     R0 ; [+5]
        9 GETIMPORT                        R1 K5 [task.spawn]
       11 MOVE                             R2 R0
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLE                         R0 R1 R2
        3 GETUPVAL                         R1 2
        4 JUMPIFNOTEQ                      R0 R1 ; [+35]
        6 GETUPVAL                         R0 3
        7 GETTABLEKS                       R0 R0 K0 ["startRecording"]
        9 GETUPVAL                         R1 1
       10 GETUPVAL                         R2 4
       11 LOADK                            R3 K1 ["Generate"]
       12 CALL                             R2 1 -1
       13 CALL                             R0 -1 0
       14 GETIMPORT                        R0 K3 [pcall]
       16 GETUPVAL                         R1 5
       17 GETTABLEKS                       R1 R1 K4 ["LayoutGenOps"]
       19 GETTABLEKS                       R1 R1 K5 ["executeAndStoreScriptAsync"]
       21 DUPTABLE                         R2 K7 [{"requestId"}]
       22 GETUPVAL                         R3 1
       23 SETTABLEKS                       R3 R2 K6 ["requestId"]
       25 GETUPVAL                         R3 6
       26 GETUPVAL                         R4 7
       27 CALL                             R0 4 2
       28 GETUPVAL                         R2 3
       29 GETTABLEKS                       R2 R2 K8 ["endRecording"]
       31 GETUPVAL                         R3 1
       32 CALL                             R2 1 0
       33 JUMPIF                           R0 ; [+5]
       34 GETIMPORT                        R2 K10 [error]
       36 MOVE                             R3 R1
       37 LOADN                            R4 0
       38 CALL                             R2 2 0
       39 SETUPVAL                         R1 8
       40 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["LayoutGenOps"]
        3 GETTABLEKS                       R0 R0 K1 ["generateSceneAsync"]
        5 GETUPVAL                         R1 1
        6 GETUPVAL                         R2 2
        7 GETUPVAL                         R3 3
        8 CALL                             R0 3 0
        9 GETUPVAL                         R1 4
       10 GETTABLEKS                       R1 R1 K2 ["box"]
       12 JUMPIFEQKNIL                     R1 ; [+6]
       14 GETTABLEKS                       R2 R1 K3 ["destroyed"]
       16 JUMPIF                           R2 ; [+2]
       17 MOVE                             R0 R1
       18 JUMP                             ; [+1]
       19 LOADNIL                          R0
       20 JUMPIFEQKNIL                     R0 ; [+17]
       22 GETUPVAL                         R2 5
       23 GETUPVAL                         R3 6
       24 GETTABLE                         R1 R2 R3
       25 GETUPVAL                         R2 4
       26 JUMPIFNOTEQ                      R1 R2 ; [+11]
       28 GETUPVAL                         R1 7
       29 GETTABLEKS                       R1 R1 K4 ["setStatus"]
       31 MOVE                             R2 R0
       32 LOADK                            R3 K5 ["running"]
       33 GETUPVAL                         R4 8
       34 LOADK                            R5 K6 ["GenerateLayout"]
       35 LOADK                            R6 K7 ["ViewportRunningScript"]
       36 CALL                             R4 2 -1
       37 CALL                             R1 -1 0
       38 GETUPVAL                         R1 9
       39 JUMPIFNOT                        R1 ; [+11]
       40 GETUPVAL                         R2 10
       41 GETIMPORT                        R3 K9 [coroutine.running]
       43 CALL                             R3 0 -1
       44 FASTCALL                         TABLE_INSERT ; [+2]
       45 GETIMPORT                        R1 K12 [table.insert]
       47 CALL                             R1 -1 0
       48 GETIMPORT                        R1 K14 [coroutine.yield]
       50 CALL                             R1 0 0
       51 LOADB                            R1 1
       52 SETUPVAL                         R1 9
       53 LOADNIL                          R1
       54 GETIMPORT                        R2 K16 [pcall]
       56 NEWCLOSURE                       R3 P0
       57 CAPTURE                          UPVAL U5
       58 CAPTURE                          UPVAL U6
       59 CAPTURE                          UPVAL U4
       60 CAPTURE                          UPVAL U11
       61 CAPTURE                          UPVAL U12
       62 CAPTURE                          UPVAL U0
       63 CAPTURE                          UPVAL U2
       64 CAPTURE                          UPVAL U3
       65 CAPTURE                          REF R1
       66 CALL                             R2 1 2
       67 LOADB                            R4 0
       68 SETUPVAL                         R4 9
       69 GETIMPORT                        R4 K18 [table.remove]
       71 GETUPVAL                         R5 10
       72 LOADN                            R6 1
       73 CALL                             R4 2 1
       74 JUMPIFEQKNIL                     R4 ; [+5]
       76 GETIMPORT                        R5 K21 [task.spawn]
       78 MOVE                             R6 R4
       79 CALL                             R5 1 0
       80 JUMPIF                           R2 ; [+5]
       81 GETIMPORT                        R4 K23 [error]
       83 MOVE                             R5 R3
       84 LOADN                            R6 0
       85 CALL                             R4 2 0
       86 JUMPIFEQKNIL                     R1 ; [+16]
       88 GETTABLEKS                       R4 R1 K24 ["ok"]
       90 JUMPIF                           R4 ; [+12]
       91 GETIMPORT                        R4 K23 [error]
       93 GETTABLEKS                       R5 R1 K25 ["errorMessage"]
       95 JUMPIF                           R5 ; [+5]
       96 GETUPVAL                         R5 8
       97 LOADK                            R6 K26 ["SceneGen"]
       98 LOADK                            R7 K27 ["ScriptFailed"]
       99 LOADNIL                          R8
      100 CALL                             R5 3 1
      101 LOADN                            R6 0
      102 CALL                             R4 2 0
      103 CLOSEUPVALS                      R1
      104 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 CALL                             R3 1 1
        3 GETIMPORT                        R4 K1 [pcall]
        5 NEWCLOSURE                       R5 P0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          VAL R2
        8 CAPTURE                          VAL R3
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          VAL R1
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U4
       14 CAPTURE                          UPVAL U5
       15 CAPTURE                          UPVAL U6
       16 CAPTURE                          UPVAL U7
       17 CAPTURE                          UPVAL U8
       18 CAPTURE                          UPVAL U9
       19 CALL                             R4 1 2
       20 GETUPVAL                         R7 3
       21 GETTABLE                         R6 R7 R0
       22 JUMPIFEQ                         R6 R1 ; [+2]
       24 RETURN                           R0 0
       25 GETUPVAL                         R6 2
       26 GETTABLEKS                       R6 R6 K2 ["clearGenerationSession"]
       28 MOVE                             R7 R0
       29 CALL                             R6 1 0
       30 JUMPIFNOT                        R4 ; [+44]
       31 GETTABLEKS                       R7 R1 K3 ["box"]
       33 JUMPIFEQKNIL                     R7 ; [+6]
       35 GETTABLEKS                       R8 R7 K4 ["destroyed"]
       37 JUMPIF                           R8 ; [+2]
       38 MOVE                             R6 R7
       39 JUMP                             ; [+1]
       40 LOADNIL                          R6
       41 JUMPIFEQKNIL                     R6 ; [+7]
       43 GETUPVAL                         R7 4
       44 GETTABLEKS                       R7 R7 K5 ["setStatus"]
       46 MOVE                             R8 R6
       47 LOADK                            R9 K6 ["succeeded"]
       48 CALL                             R7 2 0
       49 GETUPVAL                         R7 3
       50 LOADNIL                          R8
       51 SETTABLE                         R8 R7 R0
       52 GETTABLEKS                       R7 R1 K7 ["part"]
       54 JUMPIFNOTEQKNIL                  R7 ; [+2]
       56 JUMP                             ; [+6]
       57 GETIMPORT                        R8 K10 [task.delay]
       59 LOADN                            R9 3
       60 NEWCLOSURE                       R10 P1
       61 CAPTURE                          VAL R7
       62 CALL                             R8 2 0
       63 GETUPVAL                         R7 10
       64 GETUPVAL                         R9 11
       65 GETTABLEKS                       R9 R9 K11 ["SceneGenComplete"]
       67 LOADNIL                          R10
       68 DUPTABLE                         R11 K19 [{["requestId"], ["ok"] = True, ["cancelled"] = , ["rejected"] = , ["errorMessage"] = }]
       69 SETTABLEKS                       R0 R11 K12 ["requestId"]
       71 NAMECALL                         R7 R7 K20 ["FireGuest"]
       73 CALL                             R7 4 0
       74 RETURN                           R0 0
       75 FASTCALL1                        TOSTRING R5 ; [+3]
       76 MOVE                             R7 R5
       77 GETIMPORT                        R6 K22 [tostring]
       79 CALL                             R6 1 1
       80 GETIMPORT                        R7 K24 [warn]
       82 LOADK                            R8 K25 ["[Gen3d] Scene generation failed: %*"]
       83 MOVE                             R10 R6
       84 NAMECALL                         R8 R8 K26 ["format"]
       86 CALL                             R8 2 1
       87 CALL                             R7 1 0
       88 GETUPVAL                         R7 12
       89 MOVE                             R8 R0
       90 MOVE                             R9 R1
       91 MOVE                             R10 R6
       92 CALL                             R7 3 0
       93 GETUPVAL                         R7 10
       94 GETUPVAL                         R9 11
       95 GETTABLEKS                       R9 R9 K11 ["SceneGenComplete"]
       97 LOADNIL                          R10
       98 DUPTABLE                         R11 K28 [{["requestId"], ["ok"] = False, ["cancelled"] = , ["rejected"] = , ["errorMessage"]}]
       99 SETTABLEKS                       R0 R11 K12 ["requestId"]
      101 SETTABLEKS                       R6 R11 K18 ["errorMessage"]
      103 NAMECALL                         R7 R7 K20 ["FireGuest"]
      105 CALL                             R7 4 0
      106 RETURN                           R0 0

PROTO_36:
        0 GETIMPORT                        R2 K1 [warn]
        2 LOADK                            R3 K2 ["[Gen3d] Scene generation request rejected: %*"]
        3 MOVE                             R5 R1
        4 NAMECALL                         R3 R3 K3 ["format"]
        6 CALL                             R3 2 1
        7 CALL                             R2 1 0
        8 GETUPVAL                         R2 0
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R4 R4 K4 ["SceneGenComplete"]
       12 LOADNIL                          R5
       13 DUPTABLE                         R6 K13 [{["requestId"], ["ok"] = False, ["cancelled"] = , ["rejected"] = True, ["errorMessage"]}]
       14 SETTABLEKS                       R0 R6 K5 ["requestId"]
       16 SETTABLEKS                       R1 R6 K12 ["errorMessage"]
       18 NAMECALL                         R2 R2 K14 ["FireGuest"]
       20 CALL                             R2 4 0
       21 RETURN                           R0 0

PROTO_37:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 DUPTABLE                         R3 K7 [{"requestId", "images", "textPrompt", "boundingBoxCFrame", "boundingBoxSize", "useMeshGen", "quality"}]
        4 GETUPVAL                         R4 1
        5 SETTABLEKS                       R4 R3 K0 ["requestId"]
        7 GETUPVAL                         R6 3
        8 LENGTH                           R5 R6
        9 LOADN                            R6 0
       10 JUMPIFNOTLT                      R6 R5 ; [+3]
       12 GETUPVAL                         R4 3
       13 JUMP                             ; [+1]
       14 LOADNIL                          R4
       15 SETTABLEKS                       R4 R3 K1 ["images"]
       17 GETUPVAL                         R4 4
       18 GETTABLEKS                       R4 R4 K8 ["prompt"]
       20 SETTABLEKS                       R4 R3 K2 ["textPrompt"]
       22 GETUPVAL                         R4 5
       23 GETTABLEKS                       R4 R4 K9 ["CFrame"]
       25 SETTABLEKS                       R4 R3 K3 ["boundingBoxCFrame"]
       27 GETUPVAL                         R4 5
       28 GETTABLEKS                       R4 R4 K10 ["Size"]
       30 SETTABLEKS                       R4 R3 K4 ["boundingBoxSize"]
       32 GETUPVAL                         R5 4
       33 GETTABLEKS                       R5 R5 K5 ["useMeshGen"]
       35 JUMPIFNOTEQKB                    R5 FALSE ; [+2]
       37 LOADB                            R4 0 +1
       38 LOADB                            R4 1
       39 SETTABLEKS                       R4 R3 K5 ["useMeshGen"]
       41 GETUPVAL                         R5 4
       42 GETTABLEKS                       R5 R5 K6 ["quality"]
       44 GETUPVAL                         R6 6
       45 GETTABLEKS                       R6 R6 K11 ["Constants"]
       47 GETTABLEKS                       R6 R6 K12 ["Enums"]
       49 GETTABLEKS                       R6 R6 K13 ["SceneQuality"]
       51 GETTABLEKS                       R7 R6 K14 ["Minimal"]
       53 JUMPIFEQ                         R5 R7 ; [+13]
       55 GETTABLEKS                       R7 R6 K15 ["Low"]
       57 JUMPIFEQ                         R5 R7 ; [+9]
       59 GETTABLEKS                       R7 R6 K16 ["Medium"]
       61 JUMPIFEQ                         R5 R7 ; [+5]
       63 GETTABLEKS                       R7 R6 K17 ["High"]
       65 JUMPIFNOTEQ                      R5 R7 ; [+3]
       67 MOVE                             R4 R5
       68 JUMP                             ; [+1]
       69 LOADNIL                          R4
       70 SETTABLEKS                       R4 R3 K6 ["quality"]
       72 CALL                             R0 3 0
       73 RETURN                           R0 0

PROTO_38:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["table"] ; [+13]
        7 GETTABLEKS                       R2 R0 K3 ["requestId"]
        9 FASTCALL1                        TYPEOF R2 ; [+2]
       10 GETIMPORT                        R1 K1 [typeof]
       12 CALL                             R1 1 1
       13 JUMPIFNOTEQKS                    R1 K4 ["string"] ; [+5]
       15 GETTABLEKS                       R1 R0 K3 ["requestId"]
       17 JUMPIFNOTEQKS                    R1 K5 [""] ; [+2]
       19 RETURN                           R0 0
       20 GETTABLEKS                       R1 R0 K3 ["requestId"]
       22 GETUPVAL                         R2 0
       23 MOVE                             R3 R0
       24 CALL                             R2 1 1
       25 JUMPIFEQKNIL                     R2 ; [+9]
       27 GETTABLEKS                       R4 R0 K6 ["prompt"]
       29 FASTCALL1                        TYPEOF R4 ; [+2]
       30 GETIMPORT                        R3 K1 [typeof]
       32 CALL                             R3 1 1
       33 JUMPIFEQKS                       R3 K4 ["string"] ; [+28]
       35 GETUPVAL                         R3 1
       36 LOADK                            R4 K7 ["SceneGen"]
       37 LOADK                            R5 K8 ["InvalidRequest"]
       38 LOADNIL                          R6
       39 CALL                             R3 3 1
       40 GETIMPORT                        R4 K10 [warn]
       42 LOADK                            R5 K11 ["[Gen3d] Scene generation request rejected: %*"]
       43 MOVE                             R7 R3
       44 NAMECALL                         R5 R5 K12 ["format"]
       46 CALL                             R5 2 1
       47 CALL                             R4 1 0
       48 GETUPVAL                         R4 2
       49 GETUPVAL                         R6 3
       50 GETTABLEKS                       R6 R6 K13 ["SceneGenComplete"]
       52 LOADNIL                          R7
       53 DUPTABLE                         R8 K21 [{["requestId"], ["ok"] = False, ["cancelled"] = , ["rejected"] = True, ["errorMessage"]}]
       54 SETTABLEKS                       R1 R8 K3 ["requestId"]
       56 SETTABLEKS                       R3 R8 K20 ["errorMessage"]
       58 NAMECALL                         R4 R4 K22 ["FireGuest"]
       60 CALL                             R4 4 0
       61 RETURN                           R0 0
       62 GETUPVAL                         R3 4
       63 JUMPIFEQKNIL                     R3 ; [+5]
       65 GETTABLEKS                       R4 R3 K23 ["Parent"]
       67 JUMPIFNOTEQKNIL                  R4 ; [+27]
       69 GETUPVAL                         R4 1
       70 LOADK                            R5 K24 ["GenerateLayout"]
       71 LOADK                            R6 K25 ["ViewportNoBox"]
       72 CALL                             R4 2 1
       73 GETIMPORT                        R5 K10 [warn]
       75 LOADK                            R6 K11 ["[Gen3d] Scene generation request rejected: %*"]
       76 MOVE                             R8 R4
       77 NAMECALL                         R6 R6 K12 ["format"]
       79 CALL                             R6 2 1
       80 CALL                             R5 1 0
       81 GETUPVAL                         R5 2
       82 GETUPVAL                         R7 3
       83 GETTABLEKS                       R7 R7 K13 ["SceneGenComplete"]
       85 LOADNIL                          R8
       86 DUPTABLE                         R9 K21 [{["requestId"], ["ok"] = False, ["cancelled"] = , ["rejected"] = True, ["errorMessage"]}]
       87 SETTABLEKS                       R1 R9 K3 ["requestId"]
       89 SETTABLEKS                       R4 R9 K20 ["errorMessage"]
       91 NAMECALL                         R5 R5 K22 ["FireGuest"]
       93 CALL                             R5 4 0
       94 RETURN                           R0 0
       95 LOADN                            R5 0
       96 GETUPVAL                         R6 5
       97 LOADNIL                          R7
       98 LOADNIL                          R8
       99 FORGPREP                         R6
      100 GETTABLEKS                       R11 R10 K26 ["status"]
      102 JUMPIFNOTEQKS                    R11 K27 ["running"] ; [+2]
      104 ADDK                             R5 R5 K28 [1]
      105 FORGLOOP                         R6 2 ; [-6]
      107 MOVE                             R4 R5
      108 GETUPVAL                         R5 6
      109 JUMPIFNOTLE                      R5 R4 ; [+28]
      111 LOADK                            R4 K29 ["Only %* scenes can generate at once."]
      112 GETUPVAL                         R6 6
      113 NAMECALL                         R4 R4 K12 ["format"]
      115 CALL                             R4 2 1
      116 GETIMPORT                        R5 K10 [warn]
      118 LOADK                            R6 K11 ["[Gen3d] Scene generation request rejected: %*"]
      119 MOVE                             R8 R4
      120 NAMECALL                         R6 R6 K12 ["format"]
      122 CALL                             R6 2 1
      123 CALL                             R5 1 0
      124 GETUPVAL                         R5 2
      125 GETUPVAL                         R7 3
      126 GETTABLEKS                       R7 R7 K13 ["SceneGenComplete"]
      128 LOADNIL                          R8
      129 DUPTABLE                         R9 K21 [{["requestId"], ["ok"] = False, ["cancelled"] = , ["rejected"] = True, ["errorMessage"]}]
      130 SETTABLEKS                       R1 R9 K3 ["requestId"]
      132 SETTABLEKS                       R4 R9 K20 ["errorMessage"]
      134 NAMECALL                         R5 R5 K22 ["FireGuest"]
      136 CALL                             R5 4 0
      137 RETURN                           R0 0
      138 GETUPVAL                         R4 7
      139 JUMPIFNOT                        R4 ; [+41]
      140 GETIMPORT                        R4 K31 [next]
      142 GETUPVAL                         R5 8
      143 CALL                             R4 1 1
      144 JUMPIFNOT                        R4 ; [+36]
      145 GETUPVAL                         R5 7
      146 JUMPIFNOT                        R5 ; [+7]
      147 GETUPVAL                         R4 9
      148 GETUPVAL                         R5 1
      149 LOADK                            R6 K7 ["SceneGen"]
      150 LOADK                            R7 K32 ["InvalidBounds"]
      151 LOADK                            R8 K33 ["Enter finite coordinates and scene sizes between 1 and 2048 studs."]
      152 CALL                             R4 4 1
      153 JUMP                             ; [+5]
      154 GETUPVAL                         R4 1
      155 LOADK                            R5 K7 ["SceneGen"]
      156 LOADK                            R6 K32 ["InvalidBounds"]
      157 LOADNIL                          R7
      158 CALL                             R4 3 1
      159 GETIMPORT                        R5 K10 [warn]
      161 LOADK                            R6 K11 ["[Gen3d] Scene generation request rejected: %*"]
      162 MOVE                             R8 R4
      163 NAMECALL                         R6 R6 K12 ["format"]
      165 CALL                             R6 2 1
      166 CALL                             R5 1 0
      167 GETUPVAL                         R5 2
      168 GETUPVAL                         R7 3
      169 GETTABLEKS                       R7 R7 K13 ["SceneGenComplete"]
      171 LOADNIL                          R8
      172 DUPTABLE                         R9 K21 [{["requestId"], ["ok"] = False, ["cancelled"] = , ["rejected"] = True, ["errorMessage"]}]
      173 SETTABLEKS                       R1 R9 K3 ["requestId"]
      175 SETTABLEKS                       R4 R9 K20 ["errorMessage"]
      177 NAMECALL                         R5 R5 K22 ["FireGuest"]
      179 CALL                             R5 4 0
      180 RETURN                           R0 0
      181 GETUPVAL                         R4 10
      182 LOADNIL                          R5
      183 LOADNIL                          R6
      184 FORGPREP                         R4
      185 NAMECALL                         R9 R8 K34 ["Disconnect"]
      187 CALL                             R9 1 0
      188 FORGLOOP                         R4 2 ; [-4]
      190 GETIMPORT                        R4 K36 [table.clear]
      192 GETUPVAL                         R5 10
      193 CALL                             R4 1 0
      194 DUPTABLE                         R4 K39 [{["part"], ["box"], ["status"] = "running"}]
      195 SETTABLEKS                       R3 R4 K37 ["part"]
      197 GETUPVAL                         R5 11
      198 SETTABLEKS                       R5 R4 K38 ["box"]
      200 LOADNIL                          R5
      201 SETUPVAL                         R5 4
      202 LOADNIL                          R5
      203 SETUPVAL                         R5 11
      204 GETUPVAL                         R5 5
      205 SETTABLE                         R4 R5 R1
      206 LOADB                            R5 1
      207 SETTABLEKS                       R5 R3 K40 ["Locked"]
      209 GETUPVAL                         R5 12
      210 NEWTABLE                         R7 0 0
      212 NAMECALL                         R5 R5 K41 ["Set"]
      214 CALL                             R5 2 0
      215 GETUPVAL                         R5 13
      216 MOVE                             R6 R1
      217 LOADNIL                          R7
      218 CALL                             R5 2 0
      219 GETIMPORT                        R5 K44 [task.spawn]
      221 NEWCLOSURE                       R6 P0
      222 CAPTURE                          UPVAL U14
      223 CAPTURE                          VAL R1
      224 CAPTURE                          VAL R4
      225 CAPTURE                          VAL R2
      226 CAPTURE                          VAL R0
      227 CAPTURE                          VAL R3
      228 CAPTURE                          UPVAL U15
      229 CALL                             R5 1 0
      230 RETURN                           R0 0

PROTO_39:
        0 LOADB                            R1 0
        1 GETTABLEKS                       R2 R0 K0 ["visible"]
        3 JUMPIFNOTEQKB                    R2 TRUE ; [+8]
        5 GETTABLEKS                       R2 R0 K1 ["editSessionId"]
        7 GETUPVAL                         R3 0
        8 JUMPIFEQ                         R2 R3 ; [+2]
       10 LOADB                            R1 0 +1
       11 LOADB                            R1 1
       12 GETUPVAL                         R2 1
       13 JUMPIFNOT                        R2 ; [+94]
       14 MOVE                             R2 R1
       15 JUMPIFNOT                        R2 ; [+11]
       16 GETTABLEKS                       R3 R0 K2 ["step"]
       18 GETUPVAL                         R4 2
       19 GETTABLEKS                       R4 R4 K3 ["Steps"]
       21 GETTABLEKS                       R4 R4 K4 ["Settings"]
       23 JUMPIFEQ                         R3 R4 ; [+2]
       25 LOADB                            R2 0 +1
       26 LOADB                            R2 1
       27 GETUPVAL                         R3 3
       28 SETUPVAL                         R1 4
       29 SETUPVAL                         R2 3
       30 JUMPIF                           R1 ; [+38]
       31 LOADNIL                          R4
       32 SETUPVAL                         R4 5
       33 GETUPVAL                         R4 6
       34 LOADNIL                          R5
       35 LOADNIL                          R6
       36 FORGPREP                         R4
       37 NAMECALL                         R9 R8 K5 ["Disconnect"]
       39 CALL                             R9 1 0
       40 FORGLOOP                         R4 2 ; [-4]
       42 GETIMPORT                        R4 K8 [table.clear]
       44 GETUPVAL                         R5 6
       45 CALL                             R4 1 0
       46 GETIMPORT                        R4 K8 [table.clear]
       48 GETUPVAL                         R5 7
       49 CALL                             R4 1 0
       50 GETUPVAL                         R4 8
       51 GETUPVAL                         R5 9
       52 LOADNIL                          R6
       53 SETUPVAL                         R6 8
       54 LOADNIL                          R6
       55 SETUPVAL                         R6 9
       56 JUMPIFEQKNIL                     R4 ; [+6]
       58 GETUPVAL                         R6 10
       59 GETTABLEKS                       R6 R6 K9 ["destroy"]
       61 MOVE                             R7 R4
       62 CALL                             R6 1 0
       63 JUMPIFEQKNIL                     R5 ; [+43]
       65 NAMECALL                         R6 R5 K10 ["Destroy"]
       67 CALL                             R6 1 0
       68 RETURN                           R0 0
       69 JUMPIFNOT                        R2 ; [+7]
       70 JUMPIF                           R3 ; [+6]
       71 GETTABLEKS                       R4 R0 K11 ["bounds"]
       73 SETUPVAL                         R4 11
       74 GETUPVAL                         R4 12
       75 CALL                             R4 0 0
       76 RETURN                           R0 0
       77 JUMPIF                           R2 ; [+29]
       78 JUMPIFNOT                        R3 ; [+28]
       79 GETUPVAL                         R4 9
       80 JUMPIFEQKNIL                     R4 ; [+26]
       82 GETIMPORT                        R4 K8 [table.clear]
       84 GETUPVAL                         R5 7
       85 CALL                             R4 1 0
       86 GETUPVAL                         R4 13
       87 CALL                             R4 0 0
       88 GETUPVAL                         R4 9
       89 LOADB                            R5 1
       90 SETTABLEKS                       R5 R4 K12 ["Locked"]
       92 GETIMPORT                        R4 K14 [table.find]
       94 GETUPVAL                         R5 14
       95 NAMECALL                         R5 R5 K15 ["Get"]
       97 CALL                             R5 1 1
       98 GETUPVAL                         R6 9
       99 CALL                             R4 2 1
      100 JUMPIFNOT                        R4 ; [+6]
      101 GETUPVAL                         R4 14
      102 NEWTABLE                         R6 0 0
      104 NAMECALL                         R4 R4 K16 ["Set"]
      106 CALL                             R4 2 0
      107 RETURN                           R0 0
      108 GETUPVAL                         R2 4
      109 JUMPIFNOTEQ                      R1 R2 ; [+2]
      111 RETURN                           R0 0
      112 SETUPVAL                         R1 4
      113 JUMPIFNOT                        R1 ; [+3]
      114 GETUPVAL                         R2 12
      115 CALL                             R2 0 0
      116 RETURN                           R0 0
      117 LOADNIL                          R2
      118 SETUPVAL                         R2 5
      119 GETUPVAL                         R2 6
      120 LOADNIL                          R3
      121 LOADNIL                          R4
      122 FORGPREP                         R2
      123 NAMECALL                         R7 R6 K5 ["Disconnect"]
      125 CALL                             R7 1 0
      126 FORGLOOP                         R2 2 ; [-4]
      128 GETIMPORT                        R2 K8 [table.clear]
      130 GETUPVAL                         R3 6
      131 CALL                             R2 1 0
      132 GETIMPORT                        R2 K8 [table.clear]
      134 GETUPVAL                         R3 7
      135 CALL                             R2 1 0
      136 GETUPVAL                         R2 8
      137 GETUPVAL                         R3 9
      138 LOADNIL                          R4
      139 SETUPVAL                         R4 8
      140 LOADNIL                          R4
      141 SETUPVAL                         R4 9
      142 JUMPIFEQKNIL                     R2 ; [+6]
      144 GETUPVAL                         R4 10
      145 GETTABLEKS                       R4 R4 K9 ["destroy"]
      147 MOVE                             R5 R2
      148 CALL                             R4 1 0
      149 JUMPIFEQKNIL                     R3 ; [+4]
      151 NAMECALL                         R4 R3 K10 ["Destroy"]
      153 CALL                             R4 1 0
      154 RETURN                           R0 0

PROTO_40:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 JUMPIFNOT                        R3 ; [+18]
        3 JUMPIFEQKNIL                     R2 ; [+17]
        5 GETTABLEKS                       R3 R2 K0 ["Parent"]
        7 JUMPIFEQKNIL                     R3 ; [+13]
        9 FASTCALL1                        TYPEOF R1 ; [+3]
       10 MOVE                             R4 R1
       11 GETIMPORT                        R3 K2 [typeof]
       13 CALL                             R3 1 1
       14 JUMPIFNOTEQKS                    R3 K3 ["table"] ; [+6]
       16 GETTABLEKS                       R3 R1 K4 ["editSessionId"]
       18 GETUPVAL                         R4 2
       19 JUMPIFEQ                         R3 R4 ; [+2]
       21 RETURN                           R0 0
       22 GETTABLEKS                       R3 R1 K5 ["field"]
       24 GETTABLEKS                       R4 R1 K6 ["axis"]
       26 GETTABLEKS                       R5 R1 K7 ["value"]
       28 GETUPVAL                         R6 3
       29 GETTABLEKS                       R6 R6 K8 ["BoundsFields"]
       31 GETTABLEKS                       R6 R6 K9 ["Size"]
       33 JUMPIFEQ                         R3 R6 ; [+8]
       35 GETUPVAL                         R6 3
       36 GETTABLEKS                       R6 R6 K8 ["BoundsFields"]
       38 GETTABLEKS                       R6 R6 K10 ["Position"]
       40 JUMPIFNOTEQ                      R3 R6 ; [+7]
       42 JUMPIFEQKS                       R4 K11 ["x"] ; [+9]
       44 JUMPIFEQKS                       R4 K12 ["y"] ; [+7]
       46 JUMPIFEQKS                       R4 K13 ["z"] ; [+5]
       48 GETUPVAL                         R6 4
       49 LOADK                            R7 K14 ["[Gen3d] Invalid scene bounds field or axis"]
       50 CALL                             R6 1 0
       51 RETURN                           R0 0
       52 LOADK                            R6 K15 ["%*:%*"]
       53 MOVE                             R8 R3
       54 MOVE                             R9 R4
       55 NAMECALL                         R6 R6 K16 ["format"]
       57 CALL                             R6 3 1
       58 FASTCALL1                        TYPEOF R5 ; [+3]
       59 MOVE                             R8 R5
       60 GETIMPORT                        R7 K2 [typeof]
       62 CALL                             R7 1 1
       63 JUMPIFNOTEQKS                    R7 K17 ["number"] ; [+32]
       65 JUMPIFNOTEQ                      R5 R5 ; [+30]
       67 LOADN                            R10 0
       68 LOADN                            R11 0
       69 FASTCALL3                        VECTOR R5 R10 R11
       71 MOVE                             R9 R5
       72 GETIMPORT                        R8 K20 [Vector3.new]
       74 CALL                             R8 3 1
       75 GETTABLEKS                       R8 R8 K21 ["X"]
       77 FASTCALL1                        MATH_ABS R8 ; [+2]
       78 GETIMPORT                        R7 K24 [math.abs]
       80 CALL                             R7 1 1
       81 JUMPIFEQKN                       R7 K25 [Infinity] ; [+14]
       83 GETUPVAL                         R7 3
       84 GETTABLEKS                       R7 R7 K8 ["BoundsFields"]
       86 GETTABLEKS                       R7 R7 K9 ["Size"]
       88 JUMPIFNOTEQ                      R3 R7 ; [+13]
       90 LOADN                            R7 1
       91 JUMPIFLT                         R5 R7 ; [+4]
       93 LOADN                            R7 2048
       94 JUMPIFNOTLT                      R7 R5 ; [+7]
       96 GETUPVAL                         R7 5
       97 LOADB                            R8 1
       98 SETTABLE                         R8 R7 R6
       99 GETUPVAL                         R7 6
      100 CALL                             R7 0 0
      101 RETURN                           R0 0
      102 GETUPVAL                         R7 5
      103 LOADNIL                          R8
      104 SETTABLE                         R8 R7 R6
      105 GETUPVAL                         R8 3
      106 GETTABLEKS                       R8 R8 K8 ["BoundsFields"]
      108 GETTABLEKS                       R8 R8 K9 ["Size"]
      110 JUMPIFNOTEQ                      R3 R8 ; [+4]
      112 GETTABLEKS                       R7 R2 K9 ["Size"]
      114 JUMP                             ; [+7]
      115 GETUPVAL                         R7 7
      116 GETTABLEKS                       R7 R7 K26 ["SceneBoundsOps"]
      118 GETTABLEKS                       R7 R7 K27 ["getPosition"]
      120 MOVE                             R8 R2
      121 CALL                             R7 1 1
      122 JUMPIFNOTEQKS                    R4 K11 ["x"] ; [+3]
      124 MOVE                             R9 R5
      125 JUMP                             ; [+2]
      126 GETTABLEKS                       R9 R7 K21 ["X"]
      128 JUMPIFNOTEQKS                    R4 K12 ["y"] ; [+3]
      130 MOVE                             R10 R5
      131 JUMP                             ; [+2]
      132 GETTABLEKS                       R10 R7 K28 ["Y"]
      134 JUMPIFNOTEQKS                    R4 K13 ["z"] ; [+3]
      136 MOVE                             R11 R5
      137 JUMP                             ; [+2]
      138 GETTABLEKS                       R11 R7 K29 ["Z"]
      140 FASTCALL                         VECTOR ; [+2]
      141 GETIMPORT                        R8 K20 [Vector3.new]
      143 CALL                             R8 3 1
      144 GETUPVAL                         R9 3
      145 GETTABLEKS                       R9 R9 K8 ["BoundsFields"]
      147 GETTABLEKS                       R9 R9 K9 ["Size"]
      149 JUMPIFNOTEQ                      R3 R9 ; [+10]
      151 GETUPVAL                         R9 7
      152 GETTABLEKS                       R9 R9 K26 ["SceneBoundsOps"]
      154 GETTABLEKS                       R9 R9 K30 ["setSize"]
      156 MOVE                             R10 R2
      157 MOVE                             R11 R8
      158 CALL                             R9 2 0
      159 JUMP                             ; [+8]
      160 GETUPVAL                         R9 7
      161 GETTABLEKS                       R9 R9 K26 ["SceneBoundsOps"]
      163 GETTABLEKS                       R9 R9 K31 ["setPosition"]
      165 MOVE                             R10 R2
      166 MOVE                             R11 R8
      167 CALL                             R9 2 0
      168 GETUPVAL                         R9 6
      169 CALL                             R9 0 0
      170 RETURN                           R0 0

PROTO_41:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 0
        3 RETURN                           R0 0

PROTO_42:
        0 FASTCALL1                        TYPEOF R1 ; [+3]
        1 MOVE                             R3 R1
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+13]
        7 GETTABLEKS                       R3 R1 K3 ["requestId"]
        9 FASTCALL1                        TYPEOF R3 ; [+2]
       10 GETIMPORT                        R2 K1 [typeof]
       12 CALL                             R2 1 1
       13 JUMPIFNOTEQKS                    R2 K4 ["string"] ; [+5]
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R3 R1 K3 ["requestId"]
       18 CALL                             R2 1 0
       19 RETURN                           R0 0

PROTO_43:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["LayoutGenOps"]
        3 GETTABLEKS                       R0 R0 K1 ["cancelGenerationAsync"]
        5 DUPTABLE                         R1 K3 [{"requestId"}]
        6 GETUPVAL                         R2 1
        7 SETTABLEKS                       R2 R1 K2 ["requestId"]
        9 GETUPVAL                         R2 2
       10 CALL                             R0 2 0
       11 RETURN                           R0 0

PROTO_44:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+2]
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 0
        6 GETUPVAL                         R0 2
        7 JUMPIFNOT                        R0 ; [+2]
        8 GETUPVAL                         R0 2
        9 CALL                             R0 0 0
       10 GETUPVAL                         R0 3
       11 JUMPIFNOT                        R0 ; [+2]
       12 GETUPVAL                         R0 3
       13 CALL                             R0 0 0
       14 GETUPVAL                         R0 4
       15 NEWTABLE                         R1 0 0
       17 SETUPVAL                         R1 4
       18 MOVE                             R1 R0
       19 LOADNIL                          R2
       20 LOADNIL                          R3
       21 FORGPREP                         R1
       22 GETTABLEKS                       R6 R5 K0 ["status"]
       24 JUMPIFNOTEQKS                    R6 K1 ["running"] ; [+8]
       26 GETIMPORT                        R6 K3 [pcall]
       28 NEWCLOSURE                       R7 P0
       29 CAPTURE                          UPVAL U5
       30 CAPTURE                          VAL R4
       31 CAPTURE                          UPVAL U6
       32 CALL                             R6 1 0
       33 GETTABLEKS                       R6 R5 K4 ["box"]
       35 GETTABLEKS                       R7 R5 K5 ["part"]
       37 JUMPIFEQKNIL                     R6 ; [+6]
       39 GETUPVAL                         R8 7
       40 GETTABLEKS                       R8 R8 K6 ["destroy"]
       42 MOVE                             R9 R6
       43 CALL                             R8 1 0
       44 JUMPIFEQKNIL                     R7 ; [+4]
       46 NAMECALL                         R8 R7 K7 ["Destroy"]
       48 CALL                             R8 1 0
       49 GETUPVAL                         R6 8
       50 GETUPVAL                         R8 9
       51 GETTABLEKS                       R8 R8 K8 ["SceneGenComplete"]
       53 LOADNIL                          R9
       54 DUPTABLE                         R10 K17 [{["requestId"], ["ok"] = False, ["cancelled"] = True, ["rejected"] = , ["errorMessage"] = }]
       55 SETTABLEKS                       R4 R10 K9 ["requestId"]
       57 NAMECALL                         R6 R6 K18 ["FireGuest"]
       59 CALL                             R6 4 0
       60 FORGLOOP                         R1 2 ; [-39]
       62 GETUPVAL                         R1 10
       63 LOADNIL                          R2
       64 LOADNIL                          R3
       65 FORGPREP                         R1
       66 NAMECALL                         R6 R5 K19 ["Disconnect"]
       68 CALL                             R6 1 0
       69 FORGLOOP                         R1 2 ; [-4]
       71 GETIMPORT                        R1 K22 [table.clear]
       73 GETUPVAL                         R2 10
       74 CALL                             R1 1 0
       75 GETIMPORT                        R1 K22 [table.clear]
       77 GETUPVAL                         R2 11
       78 CALL                             R1 1 0
       79 GETUPVAL                         R1 12
       80 GETUPVAL                         R2 13
       81 LOADNIL                          R3
       82 SETUPVAL                         R3 12
       83 LOADNIL                          R3
       84 SETUPVAL                         R3 13
       85 JUMPIFEQKNIL                     R1 ; [+6]
       87 GETUPVAL                         R3 7
       88 GETTABLEKS                       R3 R3 K6 ["destroy"]
       90 MOVE                             R4 R1
       91 CALL                             R3 1 0
       92 JUMPIFEQKNIL                     R2 ; [+4]
       94 NAMECALL                         R3 R2 K7 ["Destroy"]
       96 CALL                             R3 1 0
       97 GETUPVAL                         R1 14
       98 LOADNIL                          R2
       99 LOADNIL                          R3
      100 FORGPREP                         R1
      101 GETIMPORT                        R6 K25 [task.spawn]
      103 MOVE                             R7 R5
      104 CALL                             R6 1 0
      105 FORGLOOP                         R1 2 ; [-5]
      107 GETIMPORT                        R1 K22 [table.clear]
      109 GETUPVAL                         R2 14
      110 CALL                             R1 1 0
      111 RETURN                           R0 0

PROTO_45:
        0 MOVE                             R6 R4
        1 JUMPIF                           R6 ; [+2]
        2 GETUPVAL                         R6 0
        3 CALL                             R6 0 1
        4 GETUPVAL                         R7 1
        5 GETTABLEKS                       R7 R7 K0 ["createGenerationSessions"]
        7 CALL                             R7 0 1
        8 GETTABLEKS                       R8 R3 K1 ["recording"]
       10 JUMPIF                           R8 ; [+2]
       11 GETUPVAL                         R8 2
       12 CALL                             R8 0 1
       13 GETUPVAL                         R9 3
       14 GETTABLEKS                       R9 R9 K2 ["getFFlagGen3dSceneGenSettings"]
       16 CALL                             R9 0 1
       17 MOVE                             R10 R5
       18 JUMPIF                           R10 ; [+2]
       19 GETIMPORT                        R10 K4 [warn]
       21 LOADNIL                          R11
       22 LOADNIL                          R12
       23 NEWTABLE                         R13 0 0
       25 LOADB                            R14 0
       26 LOADB                            R15 0
       27 NEWTABLE                         R16 0 0
       29 NEWTABLE                         R17 0 0
       31 LOADNIL                          R18
       32 LOADNIL                          R19
       33 LOADB                            R20 0
       34 NEWTABLE                         R21 0 0
       36 NEWCLOSURE                       R22 P0
       37 CAPTURE                          VAL R9
       38 CAPTURE                          UPVAL U4
       39 CAPTURE                          VAL R6
       40 NEWCLOSURE                       R23 P1
       41 CAPTURE                          VAL R16
       42 NEWCLOSURE                       R24 P2
       43 CAPTURE                          REF R11
       44 CAPTURE                          VAL R9
       45 CAPTURE                          UPVAL U1
       46 CAPTURE                          VAL R0
       47 CAPTURE                          UPVAL U5
       48 CAPTURE                          VAL R2
       49 CAPTURE                          VAL R17
       50 CAPTURE                          UPVAL U4
       51 CAPTURE                          VAL R6
       52 NEWCLOSURE                       R25 P3
       53 CAPTURE                          VAL R16
       54 CAPTURE                          REF R11
       55 CAPTURE                          VAL R9
       56 CAPTURE                          VAL R24
       57 CAPTURE                          REF R12
       58 CAPTURE                          UPVAL U6
       59 CAPTURE                          VAL R0
       60 CAPTURE                          UPVAL U5
       61 CAPTURE                          VAL R2
       62 CAPTURE                          VAL R6
       63 DUPCLOSURE                       R26 K5 [PROTO_9]
       64 NEWCLOSURE                       R27 P5
       65 CAPTURE                          REF R13
       66 DUPCLOSURE                       R28 K6 [PROTO_12]
       67 DUPCLOSURE                       R29 K7 [PROTO_13]
       68 CAPTURE                          UPVAL U6
       69 NEWCLOSURE                       R30 P8
       70 CAPTURE                          VAL R16
       71 CAPTURE                          VAL R17
       72 CAPTURE                          REF R12
       73 CAPTURE                          REF R11
       74 CAPTURE                          UPVAL U6
       75 NEWCLOSURE                       R31 P9
       76 CAPTURE                          UPVAL U7
       77 CAPTURE                          VAL R1
       78 DUPCLOSURE                       R32 K8 [PROTO_16]
       79 CAPTURE                          UPVAL U8
       80 CAPTURE                          UPVAL U9
       81 CAPTURE                          UPVAL U1
       82 NEWCLOSURE                       R33 P11
       83 CAPTURE                          REF R19
       84 CAPTURE                          REF R13
       85 CAPTURE                          VAL R16
       86 CAPTURE                          VAL R17
       87 CAPTURE                          REF R12
       88 CAPTURE                          REF R11
       89 CAPTURE                          UPVAL U6
       90 NEWCLOSURE                       R34 P12
       91 CAPTURE                          REF R19
       92 CAPTURE                          REF R13
       93 CAPTURE                          VAL R16
       94 CAPTURE                          VAL R17
       95 CAPTURE                          REF R12
       96 CAPTURE                          REF R11
       97 CAPTURE                          UPVAL U6
       98 CAPTURE                          UPVAL U10
       99 CAPTURE                          VAL R1
      100 CAPTURE                          VAL R25
      101 CAPTURE                          UPVAL U8
      102 CAPTURE                          UPVAL U9
      103 CAPTURE                          UPVAL U1
      104 CAPTURE                          VAL R9
      105 CAPTURE                          REF R18
      106 NEWCLOSURE                       R35 P13
      107 CAPTURE                          REF R13
      108 CAPTURE                          REF R19
      109 CAPTURE                          UPVAL U7
      110 CAPTURE                          VAL R1
      111 CAPTURE                          REF R14
      112 CAPTURE                          VAL R34
      113 NEWCLOSURE                       R36 P14
      114 CAPTURE                          VAL R0
      115 CAPTURE                          UPVAL U5
      116 NEWCLOSURE                       R37 P15
      117 CAPTURE                          UPVAL U6
      118 CAPTURE                          REF R13
      119 CAPTURE                          REF R19
      120 CAPTURE                          UPVAL U7
      121 CAPTURE                          VAL R1
      122 CAPTURE                          REF R14
      123 CAPTURE                          VAL R34
      124 CAPTURE                          VAL R0
      125 CAPTURE                          UPVAL U5
      126 NEWCLOSURE                       R38 P16
      127 CAPTURE                          REF R13
      128 CAPTURE                          UPVAL U1
      129 CAPTURE                          VAL R7
      130 CAPTURE                          UPVAL U6
      131 CAPTURE                          REF R14
      132 CAPTURE                          REF R11
      133 CAPTURE                          VAL R9
      134 CAPTURE                          REF R15
      135 CAPTURE                          VAL R34
      136 CAPTURE                          VAL R0
      137 CAPTURE                          UPVAL U5
      138 NEWCLOSURE                       R39 P17
      139 CAPTURE                          REF R13
      140 CAPTURE                          VAL R6
      141 CAPTURE                          UPVAL U6
      142 CAPTURE                          VAL R38
      143 NEWCLOSURE                       R40 P18
      144 CAPTURE                          VAL R3
      145 CAPTURE                          VAL R6
      146 CAPTURE                          VAL R39
      147 NEWCLOSURE                       R41 P19
      148 CAPTURE                          REF R20
      149 CAPTURE                          VAL R21
      150 NEWCLOSURE                       R42 P20
      151 CAPTURE                          REF R20
      152 CAPTURE                          VAL R21
      153 NEWCLOSURE                       R43 P21
      154 CAPTURE                          VAL R40
      155 CAPTURE                          UPVAL U1
      156 CAPTURE                          VAL R7
      157 CAPTURE                          REF R13
      158 CAPTURE                          UPVAL U6
      159 CAPTURE                          VAL R6
      160 CAPTURE                          REF R20
      161 CAPTURE                          VAL R21
      162 CAPTURE                          VAL R8
      163 CAPTURE                          VAL R22
      164 CAPTURE                          VAL R0
      165 CAPTURE                          UPVAL U5
      166 CAPTURE                          VAL R37
      167 NEWCLOSURE                       R44 P22
      168 CAPTURE                          VAL R0
      169 CAPTURE                          UPVAL U5
      170 NEWCLOSURE                       R45 P23
      171 CAPTURE                          UPVAL U11
      172 CAPTURE                          VAL R6
      173 CAPTURE                          VAL R0
      174 CAPTURE                          UPVAL U5
      175 CAPTURE                          REF R11
      176 CAPTURE                          REF R13
      177 CAPTURE                          UPVAL U12
      178 CAPTURE                          VAL R9
      179 CAPTURE                          VAL R17
      180 CAPTURE                          UPVAL U4
      181 CAPTURE                          VAL R16
      182 CAPTURE                          REF R12
      183 CAPTURE                          UPVAL U10
      184 CAPTURE                          VAL R39
      185 CAPTURE                          VAL R43
      186 CAPTURE                          UPVAL U1
      187 GETUPVAL                         R46 7
      188 GETTABLEKS                       R46 R46 K9 ["View"]
      190 GETTABLEKS                       R46 R46 K10 ["subscribe"]
      192 MOVE                             R47 R1
      193 NEWCLOSURE                       R48 P24
      194 CAPTURE                          VAL R2
      195 CAPTURE                          VAL R9
      196 CAPTURE                          UPVAL U7
      197 CAPTURE                          REF R15
      198 CAPTURE                          REF R14
      199 CAPTURE                          REF R19
      200 CAPTURE                          VAL R16
      201 CAPTURE                          VAL R17
      202 CAPTURE                          REF R12
      203 CAPTURE                          REF R11
      204 CAPTURE                          UPVAL U6
      205 CAPTURE                          REF R18
      206 CAPTURE                          VAL R34
      207 CAPTURE                          VAL R24
      208 CAPTURE                          UPVAL U10
      209 CALL                             R46 2 1
      210 LOADNIL                          R47
      211 JUMPIFNOT                        R9 ; [+16]
      212 GETUPVAL                         R50 5
      213 GETTABLEKS                       R50 R50 K11 ["SceneGenSetBoundsAxis"]
      215 NEWCLOSURE                       R51 P25
      216 CAPTURE                          REF R11
      217 CAPTURE                          REF R15
      218 CAPTURE                          VAL R2
      219 CAPTURE                          UPVAL U7
      220 CAPTURE                          VAL R10
      221 CAPTURE                          VAL R17
      222 CAPTURE                          VAL R24
      223 CAPTURE                          UPVAL U1
      224 NAMECALL                         R48 R0 K12 ["OnHostEvent"]
      226 CALL                             R48 3 2
      227 MOVE                             R47 R49
      228 GETUPVAL                         R50 5
      229 GETTABLEKS                       R50 R50 K13 ["SceneGenGenerate"]
      231 NEWCLOSURE                       R51 P26
      232 CAPTURE                          VAL R45
      233 NAMECALL                         R48 R0 K12 ["OnHostEvent"]
      235 CALL                             R48 3 2
      236 GETUPVAL                         R52 5
      237 GETTABLEKS                       R52 R52 K14 ["SceneGenCancel"]
      239 NEWCLOSURE                       R53 P27
      240 CAPTURE                          VAL R38
      241 NAMECALL                         R50 R0 K12 ["OnHostEvent"]
      243 CALL                             R50 3 2
      244 NEWCLOSURE                       R52 P28
      245 CAPTURE                          VAL R46
      246 CAPTURE                          REF R47
      247 CAPTURE                          VAL R49
      248 CAPTURE                          VAL R51
      249 CAPTURE                          REF R13
      250 CAPTURE                          UPVAL U1
      251 CAPTURE                          VAL R7
      252 CAPTURE                          UPVAL U6
      253 CAPTURE                          VAL R0
      254 CAPTURE                          UPVAL U5
      255 CAPTURE                          VAL R16
      256 CAPTURE                          VAL R17
      257 CAPTURE                          REF R12
      258 CAPTURE                          REF R11
      259 CAPTURE                          VAL R21
      260 DUPTABLE                         R53 K16 [{"destroy"}]
      261 SETTABLEKS                       R52 R53 K15 ["destroy"]
      263 CLOSEUPVALS                      R11
      264 RETURN                           R53 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Selection"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["Workspace"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K6 [script]
       15 LOADK                            R4 K7 ["Gen3d"]
       16 NAMECALL                         R2 R2 K8 ["FindFirstAncestor"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K10 [require]
       21 GETTABLEKS                       R4 R2 K11 ["Packages"]
       23 GETTABLEKS                       R4 R4 K12 ["DMNetworking"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K10 [require]
       28 GETTABLEKS                       R5 R2 K11 ["Packages"]
       30 GETTABLEKS                       R5 R5 K13 ["Gen3dCore"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K10 [require]
       35 GETTABLEKS                       R6 R2 K11 ["Packages"]
       37 GETTABLEKS                       R6 R6 K14 ["LoadingSkeleton3D"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K10 [require]
       42 GETTABLEKS                       R7 R2 K11 ["Packages"]
       44 GETTABLEKS                       R7 R7 K15 ["StudioFoundation"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K10 [require]
       49 GETTABLEKS                       R8 R2 K16 ["Src"]
       51 GETTABLEKS                       R8 R8 K17 ["Networking"]
       53 GETTABLEKS                       R8 R8 K18 ["Events"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K10 [require]
       58 GETTABLEKS                       R9 R2 K16 ["Src"]
       60 GETTABLEKS                       R9 R9 K19 ["Util"]
       62 GETTABLEKS                       R9 R9 K20 ["SceneGenViewModel"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K10 [require]
       67 GETTABLEKS                       R10 R2 K16 ["Src"]
       69 GETTABLEKS                       R10 R10 K21 ["Host"]
       71 GETTABLEKS                       R10 R10 K22 ["Services"]
       73 GETTABLEKS                       R10 R10 K23 ["createRecordingService"]
       75 CALL                             R9 1 1
       76 GETIMPORT                        R10 K10 [require]
       78 GETTABLEKS                       R11 R2 K24 ["Bin"]
       80 GETTABLEKS                       R11 R11 K25 ["Common"]
       82 GETTABLEKS                       R11 R11 K26 ["defineLuaFlags"]
       84 CALL                             R10 1 1
       85 GETIMPORT                        R11 K10 [require]
       87 GETTABLEKS                       R12 R2 K16 ["Src"]
       89 GETTABLEKS                       R12 R12 K19 ["Util"]
       91 GETTABLEKS                       R12 R12 K27 ["getLocalizedTextOrDefault"]
       93 CALL                             R11 1 1
       94 GETTABLEKS                       R12 R2 K16 ["Src"]
       96 GETTABLEKS                       R12 R12 K28 ["Resources"]
       98 GETTABLEKS                       R12 R12 K29 ["Localization"]
      100 GETTABLEKS                       R12 R12 K30 ["LocalizedStrings"]
      102 GETTABLEKS                       R13 R2 K16 ["Src"]
      104 GETTABLEKS                       R13 R13 K28 ["Resources"]
      106 GETTABLEKS                       R13 R13 K29 ["Localization"]
      108 GETTABLEKS                       R13 R13 K31 ["SourceStrings"]
      110 GETTABLEKS                       R14 R4 K32 ["Constants"]
      112 GETTABLEKS                       R14 R14 K33 ["DEFAULT_SCENE_SIZE"]
      114 GETTABLEKS                       R15 R8 K34 ["MAX_RUNS"]
      116 DUPCLOSURE                       R16 K35 [PROTO_1]
      117 CAPTURE                          VAL R6
      118 CAPTURE                          VAL R13
      119 CAPTURE                          VAL R12
      120 DUPCLOSURE                       R17 K36 [PROTO_2]
      121 CAPTURE                          VAL R4
      122 DUPCLOSURE                       R18 K37 [PROTO_3]
      123 DUPCLOSURE                       R19 K38 [PROTO_45]
      124 CAPTURE                          VAL R16
      125 CAPTURE                          VAL R4
      126 CAPTURE                          VAL R9
      127 CAPTURE                          VAL R10
      128 CAPTURE                          VAL R11
      129 CAPTURE                          VAL R7
      130 CAPTURE                          VAL R5
      131 CAPTURE                          VAL R8
      132 CAPTURE                          VAL R1
      133 CAPTURE                          VAL R14
      134 CAPTURE                          VAL R0
      135 CAPTURE                          VAL R18
      136 CAPTURE                          VAL R15
      137 RETURN                           R19 1
