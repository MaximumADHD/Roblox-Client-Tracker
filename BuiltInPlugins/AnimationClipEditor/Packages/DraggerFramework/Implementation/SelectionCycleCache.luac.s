PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 GETIMPORT                        R3 K2 [RaycastParams.new]
        4 CALL                             R3 0 1
        5 GETIMPORT                        R4 K6 [Enum.RaycastFilterType.Blacklist]
        7 SETTABLEKS                       R4 R3 K7 ["FilterType"]
        9 SETTABLEKS                       R2 R3 K8 ["FilterDescendantsInstances"]
       11 LOADB                            R4 1
       12 SETTABLEKS                       R4 R3 K9 ["BruteForceAllSlow"]
       14 GETUPVAL                         R4 0
       15 SETTABLEKS                       R4 R3 K10 ["CollisionGroup"]
       17 GETIMPORT                        R4 K12 [workspace]
       19 GETTABLEKS                       R6 R0 K13 ["Origin"]
       21 GETTABLEKS                       R7 R0 K14 ["Direction"]
       23 MOVE                             R8 R3
       24 NAMECALL                         R4 R4 K15 ["Raycast"]
       26 CALL                             R4 4 1
       27 GETTABLEKS                       R7 R0 K13 ["Origin"]
       29 GETTABLEKS                       R8 R0 K14 ["Direction"]
       31 MOVE                             R9 R3
       32 NAMECALL                         R5 R1 K16 ["gizmoRaycast"]
       34 CALL                             R5 4 1
       35 JUMPIFNOT                        R5 ; [+12]
       36 NAMECALL                         R6 R1 K17 ["shouldDrawConstraintsOnTop"]
       38 CALL                             R6 1 1
       39 JUMPIF                           R6 ; [+7]
       40 JUMPIFNOT                        R4 ; [+6]
       41 GETTABLEKS                       R6 R5 K18 ["Distance"]
       43 GETTABLEKS                       R7 R4 K18 ["Distance"]
       45 JUMPIFNOTLT                      R6 R7 ; [+2]
       47 MOVE                             R4 R5
       48 JUMPIFNOT                        R4 ; [+12]
       49 FASTCALL2                        TABLE_INSERT R2 R4 ; [+5]
       51 MOVE                             R7 R2
       52 MOVE                             R8 R4
       53 GETIMPORT                        R6 K21 [table.insert]
       55 CALL                             R6 2 0
       56 GETTABLEKS                       R8 R4 K22 ["Instance"]
       58 NAMECALL                         R6 R3 K23 ["AddToFilter"]
       60 CALL                             R6 2 0
       61 JUMPIFNOT                        R4 ; [+1]
       62 JUMPBACK                         ; [-46]
       63 RETURN                           R2 1

PROTO_1:
        0 GETIMPORT                        R2 K2 [table.create]
        2 LENGTH                           R3 R0
        3 CALL                             R2 1 1
        4 GETIMPORT                        R3 K2 [table.create]
        6 LENGTH                           R4 R0
        7 CALL                             R3 1 1
        8 NEWTABLE                         R4 0 0
       10 MOVE                             R5 R0
       11 LOADNIL                          R6
       12 LOADNIL                          R7
       13 FORGPREP                         R5
       14 GETTABLEKS                       R10 R1 K3 ["getSelectableWithCache"]
       16 GETTABLEKS                       R11 R9 K4 ["Instance"]
       18 LOADB                            R12 1
       19 MOVE                             R13 R4
       20 CALL                             R10 3 1
       21 JUMPIFNOT                        R10 ; [+14]
       22 FASTCALL2                        TABLE_INSERT R2 R9 ; [+5]
       24 MOVE                             R12 R2
       25 MOVE                             R13 R9
       26 GETIMPORT                        R11 K6 [table.insert]
       28 CALL                             R11 2 0
       29 FASTCALL2                        TABLE_INSERT R3 R10 ; [+5]
       31 MOVE                             R12 R3
       32 MOVE                             R13 R10
       33 GETIMPORT                        R11 K6 [table.insert]
       35 CALL                             R11 2 0
       36 FORGLOOP                         R5 2 ; [-23]
       38 RETURN                           R2 2

