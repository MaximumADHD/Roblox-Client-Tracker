PROTO_0:
        0 DUPTABLE                         R3 K3 [{"_draggerContext", "_max", "_volume"}]
        1 SETTABLEKS                       R0 R3 K0 ["_draggerContext"]
        3 JUMPIFNOT                        R1 ; [+3]
        4 GETTABLEKS                       R4 R1 K4 ["Max"]
        6 JUMP                             ; [+1]
        7 LOADNIL                          R4
        8 SETTABLEKS                       R4 R3 K1 ["_max"]
       10 JUMPIFNOT                        R1 ; [+21]
       11 GETTABLEKS                       R5 R1 K4 ["Max"]
       13 JUMPIFNOT                        R5 ; [+18]
       14 GETTABLEKS                       R5 R1 K5 ["UseVolume"]
       16 JUMPIFNOT                        R5 ; [+15]
       17 GETTABLEKS                       R7 R1 K4 ["Max"]
       19 GETTABLEKS                       R6 R7 K6 ["X"]
       21 GETTABLEKS                       R8 R1 K4 ["Max"]
       23 GETTABLEKS                       R7 R8 K7 ["Y"]
       25 MUL                              R5 R6 R7
       26 GETTABLEKS                       R7 R1 K4 ["Max"]
       28 GETTABLEKS                       R6 R7 K8 ["Z"]
       30 MUL                              R4 R5 R6
       31 JUMP                             ; [+1]
       32 LOADNIL                          R4
       33 SETTABLEKS                       R4 R3 K2 ["_volume"]
       35 GETUPVAL                         R4 0
       36 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
       38 GETIMPORT                        R2 K10 [setmetatable]
       40 CALL                             R2 2 1
       41 RETURN                           R2 1

PROTO_1:
        0 NAMECALL                         R3 R2 K0 ["getBoundingBox"]
        2 CALL                             R3 1 -1
        3 RETURN                           R3 -1

PROTO_2:
        0 GETTABLEKS                       R4 R0 K0 ["_draggerContext"]
        2 NAMECALL                         R4 R4 K1 ["isCtrlKeyDown"]
        4 CALL                             R4 1 -1
        5 RETURN                           R4 -1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIFNOT                        R3 ; [+6]
        3 GETTABLEKS                       R3 R0 K0 ["_draggerContext"]
        5 NAMECALL                         R3 R3 K1 ["isAltKeyDown"]
        7 CALL                             R3 1 1
        8 JUMPIF                           R3 ; [+9]
        9 GETUPVAL                         R3 0
       10 CALL                             R3 0 1
       11 JUMPIF                           R3 ; [+17]
       12 GETTABLEKS                       R3 R0 K0 ["_draggerContext"]
       14 NAMECALL                         R3 R3 K2 ["isShiftKeyDown"]
       16 CALL                             R3 1 1
       17 JUMPIFNOT                        R3 ; [+11]
       18 DUPTABLE                         R3 K6 [{"X", "Y", "Z"}]
       19 LOADB                            R4 1
       20 SETTABLEKS                       R4 R3 K3 ["X"]
       22 LOADB                            R4 1
       23 SETTABLEKS                       R4 R3 K4 ["Y"]
       25 LOADB                            R4 1
       26 SETTABLEKS                       R4 R3 K5 ["Z"]
       28 RETURN                           R3 1
       29 NEWTABLE                         R3 0 3
       31 DUPTABLE                         R4 K7 [{"X"}]
       32 LOADB                            R5 1
       33 SETTABLEKS                       R5 R4 K3 ["X"]
       35 DUPTABLE                         R5 K8 [{"Y"}]
       36 LOADB                            R6 1
       37 SETTABLEKS                       R6 R5 K4 ["Y"]
       39 DUPTABLE                         R6 K9 [{"Z"}]
       40 LOADB                            R7 1
       41 SETTABLEKS                       R7 R6 K5 ["Z"]
       43 SETLIST                          R3 R4 3 [1]
       45 GETTABLE                         R4 R3 R2
       46 RETURN                           R4 1

