PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["Tool"]
        3 GETTABLEKS                       R3 R0 K1 ["Value"]
        5 GETTABLEKS                       R4 R0 K2 ["Save"]
        7 GETTABLEKS                       R5 R0 K3 ["FromSelf"]
        9 CALL                             R1 4 2
       10 GETTABLEKS                       R4 R0 K1 ["Value"]
       12 GETUPVAL                         R5 1
       13 GETTABLEKS                       R5 R5 K4 ["BrushSettings"]
       15 GETTABLE                         R3 R4 R5
       16 GETUPVAL                         R6 2
       17 GETTABLEKS                       R6 R6 K5 ["PlaneLock"]
       19 GETTABLE                         R5 R3 R6
       20 GETUPVAL                         R6 3
       21 GETTABLEKS                       R6 R6 K6 ["Manual"]
       23 JUMPIFNOTEQ                      R5 R6 ; [+59]
       25 GETUPVAL                         R6 2
       26 GETTABLEKS                       R6 R6 K7 ["ManualPlaneLock"]
       28 GETTABLE                         R5 R3 R6
       29 JUMPIFNOT                        R5 ; [+53]
       30 GETTABLEKS                       R5 R0 K0 ["Tool"]
       32 GETUPVAL                         R6 4
       33 GETTABLEKS                       R6 R6 K8 ["Flatten"]
       35 JUMPIFEQ                         R5 R6 ; [+47]
       37 GETUPVAL                         R4 5
       38 GETTABLEKS                       R4 R4 K9 ["createElement"]
       40 GETUPVAL                         R5 6
       41 NEWTABLE                         R6 0 0
       43 DUPTABLE                         R7 K12 [{"Dragger", "Grid"}]
       44 GETTABLEKS                       R9 R1 K13 ["Mock"]
       46 JUMPIF                           R9 ; [+7]
       47 GETUPVAL                         R8 5
       48 GETTABLEKS                       R8 R8 K9 ["createElement"]
       50 GETUPVAL                         R9 7
       51 MOVE                             R10 R1
       52 CALL                             R8 2 1
       53 JUMP                             ; [+1]
       54 LOADNIL                          R8
       55 SETTABLEKS                       R8 R7 K10 ["Dragger"]
       57 GETUPVAL                         R8 5
       58 GETTABLEKS                       R8 R8 K9 ["createElement"]
       60 GETUPVAL                         R9 8
       61 DUPTABLE                         R10 K17 [{"AlwaysOnTop", "Size", "Transform"}]
       62 GETUPVAL                         R12 2
       63 GETTABLEKS                       R12 R12 K7 ["ManualPlaneLock"]
       65 GETTABLE                         R11 R3 R12
       66 SETTABLEKS                       R11 R10 K14 ["AlwaysOnTop"]
       68 GETUPVAL                         R12 2
       69 GETTABLEKS                       R12 R12 K18 ["BrushSize"]
       71 GETTABLE                         R11 R3 R12
       72 GETTABLEKS                       R11 R11 K15 ["Size"]
       74 SETTABLEKS                       R11 R10 K15 ["Size"]
       76 SETTABLEKS                       R2 R10 K16 ["Transform"]
       78 CALL                             R8 2 1
       79 SETTABLEKS                       R8 R7 K11 ["Grid"]
       81 CALL                             R4 3 1
       82 RETURN                           R4 1
       83 LOADNIL                          R4
       84 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Packages"]
        9 GETTABLEKS                       R1 R1 K5 ["DraggerFramework"]
       11 GETIMPORT                        R2 K7 [require]
       13 GETTABLEKS                       R3 R0 K4 ["Packages"]
       15 GETTABLEKS                       R3 R3 K8 ["Framework"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K7 [require]
       20 GETTABLEKS                       R4 R0 K4 ["Packages"]
       22 GETTABLEKS                       R4 R4 K9 ["React"]
       24 CALL                             R3 1 1
       25 GETTABLEKS                       R4 R2 K10 ["UI"]
       27 GETTABLEKS                       R4 R4 K11 ["Pane"]
       29 GETIMPORT                        R5 K7 [require]
       31 GETTABLEKS                       R6 R1 K12 ["DraggerTools"]
       33 GETTABLEKS                       R6 R6 K13 ["DraggerToolComponent"]
       35 CALL                             R5 1 1
       36 GETTABLEKS                       R6 R0 K14 ["Src"]
       38 GETTABLEKS                       R6 R6 K15 ["Hooks"]
       40 GETIMPORT                        R7 K7 [require]
       42 GETTABLEKS                       R8 R6 K16 ["usePlane"]
       44 CALL                             R7 1 1
       45 GETIMPORT                        R8 K7 [require]
       47 GETTABLEKS                       R9 R0 K14 ["Src"]
       49 GETTABLEKS                       R9 R9 K17 ["Components"]
       51 GETTABLEKS                       R9 R9 K18 ["Gizmos"]
       53 GETTABLEKS                       R9 R9 K19 ["Grid"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K7 [require]
       58 GETTABLEKS                       R10 R0 K14 ["Src"]
       60 GETTABLEKS                       R10 R10 K20 ["Types"]
       62 CALL                             R9 1 1
       63 GETTABLEKS                       R10 R9 K21 ["BrushSettings"]
       65 GETTABLEKS                       R11 R9 K22 ["Category"]
       67 GETTABLEKS                       R12 R9 K23 ["PlaneLock"]
       69 GETTABLEKS                       R13 R9 K24 ["Tool"]
       71 DUPCLOSURE                       R14 K25 [PROTO_0]
       72 CAPTURE                          VAL R7
       73 CAPTURE                          VAL R11
       74 CAPTURE                          VAL R10
       75 CAPTURE                          VAL R12
       76 CAPTURE                          VAL R13
       77 CAPTURE                          VAL R3
       78 CAPTURE                          VAL R4
       79 CAPTURE                          VAL R5
       80 CAPTURE                          VAL R8
       81 RETURN                           R14 1
