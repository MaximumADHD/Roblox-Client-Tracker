PROTO_0:
        0 DUPTABLE                         R3 K2 [{"_draggerContext", "_analyticsName"}]
        1 SETTABLEKS                       R0 R3 K0 ["_draggerContext"]
        3 SETTABLEKS                       R1 R3 K1 ["_analyticsName"]
        5 GETUPVAL                         R4 0
        6 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
        8 GETIMPORT                        R2 K4 [setmetatable]
       10 CALL                             R2 2 1
       11 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["_draggerContext"]
        2 NAMECALL                         R3 R3 K1 ["shouldSnapPivotToGeometry"]
        4 CALL                             R3 1 1
        5 JUMPIFNOT                        R3 ; [+3]
        6 NEWTABLE                         R3 0 0
        8 RETURN                           R3 1
        9 MOVE                             R3 R2
       10 JUMPIF                           R3 ; [+2]
       11 GETIMPORT                        R3 K4 [CFrame.identity]
       13 MOVE                             R2 R3
       14 GETTABLEKS                       R4 R0 K5 ["_initialPivot"]
       16 MUL                              R3 R4 R2
       17 GETTABLEKS                       R4 R0 K0 ["_draggerContext"]
       19 NAMECALL                         R4 R4 K6 ["getMaxSoftSnaps"]
       21 CALL                             R4 1 1
       22 NEWTABLE                         R5 0 2
       24 LOADN                            R6 255
       25 LOADN                            R7 1
       26 SETLIST                          R5 R6 2 [1]
       28 GETUPVAL                         R6 0
       29 MOVE                             R7 R3
       30 LOADK                            R8 K7 [{0.01, 0.01, 0.01}]
       31 MOVE                             R9 R1
       32 NEWTABLE                         R10 0 0
       34 MOVE                             R11 R5
       35 MOVE                             R12 R5
       36 MOVE                             R13 R4
       37 CALL                             R6 7 -1
       38 RETURN                           R6 -1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["_draggerContext"]
        2 NAMECALL                         R1 R1 K1 ["shouldShowActiveInstanceHighlight"]
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+13]
        6 GETTABLEKS                       R3 R0 K2 ["_selection"]
        8 GETTABLEKS                       R5 R0 K2 ["_selection"]
       10 LENGTH                           R4 R5
       11 GETTABLE                         R2 R3 R4
       12 GETTABLEKS                       R3 R0 K3 ["_primaryObject"]
       14 JUMPIFEQ                         R2 R3 ; [+2]
       16 LOADB                            R1 0 +1
       17 LOADB                            R1 1
       18 RETURN                           R1 1
       19 LOADB                            R1 0
       20 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 SETTABLEKS                       R2 R0 K0 ["_snapPoints"]
        5 SETTABLEKS                       R1 R0 K1 ["_snapPointsAreFor"]
        7 RETURN                           R0 0

PROTO_4:
        0 SETTABLEKS                       R1 R0 K0 ["_selection"]
        2 NAMECALL                         R3 R2 K1 ["getBoundingBox"]
        4 CALL                             R3 1 1
        5 SETTABLEKS                       R3 R0 K2 ["_initialPivot"]
        7 NAMECALL                         R3 R2 K3 ["getPrimaryObject"]
        9 CALL                             R3 1 1
       10 SETTABLEKS                       R3 R0 K4 ["_primaryObject"]
       12 GETTABLEKS                       R5 R0 K4 ["_primaryObject"]
       14 NAMECALL                         R3 R0 K5 ["_setCurrentSnap"]
       16 CALL                             R3 2 0
       17 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R1 K1 [ipairs]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 3
        4 FORGPREP_INEXT                   R1
        5 GETUPVAL                         R6 0
        6 MOVE                             R7 R5
        7 LOADB                            R8 0
        8 NEWTABLE                         R9 0 0
       10 CALL                             R6 3 1
       11 JUMPIFNOT                        R6 ; [+1]
       12 RETURN                           R6 1
       13 FORGLOOP                         R1 2 [inext] ; [-9]
       15 LOADNIL                          R1
       16 RETURN                           R1 1

