PROTO_0:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R5 R6 K0 ["Dictionary"]
        3 GETTABLEKS                       R4 R5 K1 ["join"]
        5 NEWTABLE                         R5 0 0
        7 MOVE                             R6 R0
        8 CALL                             R4 2 1
        9 MOVE                             R0 R4
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R5 R6 K0 ["Dictionary"]
       13 GETTABLEKS                       R4 R5 K1 ["join"]
       15 NEWTABLE                         R5 0 0
       17 GETTABLEKS                       R6 R0 K2 ["Instances"]
       19 CALL                             R4 2 1
       20 SETTABLEKS                       R4 R0 K2 ["Instances"]
       22 GETIMPORT                        R4 K4 [pairs]
       24 MOVE                             R5 R1
       25 CALL                             R4 1 3
       26 FORGPREP_NEXT                    R4
       27 GETTABLEKS                       R9 R0 K2 ["Instances"]
       29 GETUPVAL                         R12 0
       30 GETTABLEKS                       R11 R12 K0 ["Dictionary"]
       32 GETTABLEKS                       R10 R11 K1 ["join"]
       34 NEWTABLE                         R11 0 0
       36 GETTABLEKS                       R13 R0 K2 ["Instances"]
       38 GETTABLE                         R12 R13 R7
       39 CALL                             R10 2 1
       40 SETTABLE                         R10 R9 R7
       41 GETTABLEKS                       R10 R0 K2 ["Instances"]
       43 GETTABLE                         R9 R10 R7
       44 GETUPVAL                         R12 0
       45 GETTABLEKS                       R11 R12 K0 ["Dictionary"]
       47 GETTABLEKS                       R10 R11 K1 ["join"]
       49 NEWTABLE                         R11 0 0
       51 GETTABLEKS                       R14 R0 K2 ["Instances"]
       53 GETTABLE                         R13 R14 R7
       54 GETTABLEKS                       R12 R13 K5 ["Tracks"]
       56 CALL                             R10 2 1
       57 SETTABLEKS                       R10 R9 K5 ["Tracks"]
       59 GETTABLEKS                       R10 R0 K2 ["Instances"]
       61 GETTABLE                         R9 R10 R7
       62 GETIMPORT                        R10 K4 [pairs]
       64 MOVE                             R11 R8
       65 CALL                             R10 1 3
       66 FORGPREP_NEXT                    R10
       67 GETTABLEKS                       R15 R9 K5 ["Tracks"]
       69 GETUPVAL                         R16 1
       70 GETTABLEKS                       R18 R9 K5 ["Tracks"]
       72 GETTABLE                         R17 R18 R13
       73 CALL                             R16 1 1
       74 SETTABLE                         R16 R15 R13
       75 FORGLOOP                         R10 2 ; [-9]
       77 FORGLOOP                         R4 2 ; [-51]
       79 GETUPVAL                         R4 1
       80 MOVE                             R5 R1
       81 CALL                             R4 1 1
       82 MOVE                             R1 R4
       83 GETUPVAL                         R5 2
       84 GETTABLEKS                       R4 R5 K6 ["getSelectionBounds"]
       86 MOVE                             R5 R0
       87 MOVE                             R6 R1
       88 CALL                             R4 2 2
       89 DUPTABLE                         R6 K17 [{"animationData", "selectedKeyframes", "pivotTick", "newTick", "pivotValue", "newValue", "scale", "earliestTick", "latestTick", "dragMode"}]
       90 SETTABLEKS                       R0 R6 K7 ["animationData"]
       92 SETTABLEKS                       R1 R6 K8 ["selectedKeyframes"]
       94 SETTABLEKS                       R2 R6 K9 ["pivotTick"]
       96 SETTABLEKS                       R2 R6 K10 ["newTick"]
       98 SETTABLEKS                       R3 R6 K11 ["pivotValue"]
      100 SETTABLEKS                       R3 R6 K12 ["newValue"]
      102 LOADN                            R7 1
      103 SETTABLEKS                       R7 R6 K13 ["scale"]
      105 SETTABLEKS                       R4 R6 K14 ["earliestTick"]
      107 SETTABLEKS                       R5 R6 K15 ["latestTick"]
      109 GETUPVAL                         R9 3
      110 GETTABLEKS                       R8 R9 K18 ["DRAG_MODE"]
      112 GETTABLEKS                       R7 R8 K19 ["Keyframe"]
      114 SETTABLEKS                       R7 R6 K16 ["dragMode"]
      116 GETUPVAL                         R9 4
      117 FASTCALL2                        SETMETATABLE R6 R9 ; [+4]
      119 MOVE                             R8 R6
      120 GETIMPORT                        R7 K21 [setmetatable]
      122 CALL                             R7 2 0
      123 RETURN                           R6 1

