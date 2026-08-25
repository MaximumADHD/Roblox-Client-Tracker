PROTO_0:
        0 GETIMPORT                        R1 K2 [RaycastParams.new]
        2 CALL                             R1 0 1
        3 GETIMPORT                        R2 K6 [Enum.RaycastFilterType.Exclude]
        5 SETTABLEKS                       R2 R1 K7 ["FilterType"]
        7 NEWTABLE                         R3 0 0
        9 GETUPVAL                         R4 0
       10 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
       12 GETIMPORT                        R2 K9 [setmetatable]
       14 CALL                             R2 2 1
       15 SETTABLEKS                       R0 R2 K10 ["_plugin"]
       17 LOADB                            R3 0
       18 SETTABLEKS                       R3 R2 K11 ["_active"]
       20 LOADB                            R3 0
       21 SETTABLEKS                       R3 R2 K12 ["_dropped"]
       23 GETIMPORT                        R3 K14 [Vector2.new]
       25 CALL                             R3 0 1
       26 SETTABLEKS                       R3 R2 K15 ["_lastMousePos"]
       28 GETUPVAL                         R3 1
       29 GETTABLEKS                       R3 R3 K1 ["new"]
       31 MOVE                             R4 R0
       32 MOVE                             R5 R1
       33 CALL                             R3 2 1
       34 SETTABLEKS                       R3 R2 K16 ["_placer3D"]
       36 GETUPVAL                         R3 2
       37 GETTABLEKS                       R3 R3 K1 ["new"]
       39 MOVE                             R4 R0
       40 MOVE                             R5 R1
       41 CALL                             R3 2 1
       42 SETTABLEKS                       R3 R2 K17 ["_placer2D"]
       44 SETTABLEKS                       R1 R2 K18 ["_raycastParams"]
       46 LOADNIL                          R3
       47 SETTABLEKS                       R3 R2 K19 ["_heartbeatConnection"]
       49 LOADNIL                          R3
       50 SETTABLEKS                       R3 R2 K20 ["_insertPromise"]
       52 NEWTABLE                         R3 0 0
       54 SETTABLEKS                       R3 R2 K21 ["_loadedInstances"]
       56 NEWTABLE                         R3 0 0
       58 SETTABLEKS                       R3 R2 K22 ["_modifiedInstances"]
       60 RETURN                           R2 1

PROTO_1:
        0 MOVE                             R1 R0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 LOADK                            R8 K0 ["VideoFrame"]
        5 NAMECALL                         R6 R5 K1 ["IsA"]
        7 CALL                             R6 2 1
        8 JUMPIFNOT                        R6 ; [+17]
        9 GETIMPORT                        R6 K4 [Instance.new]
       11 LOADK                            R7 K5 ["SurfaceGui"]
       12 CALL                             R6 1 1
       13 GETTABLEKS                       R7 R5 K6 ["Name"]
       15 SETTABLEKS                       R7 R6 K6 ["Name"]
       17 SETTABLEKS                       R6 R5 K7 ["Parent"]
       19 GETIMPORT                        R7 K9 [game]
       21 GETTABLEKS                       R7 R7 K10 ["Workspace"]
       23 SETTABLEKS                       R7 R6 K7 ["Parent"]
       25 SETTABLE                         R6 R0 R4
       26 FORGLOOP                         R1 2 ; [-23]
       28 RETURN                           R0 0