PROTO_2:
        0 DUPTABLE                         R3 K7 [{"_draggerContext", "_draggerSchema", "_cachedRaycastResults", "_cachedSelectables", "_currentIndex", "_analyticsNumberOfClicks", "_hasCycled"}]
        1 SETTABLEKS                       R0 R3 K0 ["_draggerContext"]
        3 SETTABLEKS                       R1 R3 K1 ["_draggerSchema"]
        5 NEWTABLE                         R4 0 0
        7 SETTABLEKS                       R4 R3 K2 ["_cachedRaycastResults"]
        9 NEWTABLE                         R4 0 0
       11 SETTABLEKS                       R4 R3 K3 ["_cachedSelectables"]
       13 LOADN                            R4 0
       14 SETTABLEKS                       R4 R3 K4 ["_currentIndex"]
       16 LOADN                            R4 0
       17 SETTABLEKS                       R4 R3 K5 ["_analyticsNumberOfClicks"]
       19 LOADB                            R4 0
       20 SETTABLEKS                       R4 R3 K6 ["_hasCycled"]
       22 GETUPVAL                         R4 0
       23 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
       25 GETIMPORT                        R2 K9 [setmetatable]
       27 CALL                             R2 2 1
       28 RETURN                           R2 1

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["_cachedSelectables"]
        2 LENGTH                           R1 R2
        3 RETURN                           R1 1

PROTO_4:
        0 NAMECALL                         R2 R0 K0 ["isValid"]
        2 CALL                             R2 1 1
        3 JUMPIF                           R2 ; [+3]
        4 NAMECALL                         R2 R0 K1 ["computeSelectionCycleCandidates"]
        6 CALL                             R2 1 0
        7 GETTABLEKS                       R2 R0 K2 ["_currentIndex"]
        9 JUMPIFNOTEQKN                    R2 K3 [0] ; [+3]
       11 LOADNIL                          R2
       12 RETURN                           R2 1
       13 GETTABLEKS                       R3 R0 K4 ["_cachedSelectables"]
       15 GETTABLEKS                       R4 R0 K2 ["_currentIndex"]
       17 GETTABLE                         R2 R3 R4
       18 GETTABLEKS                       R4 R0 K5 ["_cachedRaycastResults"]
       20 GETTABLEKS                       R5 R0 K2 ["_currentIndex"]
       22 GETTABLE                         R3 R4 R5
       23 JUMPIFNOT                        R1 ; [+24]
       24 GETTABLEKS                       R4 R0 K2 ["_currentIndex"]
       26 GETTABLEKS                       R6 R0 K4 ["_cachedSelectables"]
       28 LENGTH                           R5 R6
       29 JUMPIFNOTEQ                      R4 R5 ; [+5]
       31 LOADN                            R4 1
       32 SETTABLEKS                       R4 R0 K2 ["_currentIndex"]
       34 JUMP                             ; [+5]
       35 GETTABLEKS                       R4 R0 K2 ["_currentIndex"]
       37 ADDK                             R4 R4 K6 [1]
       38 SETTABLEKS                       R4 R0 K2 ["_currentIndex"]
       40 GETTABLEKS                       R4 R0 K7 ["_analyticsNumberOfClicks"]
       42 ADDK                             R4 R4 K6 [1]
       43 SETTABLEKS                       R4 R0 K7 ["_analyticsNumberOfClicks"]
       45 LOADB                            R4 1
       46 SETTABLEKS                       R4 R0 K8 ["_hasCycled"]
       48 GETTABLEKS                       R4 R0 K9 ["_draggerContext"]
       50 NAMECALL                         R6 R4 K10 ["shouldGridSnap"]
       52 CALL                             R6 1 1
       53 JUMPIFNOT                        R6 ; [+4]
       54 NAMECALL                         R5 R4 K11 ["getGridSize"]
       56 CALL                             R5 1 1
       57 JUMP                             ; [+1]
       58 LOADNIL                          R5
       59 LOADNIL                          R6
       60 LOADNIL                          R7
       61 GETTABLEKS                       R8 R3 K12 ["Instance"]
       63 LOADK                            R10 K13 ["PVInstance"]
       64 NAMECALL                         R8 R8 K14 ["IsA"]
       66 CALL                             R8 2 1
       67 JUMPIFNOT                        R8 ; [+44]
       68 GETUPVAL                         R8 0
       69 CALL                             R8 0 1
       70 JUMPIFNOT                        R8 ; [+20]
       71 GETUPVAL                         R9 1
       72 GETTABLEKS                       R8 R9 K15 ["getSurfaceMatrix"]
       74 GETTABLEKS                       R9 R0 K9 ["_draggerContext"]
       76 NAMECALL                         R9 R9 K16 ["getMouseRay"]
       78 CALL                             R9 1 1
       79 MOVE                             R10 R3
       80 LOADNIL                          R11
       81 MOVE                             R12 R5
       82 CALL                             R8 4 1
       83 JUMPIFNOT                        R8 ; [+35]
       84 GETTABLEKS                       R6 R8 K17 ["matrix"]
       86 GETTABLEKS                       R7 R8 K18 ["size"]
       88 SETTABLEKS                       R6 R4 K19 ["PreviousTargetMatrix"]
       90 JUMP                             ; [+28]
       91 LOADNIL                          R8
       92 LOADNIL                          R9
       93 GETUPVAL                         R11 1
       94 GETTABLEKS                       R10 R11 K15 ["getSurfaceMatrix"]
       96 GETTABLEKS                       R11 R0 K9 ["_draggerContext"]
       98 NAMECALL                         R11 R11 K16 ["getMouseRay"]
      100 CALL                             R11 1 1
      101 NEWTABLE                         R12 0 0
      103 LOADNIL                          R13
      104 CALL                             R10 3 3
      105 MOVE                             R6 R10
      106 MOVE                             R8 R11
      107 MOVE                             R9 R12
      108 LOADK                            R7 K20 [{0, 0, 0}]
      109 SETTABLEKS                       R6 R4 K19 ["PreviousTargetMatrix"]
      111 JUMP                             ; [+7]
      112 GETIMPORT                        R8 K23 [CFrame.new]
      114 GETTABLEKS                       R9 R3 K24 ["Position"]
      116 CALL                             R8 1 1
      117 MOVE                             R6 R8
      118 LOADK                            R7 K20 [{0, 0, 0}]
      119 MOVE                             R8 R2
      120 GETTABLEKS                       R9 R3 K12 ["Instance"]
      122 GETTABLEKS                       R10 R3 K25 ["Distance"]
      124 GETIMPORT                        R11 K28 [table.freeze]
      126 DUPTABLE                         R12 K33 [{"RaycastResult", "TargetMatrix", "TargetSize", "IsPivot"}]
      127 SETTABLEKS                       R3 R12 K29 ["RaycastResult"]
      129 SETTABLEKS                       R6 R12 K30 ["TargetMatrix"]
      131 SETTABLEKS                       R7 R12 K31 ["TargetSize"]
      133 LOADB                            R13 0
      134 SETTABLEKS                       R13 R12 K32 ["IsPivot"]
      136 CALL                             R11 1 -1
      137 RETURN                           R8 -1

