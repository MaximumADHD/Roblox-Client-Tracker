PROTO_0:
        0 DUPTABLE                         R2 K3 [{"Hidden", "Idle", "Dragging"}]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R3 R3 K4 ["createState"]
        4 DUPTABLE                         R4 K8 [{["transparency"] = 1, ["knobStyle"]}]
        5 DUPTABLE                         R5 K11 [{["Color3"], ["Transparency"] = 1}]
        6 GETTABLEKS                       R6 R0 K9 ["Color3"]
        8 SETTABLEKS                       R6 R5 K9 ["Color3"]
       10 SETTABLEKS                       R5 R4 K7 ["knobStyle"]
       12 DUPTABLE                         R5 K13 [{"default"}]
       13 GETUPVAL                         R6 0
       14 GETTABLEKS                       R6 R6 K14 ["transition"]
       16 GETUPVAL                         R7 1
       17 GETTABLEKS                       R7 R7 K15 ["Default"]
       19 DUPTABLE                         R8 K18 [{["duration"] = 0.15}]
       20 CALL                             R6 2 1
       21 SETTABLEKS                       R6 R5 K12 ["default"]
       23 CALL                             R3 2 1
       24 SETTABLEKS                       R3 R2 K0 ["Hidden"]
       26 GETUPVAL                         R3 0
       27 GETTABLEKS                       R3 R3 K4 ["createState"]
       29 DUPTABLE                         R4 K20 [{["transparency"] = 0, ["knobStyle"]}]
       30 SETTABLEKS                       R0 R4 K7 ["knobStyle"]
       32 DUPTABLE                         R5 K13 [{"default"}]
       33 GETUPVAL                         R6 0
       34 GETTABLEKS                       R6 R6 K14 ["transition"]
       36 GETUPVAL                         R7 1
       37 GETTABLEKS                       R7 R7 K15 ["Default"]
       39 DUPTABLE                         R8 K18 [{["duration"] = 0.15}]
       40 CALL                             R6 2 1
       41 SETTABLEKS                       R6 R5 K12 ["default"]
       43 CALL                             R3 2 1
       44 SETTABLEKS                       R3 R2 K1 ["Idle"]
       46 GETUPVAL                         R3 0
       47 GETTABLEKS                       R3 R3 K4 ["createState"]
       49 DUPTABLE                         R4 K20 [{["transparency"] = 0, ["knobStyle"]}]
       50 SETTABLEKS                       R1 R4 K7 ["knobStyle"]
       52 DUPTABLE                         R5 K13 [{"default"}]
       53 GETUPVAL                         R6 0
       54 GETTABLEKS                       R6 R6 K14 ["transition"]
       56 GETUPVAL                         R7 1
       57 GETTABLEKS                       R7 R7 K15 ["Default"]
       59 DUPTABLE                         R8 K22 [{["duration"] = 0.1}]
       60 CALL                             R6 2 1
       61 SETTABLEKS                       R6 R5 K12 ["default"]
       63 CALL                             R3 2 1
       64 SETTABLEKS                       R3 R2 K2 ["Dragging"]
       66 RETURN                           R2 1

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
       23 GETTABLEKS                       R6 R0 K10 ["Components"]
       25 GETTABLEKS                       R6 R6 K11 ["Types"]
       27 CALL                             R5 1 1
       28 DUPCLOSURE                       R6 K12 [PROTO_0]
       29 CAPTURE                          VAL R3
       30 CAPTURE                          VAL R4
       31 RETURN                           R6 1