PROTO_6:
        0 NAMECALL                         R2 R1 K0 ["GetTouchingParts"]
        2 CALL                             R2 1 1
        3 GETUPVAL                         R3 0
        4 CALL                             R3 0 1
        5 JUMPIFNOT                        R3 ; [+18]
        6 MOVE                             R3 R2
        7 LOADNIL                          R4
        8 LOADNIL                          R5
        9 FORGPREP                         R3
       10 GETTABLEKS                       R8 R0 K1 ["_snapPointsAreFor"]
       12 JUMPIFEQ                         R7 R8 ; [+7]
       14 GETTABLEKS                       R10 R0 K1 ["_snapPointsAreFor"]
       16 NAMECALL                         R8 R7 K2 ["IsDescendantOf"]
       18 CALL                             R8 2 1
       19 JUMPIFNOT                        R8 ; [+1]
       20 RETURN                           R0 0
       21 FORGLOOP                         R3 2 ; [-12]
       23 JUMP                             ; [+14]
       24 GETIMPORT                        R3 K4 [ipairs]
       26 MOVE                             R4 R2
       27 CALL                             R3 1 3
       28 FORGPREP_INEXT                   R3
       29 GETTABLEKS                       R10 R0 K1 ["_snapPointsAreFor"]
       31 NAMECALL                         R8 R7 K2 ["IsDescendantOf"]
       33 CALL                             R8 2 1
       34 JUMPIFNOT                        R8 ; [+1]
       35 RETURN                           R0 0
       36 FORGLOOP                         R3 2 [inext] ; [-8]
       38 GETUPVAL                         R3 0
       39 CALL                             R3 0 1
       40 JUMPIFNOT                        R3 ; [+22]
       41 MOVE                             R3 R2
       42 LOADNIL                          R4
       43 LOADNIL                          R5
       44 FORGPREP                         R3
       45 GETTABLEKS                       R8 R0 K5 ["_primaryObject"]
       47 JUMPIFEQ                         R7 R8 ; [+7]
       49 GETTABLEKS                       R10 R0 K5 ["_primaryObject"]
       51 NAMECALL                         R8 R7 K2 ["IsDescendantOf"]
       53 CALL                             R8 2 1
       54 JUMPIFNOT                        R8 ; [+6]
       55 GETTABLEKS                       R10 R0 K5 ["_primaryObject"]
       57 NAMECALL                         R8 R0 K6 ["_setCurrentSnap"]
       59 CALL                             R8 2 0
       60 RETURN                           R0 0
       61 FORGLOOP                         R3 2 ; [-17]
       63 GETUPVAL                         R3 1
       64 MOVE                             R4 R2
       65 CALL                             R3 1 1
       66 JUMPIFNOT                        R3 ; [+4]
       67 MOVE                             R6 R3
       68 NAMECALL                         R4 R0 K6 ["_setCurrentSnap"]
       70 CALL                             R4 2 0
       71 RETURN                           R0 0

PROTO_7:
        0 GETIMPORT                        R2 K2 [Instance.new]
        2 LOADK                            R3 K3 ["Part"]
        3 CALL                             R2 1 1
        4 LOADK                            R3 K4 [{0.01, 0.01, 0.01}]
        5 SETTABLEKS                       R3 R2 K5 ["Size"]
        7 GETTABLEKS                       R3 R1 K6 ["Position"]
        9 SETTABLEKS                       R3 R2 K6 ["Position"]
       11 LOADB                            R3 0
       12 SETTABLEKS                       R3 R2 K7 ["Archivable"]
       14 GETIMPORT                        R3 K9 [workspace]
       16 GETTABLEKS                       R3 R3 K10 ["Terrain"]
       18 SETTABLEKS                       R3 R2 K11 ["Parent"]
       20 MOVE                             R5 R2
       21 NAMECALL                         R3 R0 K12 ["_findNewSnapTargetImpl"]
       23 CALL                             R3 2 0
       24 NAMECALL                         R3 R2 K13 ["Destroy"]
       26 CALL                             R3 1 0
       27 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R2 R0 K0 ["_primaryObject"]
        2 JUMPIFNOT                        R2 ; [+12]
        3 GETTABLEKS                       R3 R0 K1 ["_initialPivot"]
        5 MUL                              R2 R1 R3
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R4 R0 K0 ["_primaryObject"]
        9 MOVE                             R5 R2
       10 CALL                             R3 2 0
       11 MOVE                             R5 R2
       12 NAMECALL                         R3 R0 K2 ["_findNewSnapTargetViaCollision"]
       14 CALL                             R3 2 0
       15 RETURN                           R1 1

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["_primaryObject"]
        2 JUMPIFNOT                        R1 ; [+37]
        3 GETTABLEKS                       R1 R0 K1 ["_draggerContext"]
        5 NAMECALL                         R1 R1 K2 ["getAnalytics"]
        7 CALL                             R1 1 1
        8 LOADK                            R3 K3 ["setPivot"]
        9 DUPTABLE                         R4 K9 [{"gridSize", "rotateIncrement", "toolName", "handleId", "pivotType"}]
       10 GETTABLEKS                       R5 R0 K1 ["_draggerContext"]
       12 NAMECALL                         R5 R5 K10 ["getGridSize"]
       14 CALL                             R5 1 1
       15 SETTABLEKS                       R5 R4 K4 ["gridSize"]
       17 GETTABLEKS                       R5 R0 K1 ["_draggerContext"]
       19 NAMECALL                         R5 R5 K11 ["getRotateIncrement"]
       21 CALL                             R5 1 1
       22 SETTABLEKS                       R5 R4 K5 ["rotateIncrement"]
       24 GETTABLEKS                       R5 R0 K12 ["_analyticsName"]
       26 SETTABLEKS                       R5 R4 K6 ["toolName"]
       28 LOADK                            R5 K13 ["Move"]
       29 SETTABLEKS                       R5 R4 K7 ["handleId"]
       31 GETUPVAL                         R5 0
       32 GETTABLEKS                       R6 R0 K0 ["_primaryObject"]
       34 CALL                             R5 1 1
       35 SETTABLEKS                       R5 R4 K8 ["pivotType"]
       37 NAMECALL                         R1 R1 K14 ["sendEvent"]
       39 CALL                             R1 3 0
       40 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["_draggerContext"]
        2 NAMECALL                         R1 R1 K1 ["shouldSnapPivotToGeometry"]
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+3]
        6 GETTABLEKS                       R1 R0 K2 ["_snapPoints"]
        8 RETURN                           R1 1
        9 LOADNIL                          R1
       10 RETURN                           R1 1

