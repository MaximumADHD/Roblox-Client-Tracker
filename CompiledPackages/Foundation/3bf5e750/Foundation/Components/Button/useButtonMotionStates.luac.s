PROTO_0:
        0 DUPTABLE                         R2 K3 [{"Default", "Loading", "Disabled"}]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R3 R3 K4 ["createState"]
        4 DUPTABLE                         R4 K9 [{["transparency"], ["textTransparency"], ["iconScale"] = 1}]
        5 ORK                              R5 R0 K10 [0]
        6 SETTABLEKS                       R5 R4 K5 ["transparency"]
        8 ORK                              R5 R0 K10 [0]
        9 SETTABLEKS                       R5 R4 K6 ["textTransparency"]
       11 DUPTABLE                         R5 K13 [{"iconTransparency", "transparency", "default"}]
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R6 R6 K14 ["transition"]
       15 GETUPVAL                         R7 1
       16 GETTABLEKS                       R7 R7 K0 ["Default"]
       18 DUPTABLE                         R8 K18 [{["easingStyle"], ["duration"] = 0.5}]
       19 GETIMPORT                        R9 K22 [Enum.EasingStyle.Linear]
       21 SETTABLEKS                       R9 R8 K15 ["easingStyle"]
       23 CALL                             R6 2 1
       24 SETTABLEKS                       R6 R5 K11 ["iconTransparency"]
       26 GETUPVAL                         R6 0
       27 GETTABLEKS                       R6 R6 K14 ["transition"]
       29 DUPTABLE                         R7 K24 [{["easingStyle"], ["duration"] = 0.2}]
       30 GETIMPORT                        R8 K22 [Enum.EasingStyle.Linear]
       32 SETTABLEKS                       R8 R7 K15 ["easingStyle"]
       34 CALL                             R6 1 1
       35 SETTABLEKS                       R6 R5 K5 ["transparency"]
       37 GETUPVAL                         R6 0
       38 GETTABLEKS                       R6 R6 K14 ["transition"]
       40 GETUPVAL                         R7 1
       41 GETTABLEKS                       R7 R7 K0 ["Default"]
       43 DUPTABLE                         R8 K25 [{["duration"] = 0.2}]
       44 CALL                             R6 2 1
       45 SETTABLEKS                       R6 R5 K12 ["default"]
       47 CALL                             R3 2 1
       48 SETTABLEKS                       R3 R2 K0 ["Default"]
       50 GETUPVAL                         R3 0
       51 GETTABLEKS                       R3 R3 K4 ["createState"]
       53 DUPTABLE                         R4 K26 [{["transparency"] = 0, ["textTransparency"] = 1, ["iconTransparency"] = 1, ["iconScale"] = 0}]
       54 DUPTABLE                         R5 K27 [{"iconTransparency", "default"}]
       55 GETUPVAL                         R6 0
       56 GETTABLEKS                       R6 R6 K14 ["transition"]
       58 GETUPVAL                         R7 1
       59 GETTABLEKS                       R7 R7 K0 ["Default"]
       61 DUPTABLE                         R8 K24 [{["easingStyle"], ["duration"] = 0.2}]
       62 GETIMPORT                        R9 K22 [Enum.EasingStyle.Linear]
       64 SETTABLEKS                       R9 R8 K15 ["easingStyle"]
       66 CALL                             R6 2 1
       67 SETTABLEKS                       R6 R5 K11 ["iconTransparency"]
       69 GETUPVAL                         R6 0
       70 GETTABLEKS                       R6 R6 K14 ["transition"]
       72 GETUPVAL                         R7 1
       73 GETTABLEKS                       R7 R7 K0 ["Default"]
       75 DUPTABLE                         R8 K25 [{["duration"] = 0.2}]
       76 CALL                             R6 2 1
       77 SETTABLEKS                       R6 R5 K12 ["default"]
       79 CALL                             R3 2 1
       80 SETTABLEKS                       R3 R2 K1 ["Loading"]
       82 GETUPVAL                         R3 0
       83 GETTABLEKS                       R3 R3 K4 ["createState"]
       85 DUPTABLE                         R4 K28 [{"transparency", "textTransparency"}]
       86 SETTABLEKS                       R1 R4 K5 ["transparency"]
       88 SETTABLEKS                       R1 R4 K6 ["textTransparency"]
       90 DUPTABLE                         R5 K29 [{"default"}]
       91 GETUPVAL                         R6 0
       92 GETTABLEKS                       R6 R6 K14 ["transition"]
       94 DUPTABLE                         R7 K31 [{["easingStyle"], ["duration"] = 0.1}]
       95 GETIMPORT                        R8 K22 [Enum.EasingStyle.Linear]
       97 SETTABLEKS                       R8 R7 K15 ["easingStyle"]
       99 CALL                             R6 1 1
      100 SETTABLEKS                       R6 R5 K12 ["default"]
      102 CALL                             R3 2 1
      103 SETTABLEKS                       R3 R2 K2 ["Disabled"]
      105 RETURN                           R2 1

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
