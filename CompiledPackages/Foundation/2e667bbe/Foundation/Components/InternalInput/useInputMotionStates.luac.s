PROTO_0:
        0 GETTABLEKS                       R4 R0 K0 ["Color"]
        2 GETTABLEKS                       R3 R4 K1 ["Content"]
        4 GETTABLEKS                       R2 R3 K2 ["Default"]
        6 GETTABLEKS                       R5 R0 K0 ["Color"]
        8 GETTABLEKS                       R4 R5 K1 ["Content"]
       10 GETTABLEKS                       R3 R4 K3 ["Emphasis"]
       12 MOVE                             R4 R1
       13 JUMPIF                           R4 ; [+6]
       14 GETTABLEKS                       R6 R0 K0 ["Color"]
       16 GETTABLEKS                       R5 R6 K4 ["ActionSubEmphasis"]
       18 GETTABLEKS                       R4 R5 K5 ["Background"]
       20 DUPTABLE                         R5 K8 [{"Default", "Hover", "Checked"}]
       21 GETUPVAL                         R7 0
       22 GETTABLEKS                       R6 R7 K9 ["createState"]
       24 DUPTABLE                         R7 K13 [{"backgroundStyle", "strokeStyle", "labelStyle"}]
       25 DUPTABLE                         R8 K16 [{"Color3", "Transparency"}]
       26 GETTABLEKS                       R9 R2 K14 ["Color3"]
       28 SETTABLEKS                       R9 R8 K14 ["Color3"]
       30 LOADN                            R9 1
       31 SETTABLEKS                       R9 R8 K15 ["Transparency"]
       33 SETTABLEKS                       R8 R7 K10 ["backgroundStyle"]
       35 SETTABLEKS                       R2 R7 K11 ["strokeStyle"]
       37 SETTABLEKS                       R2 R7 K12 ["labelStyle"]
       39 DUPTABLE                         R8 K19 [{"default", "transparency"}]
       40 GETUPVAL                         R10 0
       41 GETTABLEKS                       R9 R10 K20 ["transition"]
       43 GETUPVAL                         R11 1
       44 GETTABLEKS                       R10 R11 K2 ["Default"]
       46 DUPTABLE                         R11 K22 [{"duration"}]
       47 LOADK                            R12 K23 [0.2]
       48 SETTABLEKS                       R12 R11 K21 ["duration"]
       50 CALL                             R9 2 1
       51 SETTABLEKS                       R9 R8 K17 ["default"]
       53 GETUPVAL                         R10 0
       54 GETTABLEKS                       R9 R10 K20 ["transition"]
       56 DUPTABLE                         R10 K25 [{"easingStyle", "duration"}]
       57 GETIMPORT                        R11 K29 [Enum.EasingStyle.Linear]
       59 SETTABLEKS                       R11 R10 K24 ["easingStyle"]
       61 LOADK                            R11 K23 [0.2]
       62 SETTABLEKS                       R11 R10 K21 ["duration"]
       64 CALL                             R9 1 1
       65 SETTABLEKS                       R9 R8 K18 ["transparency"]
       67 CALL                             R6 2 1
       68 SETTABLEKS                       R6 R5 K2 ["Default"]
       70 GETUPVAL                         R7 0
       71 GETTABLEKS                       R6 R7 K9 ["createState"]
       73 DUPTABLE                         R7 K13 [{"backgroundStyle", "strokeStyle", "labelStyle"}]
       74 DUPTABLE                         R8 K16 [{"Color3", "Transparency"}]
       75 GETTABLEKS                       R9 R3 K14 ["Color3"]
       77 SETTABLEKS                       R9 R8 K14 ["Color3"]
       79 LOADN                            R9 1
       80 SETTABLEKS                       R9 R8 K15 ["Transparency"]
       82 SETTABLEKS                       R8 R7 K10 ["backgroundStyle"]
       84 SETTABLEKS                       R3 R7 K11 ["strokeStyle"]
       86 SETTABLEKS                       R3 R7 K12 ["labelStyle"]
       88 DUPTABLE                         R8 K19 [{"default", "transparency"}]
       89 GETUPVAL                         R10 0
       90 GETTABLEKS                       R9 R10 K20 ["transition"]
       92 GETUPVAL                         R11 1
       93 GETTABLEKS                       R10 R11 K2 ["Default"]
       95 DUPTABLE                         R11 K22 [{"duration"}]
       96 LOADN                            R12 0
       97 SETTABLEKS                       R12 R11 K21 ["duration"]
       99 CALL                             R9 2 1
      100 SETTABLEKS                       R9 R8 K17 ["default"]
      102 GETUPVAL                         R10 0
      103 GETTABLEKS                       R9 R10 K20 ["transition"]
      105 DUPTABLE                         R10 K25 [{"easingStyle", "duration"}]
      106 GETIMPORT                        R11 K29 [Enum.EasingStyle.Linear]
      108 SETTABLEKS                       R11 R10 K24 ["easingStyle"]
      110 LOADN                            R11 0
      111 SETTABLEKS                       R11 R10 K21 ["duration"]
      113 CALL                             R9 1 1
      114 SETTABLEKS                       R9 R8 K18 ["transparency"]
      116 CALL                             R6 2 1
      117 SETTABLEKS                       R6 R5 K6 ["Hover"]
      119 GETUPVAL                         R7 0
      120 GETTABLEKS                       R6 R7 K9 ["createState"]
      122 DUPTABLE                         R7 K13 [{"backgroundStyle", "strokeStyle", "labelStyle"}]
      123 SETTABLEKS                       R4 R7 K10 ["backgroundStyle"]
      125 SETTABLEKS                       R4 R7 K11 ["strokeStyle"]
      127 SETTABLEKS                       R3 R7 K12 ["labelStyle"]
      129 DUPTABLE                         R8 K19 [{"default", "transparency"}]
      130 GETUPVAL                         R10 0
      131 GETTABLEKS                       R9 R10 K20 ["transition"]
      133 GETUPVAL                         R11 1
      134 GETTABLEKS                       R10 R11 K2 ["Default"]
      136 DUPTABLE                         R11 K22 [{"duration"}]
      137 LOADK                            R12 K23 [0.2]
      138 SETTABLEKS                       R12 R11 K21 ["duration"]
      140 CALL                             R9 2 1
      141 SETTABLEKS                       R9 R8 K17 ["default"]
      143 GETUPVAL                         R10 0
      144 GETTABLEKS                       R9 R10 K20 ["transition"]
      146 DUPTABLE                         R10 K25 [{"easingStyle", "duration"}]
      147 GETIMPORT                        R11 K29 [Enum.EasingStyle.Linear]
      149 SETTABLEKS                       R11 R10 K24 ["easingStyle"]
      151 LOADK                            R11 K23 [0.2]
      152 SETTABLEKS                       R11 R10 K21 ["duration"]
      154 CALL                             R9 1 1
      155 SETTABLEKS                       R9 R8 K18 ["transparency"]
      157 CALL                             R6 2 1
      158 SETTABLEKS                       R6 R5 K7 ["Checked"]
      160 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R4 R0 K7 ["Components"]
       13 GETTABLEKS                       R3 R4 K8 ["Types"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETTABLEKS                       R6 R0 K9 ["Providers"]
       20 GETTABLEKS                       R5 R6 K10 ["Style"]
       22 GETTABLEKS                       R4 R5 K11 ["Tokens"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R5 R1 K12 ["React"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R6 R1 K13 ["Motion"]
       34 CALL                             R5 1 1
       35 GETTABLEKS                       R6 R5 K14 ["TransitionPreset"]
       37 DUPCLOSURE                       R7 K15 [PROTO_0]
       38 CAPTURE                          VAL R5
       39 CAPTURE                          VAL R6
       40 RETURN                           R7 1