PROTO_1:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R5 R6 K0 ["getTrack"]
        3 MOVE                             R6 R0
        4 MOVE                             R7 R1
        5 MOVE                             R8 R2
        6 CALL                             R5 3 1
        7 JUMPIF                           R5 ; [+2]
        8 LOADNIL                          R6
        9 RETURN                           R6 1
       10 GETTABLEKS                       R7 R5 K1 ["Data"]
       12 GETTABLE                         R6 R7 R3
       13 JUMPIF                           R6 ; [+2]
       14 LOADNIL                          R7
       15 RETURN                           R7 1
       16 DUPTABLE                         R7 K9 [{"instance", "path", "tck", "value", "side", "dragMode", "trackType"}]
       17 SETTABLEKS                       R1 R7 K2 ["instance"]
       19 SETTABLEKS                       R2 R7 K3 ["path"]
       21 SETTABLEKS                       R3 R7 K4 ["tck"]
       23 GETTABLEKS                       R8 R6 K10 ["Value"]
       25 SETTABLEKS                       R8 R7 K5 ["value"]
       27 SETTABLEKS                       R4 R7 K6 ["side"]
       29 GETUPVAL                         R10 1
       30 GETTABLEKS                       R9 R10 K11 ["DRAG_MODE"]
       32 GETTABLEKS                       R8 R9 K12 ["Tangent"]
       34 SETTABLEKS                       R8 R7 K7 ["dragMode"]
       36 GETTABLEKS                       R8 R5 K13 ["Type"]
       38 SETTABLEKS                       R8 R7 K8 ["trackType"]
       40 GETUPVAL                         R10 2
       41 FASTCALL2                        SETMETATABLE R7 R10 ; [+4]
       43 MOVE                             R9 R7
       44 GETIMPORT                        R8 K15 [setmetatable]
       46 CALL                             R8 2 0
       47 RETURN                           R7 1

PROTO_2:
        0 SETTABLEKS                       R1 R0 K0 ["newTick"]
        2 SETTABLEKS                       R2 R0 K1 ["newValue"]
        4 RETURN                           R0 0

PROTO_3:
        0 SETTABLEKS                       R1 R0 K0 ["newTick"]
        2 GETTABLEKS                       R2 R0 K1 ["pivotTick"]
        4 GETTABLEKS                       R4 R0 K2 ["latestTick"]
        6 JUMPIFNOTEQ                      R2 R4 ; [+3]
        8 SUB                              R3 R2 R1
        9 JUMPIF                           R3 ; [+1]
       10 SUB                              R3 R1 R2
       11 GETTABLEKS                       R6 R0 K2 ["latestTick"]
       13 GETTABLEKS                       R7 R0 K3 ["earliestTick"]
       15 SUB                              R5 R6 R7
       16 DIV                              R4 R3 R5
       17 SETTABLEKS                       R4 R0 K4 ["scale"]
       19 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R5 R6 K0 ["Dictionary"]
        3 GETTABLEKS                       R4 R5 K1 ["join"]
        5 NEWTABLE                         R5 0 0
        7 MOVE                             R6 R0
        8 CALL                             R4 2 1
        9 MOVE                             R0 R4
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R5 R0 K2 ["Events"]
       13 CALL                             R4 1 1
       14 SETTABLEKS                       R4 R0 K2 ["Events"]
       16 GETUPVAL                         R4 1
       17 MOVE                             R5 R1
       18 CALL                             R4 1 1
       19 MOVE                             R1 R4
       20 DUPTABLE                         R4 K8 [{"pivotTick", "newTick", "animationData", "eventFilters", "selectedEvents"}]
       21 SETTABLEKS                       R3 R4 K3 ["pivotTick"]
       23 SETTABLEKS                       R3 R4 K4 ["newTick"]
       25 SETTABLEKS                       R0 R4 K5 ["animationData"]
       27 SETTABLEKS                       R2 R4 K6 ["eventFilters"]
       29 SETTABLEKS                       R1 R4 K7 ["selectedEvents"]
       31 GETUPVAL                         R7 2
       32 FASTCALL2                        SETMETATABLE R4 R7 ; [+4]
       34 MOVE                             R6 R4
       35 GETIMPORT                        R5 K10 [setmetatable]
       37 CALL                             R5 2 0
       38 RETURN                           R4 1

PROTO_5:
        0 SETTABLEKS                       R1 R0 K0 ["newTick"]
        2 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Cryo"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Src"]
       18 GETTABLEKS                       R4 R5 K9 ["Util"]
       20 GETTABLEKS                       R3 R4 K10 ["AnimationData"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R6 R0 K8 ["Src"]
       27 GETTABLEKS                       R5 R6 K9 ["Util"]
       29 GETTABLEKS                       R4 R5 K11 ["deepCopy"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R7 R0 K8 ["Src"]
       36 GETTABLEKS                       R6 R7 K9 ["Util"]
       38 GETTABLEKS                       R5 R6 K12 ["Constants"]
       40 CALL                             R4 1 1
       41 NEWTABLE                         R5 8 0
       43 SETTABLEKS                       R5 R5 K13 ["__index"]
       45 DUPCLOSURE                       R6 K14 [PROTO_0]
       46 CAPTURE                          VAL R1
       47 CAPTURE                          VAL R3
       48 CAPTURE                          VAL R2
       49 CAPTURE                          VAL R4
       50 CAPTURE                          VAL R5
       51 SETTABLEKS                       R6 R5 K15 ["new"]
       53 DUPCLOSURE                       R6 K16 [PROTO_1]
       54 CAPTURE                          VAL R2
       55 CAPTURE                          VAL R4
       56 CAPTURE                          VAL R5
       57 SETTABLEKS                       R6 R5 K17 ["newTangentContext"]
       59 DUPCLOSURE                       R6 K18 [PROTO_2]
       60 SETTABLEKS                       R6 R5 K19 ["moveKeyframes"]
       62 DUPCLOSURE                       R6 K20 [PROTO_3]
       63 SETTABLEKS                       R6 R5 K21 ["scaleKeyframes"]
       65 DUPCLOSURE                       R6 K22 [PROTO_4]
       66 CAPTURE                          VAL R1
       67 CAPTURE                          VAL R3
       68 CAPTURE                          VAL R5
       69 SETTABLEKS                       R6 R5 K23 ["newEvents"]
       71 DUPCLOSURE                       R6 K24 [PROTO_5]
       72 SETTABLEKS                       R6 R5 K25 ["moveEvents"]
       74 RETURN                           R5 1