PROTO_4:
        0 GETTABLEKS                       R5 R0 K1 ["_max"]
        2 ORK                              R4 R5 K0 [{16384, 16384, 16384}]
        3 GETTABLEKS                       R5 R0 K2 ["_volume"]
        5 JUMPIFNOT                        R5 ; [+85]
        6 JUMPIFNOT                        R1 ; [+2]
        7 JUMPIFNOT                        R2 ; [+1]
        8 JUMPIF                           R3 ; [+4]
        9 LOADK                            R5 K3 [{4, 4, 4}]
       10 GETTABLEKS                       R6 R0 K4 ["_calculatedMax"]
       12 RETURN                           R5 2
       13 GETTABLEKS                       R5 R2 K5 ["X"]
       15 JUMPIFNOT                        R5 ; [+13]
       16 GETTABLEKS                       R5 R2 K6 ["Y"]
       18 JUMPIFNOT                        R5 ; [+10]
       19 GETTABLEKS                       R5 R2 K7 ["Z"]
       21 JUMPIFNOT                        R5 ; [+7]
       22 GETUPVAL                         R5 0
       23 MOVE                             R6 R3
       24 GETTABLEKS                       R7 R0 K2 ["_volume"]
       26 CALL                             R5 2 1
       27 MOVE                             R4 R5
       28 JUMP                             ; [+62]
       29 GETTABLEKS                       R5 R2 K5 ["X"]
       31 JUMPIFNOT                        R5 ; [+18]
       32 GETTABLEKS                       R5 R3 K6 ["Y"]
       34 GETTABLEKS                       R6 R3 K7 ["Z"]
       36 GETTABLEKS                       R8 R0 K2 ["_volume"]
       38 MUL                              R9 R5 R6
       39 DIV                              R7 R8 R9
       40 FASTCALL3                        VECTOR R7 R5 R6
       42 MOVE                             R9 R7
       43 MOVE                             R10 R5
       44 MOVE                             R11 R6
       45 GETIMPORT                        R8 K10 [Vector3.new]
       47 CALL                             R8 3 1
       48 MOVE                             R4 R8
       49 JUMP                             ; [+41]
       50 GETTABLEKS                       R5 R2 K6 ["Y"]
       52 JUMPIFNOT                        R5 ; [+18]
       53 GETTABLEKS                       R5 R3 K5 ["X"]
       55 GETTABLEKS                       R6 R3 K7 ["Z"]
       57 GETTABLEKS                       R8 R0 K2 ["_volume"]
       59 MUL                              R9 R5 R6
       60 DIV                              R7 R8 R9
       61 FASTCALL3                        VECTOR R5 R7 R6
       63 MOVE                             R9 R5
       64 MOVE                             R10 R7
       65 MOVE                             R11 R6
       66 GETIMPORT                        R8 K10 [Vector3.new]
       68 CALL                             R8 3 1
       69 MOVE                             R4 R8
       70 JUMP                             ; [+20]
       71 GETTABLEKS                       R5 R2 K7 ["Z"]
       73 JUMPIFNOT                        R5 ; [+17]
       74 GETTABLEKS                       R5 R3 K5 ["X"]
       76 GETTABLEKS                       R6 R3 K6 ["Y"]
       78 GETTABLEKS                       R8 R0 K2 ["_volume"]
       80 MUL                              R9 R5 R6
       81 DIV                              R7 R8 R9
       82 FASTCALL3                        VECTOR R5 R6 R7
       84 MOVE                             R9 R5
       85 MOVE                             R10 R6
       86 MOVE                             R11 R7
       87 GETIMPORT                        R8 K10 [Vector3.new]
       89 CALL                             R8 3 1
       90 MOVE                             R4 R8
       91 LOADK                            R8 K11 [{1, 1, 1}]
       92 GETUPVAL                         R10 1
       93 GETTABLEKS                       R9 R10 K12 ["MaxRegion"]
       95 MUL                              R7 R8 R9
       96 NAMECALL                         R5 R4 K13 ["Min"]
       98 CALL                             R5 2 1
       99 MOVE                             R4 R5
      100 LOADK                            R5 K3 [{4, 4, 4}]
      101 SETTABLEKS                       R5 R0 K14 ["_calculatedMin"]
      103 SETTABLEKS                       R4 R0 K4 ["_calculatedMax"]
      105 LOADK                            R5 K3 [{4, 4, 4}]
      106 MOVE                             R6 R4
      107 RETURN                           R5 2

