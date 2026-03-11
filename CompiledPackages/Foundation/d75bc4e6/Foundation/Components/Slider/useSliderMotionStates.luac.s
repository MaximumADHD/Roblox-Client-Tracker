PROTO_0:
        0 DUPTABLE                         R2 K3 [{"Hidden", "Idle", "Dragging"}]
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R3 R4 K4 ["createState"]
        4 DUPTABLE                         R4 K7 [{"transparency", "knobStyle"}]
        5 LOADN                            R5 1
        6 SETTABLEKS                       R5 R4 K5 ["transparency"]
        8 DUPTABLE                         R5 K10 [{"Color3", "Transparency"}]
        9 GETTABLEKS                       R6 R0 K8 ["Color3"]
       11 SETTABLEKS                       R6 R5 K8 ["Color3"]
       13 LOADN                            R6 1
       14 SETTABLEKS                       R6 R5 K9 ["Transparency"]
       16 SETTABLEKS                       R5 R4 K6 ["knobStyle"]
       18 DUPTABLE                         R5 K12 [{"default"}]
       19 GETUPVAL                         R7 0
       20 GETTABLEKS                       R6 R7 K13 ["transition"]
       22 GETUPVAL                         R8 1
       23 GETTABLEKS                       R7 R8 K14 ["Default"]
       25 DUPTABLE                         R8 K16 [{"duration"}]
       26 LOADK                            R9 K17 [0.15]
       27 SETTABLEKS                       R9 R8 K15 ["duration"]
       29 CALL                             R6 2 1
       30 SETTABLEKS                       R6 R5 K11 ["default"]
       32 CALL                             R3 2 1
       33 SETTABLEKS                       R3 R2 K0 ["Hidden"]
       35 GETUPVAL                         R4 0
       36 GETTABLEKS                       R3 R4 K4 ["createState"]
       38 DUPTABLE                         R4 K7 [{"transparency", "knobStyle"}]
       39 LOADN                            R5 0
       40 SETTABLEKS                       R5 R4 K5 ["transparency"]
       42 SETTABLEKS                       R0 R4 K6 ["knobStyle"]
       44 DUPTABLE                         R5 K12 [{"default"}]
       45 GETUPVAL                         R7 0
       46 GETTABLEKS                       R6 R7 K13 ["transition"]
       48 GETUPVAL                         R8 1
       49 GETTABLEKS                       R7 R8 K14 ["Default"]
       51 DUPTABLE                         R8 K16 [{"duration"}]
       52 LOADK                            R9 K17 [0.15]
       53 SETTABLEKS                       R9 R8 K15 ["duration"]
       55 CALL                             R6 2 1
       56 SETTABLEKS                       R6 R5 K11 ["default"]
       58 CALL                             R3 2 1
       59 SETTABLEKS                       R3 R2 K1 ["Idle"]
       61 GETUPVAL                         R4 0
       62 GETTABLEKS                       R3 R4 K4 ["createState"]
       64 DUPTABLE                         R4 K7 [{"transparency", "knobStyle"}]
       65 LOADN                            R5 0
       66 SETTABLEKS                       R5 R4 K5 ["transparency"]
       68 SETTABLEKS                       R1 R4 K6 ["knobStyle"]
       70 DUPTABLE                         R5 K12 [{"default"}]
       71 GETUPVAL                         R7 0
       72 GETTABLEKS                       R6 R7 K13 ["transition"]
       74 GETUPVAL                         R8 1
       75 GETTABLEKS                       R7 R8 K14 ["Default"]
       77 DUPTABLE                         R8 K16 [{"duration"}]
       78 LOADK                            R9 K18 [0.1]
       79 SETTABLEKS                       R9 R8 K15 ["duration"]
       81 CALL                             R6 2 1
       82 SETTABLEKS                       R6 R5 K11 ["default"]
       84 CALL                             R3 2 1
       85 SETTABLEKS                       R3 R2 K2 ["Dragging"]
       87 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Motion"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R4 R3 K9 ["TransitionPreset"]
       21 GETIMPORT                        R5 K6 [require]
       23 GETTABLEKS                       R7 R0 K10 ["Components"]
       25 GETTABLEKS                       R6 R7 K11 ["Types"]
       27 CALL                             R5 1 1
       28 DUPCLOSURE                       R6 K12 [PROTO_0]
       29 CAPTURE                          VAL R3
       30 CAPTURE                          VAL R4
       31 RETURN                           R6 1