PROTO_5:
        0 NAMECALL                         R1 R0 K0 ["isValid"]
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+2]
        4 GETTABLEKS                       R1 R0 K1 ["_hasCycled"]
        6 RETURN                           R1 1

PROTO_6:
        0 LOADN                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["_analyticsNumberOfClicks"]
        3 NAMECALL                         R1 R0 K1 ["isValid"]
        5 CALL                             R1 1 1
        6 JUMPIFNOT                        R1 ; [+1]
        7 RETURN                           R0 0
        8 GETTABLEKS                       R1 R0 K2 ["_draggerContext"]
       10 NAMECALL                         R1 R1 K3 ["getMouseRay"]
       12 CALL                             R1 1 1
       13 GETUPVAL                         R2 0
       14 MOVE                             R3 R1
       15 GETTABLEKS                       R4 R0 K2 ["_draggerContext"]
       17 CALL                             R2 2 1
       18 GETUPVAL                         R3 1
       19 MOVE                             R4 R2
       20 GETTABLEKS                       R5 R0 K4 ["_draggerSchema"]
       22 CALL                             R3 2 2
       23 SETTABLEKS                       R3 R0 K5 ["_cachedRaycastResults"]
       25 SETTABLEKS                       R4 R0 K6 ["_cachedSelectables"]
       27 GETTABLEKS                       R4 R0 K5 ["_cachedRaycastResults"]
       29 LENGTH                           R3 R4
       30 LOADN                            R4 0
       31 JUMPIFNOTLT                      R4 R3 ; [+21]
       33 GETTABLEKS                       R3 R0 K2 ["_draggerContext"]
       35 NAMECALL                         R3 R3 K7 ["getMouseLocation"]
       37 CALL                             R3 1 1
       38 SETTABLEKS                       R3 R0 K8 ["_cachedMouseLocation"]
       40 GETTABLEKS                       R4 R0 K2 ["_draggerContext"]
       42 NAMECALL                         R4 R4 K9 ["getCameraCFrame"]
       44 CALL                             R4 1 1
       45 GETTABLEKS                       R3 R4 K10 ["Position"]
       47 SETTABLEKS                       R3 R0 K11 ["_cachedCameraPosition"]
       49 LOADN                            R3 1
       50 SETTABLEKS                       R3 R0 K12 ["_currentIndex"]
       52 JUMP                             ; [+9]
       53 LOADNIL                          R3
       54 SETTABLEKS                       R3 R0 K8 ["_cachedMouseLocation"]
       56 LOADNIL                          R3
       57 SETTABLEKS                       R3 R0 K11 ["_cachedCameraPosition"]
       59 LOADN                            R3 0
       60 SETTABLEKS                       R3 R0 K12 ["_currentIndex"]
       62 LOADB                            R3 0
       63 SETTABLEKS                       R3 R0 K13 ["_hasCycled"]
       65 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R2 R0 K0 ["_draggerContext"]
        2 NAMECALL                         R2 R2 K1 ["getCameraCFrame"]
        4 CALL                             R2 1 1
        5 GETTABLEKS                       R1 R2 K2 ["Position"]
        7 GETTABLEKS                       R2 R0 K3 ["_cachedCameraPosition"]
        9 JUMPIFEQ                         R1 R2 ; [+3]
       11 LOADB                            R2 0
       12 RETURN                           R2 1
       13 GETTABLEKS                       R2 R0 K0 ["_draggerContext"]
       15 NAMECALL                         R2 R2 K4 ["getMouseLocation"]
       17 CALL                             R2 1 1
       18 GETTABLEKS                       R4 R0 K5 ["_cachedMouseLocation"]
       20 SUB                              R3 R2 R4
       21 GETTABLEKS                       R5 R3 K6 ["Magnitude"]
       23 LOADN                            R6 2
       24 JUMPIFLE                         R5 R6 ; [+2]
       26 LOADB                            R4 0 +1
       27 LOADB                            R4 1
       28 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R3 R0 K5 ["Utility"]
       11 GETTABLEKS                       R2 R3 K6 ["CursorGroupName"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R4 R0 K5 ["Utility"]
       18 GETTABLEKS                       R3 R4 K7 ["DragHelper"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K4 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Flags"]
       25 GETTABLEKS                       R4 R5 K9 ["getFFlagDraggerImprovements"]
       27 CALL                             R3 1 1
       28 DUPCLOSURE                       R4 K10 [PROTO_0]
       29 CAPTURE                          VAL R1
       30 DUPCLOSURE                       R5 K11 [PROTO_1]
       31 NEWTABLE                         R6 8 0
       33 SETTABLEKS                       R6 R6 K12 ["__index"]
       35 DUPCLOSURE                       R7 K13 [PROTO_2]
       36 CAPTURE                          VAL R6
       37 SETTABLEKS                       R7 R6 K14 ["new"]
       39 DUPCLOSURE                       R7 K15 [PROTO_3]
       40 SETTABLEKS                       R7 R6 K16 ["size"]
       42 DUPCLOSURE                       R7 K17 [PROTO_4]
       43 CAPTURE                          VAL R3
       44 CAPTURE                          VAL R2
       45 SETTABLEKS                       R7 R6 K18 ["getNextSelectable"]
       47 DUPCLOSURE                       R7 K19 [PROTO_5]
       48 SETTABLEKS                       R7 R6 K20 ["hasCycled"]
       50 DUPCLOSURE                       R7 K21 [PROTO_6]
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R5
       53 SETTABLEKS                       R7 R6 K22 ["computeSelectionCycleCandidates"]
       55 DUPCLOSURE                       R7 K23 [PROTO_7]
       56 SETTABLEKS                       R7 R6 K24 ["isValid"]
       58 RETURN                           R6 1
