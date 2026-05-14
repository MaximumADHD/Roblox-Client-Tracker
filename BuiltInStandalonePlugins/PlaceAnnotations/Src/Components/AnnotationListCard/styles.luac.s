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
       24 DUPTABLE                         R5 K15 [{"Size", "AutomaticSize", "BackgroundColor3", "BackgroundTransparency", "BorderSizePixel"}]
       25 GETIMPORT                        R6 K18 [UDim2.fromScale]
       27 LOADN                            R7 1
       28 LOADN                            R8 0
       29 CALL                             R6 2 1
       30 SETTABLEKS                       R6 R5 K10 ["Size"]
       32 GETIMPORT                        R6 K21 [Enum.AutomaticSize.Y]
       34 SETTABLEKS                       R6 R5 K11 ["AutomaticSize"]
       36 LOADK                            R6 K22 ["$SemanticColorDivider"]
       37 SETTABLEKS                       R6 R5 K12 ["BackgroundColor3"]
       39 LOADK                            R6 K23 ["$SemanticColorDividerTransparency"]
       40 SETTABLEKS                       R6 R5 K13 ["BackgroundTransparency"]
       42 LOADN                            R6 0
       43 SETTABLEKS                       R6 R5 K14 ["BorderSizePixel"]
       45 NEWTABLE                         R6 0 2
       47 MOVE                             R7 R2
       48 LOADK                            R8 K24 ["::UIPadding"]
       49 DUPTABLE                         R9 K26 [{"PaddingBottom"}]
       50 GETIMPORT                        R10 K29 [UDim.new]
       52 LOADN                            R11 0
       53 LOADN                            R12 1
       54 CALL                             R10 2 1
       55 SETTABLEKS                       R10 R9 K25 ["PaddingBottom"]
       57 CALL                             R7 2 1
       58 MOVE                             R8 R2
       59 LOADK                            R9 K30 ["> #BackgroundFrame"]
       60 DUPTABLE                         R10 K31 [{"Size", "AutomaticSize", "BorderSizePixel"}]
       61 GETIMPORT                        R11 K18 [UDim2.fromScale]
       63 LOADN                            R12 1
       64 LOADN                            R13 0
       65 CALL                             R11 2 1
       66 SETTABLEKS                       R11 R10 K10 ["Size"]
       68 GETIMPORT                        R11 K21 [Enum.AutomaticSize.Y]
       70 SETTABLEKS                       R11 R10 K11 ["AutomaticSize"]
       72 LOADN                            R11 0
       73 SETTABLEKS                       R11 R10 K14 ["BorderSizePixel"]
       75 NEWTABLE                         R11 0 1
       77 MOVE                             R12 R2
       78 LOADK                            R13 K32 ["> TextButton"]
       79 DUPTABLE                         R14 K33 [{"BackgroundTransparency", "BorderSizePixel", "Size", "AutomaticSize"}]
       80 LOADN                            R15 1
       81 SETTABLEKS                       R15 R14 K13 ["BackgroundTransparency"]
       83 LOADN                            R15 0
       84 SETTABLEKS                       R15 R14 K14 ["BorderSizePixel"]
       86 GETIMPORT                        R15 K18 [UDim2.fromScale]
       88 LOADN                            R16 1
       89 LOADN                            R17 0
       90 CALL                             R15 2 1
       91 SETTABLEKS                       R15 R14 K10 ["Size"]
       93 GETIMPORT                        R15 K21 [Enum.AutomaticSize.Y]
       95 SETTABLEKS                       R15 R14 K11 ["AutomaticSize"]
       97 NEWTABLE                         R15 0 5
       99 MOVE                             R16 R2
      100 LOADK                            R17 K24 ["::UIPadding"]
      101 DUPTABLE                         R18 K37 [{"PaddingTop", "PaddingLeft", "PaddingBottom", "PaddingRight"}]
      102 GETIMPORT                        R19 K29 [UDim.new]
      104 LOADN                            R20 0
      105 LOADN                            R21 11
      106 CALL                             R19 2 1
      107 SETTABLEKS                       R19 R18 K34 ["PaddingTop"]
      109 GETIMPORT                        R19 K29 [UDim.new]
      111 LOADN                            R20 0
      112 LOADN                            R21 15
      113 CALL                             R19 2 1
      114 SETTABLEKS                       R19 R18 K35 ["PaddingLeft"]
      116 GETIMPORT                        R19 K29 [UDim.new]
      118 LOADN                            R20 0
      119 LOADN                            R21 15
      120 CALL                             R19 2 1
      121 SETTABLEKS                       R19 R18 K25 ["PaddingBottom"]
      123 GETIMPORT                        R19 K29 [UDim.new]
      125 LOADN                            R20 0
      126 LOADN                            R21 8
      127 CALL                             R19 2 1
      128 SETTABLEKS                       R19 R18 K36 ["PaddingRight"]
      130 CALL                             R16 2 1
      131 MOVE                             R17 R2
      132 LOADK                            R18 K38 [":press"]
      133 DUPTABLE                         R19 K39 [{"BackgroundColor3", "BackgroundTransparency"}]
      134 LOADK                            R20 K40 ["$Shift200Color"]
      135 SETTABLEKS                       R20 R19 K12 ["BackgroundColor3"]
      137 LOADK                            R20 K41 ["$Shift200Transparency"]
      138 SETTABLEKS                       R20 R19 K13 ["BackgroundTransparency"]
      140 CALL                             R17 2 1
      141 MOVE                             R18 R2
      142 LOADK                            R19 K42 [".Hovered"]
      143 DUPTABLE                         R20 K39 [{"BackgroundColor3", "BackgroundTransparency"}]
      144 LOADK                            R21 K40 ["$Shift200Color"]
      145 SETTABLEKS                       R21 R20 K12 ["BackgroundColor3"]
      147 LOADK                            R21 K43 ["$Shift100Transparency"]
      148 SETTABLEKS                       R21 R20 K13 ["BackgroundTransparency"]
      150 CALL                             R18 2 1
      151 MOVE                             R19 R2
      152 LOADK                            R20 K44 [".Selected"]
      153 DUPTABLE                         R21 K39 [{"BackgroundColor3", "BackgroundTransparency"}]
      154 LOADK                            R22 K40 ["$Shift200Color"]
      155 SETTABLEKS                       R22 R21 K12 ["BackgroundColor3"]
      157 LOADK                            R22 K41 ["$Shift200Transparency"]
      158 SETTABLEKS                       R22 R21 K13 ["BackgroundTransparency"]
      160 CALL                             R19 2 1
      161 MOVE                             R20 R2
      162 LOADK                            R21 K45 ["> TextLabel"]
      163 DUPTABLE                         R22 K50 [{"TextColor3", "TextSize", "Font", "TextXAlignment", "Size", "AutomaticSize", "BackgroundTransparency"}]
      164 LOADK                            R23 K51 ["$SecondaryContrast"]
      165 SETTABLEKS                       R23 R22 K46 ["TextColor3"]
      167 LOADN                            R23 16
      168 SETTABLEKS                       R23 R22 K47 ["TextSize"]
      170 LOADK                            R23 K52 ["$Font"]
      171 SETTABLEKS                       R23 R22 K48 ["Font"]
      173 GETIMPORT                        R23 K54 [Enum.TextXAlignment.Left]
      175 SETTABLEKS                       R23 R22 K49 ["TextXAlignment"]
      177 GETIMPORT                        R23 K18 [UDim2.fromScale]
      179 LOADN                            R24 1
      180 LOADN                            R25 0
      181 CALL                             R23 2 1
      182 SETTABLEKS                       R23 R22 K10 ["Size"]
      184 GETIMPORT                        R23 K21 [Enum.AutomaticSize.Y]
      186 SETTABLEKS                       R23 R22 K11 ["AutomaticSize"]
      188 LOADN                            R23 1
      189 SETTABLEKS                       R23 R22 K13 ["BackgroundTransparency"]
      191 NEWTABLE                         R23 0 1
      193 MOVE                             R24 R2
      194 LOADK                            R25 K24 ["::UIPadding"]
      195 DUPTABLE                         R26 K55 [{"PaddingTop", "PaddingLeft"}]
      196 GETIMPORT                        R27 K29 [UDim.new]
      198 LOADN                            R28 0
      199 LOADN                            R29 5
      200 CALL                             R27 2 1
      201 SETTABLEKS                       R27 R26 K34 ["PaddingTop"]
      203 GETIMPORT                        R27 K29 [UDim.new]
      205 LOADN                            R28 0
      206 LOADN                            R29 41
      207 CALL                             R27 2 1
      208 SETTABLEKS                       R27 R26 K35 ["PaddingLeft"]
      210 CALL                             R24 2 -1
      211 SETLIST                          R23 R24 -1 [1]
      213 CALL                             R20 3 -1
      214 SETLIST                          R15 R16 -1 [1]
      216 CALL                             R12 3 -1
      217 SETLIST                          R11 R12 -1 [1]
      219 CALL                             R8 3 -1
      220 SETLIST                          R6 R7 -1 [1]
      222 CALL                             R3 3 -1
      223 RETURN                           R3 -1
