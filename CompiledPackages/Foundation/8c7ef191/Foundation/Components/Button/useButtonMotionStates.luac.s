PROTO_0:
        0 DUPTABLE                         R2 K3 [{"Default", "Loading", "Disabled"}]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R3 R3 K4 ["createState"]
        4 DUPTABLE                         R4 K8 [{"transparency", "textTransparency", "iconScale"}]
        5 ORK                              R5 R0 K9 [0]
        6 SETTABLEKS                       R5 R4 K5 ["transparency"]
        8 ORK                              R5 R0 K9 [0]
        9 SETTABLEKS                       R5 R4 K6 ["textTransparency"]
       11 LOADN                            R5 1
       12 SETTABLEKS                       R5 R4 K7 ["iconScale"]
       14 DUPTABLE                         R5 K12 [{"iconTransparency", "transparency", "default"}]
       15 GETUPVAL                         R6 0
       16 GETTABLEKS                       R6 R6 K13 ["transition"]
       18 GETUPVAL                         R7 1
       19 GETTABLEKS                       R7 R7 K0 ["Default"]
       21 DUPTABLE                         R8 K16 [{"easingStyle", "duration"}]
       22 GETIMPORT                        R9 K20 [Enum.EasingStyle.Linear]
       24 SETTABLEKS                       R9 R8 K14 ["easingStyle"]
       26 LOADK                            R9 K21 [0.5]
       27 SETTABLEKS                       R9 R8 K15 ["duration"]
       29 CALL                             R6 2 1
       30 SETTABLEKS                       R6 R5 K10 ["iconTransparency"]
       32 GETUPVAL                         R6 0
       33 GETTABLEKS                       R6 R6 K13 ["transition"]
       35 DUPTABLE                         R7 K16 [{"easingStyle", "duration"}]
       36 GETIMPORT                        R8 K20 [Enum.EasingStyle.Linear]
       38 SETTABLEKS                       R8 R7 K14 ["easingStyle"]
       40 LOADK                            R8 K22 [0.2]
       41 SETTABLEKS                       R8 R7 K15 ["duration"]
       43 CALL                             R6 1 1
       44 SETTABLEKS                       R6 R5 K5 ["transparency"]
       46 GETUPVAL                         R6 0
       47 GETTABLEKS                       R6 R6 K13 ["transition"]
       49 GETUPVAL                         R7 1
       50 GETTABLEKS                       R7 R7 K0 ["Default"]
       52 DUPTABLE                         R8 K23 [{"duration"}]
       53 LOADK                            R9 K22 [0.2]
       54 SETTABLEKS                       R9 R8 K15 ["duration"]
       56 CALL                             R6 2 1
       57 SETTABLEKS                       R6 R5 K11 ["default"]
       59 CALL                             R3 2 1
       60 SETTABLEKS                       R3 R2 K0 ["Default"]
       62 GETUPVAL                         R3 0
       63 GETTABLEKS                       R3 R3 K4 ["createState"]
       65 DUPTABLE                         R4 K24 [{"transparency", "textTransparency", "iconTransparency", "iconScale"}]
       66 LOADN                            R5 0
       67 SETTABLEKS                       R5 R4 K5 ["transparency"]
       69 LOADN                            R5 1
       70 SETTABLEKS                       R5 R4 K6 ["textTransparency"]
       72 LOADN                            R5 1
       73 SETTABLEKS                       R5 R4 K10 ["iconTransparency"]
       75 LOADN                            R5 0
       76 SETTABLEKS                       R5 R4 K7 ["iconScale"]
       78 DUPTABLE                         R5 K25 [{"iconTransparency", "default"}]
       79 GETUPVAL                         R6 0
       80 GETTABLEKS                       R6 R6 K13 ["transition"]
       82 GETUPVAL                         R7 1
       83 GETTABLEKS                       R7 R7 K0 ["Default"]
       85 DUPTABLE                         R8 K16 [{"easingStyle", "duration"}]
       86 GETIMPORT                        R9 K20 [Enum.EasingStyle.Linear]
       88 SETTABLEKS                       R9 R8 K14 ["easingStyle"]
       90 LOADK                            R9 K22 [0.2]
       91 SETTABLEKS                       R9 R8 K15 ["duration"]
       93 CALL                             R6 2 1
       94 SETTABLEKS                       R6 R5 K10 ["iconTransparency"]
       96 GETUPVAL                         R6 0
       97 GETTABLEKS                       R6 R6 K13 ["transition"]
       99 GETUPVAL                         R7 1
      100 GETTABLEKS                       R7 R7 K0 ["Default"]
      102 DUPTABLE                         R8 K23 [{"duration"}]
      103 LOADK                            R9 K22 [0.2]
      104 SETTABLEKS                       R9 R8 K15 ["duration"]
      106 CALL                             R6 2 1
      107 SETTABLEKS                       R6 R5 K11 ["default"]
      109 CALL                             R3 2 1
      110 SETTABLEKS                       R3 R2 K1 ["Loading"]
      112 GETUPVAL                         R3 0
      113 GETTABLEKS                       R3 R3 K4 ["createState"]
      115 DUPTABLE                         R4 K26 [{"transparency", "textTransparency"}]
      116 SETTABLEKS                       R1 R4 K5 ["transparency"]
      118 SETTABLEKS                       R1 R4 K6 ["textTransparency"]
      120 DUPTABLE                         R5 K27 [{"default"}]
      121 GETUPVAL                         R6 0
      122 GETTABLEKS                       R6 R6 K13 ["transition"]
      124 DUPTABLE                         R7 K16 [{"easingStyle", "duration"}]
      125 GETIMPORT                        R8 K20 [Enum.EasingStyle.Linear]
      127 SETTABLEKS                       R8 R7 K14 ["easingStyle"]
      129 LOADK                            R8 K28 [0.1]
      130 SETTABLEKS                       R8 R7 K15 ["duration"]
      132 CALL                             R6 1 1
      133 SETTABLEKS                       R6 R5 K11 ["default"]
      135 CALL                             R3 2 1
      136 SETTABLEKS                       R3 R2 K2 ["Disabled"]
      138 RETURN                           R2 1

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
