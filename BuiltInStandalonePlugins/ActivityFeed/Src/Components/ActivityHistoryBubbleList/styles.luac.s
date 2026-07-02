MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R2 K6 ["Framework"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K7 ["Src"]
       22 GETTABLEKS                       R3 R3 K8 ["Resources"]
       24 GETTABLEKS                       R3 R3 K9 ["StyleTips"]
       26 CALL                             R2 1 1
       27 GETTABLEKS                       R3 R1 K10 ["Styling"]
       29 GETTABLEKS                       R3 R3 K11 ["createStyleRule"]
       31 GETTABLEKS                       R5 R2 K13 ["smallPadding"]
       33 SUBK                             R4 R5 K12 [1]
       34 GETTABLEKS                       R6 R2 K13 ["smallPadding"]
       36 SUBK                             R5 R6 K14 [2]
       37 GETIMPORT                        R6 K16 [game]
       39 LOADK                            R8 K17 ["ActivityHistoryCompactUI"]
       40 NAMECALL                         R6 R6 K18 ["GetFastFlag"]
       42 CALL                             R6 2 1
       43 MOVE                             R7 R3
       44 LOADK                            R8 K19 [".Component-ActivityHistoryBubbleList"]
       45 NEWTABLE                         R9 0 0
       47 NEWTABLE                         R10 0 3
       49 MOVE                             R11 R3
       50 LOADK                            R12 K20 ["::UIPadding"]
       51 JUMPIFNOT                        R6 ; [+3]
       52 NEWTABLE                         R13 0 0
       54 JUMPIF                           R13 ; [+15]
       55 DUPTABLE                         R13 K23 [{"PaddingTop", "PaddingBottom"}]
       56 GETIMPORT                        R14 K26 [UDim.new]
       58 LOADN                            R15 0
       59 MOVE                             R16 R4
       60 CALL                             R14 2 1
       61 SETTABLEKS                       R14 R13 K21 ["PaddingTop"]
       63 GETIMPORT                        R14 K26 [UDim.new]
       65 LOADN                            R15 0
       66 MOVE                             R16 R4
       67 CALL                             R14 2 1
       68 SETTABLEKS                       R14 R13 K22 ["PaddingBottom"]
       70 CALL                             R11 2 1
       71 MOVE                             R12 R3
       72 LOADK                            R13 K27 [">> .Component-BubbleFrame"]
       73 NEWTABLE                         R14 0 0
       75 JUMPIFNOT                        R6 ; [+3]
       76 NEWTABLE                         R15 0 0
       78 JUMPIF                           R15 ; [+36]
       79 NEWTABLE                         R15 0 1
       81 MOVE                             R16 R3
       82 LOADK                            R17 K20 ["::UIPadding"]
       83 DUPTABLE                         R18 K30 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
       84 GETIMPORT                        R19 K26 [UDim.new]
       86 LOADN                            R20 0
       87 LOADN                            R21 1
       88 CALL                             R19 2 1
       89 SETTABLEKS                       R19 R18 K28 ["PaddingLeft"]
       91 GETIMPORT                        R19 K26 [UDim.new]
       93 LOADN                            R20 0
       94 LOADN                            R21 1
       95 CALL                             R19 2 1
       96 SETTABLEKS                       R19 R18 K29 ["PaddingRight"]
       98 GETIMPORT                        R19 K26 [UDim.new]
      100 LOADN                            R20 0
      101 LOADN                            R21 1
      102 CALL                             R19 2 1
      103 SETTABLEKS                       R19 R18 K21 ["PaddingTop"]
      105 GETIMPORT                        R19 K26 [UDim.new]
      107 LOADN                            R20 0
      108 LOADN                            R21 1
      109 CALL                             R19 2 1
      110 SETTABLEKS                       R19 R18 K22 ["PaddingBottom"]
      112 CALL                             R16 2 -1
      113 SETLIST                          R15 R16 -1 [1]
      115 CALL                             R12 3 1
      116 MOVE                             R13 R3
      117 LOADK                            R14 K31 ["> ScrollingFrame"]
      118 DUPTABLE                         R15 K35 [{["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0}]
      119 NEWTABLE                         R16 0 1
      121 MOVE                             R17 R3
      122 LOADK                            R18 K36 ["> Frame"]
      123 DUPTABLE                         R19 K37 [{["BackgroundTransparency"] = 1}]
      124 NEWTABLE                         R20 0 1
      126 MOVE                             R21 R3
      127 LOADK                            R22 K38 ["::UIListLayout"]
      128 JUMPIFNOT                        R6 ; [+3]
      129 NEWTABLE                         R23 0 0
      131 JUMPIF                           R23 ; [+8]
      132 DUPTABLE                         R23 K40 [{"Padding"}]
      133 GETIMPORT                        R24 K26 [UDim.new]
      135 LOADN                            R25 0
      136 MOVE                             R26 R5
      137 CALL                             R24 2 1
      138 SETTABLEKS                       R24 R23 K39 ["Padding"]
      140 CALL                             R21 2 -1
      141 SETLIST                          R20 R21 -1 [1]
      143 CALL                             R17 3 -1
      144 SETLIST                          R16 R17 -1 [1]
      146 CALL                             R13 3 -1
      147 SETLIST                          R10 R11 -1 [1]
      149 CALL                             R7 3 -1
      150 RETURN                           R7 -1