PROTO_5:
        0 MOVE                             R6 R1
        1 MOVE                             R7 R2
        2 NAMECALL                         R4 R0 K0 ["getBoundingBox"]
        4 CALL                             R4 3 3
        5 SETTABLEKS                       R4 R0 K1 ["_originalBoundingBoxCFrame"]
        7 SETTABLEKS                       R6 R0 K2 ["_originalBoundingBoxSize"]
        9 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R4 R0 K0 ["_originalBoundingBoxCFrame"]
        2 GETTABLEKS                       R7 R0 K0 ["_originalBoundingBoxCFrame"]
        4 GETTABLEKS                       R6 R7 K1 ["Rotation"]
        6 MUL                              R5 R6 R2
        7 ADD                              R3 R4 R5
        8 GETTABLEKS                       R5 R0 K2 ["_originalBoundingBoxSize"]
       10 ADD                              R4 R5 R1
       11 NAMECALL                         R5 R0 K3 ["getMinMaxSizes"]
       13 CALL                             R5 1 2
       14 GETTABLEKS                       R8 R0 K4 ["_draggerContext"]
       16 GETTABLEKS                       R7 R8 K5 ["SnapToVoxels"]
       18 JUMPIFNOT                        R7 ; [+9]
       19 GETUPVAL                         R7 0
       20 MOVE                             R8 R3
       21 MOVE                             R9 R4
       22 GETUPVAL                         R11 1
       23 GETTABLEKS                       R10 R11 K6 ["VoxelResolution"]
       25 CALL                             R7 3 2
       26 MOVE                             R3 R7
       27 MOVE                             R4 R8
       28 GETTABLEKS                       R7 R4 K7 ["X"]
       30 GETTABLEKS                       R8 R6 K7 ["X"]
       32 JUMPIFNOTLE                      R7 R8 ; [+39]
       34 GETTABLEKS                       R7 R4 K8 ["Y"]
       36 GETTABLEKS                       R8 R6 K8 ["Y"]
       38 JUMPIFNOTLE                      R7 R8 ; [+33]
       40 GETTABLEKS                       R7 R4 K9 ["Z"]
       42 GETTABLEKS                       R8 R6 K9 ["Z"]
       44 JUMPIFNOTLE                      R7 R8 ; [+27]
       46 GETTABLEKS                       R7 R4 K7 ["X"]
       48 GETTABLEKS                       R8 R5 K7 ["X"]
       50 JUMPIFNOTLE                      R8 R7 ; [+21]
       52 GETTABLEKS                       R7 R4 K8 ["Y"]
       54 GETTABLEKS                       R8 R5 K8 ["Y"]
       56 JUMPIFNOTLE                      R8 R7 ; [+15]
       58 GETTABLEKS                       R7 R4 K9 ["Z"]
       60 GETTABLEKS                       R8 R5 K9 ["Z"]
       62 JUMPIFNOTLE                      R8 R7 ; [+9]
       64 GETTABLEKS                       R8 R0 K4 ["_draggerContext"]
       66 GETTABLEKS                       R7 R8 K10 ["updateRegion"]
       68 MOVE                             R8 R3
       69 MOVE                             R9 R4
       70 CALL                             R7 2 0
       71 RETURN                           R1 2
       72 GETTABLEKS                       R7 R1 K7 ["X"]
       74 LOADN                            R8 0
       75 JUMPIFLT                         R7 R8 ; [+11]
       77 GETTABLEKS                       R7 R1 K8 ["Y"]
       79 LOADN                            R8 0
       80 JUMPIFLT                         R7 R8 ; [+6]
       82 GETTABLEKS                       R7 R1 K9 ["Z"]
       84 LOADN                            R8 0
       85 JUMPIFNOTLT                      R7 R8 ; [+4]
       87 MOVE                             R7 R1
       88 LOADK                            R8 K11 [{0, 0, 0}]
       89 RETURN                           R7 2
       90 LOADK                            R7 K11 [{0, 0, 0}]
       91 LOADK                            R8 K11 [{0, 0, 0}]
       92 RETURN                           R7 2

