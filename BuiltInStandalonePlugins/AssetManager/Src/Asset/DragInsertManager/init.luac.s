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
        0 SETTABLEKS                       R1 R0 K0 ["_inventoryPublishStates"]
        2 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_active"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 0
        5 NAMECALL                         R0 R0 K1 ["tick"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_6:
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

PROTO_7:
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
       71 JUMPIFNOT                        R11 ; [+101]
       72 GETIMPORT                        R11 K15 [game]
       74 GETTABLEKS                       R11 R11 K16 ["GameId"]
       76 JUMPIFEQKN                       R11 K17 [0] ; [+96]
       78 LOADB                            R11 1
       79 SETTABLEKS                       R11 R0 K18 ["_publishInFlight"]
       81 GETUPVAL                         R12 4
       82 CALL                             R12 0 1
       83 JUMPIFNOT                        R12 ; [+21]
       84 GETUPVAL                         R11 5
       85 JUMPIFNOT                        R10 ; [+5]
       86 LOADK                            R14 K19 ["AssetAccessController"]
       87 NAMECALL                         R12 R10 K20 ["GetPluginComponent"]
       89 CALL                             R12 2 1
       90 JUMP                             ; [+1]
       91 LOADNIL                          R12
       92 MOVE                             R13 R1
       93 GETIMPORT                        R14 K15 [game]
       95 GETTABLEKS                       R14 R14 K21 ["CreatorType"]
       97 GETIMPORT                        R15 K15 [game]
       99 GETTABLEKS                       R15 R15 K22 ["CreatorId"]
      101 GETTABLEKS                       R16 R0 K23 ["_inventoryPublishStates"]
      103 CALL                             R11 5 1
      104 JUMP                             ; [+19]
      105 GETUPVAL                         R11 6
      106 JUMPIFNOT                        R10 ; [+5]
      107 LOADK                            R14 K19 ["AssetAccessController"]
      108 NAMECALL                         R12 R10 K20 ["GetPluginComponent"]
      110 CALL                             R12 2 1
      111 JUMP                             ; [+1]
      112 LOADNIL                          R12
      113 MOVE                             R13 R1
      114 GETIMPORT                        R14 K15 [game]
      116 GETTABLEKS                       R14 R14 K21 ["CreatorType"]
      118 GETIMPORT                        R15 K15 [game]
      120 GETTABLEKS                       R15 R15 K22 ["CreatorId"]
      122 MOVE                             R16 R6
      123 CALL                             R11 5 1
      124 LOADB                            R12 0
      125 SETTABLEKS                       R12 R0 K18 ["_publishInFlight"]
      127 GETTABLEKS                       R12 R0 K0 ["_active"]
      129 JUMPIF                           R12 ; [+5]
      130 GETUPVAL                         R12 7
      131 LOADK                            R13 K24 ["drag: drag was cancelled during the publish, not inserting"]
      132 CALL                             R12 1 0
      133 CLOSEUPVALS                      R7
      134 RETURN                           R0 0
      135 GETIMPORT                        R12 K26 [next]
      137 MOVE                             R13 R11
      138 CALL                             R12 1 1
      139 JUMPIFEQKNIL                     R12 ; [+33]
      141 GETUPVAL                         R12 8
      142 MOVE                             R13 R11
      143 MOVE                             R14 R1
      144 MOVE                             R15 R2
      145 MOVE                             R16 R3
      146 MOVE                             R17 R4
      147 MOVE                             R18 R5
      148 CALL                             R12 6 5
      149 MOVE                             R1 R12
      150 MOVE                             R2 R13
      151 MOVE                             R3 R14
      152 MOVE                             R4 R15
      153 MOVE                             R5 R16
      154 GETUPVAL                         R12 7
      155 LOADK                            R13 K27 ["drag: %* asset(s) survived the publish gate"]
      156 LENGTH                           R15 R1
      157 NAMECALL                         R13 R13 K28 ["format"]
      159 CALL                             R13 2 1
      160 CALL                             R12 1 0
      161 LENGTH                           R12 R1
      162 JUMPIFNOTEQKN                    R12 K17 [0] ; [+10]
      164 GETUPVAL                         R12 7
      165 LOADK                            R13 K29 ["drag: nothing left to insert, ending the drag"]
      166 CALL                             R12 1 0
      167 LOADB                            R14 1
      168 NAMECALL                         R12 R0 K30 ["_stopImpl"]
      170 CALL                             R12 2 0
      171 CLOSEUPVALS                      R7
      172 RETURN                           R0 0
      173 GETUPVAL                         R11 9
      174 GETTABLEKS                       R11 R11 K31 ["Utils"]
      176 GETTABLEKS                       R11 R11 K32 ["createInsertAssetsPromise"]
      178 MOVE                             R12 R1
      179 MOVE                             R13 R2
      180 MOVE                             R14 R3
      181 MOVE                             R15 R4
      182 MOVE                             R16 R5
      183 DUPTABLE                         R17 K38 [{["GameId"], ["PositionMode"], ["Position"], ["SkipCameraMove"] = True, ["StudioComponents"]}]
      184 GETIMPORT                        R18 K15 [game]
      186 GETTABLEKS                       R18 R18 K16 ["GameId"]
      188 SETTABLEKS                       R18 R17 K16 ["GameId"]
      190 GETUPVAL                         R18 9
      191 GETTABLEKS                       R18 R18 K39 ["Types"]
      193 GETTABLEKS                       R18 R18 K40 ["InsertPositionMode"]
      195 GETTABLEKS                       R18 R18 K41 ["Custom"]
      197 SETTABLEKS                       R18 R17 K33 ["PositionMode"]
      199 FASTCALL                         VECTOR ; [+2]
      200 GETIMPORT                        R18 K43 [Vector3.new]
      202 CALL                             R18 0 1
      203 SETTABLEKS                       R18 R17 K34 ["Position"]
      205 JUMPIFNOT                        R10 ; [+8]
      206 DUPTABLE                         R18 K44 [{"AssetAccessController"}]
      207 LOADK                            R21 K19 ["AssetAccessController"]
      208 NAMECALL                         R19 R10 K20 ["GetPluginComponent"]
      210 CALL                             R19 2 1
      211 SETTABLEKS                       R19 R18 K19 ["AssetAccessController"]
      213 JUMP                             ; [+2]
      214 NEWTABLE                         R18 0 0
      216 SETTABLEKS                       R18 R17 K37 ["StudioComponents"]
      218 CALL                             R11 6 1
      219 NEWCLOSURE                       R13 P1
      220 CAPTURE                          VAL R0
      221 CAPTURE                          UPVAL U10
      222 CAPTURE                          REF R7
      223 NAMECALL                         R11 R11 K45 ["andThen"]
      225 CALL                             R11 2 1
      226 SETTABLEKS                       R11 R0 K46 ["_insertPromise"]
      228 CLOSEUPVALS                      R7
      229 RETURN                           R0 0

PROTO_8:
        0 JUMPIFNOT                        R1 ; [+8]
        1 GETIMPORT                        R6 K2 [CFrame.new]
        3 MOVE                             R7 R1
        4 CALL                             R6 1 1
        5 MUL                              R5 R6 R2
        6 NAMECALL                         R3 R0 K3 ["PivotTo"]
        8 CALL                             R3 2 0
        9 RETURN                           R0 0

PROTO_9:
        0 JUMPIFNOT                        R1 ; [+2]
        1 SETTABLEKS                       R1 R0 K0 ["Position"]
        3 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 SETTABLEKS                       R1 R0 K0 ["Face"]
        4 RETURN                           R0 0

PROTO_11:
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

PROTO_12:
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

PROTO_13:
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

PROTO_14:
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

PROTO_15:
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
       59 GETTABLEKS                       R8 R8 K19 ["DEPRECATED_publishDraftAssetsForInsert"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K10 [require]
       64 GETTABLEKS                       R9 R2 K14 ["Src"]
       66 GETTABLEKS                       R9 R9 K16 ["Asset"]
       68 GETTABLEKS                       R9 R9 K17 ["Util"]
       70 GETTABLEKS                       R9 R9 K20 ["publishInventoryDraftAssetsForInsert"]
       72 CALL                             R8 1 1
       73 GETIMPORT                        R9 K10 [require]
       75 GETTABLEKS                       R10 R2 K14 ["Src"]
       77 GETTABLEKS                       R10 R10 K17 ["Util"]
       79 GETTABLEKS                       R10 R10 K21 ["logIfDebug"]
       81 CALL                             R9 1 1
       82 GETIMPORT                        R10 K10 [require]
       84 GETTABLEKS                       R11 R2 K14 ["Src"]
       86 GETTABLEKS                       R11 R11 K22 ["Flags"]
       88 GETTABLEKS                       R11 R11 K23 ["getFFlagAmrPublishDraftAssetsOnInsert"]
       90 CALL                             R10 1 1
       91 GETIMPORT                        R11 K10 [require]
       93 GETTABLEKS                       R12 R2 K14 ["Src"]
       95 GETTABLEKS                       R12 R12 K22 ["Flags"]
       97 GETTABLEKS                       R12 R12 K24 ["getFFlagAmrPublishInsertUsesInventoryDraftState"]
       99 CALL                             R11 1 1
      100 GETIMPORT                        R12 K10 [require]
      102 GETIMPORT                        R13 K6 [script]
      104 GETTABLEKS                       R13 R13 K25 ["Placer3D"]
      106 CALL                             R12 1 1
      107 GETIMPORT                        R13 K10 [require]
      109 GETIMPORT                        R14 K6 [script]
      111 GETTABLEKS                       R14 R14 K26 ["Placer2D"]
      113 CALL                             R13 1 1
      114 NEWTABLE                         R14 4 0
      116 GETIMPORT                        R15 K30 [Enum.AssetType.Model]
      118 LOADB                            R16 1
      119 SETTABLE                         R16 R14 R15
      120 GETIMPORT                        R15 K32 [Enum.AssetType.Mesh]
      122 LOADB                            R16 1
      123 SETTABLE                         R16 R14 R15
      124 GETIMPORT                        R15 K34 [Enum.AssetType.MeshPart]
      126 LOADB                            R16 1
      127 SETTABLE                         R16 R14 R15
      128 NEWTABLE                         R15 4 0
      130 GETIMPORT                        R16 K36 [Enum.AssetType.Decal]
      132 LOADB                            R17 1
      133 SETTABLE                         R17 R15 R16
      134 GETIMPORT                        R16 K38 [Enum.AssetType.Image]
      136 LOADB                            R17 1
      137 SETTABLE                         R17 R15 R16
      138 GETIMPORT                        R16 K40 [Enum.AssetType.Video]
      140 LOADB                            R17 1
      141 SETTABLE                         R17 R15 R16
      142 NEWTABLE                         R16 16 0
      144 SETTABLEKS                       R16 R16 K41 ["__index"]
      146 DUPCLOSURE                       R17 K42 [PROTO_0]
      147 CAPTURE                          VAL R16
      148 CAPTURE                          VAL R12
      149 CAPTURE                          VAL R13
      150 CAPTURE                          VAL R10
      151 SETTABLEKS                       R17 R16 K43 ["new"]
      153 DUPCLOSURE                       R17 K44 [PROTO_1]
      154 DUPCLOSURE                       R18 K45 [PROTO_2]
      155 SETTABLEKS                       R18 R16 K46 ["_registerTransparencyChanged"]
      157 DUPCLOSURE                       R18 K47 [PROTO_3]
      158 SETTABLEKS                       R18 R16 K48 ["_resetTransparencyChanged"]
      160 DUPCLOSURE                       R18 K49 [PROTO_4]
      161 SETTABLEKS                       R18 R16 K50 ["setInventoryPublishStates"]
      163 DUPCLOSURE                       R18 K51 [PROTO_7]
      164 CAPTURE                          VAL R14
      165 CAPTURE                          VAL R15
      166 CAPTURE                          VAL R0
      167 CAPTURE                          VAL R10
      168 CAPTURE                          VAL R11
      169 CAPTURE                          VAL R8
      170 CAPTURE                          VAL R7
      171 CAPTURE                          VAL R9
      172 CAPTURE                          VAL R6
      173 CAPTURE                          VAL R3
      174 CAPTURE                          VAL R17
      175 SETTABLEKS                       R18 R16 K52 ["start"]
      177 DUPCLOSURE                       R18 K53 [PROTO_8]
      178 DUPCLOSURE                       R19 K54 [PROTO_9]
      179 DUPCLOSURE                       R20 K55 [PROTO_11]
      180 DUPCLOSURE                       R21 K56 [PROTO_12]
      181 SETTABLEKS                       R21 R16 K57 ["_updateLoadedInstances"]
      183 DUPCLOSURE                       R21 K58 [PROTO_13]
      184 CAPTURE                          VAL R1
      185 SETTABLEKS                       R21 R16 K59 ["tick"]
      187 DUPCLOSURE                       R21 K60 [PROTO_14]
      188 SETTABLEKS                       R21 R16 K61 ["_stopImpl"]
      190 DUPCLOSURE                       R21 K62 [PROTO_15]
      191 CAPTURE                          VAL R10
      192 CAPTURE                          VAL R4
      193 SETTABLEKS                       R21 R16 K63 ["stop"]
      195 RETURN                           R16 1
