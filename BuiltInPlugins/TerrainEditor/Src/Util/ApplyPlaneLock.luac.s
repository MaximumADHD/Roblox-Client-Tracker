PROTO_0:
        0 GETTABLEKS                       R5 R2 K0 ["Origin"]
        2 GETTABLEKS                       R4 R5 K1 ["Position"]
        4 GETUPVAL                         R8 0
        5 GETTABLEKS                       R7 R8 K2 ["BrushSettings"]
        7 GETTABLE                         R6 R0 R7
        8 GETUPVAL                         R8 1
        9 GETTABLEKS                       R7 R8 K3 ["PlaneTransform"]
       11 GETTABLE                         R5 R6 R7
       12 GETTABLEKS                       R7 R2 K4 ["UnitRay"]
       14 GETTABLEKS                       R6 R7 K5 ["Direction"]
       16 GETUPVAL                         R8 2
       17 GETTABLEKS                       R7 R8 K6 ["Flatten"]
       19 JUMPIFNOTEQ                      R3 R7 ; [+3]
       21 LOADNIL                          R7
       22 RETURN                           R7 1
       23 GETUPVAL                         R10 0
       24 GETTABLEKS                       R9 R10 K2 ["BrushSettings"]
       26 GETTABLE                         R8 R0 R9
       27 GETUPVAL                         R10 1
       28 GETTABLEKS                       R9 R10 K7 ["PlaneLock"]
       30 GETTABLE                         R7 R8 R9
       31 GETUPVAL                         R9 3
       32 GETTABLEKS                       R8 R9 K8 ["Auto"]
       34 JUMPIFNOTEQ                      R7 R8 ; [+21]
       36 GETTABLEKS                       R7 R1 K9 ["LookVector"]
       38 GETUPVAL                         R8 4
       39 MOVE                             R9 R4
       40 MOVE                             R10 R6
       41 GETTABLEKS                       R11 R1 K1 ["Position"]
       43 MOVE                             R12 R7
       44 CALL                             R8 4 1
       45 DUPTABLE                         R9 K12 [{"Distance", "Normal", "Position"}]
       46 SUB                              R11 R8 R4
       47 GETTABLEKS                       R10 R11 K13 ["Magnitude"]
       49 SETTABLEKS                       R10 R9 K10 ["Distance"]
       51 SETTABLEKS                       R7 R9 K11 ["Normal"]
       53 SETTABLEKS                       R8 R9 K1 ["Position"]
       55 RETURN                           R9 1
       56 GETUPVAL                         R10 0
       57 GETTABLEKS                       R9 R10 K2 ["BrushSettings"]
       59 GETTABLE                         R8 R0 R9
       60 GETUPVAL                         R10 1
       61 GETTABLEKS                       R9 R10 K7 ["PlaneLock"]
       63 GETTABLE                         R7 R8 R9
       64 GETUPVAL                         R9 3
       65 GETTABLEKS                       R8 R9 K14 ["Manual"]
       67 JUMPIFNOTEQ                      R7 R8 ; [+22]
       69 GETUPVAL                         R7 4
       70 MOVE                             R8 R4
       71 MOVE                             R9 R6
       72 GETTABLEKS                       R10 R5 K1 ["Position"]
       74 GETTABLEKS                       R11 R5 K9 ["LookVector"]
       76 CALL                             R7 4 1
       77 DUPTABLE                         R8 K12 [{"Distance", "Normal", "Position"}]
       78 SUB                              R10 R7 R4
       79 GETTABLEKS                       R9 R10 K13 ["Magnitude"]
       81 SETTABLEKS                       R9 R8 K10 ["Distance"]
       83 GETTABLEKS                       R9 R5 K9 ["LookVector"]
       85 SETTABLEKS                       R9 R8 K11 ["Normal"]
       87 SETTABLEKS                       R7 R8 K1 ["Position"]
       89 RETURN                           R8 1
       90 LOADNIL                          R7
       91 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Util"]
       13 GETTABLEKS                       R2 R3 K8 ["getPlaneIntersection"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R4 K9 ["Types"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K10 ["BrushSettings"]
       25 GETTABLEKS                       R4 R2 K11 ["Category"]
       27 GETTABLEKS                       R5 R2 K12 ["PlaneLock"]
       29 GETTABLEKS                       R6 R2 K13 ["Tool"]
       31 DUPCLOSURE                       R7 K14 [PROTO_0]
       32 CAPTURE                          VAL R4
       33 CAPTURE                          VAL R3
       34 CAPTURE                          VAL R6
       35 CAPTURE                          VAL R5
       36 CAPTURE                          VAL R1
       37 RETURN                           R7 1
