PROTO_0:
        0 DUPTABLE                         R0 K2 [{"Default", "Loading"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K3 ["createState"]
        4 DUPTABLE                         R2 K8 [{["scale"] = 0, ["transparency"] = 1}]
        5 DUPTABLE                         R3 K10 [{"default", "transparency"}]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K11 ["transition"]
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R5 R5 K0 ["Default"]
       12 DUPTABLE                         R6 K14 [{["duration"] = 0.2}]
       13 CALL                             R4 2 1
       14 SETTABLEKS                       R4 R3 K9 ["default"]
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R4 R4 K11 ["transition"]
       19 DUPTABLE                         R5 K16 [{["easingStyle"], ["duration"] = 0.2}]
       20 GETIMPORT                        R6 K20 [Enum.EasingStyle.Linear]
       22 SETTABLEKS                       R6 R5 K15 ["easingStyle"]
       24 CALL                             R4 1 1
       25 SETTABLEKS                       R4 R3 K6 ["transparency"]
       27 CALL                             R1 2 1
       28 SETTABLEKS                       R1 R0 K0 ["Default"]
       30 GETUPVAL                         R1 0
       31 GETTABLEKS                       R1 R1 K3 ["createState"]
       33 DUPTABLE                         R2 K21 [{["scale"] = 1, ["transparency"] = 0}]
       34 DUPTABLE                         R3 K10 [{"default", "transparency"}]
       35 GETUPVAL                         R4 0
       36 GETTABLEKS                       R4 R4 K11 ["transition"]
       38 GETUPVAL                         R5 1
       39 GETTABLEKS                       R5 R5 K0 ["Default"]
       41 DUPTABLE                         R6 K24 [{["duration"] = 0.2, ["delay"] = 0.1}]
       42 CALL                             R4 2 1
       43 SETTABLEKS                       R4 R3 K9 ["default"]
       45 GETUPVAL                         R4 0
       46 GETTABLEKS                       R4 R4 K11 ["transition"]
       48 DUPTABLE                         R5 K16 [{["easingStyle"], ["duration"] = 0.2}]
       49 GETIMPORT                        R6 K20 [Enum.EasingStyle.Linear]
       51 SETTABLEKS                       R6 R5 K15 ["easingStyle"]
       53 CALL                             R4 1 1
       54 SETTABLEKS                       R4 R3 K6 ["transparency"]
       56 CALL                             R1 2 1
       57 SETTABLEKS                       R1 R0 K1 ["Loading"]
       59 RETURN                           R0 1

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
       21 DUPCLOSURE                       R5 K10 [PROTO_0]
       22 CAPTURE                          VAL R3
       23 CAPTURE                          VAL R4
       24 RETURN                           R5 1
