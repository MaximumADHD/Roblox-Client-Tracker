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
       24 LOADN                            R6 -1
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
        3 MOVE                             R3 R2
        4 LOADNIL                          R4
        5 LOADNIL                          R5
        6 FORGPREP                         R3
        7 GETTABLEKS                       R8 R0 K1 ["_snapPointsAreFor"]
        9 JUMPIFEQ                         R7 R8 ; [+7]
       11 GETTABLEKS                       R10 R0 K1 ["_snapPointsAreFor"]
       13 NAMECALL                         R8 R7 K2 ["IsDescendantOf"]
       15 CALL                             R8 2 1
       16 JUMPIFNOT                        R8 ; [+1]
       17 RETURN                           R0 0
       18 FORGLOOP                         R3 2 ; [-12]
       20 MOVE                             R3 R2
       21 LOADNIL                          R4
       22 LOADNIL                          R5
       23 FORGPREP                         R3
       24 GETTABLEKS                       R8 R0 K3 ["_primaryObject"]
       26 JUMPIFEQ                         R7 R8 ; [+7]
       28 GETTABLEKS                       R10 R0 K3 ["_primaryObject"]
       30 NAMECALL                         R8 R7 K2 ["IsDescendantOf"]
       32 CALL                             R8 2 1
       33 JUMPIFNOT                        R8 ; [+6]
       34 GETTABLEKS                       R10 R0 K3 ["_primaryObject"]
       36 NAMECALL                         R8 R0 K4 ["_setCurrentSnap"]
       38 CALL                             R8 2 0
       39 RETURN                           R0 0
       40 FORGLOOP                         R3 2 ; [-17]
       42 GETUPVAL                         R3 0
       43 MOVE                             R4 R2
       44 CALL                             R3 1 1
       45 JUMPIFNOT                        R3 ; [+4]
       46 MOVE                             R6 R3
       47 NAMECALL                         R4 R0 K4 ["_setCurrentSnap"]
       49 CALL                             R4 2 0
       50 RETURN                           R0 0

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
        2 JUMPIFNOT                        R1 ; [+34]
        3 GETTABLEKS                       R1 R0 K1 ["_draggerContext"]
        5 NAMECALL                         R1 R1 K2 ["getAnalytics"]
        7 CALL                             R1 1 1
        8 LOADK                            R3 K3 ["setPivot"]
        9 DUPTABLE                         R4 K10 [{["gridSize"], ["rotateIncrement"], ["toolName"], ["handleId"] = "Move", ["pivotType"]}]
       10 GETTABLEKS                       R5 R0 K1 ["_draggerContext"]
       12 NAMECALL                         R5 R5 K11 ["getGridSize"]
       14 CALL                             R5 1 1
       15 SETTABLEKS                       R5 R4 K4 ["gridSize"]
       17 GETTABLEKS                       R5 R0 K1 ["_draggerContext"]
       19 NAMECALL                         R5 R5 K12 ["getRotateIncrement"]
       21 CALL                             R5 1 1
       22 SETTABLEKS                       R5 R4 K5 ["rotateIncrement"]
       24 GETTABLEKS                       R5 R0 K13 ["_analyticsName"]
       26 SETTABLEKS                       R5 R4 K6 ["toolName"]
       28 GETUPVAL                         R5 0
       29 GETTABLEKS                       R6 R0 K0 ["_primaryObject"]
       31 CALL                             R5 1 1
       32 SETTABLEKS                       R5 R4 K9 ["pivotType"]
       34 NAMECALL                         R1 R1 K14 ["sendEvent"]
       36 CALL                             R1 3 0
       37 RETURN                           R0 0

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
       79 NEWTABLE                         R10 16 0
       81 SETTABLEKS                       R10 R10 K19 ["__index"]
       83 DUPCLOSURE                       R11 K20 [PROTO_0]
       84 CAPTURE                          VAL R10
       85 SETTABLEKS                       R11 R10 K21 ["new"]
       87 DUPCLOSURE                       R11 K22 [PROTO_1]
       88 CAPTURE                          VAL R9
       89 SETTABLEKS                       R11 R10 K18 ["getSoftSnaps"]
       91 DUPCLOSURE                       R11 K23 [PROTO_2]
       92 SETTABLEKS                       R11 R10 K24 ["_selectedIsActive"]
       94 DUPCLOSURE                       R11 K25 [PROTO_3]
       95 CAPTURE                          VAL R5
       96 SETTABLEKS                       R11 R10 K26 ["_setCurrentSnap"]
       98 DUPCLOSURE                       R11 K27 [PROTO_4]
       99 SETTABLEKS                       R11 R10 K28 ["beginDrag"]
      101 DUPCLOSURE                       R11 K29 [PROTO_5]
      102 CAPTURE                          VAL R3
      103 DUPCLOSURE                       R12 K30 [PROTO_6]
      104 CAPTURE                          VAL R11
      105 SETTABLEKS                       R12 R10 K31 ["_findNewSnapTargetImpl"]
      107 DUPCLOSURE                       R12 K32 [PROTO_7]
      108 SETTABLEKS                       R12 R10 K33 ["_findNewSnapTargetViaCollision"]
      110 DUPCLOSURE                       R12 K34 [PROTO_8]
      111 CAPTURE                          VAL R4
      112 SETTABLEKS                       R12 R10 K35 ["updateDrag"]
      114 DUPCLOSURE                       R12 K36 [PROTO_9]
      115 CAPTURE                          VAL R8
      116 SETTABLEKS                       R12 R10 K37 ["endDrag"]
      118 DUPCLOSURE                       R12 K38 [PROTO_10]
      119 SETTABLEKS                       R12 R10 K39 ["getSnapPoints"]
      121 DUPCLOSURE                       R12 K40 [PROTO_11]
      122 CAPTURE                          VAL R2
      123 CAPTURE                          VAL R7
      124 CAPTURE                          VAL R6
      125 SETTABLEKS                       R12 R10 K41 ["render"]
      127 RETURN                           R10 1
