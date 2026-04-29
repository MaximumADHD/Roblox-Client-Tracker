MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["Dash"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K8 ["join"]
       18 GETIMPORT                        R3 K6 [require]
       20 GETTABLEKS                       R5 R0 K9 ["Style"]
       22 GETTABLEKS                       R4 R5 K10 ["StyleKey"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R6 R0 K11 ["Util"]
       29 GETTABLEKS                       R5 R6 K12 ["StyleModifier"]
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
       75 DUPTABLE                         R10 K27 [{"Image", "SliceCenter"}]
       76 LOADK                            R11 K28 ["rbxasset://textures/StudioToolbox/RoundedBackground.png"]
       77 SETTABLEKS                       R11 R10 K25 ["Image"]
       79 GETIMPORT                        R11 K31 [Rect.new]
       81 LOADN                            R12 3
       82 LOADN                            R13 3
       83 LOADN                            R14 13
       84 LOADN                            R15 13
       85 CALL                             R11 4 1
       86 SETTABLEKS                       R11 R10 K26 ["SliceCenter"]
       88 CALL                             R8 2 1
       89 MOVE                             R9 R2
       90 MOVE                             R10 R8
       91 DUPTABLE                         R11 K22 [{"Border"}]
       92 DUPTABLE                         R12 K32 [{"Background", "Image", "SliceCenter"}]
       93 GETTABLEKS                       R13 R3 K21 ["Border"]
       95 SETTABLEKS                       R13 R12 K14 ["Background"]
       97 LOADK                            R13 K33 ["rbxasset://textures/StudioToolbox/RoundedBorder.png"]
       98 SETTABLEKS                       R13 R12 K25 ["Image"]
      100 GETIMPORT                        R13 K31 [Rect.new]
      102 LOADN                            R14 3
      103 LOADN                            R15 3
      104 LOADN                            R16 13
      105 LOADN                            R17 13
      106 CALL                             R13 4 1
      107 SETTABLEKS                       R13 R12 K26 ["SliceCenter"]
      109 SETTABLEKS                       R12 R11 K21 ["Border"]
      111 CALL                             R9 2 1
      112 MOVE                             R10 R2
      113 MOVE                             R11 R5
      114 DUPTABLE                         R12 K35 [{"CornerRadius"}]
      115 GETIMPORT                        R13 K37 [UDim.new]
      117 LOADN                            R14 0
      118 LOADN                            R15 4
      119 CALL                             R13 2 1
      120 SETTABLEKS                       R13 R12 K34 ["CornerRadius"]
      122 CALL                             R10 2 1
      123 MOVE                             R11 R2
      124 MOVE                             R12 R9
      125 DUPTABLE                         R13 K16 [{"Background"}]
      126 GETTABLEKS                       R14 R3 K38 ["InputFieldBackground"]
      128 SETTABLEKS                       R14 R13 K14 ["Background"]
      130 CALL                             R11 2 1
      131 MOVE                             R12 R2
      132 MOVE                             R13 R9
      133 DUPTABLE                         R14 K40 [{"BorderColor"}]
      134 GETTABLEKS                       R15 R3 K41 ["ErrorText"]
      136 SETTABLEKS                       R15 R14 K39 ["BorderColor"]
      138 CALL                             R12 2 1
      139 NEWTABLE                         R13 16 0
      141 DUPTABLE                         R14 K43 [{"Transparency"}]
      142 LOADN                            R15 1
      143 SETTABLEKS                       R15 R14 K42 ["Transparency"]
      145 SETTABLEKS                       R14 R13 K44 ["&None"]
      147 SETTABLEKS                       R5 R13 K45 ["&Box"]
      149 SETTABLEKS                       R6 R13 K46 ["&SubtleBox"]
      151 SETTABLEKS                       R7 R13 K47 ["&SubtleBorderBox"]
      153 SETTABLEKS                       R8 R13 K48 ["&RoundBox"]
      155 SETTABLEKS                       R11 R13 K49 ["&InputBox"]
      157 SETTABLEKS                       R9 R13 K50 ["&BorderBox"]
      159 SETTABLEKS                       R12 R13 K51 ["&ErrorBorderBox"]
      161 SETTABLEKS                       R10 R13 K52 ["&CornerBox"]
      163 RETURN                           R13 1
