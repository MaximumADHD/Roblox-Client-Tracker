PROTO_0:
        0 DUPTABLE                         R0 K2 [{"Default", "Loading"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K3 ["createState"]
        4 DUPTABLE                         R2 K6 [{"scale", "transparency"}]
        5 LOADN                            R3 0
        6 SETTABLEKS                       R3 R2 K4 ["scale"]
        8 LOADN                            R3 1
        9 SETTABLEKS                       R3 R2 K5 ["transparency"]
       11 DUPTABLE                         R3 K8 [{"default", "transparency"}]
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R4 R5 K9 ["transition"]
       15 GETUPVAL                         R6 1
       16 GETTABLEKS                       R5 R6 K0 ["Default"]
       18 DUPTABLE                         R6 K11 [{"duration"}]
       19 LOADK                            R7 K12 [0.2]
       20 SETTABLEKS                       R7 R6 K10 ["duration"]
       22 CALL                             R4 2 1
       23 SETTABLEKS                       R4 R3 K7 ["default"]
       25 GETUPVAL                         R5 0
       26 GETTABLEKS                       R4 R5 K9 ["transition"]
       28 DUPTABLE                         R5 K14 [{"easingStyle", "duration"}]
       29 GETIMPORT                        R6 K18 [Enum.EasingStyle.Linear]
       31 SETTABLEKS                       R6 R5 K13 ["easingStyle"]
       33 LOADK                            R6 K12 [0.2]
       34 SETTABLEKS                       R6 R5 K10 ["duration"]
       36 CALL                             R4 1 1
       37 SETTABLEKS                       R4 R3 K5 ["transparency"]
       39 CALL                             R1 2 1
       40 SETTABLEKS                       R1 R0 K0 ["Default"]
       42 GETUPVAL                         R2 0
       43 GETTABLEKS                       R1 R2 K3 ["createState"]
       45 DUPTABLE                         R2 K6 [{"scale", "transparency"}]
       46 LOADN                            R3 1
       47 SETTABLEKS                       R3 R2 K4 ["scale"]
       49 LOADN                            R3 0
       50 SETTABLEKS                       R3 R2 K5 ["transparency"]
       52 DUPTABLE                         R3 K8 [{"default", "transparency"}]
       53 GETUPVAL                         R5 0
       54 GETTABLEKS                       R4 R5 K9 ["transition"]
       56 GETUPVAL                         R6 1
       57 GETTABLEKS                       R5 R6 K0 ["Default"]
       59 DUPTABLE                         R6 K20 [{"duration", "delay"}]
       60 LOADK                            R7 K12 [0.2]
       61 SETTABLEKS                       R7 R6 K10 ["duration"]
       63 LOADK                            R7 K21 [0.1]
       64 SETTABLEKS                       R7 R6 K19 ["delay"]
       66 CALL                             R4 2 1
       67 SETTABLEKS                       R4 R3 K7 ["default"]
       69 GETUPVAL                         R5 0
       70 GETTABLEKS                       R4 R5 K9 ["transition"]
       72 DUPTABLE                         R5 K14 [{"easingStyle", "duration"}]
       73 GETIMPORT                        R6 K18 [Enum.EasingStyle.Linear]
       75 SETTABLEKS                       R6 R5 K13 ["easingStyle"]
       77 LOADK                            R6 K12 [0.2]
       78 SETTABLEKS                       R6 R5 K10 ["duration"]
       80 CALL                             R4 1 1
       81 SETTABLEKS                       R4 R3 K5 ["transparency"]
       83 CALL                             R1 2 1
       84 SETTABLEKS                       R1 R0 K1 ["Loading"]
       86 RETURN                           R0 1

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
