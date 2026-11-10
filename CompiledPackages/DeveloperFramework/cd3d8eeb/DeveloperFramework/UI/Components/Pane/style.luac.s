MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Dash"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K8 ["join"]
       18 GETIMPORT                        R3 K6 [require]
       20 GETTABLEKS                       R4 R0 K9 ["Style"]
       22 GETTABLEKS                       R4 R4 K10 ["StyleKey"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R5 R0 K11 ["Util"]
       29 GETTABLEKS                       R5 R5 K12 ["StyleModifier"]
       31 CALL                             R4 1 1
       32 NEWTABLE                         R5 4 0
       34 GETTABLEKS                       R6 R3 K13 ["MainBackground"]
       36 SETTABLEKS                       R6 R5 K14 ["Background"]
       38 GETTABLEKS                       R6 R4 K15 ["Hover"]
       40 DUPTABLE                         R7 K16 [{"Background"}]
       41 GETTABLEKS                       R8 R3 K17 ["ButtonHover"]
       43 SETTABLEKS                       R8 R7 K14 ["Background"]
       45 SETTABLE                         R7 R5 R6
       46 GETTABLEKS                       R6 R4 K18 ["Selected"]
       48 DUPTABLE                         R7 K16 [{"Background"}]
       49 GETTABLEKS                       R8 R3 K19 ["DialogMainButton"]
       51 SETTABLEKS                       R8 R7 K14 ["Background"]
       53 SETTABLE                         R7 R5 R6
       54 MOVE                             R6 R2
       55 MOVE                             R7 R5
       56 DUPTABLE                         R8 K16 [{"Background"}]
       57 GETTABLEKS                       R9 R3 K20 ["SubBackground"]
       59 SETTABLEKS                       R9 R8 K14 ["Background"]
       61 CALL                             R6 2 1
       62 MOVE                             R7 R2
       63 MOVE                             R8 R6
       64 DUPTABLE                         R9 K22 [{"Border"}]
       65 DUPTABLE                         R10 K24 [{"Color"}]
       66 GETTABLEKS                       R11 R3 K21 ["Border"]
       68 SETTABLEKS                       R11 R10 K23 ["Color"]
       70 SETTABLEKS                       R10 R9 K21 ["Border"]
       72 CALL                             R7 2 1
       73 MOVE                             R8 R2
       74 MOVE                             R9 R5
       75 DUPTABLE                         R10 K28 [{["Image"] = "rbxasset://textures/StudioToolbox/RoundedBackground.png", ["SliceCenter"]}]
       76 GETIMPORT                        R11 K31 [Rect.new]
       78 LOADN                            R12 3
       79 LOADN                            R13 3
       80 LOADN                            R14 13
       81 LOADN                            R15 13
       82 CALL                             R11 4 1
       83 SETTABLEKS                       R11 R10 K27 ["SliceCenter"]
       85 CALL                             R8 2 1
       86 MOVE                             R9 R2
       87 MOVE                             R10 R8
       88 DUPTABLE                         R11 K22 [{"Border"}]
       89 DUPTABLE                         R12 K33 [{["Background"], ["Image"] = "rbxasset://textures/StudioToolbox/RoundedBorder.png", ["SliceCenter"]}]
       90 GETTABLEKS                       R13 R3 K21 ["Border"]
       92 SETTABLEKS                       R13 R12 K14 ["Background"]
       94 GETIMPORT                        R13 K31 [Rect.new]
       96 LOADN                            R14 3
       97 LOADN                            R15 3
       98 LOADN                            R16 13
       99 LOADN                            R17 13
      100 CALL                             R13 4 1
      101 SETTABLEKS                       R13 R12 K27 ["SliceCenter"]
      103 SETTABLEKS                       R12 R11 K21 ["Border"]
      105 CALL                             R9 2 1
      106 MOVE                             R10 R2
      107 MOVE                             R11 R5
      108 DUPTABLE                         R12 K35 [{"CornerRadius"}]
      109 GETIMPORT                        R13 K37 [UDim.new]
      111 LOADN                            R14 0
      112 LOADN                            R15 4
      113 CALL                             R13 2 1
      114 SETTABLEKS                       R13 R12 K34 ["CornerRadius"]
      116 CALL                             R10 2 1
      117 MOVE                             R11 R2
      118 MOVE                             R12 R9
      119 DUPTABLE                         R13 K16 [{"Background"}]
      120 GETTABLEKS                       R14 R3 K38 ["InputFieldBackground"]
      122 SETTABLEKS                       R14 R13 K14 ["Background"]
      124 CALL                             R11 2 1
      125 MOVE                             R12 R2
      126 MOVE                             R13 R9
      127 DUPTABLE                         R14 K40 [{"BorderColor"}]
      128 GETTABLEKS                       R15 R3 K41 ["ErrorText"]
      130 SETTABLEKS                       R15 R14 K39 ["BorderColor"]
      132 CALL                             R12 2 1
      133 NEWTABLE                         R13 16 0
      135 DUPTABLE                         R14 K44 [{["Transparency"] = 1}]
      136 SETTABLEKS                       R14 R13 K45 ["&None"]
      138 SETTABLEKS                       R5 R13 K46 ["&Box"]
      140 SETTABLEKS                       R6 R13 K47 ["&SubtleBox"]
      142 SETTABLEKS                       R7 R13 K48 ["&SubtleBorderBox"]
      144 SETTABLEKS                       R8 R13 K49 ["&RoundBox"]
      146 SETTABLEKS                       R11 R13 K50 ["&InputBox"]
      148 SETTABLEKS                       R9 R13 K51 ["&BorderBox"]
      150 SETTABLEKS                       R12 R13 K52 ["&ErrorBorderBox"]
      152 SETTABLEKS                       R10 R13 K53 ["&CornerBox"]
      154 RETURN                           R13 1
