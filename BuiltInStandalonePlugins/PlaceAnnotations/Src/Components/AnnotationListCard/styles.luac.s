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
       18 GETTABLEKS                       R2 R1 K7 ["Styling"]
       20 GETTABLEKS                       R2 R2 K8 ["createStyleRule"]
       22 MOVE                             R3 R2
       23 LOADK                            R4 K9 [".Component-AnnotationListCard"]
       24 DUPTABLE                         R5 K18 [{["Size"], ["AutomaticSize"], ["BackgroundColor3"] = "$SemanticColorDivider", ["BackgroundTransparency"] = "$SemanticColorDividerTransparency", ["BorderSizePixel"] = 0}]
       25 GETIMPORT                        R6 K21 [UDim2.fromScale]
       27 LOADN                            R7 1
       28 LOADN                            R8 0
       29 CALL                             R6 2 1
       30 SETTABLEKS                       R6 R5 K10 ["Size"]
       32 GETIMPORT                        R6 K24 [Enum.AutomaticSize.Y]
       34 SETTABLEKS                       R6 R5 K11 ["AutomaticSize"]
       36 NEWTABLE                         R6 0 2
       38 MOVE                             R7 R2
       39 LOADK                            R8 K25 ["::UIPadding"]
       40 DUPTABLE                         R9 K27 [{"PaddingBottom"}]
       41 GETIMPORT                        R10 K30 [UDim.new]
       43 LOADN                            R11 0
       44 LOADN                            R12 1
       45 CALL                             R10 2 1
       46 SETTABLEKS                       R10 R9 K26 ["PaddingBottom"]
       48 CALL                             R7 2 1
       49 MOVE                             R8 R2
       50 LOADK                            R9 K31 ["> #BackgroundFrame"]
       51 DUPTABLE                         R10 K32 [{["Size"], ["AutomaticSize"], ["BorderSizePixel"] = 0}]
       52 GETIMPORT                        R11 K21 [UDim2.fromScale]
       54 LOADN                            R12 1
       55 LOADN                            R13 0
       56 CALL                             R11 2 1
       57 SETTABLEKS                       R11 R10 K10 ["Size"]
       59 GETIMPORT                        R11 K24 [Enum.AutomaticSize.Y]
       61 SETTABLEKS                       R11 R10 K11 ["AutomaticSize"]
       63 NEWTABLE                         R11 0 1
       65 MOVE                             R12 R2
       66 LOADK                            R13 K33 ["> TextButton"]
       67 DUPTABLE                         R14 K35 [{["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["Size"], ["AutomaticSize"]}]
       68 GETIMPORT                        R15 K21 [UDim2.fromScale]
       70 LOADN                            R16 1
       71 LOADN                            R17 0
       72 CALL                             R15 2 1
       73 SETTABLEKS                       R15 R14 K10 ["Size"]
       75 GETIMPORT                        R15 K24 [Enum.AutomaticSize.Y]
       77 SETTABLEKS                       R15 R14 K11 ["AutomaticSize"]
       79 NEWTABLE                         R15 0 5
       81 MOVE                             R16 R2
       82 LOADK                            R17 K25 ["::UIPadding"]
       83 DUPTABLE                         R18 K39 [{"PaddingTop", "PaddingLeft", "PaddingBottom", "PaddingRight"}]
       84 GETIMPORT                        R19 K30 [UDim.new]
       86 LOADN                            R20 0
       87 LOADN                            R21 11
       88 CALL                             R19 2 1
       89 SETTABLEKS                       R19 R18 K36 ["PaddingTop"]
       91 GETIMPORT                        R19 K30 [UDim.new]
       93 LOADN                            R20 0
       94 LOADN                            R21 15
       95 CALL                             R19 2 1
       96 SETTABLEKS                       R19 R18 K37 ["PaddingLeft"]
       98 GETIMPORT                        R19 K30 [UDim.new]
      100 LOADN                            R20 0
      101 LOADN                            R21 15
      102 CALL                             R19 2 1
      103 SETTABLEKS                       R19 R18 K26 ["PaddingBottom"]
      105 GETIMPORT                        R19 K30 [UDim.new]
      107 LOADN                            R20 0
      108 LOADN                            R21 8
      109 CALL                             R19 2 1
      110 SETTABLEKS                       R19 R18 K38 ["PaddingRight"]
      112 CALL                             R16 2 1
      113 MOVE                             R17 R2
      114 LOADK                            R18 K40 [":press"]
      115 DUPTABLE                         R19 K43 [{["BackgroundColor3"] = "$Shift200Color", ["BackgroundTransparency"] = "$Shift200Transparency"}]
      116 CALL                             R17 2 1
      117 MOVE                             R18 R2
      118 LOADK                            R19 K44 [".Hovered"]
      119 DUPTABLE                         R20 K46 [{["BackgroundColor3"] = "$Shift200Color", ["BackgroundTransparency"] = "$Shift100Transparency"}]
      120 CALL                             R18 2 1
      121 MOVE                             R19 R2
      122 LOADK                            R20 K47 [".Selected"]
      123 DUPTABLE                         R21 K43 [{["BackgroundColor3"] = "$Shift200Color", ["BackgroundTransparency"] = "$Shift200Transparency"}]
      124 CALL                             R19 2 1
      125 MOVE                             R20 R2
      126 LOADK                            R21 K48 ["> TextLabel"]
      127 DUPTABLE                         R22 K56 [{["TextColor3"] = "$SecondaryContrast", ["TextSize"] = 16, ["Font"] = "$Font", ["TextXAlignment"], ["Size"], ["AutomaticSize"], ["BackgroundTransparency"] = 1}]
      128 GETIMPORT                        R23 K58 [Enum.TextXAlignment.Left]
      130 SETTABLEKS                       R23 R22 K55 ["TextXAlignment"]
      132 GETIMPORT                        R23 K21 [UDim2.fromScale]
      134 LOADN                            R24 1
      135 LOADN                            R25 0
      136 CALL                             R23 2 1
      137 SETTABLEKS                       R23 R22 K10 ["Size"]
      139 GETIMPORT                        R23 K24 [Enum.AutomaticSize.Y]
      141 SETTABLEKS                       R23 R22 K11 ["AutomaticSize"]
      143 NEWTABLE                         R23 0 1
      145 MOVE                             R24 R2
      146 LOADK                            R25 K25 ["::UIPadding"]
      147 DUPTABLE                         R26 K59 [{"PaddingTop", "PaddingLeft"}]
      148 GETIMPORT                        R27 K30 [UDim.new]
      150 LOADN                            R28 0
      151 LOADN                            R29 5
      152 CALL                             R27 2 1
      153 SETTABLEKS                       R27 R26 K36 ["PaddingTop"]
      155 GETIMPORT                        R27 K30 [UDim.new]
      157 LOADN                            R28 0
      158 LOADN                            R29 41
      159 CALL                             R27 2 1
      160 SETTABLEKS                       R27 R26 K37 ["PaddingLeft"]
      162 CALL                             R24 2 -1
      163 SETLIST                          R23 R24 -1 [1]
      165 CALL                             R20 3 -1
      166 SETLIST                          R15 R16 -1 [1]
      168 CALL                             R12 3 -1
      169 SETLIST                          R11 R12 -1 [1]
      171 CALL                             R8 3 -1
      172 SETLIST                          R6 R7 -1 [1]
      174 CALL                             R3 3 -1
      175 RETURN                           R3 -1