PROTO_11:
        0 GETTABLEKS                       R3 R0 K0 ["_initialPivot"]
        2 MUL                              R2 R1 R3
        3 DUPTABLE                         R3 K2 [{"DraggedPivot"}]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K3 ["createElement"]
        7 GETUPVAL                         R5 1
        8 DUPTABLE                         R6 K7 [{"DraggerContext", "CFrame", "IsActive"}]
        9 GETTABLEKS                       R7 R0 K8 ["_draggerContext"]
       11 SETTABLEKS                       R7 R6 K4 ["DraggerContext"]
       13 SETTABLEKS                       R2 R6 K5 ["CFrame"]
       15 NAMECALL                         R7 R0 K9 ["_selectedIsActive"]
       17 CALL                             R7 1 1
       18 SETTABLEKS                       R7 R6 K6 ["IsActive"]
       20 CALL                             R4 2 1
       21 SETTABLEKS                       R4 R3 K1 ["DraggedPivot"]
       23 GETTABLEKS                       R4 R0 K8 ["_draggerContext"]
       25 NAMECALL                         R4 R4 K10 ["shouldSnapPivotToGeometry"]
       27 CALL                             R4 1 1
       28 JUMPIFNOT                        R4 ; [+20]
       29 GETUPVAL                         R4 0
       30 GETTABLEKS                       R4 R4 K3 ["createElement"]
       32 GETUPVAL                         R5 2
       33 DUPTABLE                         R6 K13 [{"Focus", "SnapPoints", "DraggerContext"}]
       34 GETTABLEKS                       R7 R2 K14 ["Position"]
       36 SETTABLEKS                       R7 R6 K11 ["Focus"]
       38 GETTABLEKS                       R7 R0 K15 ["_snapPoints"]
       40 SETTABLEKS                       R7 R6 K12 ["SnapPoints"]
       42 GETTABLEKS                       R7 R0 K8 ["_draggerContext"]
       44 SETTABLEKS                       R7 R6 K4 ["DraggerContext"]
       46 CALL                             R4 2 1
       47 SETTABLEKS                       R4 R3 K12 ["SnapPoints"]
       49 GETUPVAL                         R4 0
       50 GETTABLEKS                       R4 R4 K16 ["createFragment"]
       52 MOVE                             R5 R3
       53 CALL                             R4 1 -1
       54 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K3 ["Packages"]
       11 GETTABLEKS                       R1 R1 K4 ["DraggerFramework"]
       13 GETIMPORT                        R2 K6 [require]
       15 GETTABLEKS                       R3 R0 K3 ["Packages"]
       17 GETTABLEKS                       R3 R3 K7 ["Roact"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K6 [require]
       22 GETTABLEKS                       R4 R0 K3 ["Packages"]
       24 GETTABLEKS                       R4 R4 K8 ["DraggerSchemaCore"]
       26 GETTABLEKS                       R4 R4 K9 ["getSelectableWithCache"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K6 [require]
       31 GETTABLEKS                       R5 R0 K10 ["Src"]
       33 GETTABLEKS                       R5 R5 K11 ["Utility"]
       35 GETTABLEKS                       R5 R5 K12 ["setWorldPivot"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K6 [require]
       40 GETTABLEKS                       R6 R0 K10 ["Src"]
       42 GETTABLEKS                       R6 R6 K11 ["Utility"]
       44 GETTABLEKS                       R6 R6 K13 ["computeSnapPointsForInstance"]
       46 CALL                             R5 1 1
       47 GETIMPORT                        R6 K6 [require]
       49 GETTABLEKS                       R7 R0 K10 ["Src"]
       51 GETTABLEKS                       R7 R7 K14 ["Components"]
       53 GETTABLEKS                       R7 R7 K15 ["SnapPoints"]
       55 CALL                             R6 1 1
       56 GETIMPORT                        R7 K6 [require]
       58 GETTABLEKS                       R8 R1 K14 ["Components"]
       60 GETTABLEKS                       R8 R8 K16 ["DraggedPivot"]
       62 CALL                             R7 1 1
       63 GETIMPORT                        R8 K6 [require]
       65 GETTABLEKS                       R9 R0 K10 ["Src"]
       67 GETTABLEKS                       R9 R9 K11 ["Utility"]
       69 GETTABLEKS                       R9 R9 K17 ["classifyInstancePivot"]
       71 CALL                             R8 1 1
       72 GETIMPORT                        R9 K6 [require]
       74 GETTABLEKS                       R10 R1 K11 ["Utility"]
       76 GETTABLEKS                       R10 R10 K18 ["getSoftSnaps"]
       78 CALL                             R9 1 1
       79 GETIMPORT                        R10 K6 [require]
       81 GETTABLEKS                       R11 R1 K19 ["Flags"]
       83 GETTABLEKS                       R11 R11 K20 ["getFFlagDraggerImprovements"]
       85 CALL                             R10 1 1
       86 NEWTABLE                         R11 16 0
       88 SETTABLEKS                       R11 R11 K21 ["__index"]
       90 DUPCLOSURE                       R12 K22 [PROTO_0]
       91 CAPTURE                          VAL R11
       92 SETTABLEKS                       R12 R11 K23 ["new"]
       94 DUPCLOSURE                       R12 K24 [PROTO_1]
       95 CAPTURE                          VAL R9
       96 SETTABLEKS                       R12 R11 K18 ["getSoftSnaps"]
       98 DUPCLOSURE                       R12 K25 [PROTO_2]
       99 SETTABLEKS                       R12 R11 K26 ["_selectedIsActive"]
      101 DUPCLOSURE                       R12 K27 [PROTO_3]
      102 CAPTURE                          VAL R5
      103 SETTABLEKS                       R12 R11 K28 ["_setCurrentSnap"]
      105 DUPCLOSURE                       R12 K29 [PROTO_4]
      106 SETTABLEKS                       R12 R11 K30 ["beginDrag"]
      108 DUPCLOSURE                       R12 K31 [PROTO_5]
      109 CAPTURE                          VAL R3
      110 DUPCLOSURE                       R13 K32 [PROTO_6]
      111 CAPTURE                          VAL R10
      112 CAPTURE                          VAL R12
      113 SETTABLEKS                       R13 R11 K33 ["_findNewSnapTargetImpl"]
      115 DUPCLOSURE                       R13 K34 [PROTO_7]
      116 SETTABLEKS                       R13 R11 K35 ["_findNewSnapTargetViaCollision"]
      118 DUPCLOSURE                       R13 K36 [PROTO_8]
      119 CAPTURE                          VAL R4
      120 SETTABLEKS                       R13 R11 K37 ["updateDrag"]
      122 DUPCLOSURE                       R13 K38 [PROTO_9]
      123 CAPTURE                          VAL R8
      124 SETTABLEKS                       R13 R11 K39 ["endDrag"]
      126 DUPCLOSURE                       R13 K40 [PROTO_10]
      127 SETTABLEKS                       R13 R11 K41 ["getSnapPoints"]
      129 DUPCLOSURE                       R13 K42 [PROTO_11]
      130 CAPTURE                          VAL R2
      131 CAPTURE                          VAL R7
      132 CAPTURE                          VAL R6
      133 SETTABLEKS                       R13 R11 K43 ["render"]
      135 RETURN                           R11 1
