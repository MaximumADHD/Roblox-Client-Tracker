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
       52 GETUPVAL                         R3 3
       53 CALL                             R3 0 1
       54 JUMPIFNOT                        R3 ; [+3]
       55 LOADB                            R3 0
       56 SETTABLEKS                       R3 R2 K21 ["_publishInFlight"]
       58 NEWTABLE                         R3 0 0
       60 SETTABLEKS                       R3 R2 K22 ["_loadedInstances"]
       62 NEWTABLE                         R3 0 0
       64 SETTABLEKS                       R3 R2 K23 ["_modifiedInstances"]
       66 RETURN                           R2 1

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
        0 GETTABLEKS                       R7 R0 K0 ["_active"]
        2 JUMPIFNOT                        R7 ; [+1]
        3 RETURN                           R0 0
        4 LOADB                            R7 1
        5 SETTABLEKS                       R7 R0 K0 ["_active"]
        7 LOADB                            R7 0
        8 SETTABLEKS                       R7 R0 K1 ["_dropped"]
       10 NEWTABLE                         R7 0 0
       12 SETTABLEKS                       R7 R0 K2 ["_loadedInstances"]
       14 GETIMPORT                        R7 K5 [Vector2.new]
       16 CALL                             R7 0 1
       17 SETTABLEKS                       R7 R0 K6 ["_lastMousePos"]
       19 LOADB                            R7 0
       20 MOVE                             R8 R5
       21 LOADNIL                          R9
       22 LOADNIL                          R10
       23 FORGPREP                         R8
       24 JUMPIFNOT                        R12 ; [+2]
       25 LOADB                            R7 1
       26 JUMP                             ; [+2]
       27 FORGLOOP                         R8 2 ; [-4]
       29 LOADB                            R8 0
       30 LOADB                            R9 0
       31 MOVE                             R10 R3
       32 LOADNIL                          R11
       33 LOADNIL                          R12
       34 FORGPREP                         R10
       35 GETUPVAL                         R16 0
       36 GETTABLE                         R15 R16 R14
       37 JUMPIFNOT                        R15 ; [+1]
       38 LOADB                            R8 1
       39 GETUPVAL                         R16 1
       40 GETTABLE                         R15 R16 R14
       41 JUMPIFNOT                        R15 ; [+1]
       42 LOADB                            R9 1
       43 FORGLOOP                         R10 2 ; [-9]
       45 GETTABLEKS                       R10 R0 K7 ["_plugin"]
       47 JUMPIFNOT                        R8 ; [+5]
       48 GETTABLEKS                       R11 R0 K8 ["_placer3D"]
       50 NAMECALL                         R11 R11 K9 ["start"]
       52 CALL                             R11 1 0
       53 JUMPIFNOT                        R9 ; [+5]
       54 GETTABLEKS                       R11 R0 K10 ["_placer2D"]
       56 NAMECALL                         R11 R11 K9 ["start"]
       58 CALL                             R11 1 0
       59 GETUPVAL                         R11 2
       60 GETTABLEKS                       R11 R11 K11 ["Heartbeat"]
       62 NEWCLOSURE                       R13 P0
       63 CAPTURE                          VAL R0
       64 NAMECALL                         R11 R11 K12 ["Connect"]
       66 CALL                             R11 2 1
       67 SETTABLEKS                       R11 R0 K13 ["_heartbeatConnection"]
       69 GETUPVAL                         R11 3
       70 CALL                             R11 0 1
       71 JUMPIFNOT                        R11 ; [+77]
       72 GETIMPORT                        R11 K15 [game]
       74 GETTABLEKS                       R11 R11 K16 ["GameId"]
       76 JUMPIFEQKN                       R11 K17 [0] ; [+72]
       78 LOADB                            R11 1
       79 SETTABLEKS                       R11 R0 K18 ["_publishInFlight"]
       81 GETUPVAL                         R11 4
       82 JUMPIFNOT                        R10 ; [+5]
       83 LOADK                            R14 K19 ["AssetAccessController"]
       84 NAMECALL                         R12 R10 K20 ["GetPluginComponent"]
       86 CALL                             R12 2 1
       87 JUMP                             ; [+1]
       88 LOADNIL                          R12
       89 MOVE                             R13 R1
       90 GETIMPORT                        R14 K15 [game]
       92 GETTABLEKS                       R14 R14 K21 ["CreatorType"]
       94 GETIMPORT                        R15 K15 [game]
       96 GETTABLEKS                       R15 R15 K22 ["CreatorId"]
       98 MOVE                             R16 R6
       99 CALL                             R11 5 1
      100 LOADB                            R12 0
      101 SETTABLEKS                       R12 R0 K18 ["_publishInFlight"]
      103 GETTABLEKS                       R12 R0 K0 ["_active"]
      105 JUMPIF                           R12 ; [+5]
      106 GETUPVAL                         R12 5
      107 LOADK                            R13 K23 ["drag: drag was cancelled during the publish, not inserting"]
      108 CALL                             R12 1 0
      109 CLOSEUPVALS                      R7
      110 RETURN                           R0 0
      111 GETIMPORT                        R12 K25 [next]
      113 MOVE                             R13 R11
      114 CALL                             R12 1 1
      115 JUMPIFEQKNIL                     R12 ; [+33]
      117 GETUPVAL                         R12 6
      118 MOVE                             R13 R11
      119 MOVE                             R14 R1
      120 MOVE                             R15 R2
      121 MOVE                             R16 R3
      122 MOVE                             R17 R4
      123 MOVE                             R18 R5
      124 CALL                             R12 6 5
      125 MOVE                             R1 R12
      126 MOVE                             R2 R13
      127 MOVE                             R3 R14
      128 MOVE                             R4 R15
      129 MOVE                             R5 R16
      130 GETUPVAL                         R12 5
      131 LOADK                            R13 K26 ["drag: %* asset(s) survived the publish gate"]
      132 LENGTH                           R15 R1
      133 NAMECALL                         R13 R13 K27 ["format"]
      135 CALL                             R13 2 1
      136 CALL                             R12 1 0
      137 LENGTH                           R12 R1
      138 JUMPIFNOTEQKN                    R12 K17 [0] ; [+10]
      140 GETUPVAL                         R12 5
      141 LOADK                            R13 K28 ["drag: nothing left to insert, ending the drag"]
      142 CALL                             R12 1 0
      143 LOADB                            R14 1
      144 NAMECALL                         R12 R0 K29 ["_stopImpl"]
      146 CALL                             R12 2 0
      147 CLOSEUPVALS                      R7
      148 RETURN                           R0 0
      149 GETUPVAL                         R11 7
      150 GETTABLEKS                       R11 R11 K30 ["Utils"]
      152 GETTABLEKS                       R11 R11 K31 ["createInsertAssetsPromise"]
      154 MOVE                             R12 R1
      155 MOVE                             R13 R2
      156 MOVE                             R14 R3
      157 MOVE                             R15 R4
      158 MOVE                             R16 R5
      159 DUPTABLE                         R17 K37 [{["GameId"], ["PositionMode"], ["Position"], ["SkipCameraMove"] = True, ["StudioComponents"]}]
      160 GETIMPORT                        R18 K15 [game]
      162 GETTABLEKS                       R18 R18 K16 ["GameId"]
      164 SETTABLEKS                       R18 R17 K16 ["GameId"]
      166 GETUPVAL                         R18 7
      167 GETTABLEKS                       R18 R18 K38 ["Types"]
      169 GETTABLEKS                       R18 R18 K39 ["InsertPositionMode"]
      171 GETTABLEKS                       R18 R18 K40 ["Custom"]
      173 SETTABLEKS                       R18 R17 K32 ["PositionMode"]
      175 FASTCALL                         VECTOR ; [+2]
      176 GETIMPORT                        R18 K42 [Vector3.new]
      178 CALL                             R18 0 1
      179 SETTABLEKS                       R18 R17 K33 ["Position"]
      181 JUMPIFNOT                        R10 ; [+8]
      182 DUPTABLE                         R18 K43 [{"AssetAccessController"}]
      183 LOADK                            R21 K19 ["AssetAccessController"]
      184 NAMECALL                         R19 R10 K20 ["GetPluginComponent"]
      186 CALL                             R19 2 1
      187 SETTABLEKS                       R19 R18 K19 ["AssetAccessController"]
      189 JUMP                             ; [+2]
      190 NEWTABLE                         R18 0 0
      192 SETTABLEKS                       R18 R17 K36 ["StudioComponents"]
      194 CALL                             R11 6 1
      195 NEWCLOSURE                       R13 P1
      196 CAPTURE                          VAL R0
      197 CAPTURE                          UPVAL U8
      198 CAPTURE                          REF R7
      199 NAMECALL                         R11 R11 K44 ["andThen"]
      201 CALL                             R11 2 1
      202 SETTABLEKS                       R11 R0 K45 ["_insertPromise"]
      204 CLOSEUPVALS                      R7
      205 RETURN                           R0 0

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
       25 GETUPVAL                         R5 0
       26 CALL                             R5 0 1
       27 JUMPIFNOT                        R5 ; [+2]
       28 GETTABLEKS                       R5 R0 K5 ["_publishInFlight"]
       30 JUMPIF                           R5 ; [+8]
       31 JUMPIFNOT                        R4 ; [+16]
       32 GETUPVAL                         R6 1
       33 GETTABLEKS                       R6 R6 K6 ["Status"]
       35 GETTABLEKS                       R6 R6 K7 ["Started"]
       37 JUMPIFNOTEQ                      R4 R6 ; [+10]
       39 LOADB                            R6 1
       40 SETTABLEKS                       R6 R0 K8 ["_dropped"]
       42 LOADK                            R8 K9 ["ShowToast"]
       43 DUPTABLE                         R9 K14 [{["Key"] = "Toast", ["SubKey"] = "InsertingAssets"}]
       44 NAMECALL                         R6 R1 K15 ["Invoke"]
       46 CALL                             R6 3 0
       47 RETURN                           R0 0
       48 LOADB                            R8 0
       49 NAMECALL                         R6 R0 K3 ["_stopImpl"]
       51 CALL                             R6 2 0
       52 RETURN                           R0 0

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
       42 GETTABLEKS                       R7 R2 K14 ["Src"]
       44 GETTABLEKS                       R7 R7 K16 ["Asset"]
       46 GETTABLEKS                       R7 R7 K17 ["Util"]
       48 GETTABLEKS                       R7 R7 K18 ["filterAssetInsertData"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K10 [require]
       53 GETTABLEKS                       R8 R2 K14 ["Src"]
       55 GETTABLEKS                       R8 R8 K16 ["Asset"]
       57 GETTABLEKS                       R8 R8 K17 ["Util"]
       59 GETTABLEKS                       R8 R8 K19 ["publishDraftAssetsForInsert"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K10 [require]
       64 GETTABLEKS                       R9 R2 K14 ["Src"]
       66 GETTABLEKS                       R9 R9 K17 ["Util"]
       68 GETTABLEKS                       R9 R9 K20 ["logIfDebug"]
       70 CALL                             R8 1 1
       71 GETIMPORT                        R9 K10 [require]
       73 GETTABLEKS                       R10 R2 K14 ["Src"]
       75 GETTABLEKS                       R10 R10 K21 ["Flags"]
       77 GETTABLEKS                       R10 R10 K22 ["getFFlagAmrPublishDraftAssetsOnInsert"]
       79 CALL                             R9 1 1
       80 GETIMPORT                        R10 K10 [require]
       82 GETIMPORT                        R11 K6 [script]
       84 GETTABLEKS                       R11 R11 K23 ["Placer3D"]
       86 CALL                             R10 1 1
       87 GETIMPORT                        R11 K10 [require]
       89 GETIMPORT                        R12 K6 [script]
       91 GETTABLEKS                       R12 R12 K24 ["Placer2D"]
       93 CALL                             R11 1 1
       94 NEWTABLE                         R12 4 0
       96 GETIMPORT                        R13 K28 [Enum.AssetType.Model]
       98 LOADB                            R14 1
       99 SETTABLE                         R14 R12 R13
      100 GETIMPORT                        R13 K30 [Enum.AssetType.Mesh]
      102 LOADB                            R14 1
      103 SETTABLE                         R14 R12 R13
      104 GETIMPORT                        R13 K32 [Enum.AssetType.MeshPart]
      106 LOADB                            R14 1
      107 SETTABLE                         R14 R12 R13
      108 NEWTABLE                         R13 4 0
      110 GETIMPORT                        R14 K34 [Enum.AssetType.Decal]
      112 LOADB                            R15 1
      113 SETTABLE                         R15 R13 R14
      114 GETIMPORT                        R14 K36 [Enum.AssetType.Image]
      116 LOADB                            R15 1
      117 SETTABLE                         R15 R13 R14
      118 GETIMPORT                        R14 K38 [Enum.AssetType.Video]
      120 LOADB                            R15 1
      121 SETTABLE                         R15 R13 R14
      122 NEWTABLE                         R14 16 0
      124 SETTABLEKS                       R14 R14 K39 ["__index"]
      126 DUPCLOSURE                       R15 K40 [PROTO_0]
      127 CAPTURE                          VAL R14
      128 CAPTURE                          VAL R10
      129 CAPTURE                          VAL R11
      130 CAPTURE                          VAL R9
      131 SETTABLEKS                       R15 R14 K41 ["new"]
      133 DUPCLOSURE                       R15 K42 [PROTO_1]
      134 DUPCLOSURE                       R16 K43 [PROTO_2]
      135 SETTABLEKS                       R16 R14 K44 ["_registerTransparencyChanged"]
      137 DUPCLOSURE                       R16 K45 [PROTO_3]
      138 SETTABLEKS                       R16 R14 K46 ["_resetTransparencyChanged"]
      140 DUPCLOSURE                       R16 K47 [PROTO_6]
      141 CAPTURE                          VAL R12
      142 CAPTURE                          VAL R13
      143 CAPTURE                          VAL R0
      144 CAPTURE                          VAL R9
      145 CAPTURE                          VAL R7
      146 CAPTURE                          VAL R8
      147 CAPTURE                          VAL R6
      148 CAPTURE                          VAL R3
      149 CAPTURE                          VAL R15
      150 SETTABLEKS                       R16 R14 K48 ["start"]
      152 DUPCLOSURE                       R16 K49 [PROTO_7]
      153 DUPCLOSURE                       R17 K50 [PROTO_8]
      154 DUPCLOSURE                       R18 K51 [PROTO_10]
      155 DUPCLOSURE                       R19 K52 [PROTO_11]
      156 SETTABLEKS                       R19 R14 K53 ["_updateLoadedInstances"]
      158 DUPCLOSURE                       R19 K54 [PROTO_12]
      159 CAPTURE                          VAL R1
      160 SETTABLEKS                       R19 R14 K55 ["tick"]
      162 DUPCLOSURE                       R19 K56 [PROTO_13]
      163 SETTABLEKS                       R19 R14 K57 ["_stopImpl"]
      165 DUPCLOSURE                       R19 K58 [PROTO_14]
      166 CAPTURE                          VAL R9
      167 CAPTURE                          VAL R4
      168 SETTABLEKS                       R19 R14 K59 ["stop"]
      170 RETURN                           R14 1