PROTO_7:
        0 LOADN                            R1 1
        1 RETURN                           R1 1

PROTO_8:
        0 RETURN                           R0 0

PROTO_9:
        0 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Util"]
       13 GETTABLEKS                       R2 R3 K8 ["getBinarySearchedSize"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R5 R0 K6 ["Src"]
       20 GETTABLEKS                       R4 R5 K7 ["Util"]
       22 GETTABLEKS                       R3 R4 K9 ["getVoxelAlignedRegion"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R6 R0 K6 ["Src"]
       29 GETTABLEKS                       R5 R6 K10 ["Resources"]
       31 GETTABLEKS                       R4 R5 K11 ["Constants"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R7 R0 K6 ["Src"]
       38 GETTABLEKS                       R6 R7 K12 ["Flags"]
       40 GETTABLEKS                       R5 R6 K13 ["getFFlagTerrainEditorGenerationFeature"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R8 R0 K6 ["Src"]
       47 GETTABLEKS                       R7 R8 K12 ["Flags"]
       49 GETTABLEKS                       R6 R7 K14 ["getFFlagTerrainEditorUpdateShortcuts"]
       51 CALL                             R5 1 1
       52 NEWTABLE                         R6 16 0
       54 SETTABLEKS                       R6 R6 K15 ["__index"]
       56 DUPCLOSURE                       R7 K16 [PROTO_0]
       57 CAPTURE                          VAL R6
       58 SETTABLEKS                       R7 R6 K17 ["new"]
       60 DUPCLOSURE                       R7 K18 [PROTO_1]
       61 SETTABLEKS                       R7 R6 K19 ["getBoundingBox"]
       63 DUPCLOSURE                       R7 K20 [PROTO_2]
       64 SETTABLEKS                       R7 R6 K21 ["shouldScaleFromCenter"]
       66 DUPCLOSURE                       R7 K22 [PROTO_3]
       67 CAPTURE                          VAL R5
       68 SETTABLEKS                       R7 R6 K23 ["axesToScale"]
       70 DUPCLOSURE                       R7 K24 [PROTO_4]
       71 CAPTURE                          VAL R1
       72 CAPTURE                          VAL R3
       73 SETTABLEKS                       R7 R6 K25 ["getMinMaxSizes"]
       75 DUPCLOSURE                       R7 K26 [PROTO_5]
       76 SETTABLEKS                       R7 R6 K27 ["beginScale"]
       78 DUPCLOSURE                       R7 K28 [PROTO_6]
       79 CAPTURE                          VAL R2
       80 CAPTURE                          VAL R3
       81 SETTABLEKS                       R7 R6 K29 ["updateScale"]
       83 DUPCLOSURE                       R7 K30 [PROTO_7]
       84 SETTABLEKS                       R7 R6 K31 ["getPriority"]
       86 DUPCLOSURE                       R7 K32 [PROTO_8]
       87 SETTABLEKS                       R7 R6 K33 ["endScale"]
       89 DUPCLOSURE                       R7 K34 [PROTO_9]
       90 SETTABLEKS                       R7 R6 K35 ["render"]
       92 RETURN                           R6 1