PROTO_2:
        0 NAMECALL                         R2 R1 K0 ["GetDescendants"]
        2 CALL                             R2 1 1
        3 FASTCALL2                        TABLE_INSERT R2 R1 ; [+5]
        5 MOVE                             R4 R2
        6 MOVE                             R5 R1
        7 GETIMPORT                        R3 K3 [table.insert]
        9 CALL                             R3 2 0
       10 MOVE                             R3 R2
       11 LOADNIL                          R4
       12 LOADNIL                          R5
       13 FORGPREP                         R3
       14 LOADK                            R10 K4 ["BasePart"]
       15 NAMECALL                         R8 R7 K5 ["IsA"]
       17 CALL                             R8 2 1
       18 JUMPIF                           R8 ; [+5]
       19 LOADK                            R10 K6 ["Decal"]
       20 NAMECALL                         R8 R7 K5 ["IsA"]
       22 CALL                             R8 2 1
       23 JUMPIFNOT                        R8 ; [+17]
       24 GETTABLEKS                       R9 R7 K7 ["Transparency"]
       26 GETTABLEKS                       R12 R7 K7 ["Transparency"]
       28 SUBRK                            R11 K9 [1] R12
       29 MULK                             R10 R11 K8 [0.5]
       30 ADD                              R8 R9 R10
       31 SETTABLEKS                       R8 R7 K7 ["Transparency"]
       33 GETTABLEKS                       R9 R0 K10 ["_modifiedInstances"]
       35 FASTCALL2                        TABLE_INSERT R9 R7 ; [+4]
       37 MOVE                             R10 R7
       38 GETIMPORT                        R8 K3 [table.insert]
       40 CALL                             R8 2 0
       41 FORGLOOP                         R3 2 ; [-28]
       43 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["_modifiedInstances"]
        2 LOADNIL                          R2
        3 LOADNIL                          R3
        4 FORGPREP                         R1
        5 LOADK                            R8 K1 ["BasePart"]
        6 NAMECALL                         R6 R5 K2 ["IsA"]
        8 CALL                             R6 2 1
        9 JUMPIF                           R6 ; [+5]
       10 LOADK                            R8 K3 ["Decal"]
       11 NAMECALL                         R6 R5 K2 ["IsA"]
       13 CALL                             R6 2 1
       14 JUMPIFNOT                        R6 ; [+8]
       15 GETTABLEKS                       R7 R5 K4 ["Transparency"]
       17 GETTABLEKS                       R9 R5 K4 ["Transparency"]
       19 SUBRK                            R8 K5 [1] R9
       20 SUB                              R6 R7 R8
       21 SETTABLEKS                       R6 R5 K4 ["Transparency"]
       23 FORGLOOP                         R1 2 ; [-19]
       25 NEWTABLE                         R1 0 0
       27 SETTABLEKS                       R1 R0 K0 ["_modifiedInstances"]
       29 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_active"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 0
        5 NAMECALL                         R0 R0 K1 ["tick"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_active"]
        3 JUMPIF                           R1 ; [+14]
        4 GETTABLEKS                       R1 R0 K1 ["Instances"]
        6 LOADNIL                          R2
        7 LOADNIL                          R3
        8 FORGPREP                         R1
        9 GETIMPORT                        R6 K3 [pcall]
       11 GETTABLEKS                       R7 R5 K4 ["Destroy"]
       13 MOVE                             R8 R5
       14 CALL                             R6 2 0
       15 FORGLOOP                         R1 2 ; [-7]
       17 RETURN                           R0 0
       18 GETUPVAL                         R1 1
       19 GETTABLEKS                       R2 R0 K1 ["Instances"]
       21 CALL                             R1 1 0
       22 GETUPVAL                         R1 0
       23 GETTABLEKS                       R2 R0 K1 ["Instances"]
       25 SETTABLEKS                       R2 R1 K5 ["_loadedInstances"]
       27 GETUPVAL                         R1 2
       28 JUMPIF                           R1 ; [+13]
       29 GETUPVAL                         R1 0
       30 GETTABLEKS                       R1 R1 K5 ["_loadedInstances"]
       32 LOADNIL                          R2
       33 LOADNIL                          R3
       34 FORGPREP                         R1
       35 GETUPVAL                         R6 0
       36 MOVE                             R8 R5
       37 NAMECALL                         R6 R6 K6 ["_registerTransparencyChanged"]
       39 CALL                             R6 2 0
       40 FORGLOOP                         R1 2 ; [-6]
       42 GETUPVAL                         R1 0
       43 GETTABLEKS                       R1 R1 K7 ["_raycastParams"]
       45 GETUPVAL                         R2 0
       46 GETTABLEKS                       R2 R2 K5 ["_loadedInstances"]
       48 SETTABLEKS                       R2 R1 K8 ["FilterDescendantsInstances"]
       50 GETUPVAL                         R1 0
       51 GETTABLEKS                       R1 R1 K9 ["_placer3D"]
       53 NAMECALL                         R1 R1 K10 ["hideIndicator"]
       55 CALL                             R1 1 0
       56 GETUPVAL                         R1 0
       57 GETTABLEKS                       R1 R1 K11 ["_placer2D"]
       59 NAMECALL                         R1 R1 K10 ["hideIndicator"]
       61 CALL                             R1 1 0
       62 GETUPVAL                         R1 0
       63 NAMECALL                         R1 R1 K12 ["_updateLoadedInstances"]
       65 CALL                             R1 1 0
       66 GETUPVAL                         R1 0
       67 GETTABLEKS                       R1 R1 K13 ["_dropped"]
       69 JUMPIFNOT                        R1 ; [+5]
       70 GETUPVAL                         R1 0
       71 LOADB                            R3 0
       72 NAMECALL                         R1 R1 K14 ["_stopImpl"]
       74 CALL                             R1 2 0
       75 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R5 R0 K0 ["_active"]
        2 JUMPIFNOT                        R5 ; [+1]
        3 RETURN                           R0 0
        4 LOADB                            R5 1
        5 SETTABLEKS                       R5 R0 K0 ["_active"]
        7 LOADB                            R5 0
        8 SETTABLEKS                       R5 R0 K1 ["_dropped"]
       10 NEWTABLE                         R5 0 0
       12 SETTABLEKS                       R5 R0 K2 ["_loadedInstances"]
       14 GETIMPORT                        R5 K5 [Vector2.new]
       16 CALL                             R5 0 1
       17 SETTABLEKS                       R5 R0 K6 ["_lastMousePos"]
       19 LOADB                            R5 0
       20 MOVE                             R6 R4
       21 LOADNIL                          R7
       22 LOADNIL                          R8
       23 FORGPREP                         R6
       24 JUMPIFNOT                        R10 ; [+2]
       25 LOADB                            R5 1
       26 JUMP                             ; [+2]
       27 FORGLOOP                         R6 2 ; [-4]
       29 LOADB                            R6 0
       30 LOADB                            R7 0
       31 MOVE                             R8 R2
       32 LOADNIL                          R9
       33 LOADNIL                          R10
       34 FORGPREP                         R8
       35 GETUPVAL                         R14 0
       36 GETTABLE                         R13 R14 R12
       37 JUMPIFNOT                        R13 ; [+1]
       38 LOADB                            R6 1
       39 GETUPVAL                         R14 1
       40 GETTABLE                         R13 R14 R12
       41 JUMPIFNOT                        R13 ; [+1]
       42 LOADB                            R7 1
       43 FORGLOOP                         R8 2 ; [-9]
       45 GETTABLEKS                       R8 R0 K7 ["_plugin"]
       47 JUMPIFNOT                        R6 ; [+5]
       48 GETTABLEKS                       R9 R0 K8 ["_placer3D"]
       50 NAMECALL                         R9 R9 K9 ["start"]
       52 CALL                             R9 1 0
       53 JUMPIFNOT                        R7 ; [+5]
       54 GETTABLEKS                       R9 R0 K10 ["_placer2D"]
       56 NAMECALL                         R9 R9 K9 ["start"]
       58 CALL                             R9 1 0
       59 GETUPVAL                         R9 2
       60 GETTABLEKS                       R9 R9 K11 ["Heartbeat"]
       62 NEWCLOSURE                       R11 P0
       63 CAPTURE                          VAL R0
       64 NAMECALL                         R9 R9 K12 ["Connect"]
       66 CALL                             R9 2 1
       67 SETTABLEKS                       R9 R0 K13 ["_heartbeatConnection"]
       69 GETUPVAL                         R9 3
       70 GETTABLEKS                       R9 R9 K14 ["Utils"]
       72 GETTABLEKS                       R9 R9 K15 ["createInsertAssetsPromise"]
       74 MOVE                             R10 R1
       75 MOVE                             R11 R2
       76 MOVE                             R12 R3
       77 MOVE                             R13 R4
       78 DUPTABLE                         R14 K22 [{["GameId"], ["PositionMode"], ["Position"], ["SkipCameraMove"] = True, ["StudioComponents"]}]
       79 GETIMPORT                        R15 K24 [game]
       81 GETTABLEKS                       R15 R15 K16 ["GameId"]
       83 SETTABLEKS                       R15 R14 K16 ["GameId"]
       85 GETUPVAL                         R15 3
       86 GETTABLEKS                       R15 R15 K25 ["Types"]
       88 GETTABLEKS                       R15 R15 K26 ["InsertPositionMode"]
       90 GETTABLEKS                       R15 R15 K27 ["Custom"]
       92 SETTABLEKS                       R15 R14 K17 ["PositionMode"]
       94 FASTCALL                         VECTOR ; [+2]
       95 GETIMPORT                        R15 K29 [Vector3.new]
       97 CALL                             R15 0 1
       98 SETTABLEKS                       R15 R14 K18 ["Position"]
      100 JUMPIFNOT                        R8 ; [+8]
      101 DUPTABLE                         R15 K31 [{"AssetAccessController"}]
      102 LOADK                            R18 K30 ["AssetAccessController"]
      103 NAMECALL                         R16 R8 K32 ["GetPluginComponent"]
      105 CALL                             R16 2 1
      106 SETTABLEKS                       R16 R15 K30 ["AssetAccessController"]
      108 JUMP                             ; [+2]
      109 NEWTABLE                         R15 0 0
      111 SETTABLEKS                       R15 R14 K21 ["StudioComponents"]
      113 CALL                             R9 5 1
      114 NEWCLOSURE                       R11 P1
      115 CAPTURE                          VAL R0
      116 CAPTURE                          UPVAL U4
      117 CAPTURE                          REF R5
      118 NAMECALL                         R9 R9 K33 ["andThen"]
      120 CALL                             R9 2 1
      121 SETTABLEKS                       R9 R0 K34 ["_insertPromise"]
      123 CLOSEUPVALS                      R5
      124 RETURN                           R0 0

PROTO_7:
        0 JUMPIFNOT                        R1 ; [+8]
        1 GETIMPORT                        R6 K2 [CFrame.new]
        3 MOVE                             R7 R1
        4 CALL                             R6 1 1
        5 MUL                              R5 R6 R2
        6 NAMECALL                         R3 R0 K3 ["PivotTo"]
        8 CALL                             R3 2 0
        9 RETURN                           R0 0

PROTO_8:
        0 JUMPIFNOT                        R1 ; [+2]
        1 SETTABLEKS                       R1 R0 K0 ["Position"]
        3 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 SETTABLEKS                       R1 R0 K0 ["Face"]
        4 RETURN                           R0 0

PROTO_10:
        0 JUMPIFNOT                        R1 ; [+13]
        1 GETTABLEKS                       R3 R0 K0 ["Parent"]
        3 JUMPIFEQ                         R3 R1 ; [+3]
        5 SETTABLEKS                       R1 R0 K0 ["Parent"]
        7 JUMPIFNOT                        R2 ; [+6]
        8 GETIMPORT                        R3 K2 [pcall]
       10 NEWCLOSURE                       R4 P0
       11 CAPTURE                          VAL R0
       12 CAPTURE                          VAL R2
       13 CALL                             R3 1 0
       14 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["_placer3D"]
        2 GETTABLEKS                       R2 R0 K1 ["_placer2D"]
        4 NAMECALL                         R3 R1 K2 ["getLastHitPosition"]
        6 CALL                             R3 1 1
        7 NAMECALL                         R4 R1 K3 ["getInsertRotation"]
        9 CALL                             R4 1 1
       10 JUMPIF                           R4 ; [+3]
       11 GETIMPORT                        R4 K6 [CFrame.new]
       13 CALL                             R4 0 1
       14 NAMECALL                         R5 R2 K7 ["getLastHitPart"]
       16 CALL                             R5 1 1
       17 NAMECALL                         R6 R2 K8 ["getLastHitFace"]
       19 CALL                             R6 1 1
       20 GETTABLEKS                       R7 R0 K9 ["_loadedInstances"]
       22 LOADNIL                          R8
       23 LOADNIL                          R9
       24 FORGPREP                         R7
       25 LOADK                            R14 K10 ["Model"]
       26 NAMECALL                         R12 R11 K11 ["IsA"]
       28 CALL                             R12 2 1
       29 JUMPIFNOT                        R12 ; [+10]
       30 JUMPIFNOT                        R3 ; [+42]
       31 GETIMPORT                        R15 K6 [CFrame.new]
       33 MOVE                             R16 R3
       34 CALL                             R15 1 1
       35 MUL                              R14 R15 R4
       36 NAMECALL                         R12 R11 K12 ["PivotTo"]
       38 CALL                             R12 2 0
       39 JUMP                             ; [+33]
       40 LOADK                            R14 K13 ["BasePart"]
       41 NAMECALL                         R12 R11 K11 ["IsA"]
       43 CALL                             R12 2 1
       44 JUMPIFNOT                        R12 ; [+4]
       45 JUMPIFNOT                        R3 ; [+27]
       46 SETTABLEKS                       R3 R11 K14 ["Position"]
       48 JUMP                             ; [+24]
       49 LOADK                            R14 K15 ["Decal"]
       50 NAMECALL                         R12 R11 K11 ["IsA"]
       52 CALL                             R12 2 1
       53 JUMPIF                           R12 ; [+5]
       54 LOADK                            R14 K16 ["SurfaceGui"]
       55 NAMECALL                         R12 R11 K11 ["IsA"]
       57 CALL                             R12 2 1
       58 JUMPIFNOT                        R12 ; [+14]
       59 JUMPIFNOT                        R5 ; [+13]
       60 GETTABLEKS                       R12 R11 K17 ["Parent"]
       62 JUMPIFEQ                         R12 R5 ; [+3]
       64 SETTABLEKS                       R5 R11 K17 ["Parent"]
       66 JUMPIFNOT                        R6 ; [+6]
       67 GETIMPORT                        R12 K19 [pcall]
       69 NEWCLOSURE                       R13 P0
       70 CAPTURE                          VAL R11
       71 CAPTURE                          VAL R6
       72 CALL                             R12 1 0
       73 FORGLOOP                         R7 2 ; [-49]
       75 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["_active"]
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 GETIMPORT                        R1 K2 [workspace]
        6 GETTABLEKS                       R1 R1 K3 ["CurrentCamera"]
        8 JUMPIF                           R1 ; [+1]
        9 RETURN                           R0 0
       10 GETUPVAL                         R2 0
       11 NAMECALL                         R2 R2 K4 ["GetMouseLocation"]
       13 CALL                             R2 1 1
       14 LOADB                            R3 0
       15 LOADNIL                          R4
       16 GETTABLEKS                       R5 R0 K5 ["_dropped"]
       18 JUMPIF                           R5 ; [+31]
       19 GETTABLEKS                       R6 R0 K6 ["_lastMousePos"]
       21 SUB                              R5 R2 R6
       22 GETTABLEKS                       R5 R5 K7 ["Magnitude"]
       24 LOADN                            R6 1
       25 JUMPIFNOTLE                      R6 R5 ; [+24]
       27 LOADB                            R3 1
       28 SETTABLEKS                       R2 R0 K6 ["_lastMousePos"]
       30 GETTABLEKS                       R7 R2 K8 ["X"]
       32 GETTABLEKS                       R8 R2 K9 ["Y"]
       34 NAMECALL                         R5 R1 K10 ["ViewportPointToRay"]
       36 CALL                             R5 3 1
       37 GETIMPORT                        R6 K2 [workspace]
       39 GETTABLEKS                       R8 R5 K11 ["Origin"]
       41 GETTABLEKS                       R10 R5 K13 ["Direction"]
       43 MULK                             R9 R10 K12 [2048]
       44 GETTABLEKS                       R10 R0 K14 ["_raycastParams"]
       46 NAMECALL                         R6 R6 K15 ["Raycast"]
       48 CALL                             R6 4 1
       49 MOVE                             R4 R6
       50 GETTABLEKS                       R5 R0 K16 ["_placer3D"]
       52 MOVE                             R7 R3
       53 MOVE                             R8 R4
       54 NAMECALL                         R5 R5 K17 ["tick"]
       56 CALL                             R5 3 0
       57 GETTABLEKS                       R5 R0 K18 ["_placer2D"]
       59 MOVE                             R7 R3
       60 MOVE                             R8 R4
       61 NAMECALL                         R5 R5 K17 ["tick"]
       63 CALL                             R5 3 0
       64 NAMECALL                         R5 R0 K19 ["_updateLoadedInstances"]
       66 CALL                             R5 1 0
       67 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R2 R0 K0 ["_heartbeatConnection"]
        2 JUMPIFNOT                        R2 ; [+6]
        3 NAMECALL                         R3 R2 K1 ["Disconnect"]
        5 CALL                             R3 1 0
        6 LOADNIL                          R3
        7 SETTABLEKS                       R3 R0 K0 ["_heartbeatConnection"]
        9 GETTABLEKS                       R3 R0 K2 ["_placer3D"]
       11 NAMECALL                         R3 R3 K3 ["stop"]
       13 CALL                             R3 1 0
       14 GETTABLEKS                       R3 R0 K4 ["_placer2D"]
       16 NAMECALL                         R3 R3 K3 ["stop"]
       18 CALL                             R3 1 0
       19 LOADNIL                          R3
       20 SETTABLEKS                       R3 R0 K5 ["_insertPromise"]
       22 NAMECALL                         R3 R0 K6 ["_resetTransparencyChanged"]
       24 CALL                             R3 1 0
       25 JUMPIFNOT                        R1 ; [+13]
       26 GETTABLEKS                       R3 R0 K7 ["_loadedInstances"]
       28 LOADNIL                          R4
       29 LOADNIL                          R5
       30 FORGPREP                         R3
       31 GETIMPORT                        R8 K9 [pcall]
       33 GETTABLEKS                       R9 R7 K10 ["Destroy"]
       35 MOVE                             R10 R7
       36 CALL                             R8 2 0
       37 FORGLOOP                         R3 2 ; [-7]
       39 NEWTABLE                         R3 0 0
       41 SETTABLEKS                       R3 R0 K7 ["_loadedInstances"]
       43 LOADB                            R3 0
       44 SETTABLEKS                       R3 R0 K11 ["_active"]
       46 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R3 R0 K0 ["_active"]
        2 JUMPIF                           R3 ; [+1]
        3 RETURN                           R0 0
        4 GETTABLEKS                       R3 R0 K1 ["_insertPromise"]
        6 JUMPIFNOT                        R2 ; [+12]
        7 JUMPIFNOT                        R3 ; [+6]
        8 NAMECALL                         R4 R3 K2 ["cancel"]
       10 CALL                             R4 1 0
       11 LOADNIL                          R4
       12 SETTABLEKS                       R4 R0 K1 ["_insertPromise"]
       14 LOADB                            R6 1
       15 NAMECALL                         R4 R0 K3 ["_stopImpl"]
       17 CALL                             R4 2 0
       18 RETURN                           R0 0
       19 JUMPIFNOT                        R3 ; [+4]
       20 NAMECALL                         R4 R3 K4 ["getStatus"]
       22 CALL                             R4 1 1
       23 JUMP                             ; [+1]
       24 LOADNIL                          R4
       25 JUMPIFNOT                        R4 ; [+16]
       26 GETUPVAL                         R5 0
       27 GETTABLEKS                       R5 R5 K5 ["Status"]
       29 GETTABLEKS                       R5 R5 K6 ["Started"]
       31 JUMPIFNOTEQ                      R4 R5 ; [+10]
       33 LOADB                            R5 1
       34 SETTABLEKS                       R5 R0 K7 ["_dropped"]
       36 LOADK                            R7 K8 ["ShowToast"]
       37 DUPTABLE                         R8 K13 [{["Key"] = "Toast", ["SubKey"] = "InsertingAssets"}]
       38 NAMECALL                         R5 R1 K14 ["Invoke"]
       40 CALL                             R5 3 0
       41 RETURN                           R0 0
       42 LOADB                            R7 0
       43 NAMECALL                         R5 R0 K3 ["_stopImpl"]
       45 CALL                             R5 2 0
       46 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["RunService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["UserInputService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K6 [script]
       15 LOADK                            R4 K7 ["AssetManager"]
       16 NAMECALL                         R2 R2 K8 ["FindFirstAncestor"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K10 [require]
       21 GETTABLEKS                       R4 R2 K11 ["Packages"]
       23 GETTABLEKS                       R4 R4 K12 ["AssetInsertFramework"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K10 [require]
       28 GETTABLEKS                       R5 R2 K11 ["Packages"]
       30 GETTABLEKS                       R5 R5 K13 ["Promise"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K10 [require]
       35 GETTABLEKS                       R6 R2 K14 ["Src"]
       37 GETTABLEKS                       R6 R6 K15 ["Types"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K10 [require]
       42 GETIMPORT                        R7 K6 [script]
       44 GETTABLEKS                       R7 R7 K16 ["Placer3D"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K10 [require]
       49 GETIMPORT                        R8 K6 [script]
       51 GETTABLEKS                       R8 R8 K17 ["Placer2D"]
       53 CALL                             R7 1 1
       54 NEWTABLE                         R8 4 0
       56 GETIMPORT                        R9 K21 [Enum.AssetType.Model]
       58 LOADB                            R10 1
       59 SETTABLE                         R10 R8 R9
       60 GETIMPORT                        R9 K23 [Enum.AssetType.Mesh]
       62 LOADB                            R10 1
       63 SETTABLE                         R10 R8 R9
       64 GETIMPORT                        R9 K25 [Enum.AssetType.MeshPart]
       66 LOADB                            R10 1
       67 SETTABLE                         R10 R8 R9
       68 NEWTABLE                         R9 4 0
       70 GETIMPORT                        R10 K27 [Enum.AssetType.Decal]
       72 LOADB                            R11 1
       73 SETTABLE                         R11 R9 R10
       74 GETIMPORT                        R10 K29 [Enum.AssetType.Image]
       76 LOADB                            R11 1
       77 SETTABLE                         R11 R9 R10
       78 GETIMPORT                        R10 K31 [Enum.AssetType.Video]
       80 LOADB                            R11 1
       81 SETTABLE                         R11 R9 R10
       82 NEWTABLE                         R10 16 0
       84 SETTABLEKS                       R10 R10 K32 ["__index"]
       86 DUPCLOSURE                       R11 K33 [PROTO_0]
       87 CAPTURE                          VAL R10
       88 CAPTURE                          VAL R6
       89 CAPTURE                          VAL R7
       90 SETTABLEKS                       R11 R10 K34 ["new"]
       92 DUPCLOSURE                       R11 K35 [PROTO_1]
       93 DUPCLOSURE                       R12 K36 [PROTO_2]
       94 SETTABLEKS                       R12 R10 K37 ["_registerTransparencyChanged"]
       96 DUPCLOSURE                       R12 K38 [PROTO_3]
       97 SETTABLEKS                       R12 R10 K39 ["_resetTransparencyChanged"]
       99 DUPCLOSURE                       R12 K40 [PROTO_6]
      100 CAPTURE                          VAL R8
      101 CAPTURE                          VAL R9
      102 CAPTURE                          VAL R0
      103 CAPTURE                          VAL R3
      104 CAPTURE                          VAL R11
      105 SETTABLEKS                       R12 R10 K41 ["start"]
      107 DUPCLOSURE                       R12 K42 [PROTO_7]
      108 DUPCLOSURE                       R13 K43 [PROTO_8]
      109 DUPCLOSURE                       R14 K44 [PROTO_10]
      110 DUPCLOSURE                       R15 K45 [PROTO_11]
      111 SETTABLEKS                       R15 R10 K46 ["_updateLoadedInstances"]
      113 DUPCLOSURE                       R15 K47 [PROTO_12]
      114 CAPTURE                          VAL R1
      115 SETTABLEKS                       R15 R10 K48 ["tick"]
      117 DUPCLOSURE                       R15 K49 [PROTO_13]
      118 SETTABLEKS                       R15 R10 K50 ["_stopImpl"]
      120 DUPCLOSURE                       R15 K51 [PROTO_14]
      121 CAPTURE                          VAL R4
      122 SETTABLEKS                       R15 R10 K52 ["stop"]
      124 RETURN                           R10 1
