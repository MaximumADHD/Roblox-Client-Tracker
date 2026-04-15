PROTO_0:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 DUPTABLE                         R3 K2 [{"Default", "Disabled"}]
        3 GETUPVAL                         R5 1
        4 GETTABLEKS                       R4 R5 K3 ["createState"]
        6 DUPTABLE                         R5 K6 [{"transparency", "textTransparency"}]
        7 ORK                              R6 R0 K7 [0]
        8 SETTABLEKS                       R6 R5 K4 ["transparency"]
       10 ORK                              R6 R0 K7 [0]
       11 SETTABLEKS                       R6 R5 K5 ["textTransparency"]
       13 DUPTABLE                         R6 K10 [{"iconTransparency", "transparency", "default"}]
       14 GETUPVAL                         R8 1
       15 GETTABLEKS                       R7 R8 K11 ["transition"]
       17 GETUPVAL                         R9 2
       18 GETTABLEKS                       R8 R9 K0 ["Default"]
       20 DUPTABLE                         R9 K14 [{"easingStyle", "duration"}]
       21 GETIMPORT                        R10 K18 [Enum.EasingStyle.Linear]
       23 SETTABLEKS                       R10 R9 K12 ["easingStyle"]
       25 GETTABLEKS                       R11 R2 K19 ["Time"]
       27 GETTABLEKS                       R10 R11 K20 ["Time_500"]
       29 SETTABLEKS                       R10 R9 K13 ["duration"]
       31 CALL                             R7 2 1
       32 SETTABLEKS                       R7 R6 K8 ["iconTransparency"]
       34 GETUPVAL                         R8 1
       35 GETTABLEKS                       R7 R8 K11 ["transition"]
       37 DUPTABLE                         R8 K14 [{"easingStyle", "duration"}]
       38 GETIMPORT                        R9 K18 [Enum.EasingStyle.Linear]
       40 SETTABLEKS                       R9 R8 K12 ["easingStyle"]
       42 GETTABLEKS                       R10 R2 K19 ["Time"]
       44 GETTABLEKS                       R9 R10 K21 ["Time_200"]
       46 SETTABLEKS                       R9 R8 K13 ["duration"]
       48 CALL                             R7 1 1
       49 SETTABLEKS                       R7 R6 K4 ["transparency"]
       51 GETUPVAL                         R8 1
       52 GETTABLEKS                       R7 R8 K11 ["transition"]
       54 GETUPVAL                         R9 2
       55 GETTABLEKS                       R8 R9 K0 ["Default"]
       57 DUPTABLE                         R9 K22 [{"duration"}]
       58 GETTABLEKS                       R11 R2 K19 ["Time"]
       60 GETTABLEKS                       R10 R11 K21 ["Time_200"]
       62 SETTABLEKS                       R10 R9 K13 ["duration"]
       64 CALL                             R7 2 1
       65 SETTABLEKS                       R7 R6 K9 ["default"]
       67 CALL                             R4 2 1
       68 SETTABLEKS                       R4 R3 K0 ["Default"]
       70 GETUPVAL                         R5 1
       71 GETTABLEKS                       R4 R5 K3 ["createState"]
       73 DUPTABLE                         R5 K6 [{"transparency", "textTransparency"}]
       74 SETTABLEKS                       R1 R5 K4 ["transparency"]
       76 SETTABLEKS                       R1 R5 K5 ["textTransparency"]
       78 DUPTABLE                         R6 K23 [{"default"}]
       79 GETUPVAL                         R8 1
       80 GETTABLEKS                       R7 R8 K11 ["transition"]
       82 DUPTABLE                         R8 K14 [{"easingStyle", "duration"}]
       83 GETIMPORT                        R9 K18 [Enum.EasingStyle.Linear]
       85 SETTABLEKS                       R9 R8 K12 ["easingStyle"]
       87 GETTABLEKS                       R10 R2 K19 ["Time"]
       89 GETTABLEKS                       R9 R10 K24 ["Time_100"]
       91 SETTABLEKS                       R9 R8 K13 ["duration"]
       93 CALL                             R7 1 1
       94 SETTABLEKS                       R7 R6 K9 ["default"]
       96 CALL                             R4 2 1
       97 SETTABLEKS                       R4 R3 K1 ["Disabled"]
       99 RETURN                           R3 1

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
       16 GETTABLEKS                       R6 R0 K8 ["Providers"]
       18 GETTABLEKS                       R5 R6 K9 ["Style"]
       20 GETTABLEKS                       R4 R5 K10 ["useTokens"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R5 R1 K11 ["Motion"]
       27 CALL                             R4 1 1
       28 GETTABLEKS                       R5 R4 K12 ["TransitionPreset"]
       30 DUPCLOSURE                       R6 K13 [PROTO_0]
       31 CAPTURE                          VAL R3
       32 CAPTURE                          VAL R4
       33 CAPTURE                          VAL R5
       34 RETURN                           R6 1
