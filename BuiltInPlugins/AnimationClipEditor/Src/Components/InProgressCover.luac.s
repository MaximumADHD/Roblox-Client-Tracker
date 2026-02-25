PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R4 R0 K0 ["props"]
        6 GETTABLEKS                       R3 R4 K2 ["Localization"]
        8 GETTABLEKS                       R4 R1 K3 ["Size"]
       10 JUMPIF                           R4 ; [+3]
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R4 R5 K4 ["PROMPT_SIZE"]
       14 GETIMPORT                        R5 K7 [Vector2.new]
       16 LOADN                            R6 60
       17 LOADN                            R7 15
       18 CALL                             R5 2 1
       19 GETTABLEKS                       R7 R2 K8 ["startScreenTheme"]
       21 GETTABLEKS                       R6 R7 K9 ["textSize"]
       23 GETTABLEKS                       R7 R1 K10 ["Text"]
       25 JUMPIF                           R7 ; [+5]
       26 LOADK                            R9 K11 ["Toast"]
       27 LOADK                            R10 K12 ["ImportingAnimation"]
       28 NAMECALL                         R7 R3 K13 ["getText"]
       30 CALL                             R7 3 1
       31 GETTABLEKS                       R10 R2 K8 ["startScreenTheme"]
       33 GETTABLEKS                       R9 R10 K9 ["textSize"]
       35 ADDK                             R8 R9 K14 [4]
       36 GETUPVAL                         R10 1
       37 GETTABLEKS                       R9 R10 K15 ["createElement"]
       39 GETUPVAL                         R10 2
       40 NEWTABLE                         R11 0 0
       42 DUPTABLE                         R12 K17 [{"Background"}]
       43 GETUPVAL                         R14 1
       44 GETTABLEKS                       R13 R14 K15 ["createElement"]
       46 LOADK                            R14 K18 ["Frame"]
       47 DUPTABLE                         R15 K22 [{"Size", "BackgroundTransparency", "BorderSizePixel", "BackgroundColor3"}]
       48 GETIMPORT                        R16 K24 [UDim2.new]
       50 LOADN                            R17 1
       51 LOADN                            R18 0
       52 LOADN                            R19 1
       53 LOADN                            R20 0
       54 CALL                             R16 4 1
       55 SETTABLEKS                       R16 R15 K3 ["Size"]
       57 LOADK                            R16 K25 [0.35]
       58 SETTABLEKS                       R16 R15 K19 ["BackgroundTransparency"]
       60 LOADN                            R16 0
       61 SETTABLEKS                       R16 R15 K20 ["BorderSizePixel"]
       63 GETIMPORT                        R16 K27 [Color3.new]
       65 CALL                             R16 0 1
       66 SETTABLEKS                       R16 R15 K21 ["BackgroundColor3"]
       68 DUPTABLE                         R16 K29 [{"CenterFrame"}]
       69 GETUPVAL                         R18 1
       70 GETTABLEKS                       R17 R18 K15 ["createElement"]
       72 LOADK                            R18 K30 ["ImageButton"]
       73 DUPTABLE                         R19 K35 [{"Size", "Position", "AnchorPoint", "BorderSizePixel", "BackgroundColor3", "AutoButtonColor", "ImageTransparency"}]
       74 SETTABLEKS                       R4 R19 K3 ["Size"]
       76 GETIMPORT                        R20 K24 [UDim2.new]
       78 LOADK                            R21 K36 [0.5]
       79 LOADN                            R22 0
       80 LOADK                            R23 K36 [0.5]
       81 LOADN                            R24 0
       82 CALL                             R20 4 1
       83 SETTABLEKS                       R20 R19 K31 ["Position"]
       85 GETIMPORT                        R20 K7 [Vector2.new]
       87 LOADK                            R21 K36 [0.5]
       88 LOADK                            R22 K36 [0.5]
       89 CALL                             R20 2 1
       90 SETTABLEKS                       R20 R19 K32 ["AnchorPoint"]
       92 LOADN                            R20 0
       93 SETTABLEKS                       R20 R19 K20 ["BorderSizePixel"]
       95 GETTABLEKS                       R20 R2 K37 ["backgroundColor"]
       97 SETTABLEKS                       R20 R19 K21 ["BackgroundColor3"]
       99 LOADB                            R20 0
      100 SETTABLEKS                       R20 R19 K33 ["AutoButtonColor"]
      102 LOADN                            R20 1
      103 SETTABLEKS                       R20 R19 K34 ["ImageTransparency"]
      105 DUPTABLE                         R20 K40 [{"Padding", "Container"}]
      106 GETUPVAL                         R22 1
      107 GETTABLEKS                       R21 R22 K15 ["createElement"]
      109 LOADK                            R22 K41 ["UIPadding"]
      110 DUPTABLE                         R23 K46 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
      111 GETIMPORT                        R24 K48 [UDim.new]
      113 LOADN                            R25 0
      114 GETUPVAL                         R27 0
      115 GETTABLEKS                       R26 R27 K49 ["PROMPT_VERTICAL_PADDING"]
      117 CALL                             R24 2 1
      118 SETTABLEKS                       R24 R23 K42 ["PaddingTop"]
      120 GETIMPORT                        R24 K48 [UDim.new]
      122 LOADN                            R25 0
      123 GETUPVAL                         R27 0
      124 GETTABLEKS                       R26 R27 K49 ["PROMPT_VERTICAL_PADDING"]
      126 CALL                             R24 2 1
      127 SETTABLEKS                       R24 R23 K43 ["PaddingBottom"]
      129 GETIMPORT                        R24 K48 [UDim.new]
      131 LOADN                            R25 0
      132 GETUPVAL                         R27 0
      133 GETTABLEKS                       R26 R27 K50 ["PROMPT_HORIZONTAL_PADDING"]
      135 CALL                             R24 2 1
      136 SETTABLEKS                       R24 R23 K44 ["PaddingLeft"]
      138 GETIMPORT                        R24 K48 [UDim.new]
      140 LOADN                            R25 0
      141 GETUPVAL                         R27 0
      142 GETTABLEKS                       R26 R27 K50 ["PROMPT_HORIZONTAL_PADDING"]
      144 CALL                             R24 2 1
      145 SETTABLEKS                       R24 R23 K45 ["PaddingRight"]
      147 CALL                             R21 2 1
      148 SETTABLEKS                       R21 R20 K38 ["Padding"]
      150 GETUPVAL                         R22 1
      151 GETTABLEKS                       R21 R22 K15 ["createElement"]
      153 LOADK                            R22 K18 ["Frame"]
      154 DUPTABLE                         R23 K51 [{"Size", "BackgroundTransparency"}]
      155 GETIMPORT                        R24 K24 [UDim2.new]
      157 LOADN                            R25 1
      158 LOADN                            R26 0
      159 LOADN                            R27 1
      160 LOADN                            R28 0
      161 CALL                             R24 4 1
      162 SETTABLEKS                       R24 R23 K3 ["Size"]
      164 LOADN                            R24 1
      165 SETTABLEKS                       R24 R23 K19 ["BackgroundTransparency"]
      167 DUPTABLE                         R24 K54 [{"Layout", "LoadingIndicator", "Text"}]
      168 GETUPVAL                         R26 1
      169 GETTABLEKS                       R25 R26 K15 ["createElement"]
      171 LOADK                            R26 K55 ["UIListLayout"]
      172 DUPTABLE                         R27 K60 [{"SortOrder", "FillDirection", "HorizontalAlignment", "VerticalAlignment", "Padding"}]
      173 GETIMPORT                        R28 K63 [Enum.SortOrder.LayoutOrder]
      175 SETTABLEKS                       R28 R27 K56 ["SortOrder"]
      177 GETIMPORT                        R28 K65 [Enum.FillDirection.Vertical]
      179 SETTABLEKS                       R28 R27 K57 ["FillDirection"]
      181 GETIMPORT                        R28 K67 [Enum.HorizontalAlignment.Center]
      183 SETTABLEKS                       R28 R27 K58 ["HorizontalAlignment"]
      185 GETIMPORT                        R28 K68 [Enum.VerticalAlignment.Center]
      187 SETTABLEKS                       R28 R27 K59 ["VerticalAlignment"]
      189 GETIMPORT                        R28 K48 [UDim.new]
      191 LOADN                            R29 0
      192 GETUPVAL                         R32 0
      193 GETTABLEKS                       R31 R32 K49 ["PROMPT_VERTICAL_PADDING"]
      195 DIVK                             R30 R31 K69 [2]
      196 CALL                             R28 2 1
      197 SETTABLEKS                       R28 R27 K38 ["Padding"]
      199 CALL                             R25 2 1
      200 SETTABLEKS                       R25 R24 K52 ["Layout"]
      202 GETUPVAL                         R26 1
      203 GETTABLEKS                       R25 R26 K15 ["createElement"]
      205 GETUPVAL                         R26 3
      206 DUPTABLE                         R27 K70 [{"Size", "LayoutOrder"}]
      207 GETIMPORT                        R28 K24 [UDim2.new]
      209 LOADN                            R29 0
      210 GETTABLEKS                       R30 R5 K71 ["X"]
      212 LOADN                            R31 0
      213 GETTABLEKS                       R32 R5 K72 ["Y"]
      215 CALL                             R28 4 1
      216 SETTABLEKS                       R28 R27 K3 ["Size"]
      218 LOADN                            R28 1
      219 SETTABLEKS                       R28 R27 K62 ["LayoutOrder"]
      221 CALL                             R25 2 1
      222 SETTABLEKS                       R25 R24 K53 ["LoadingIndicator"]
      224 GETUPVAL                         R26 1
      225 GETTABLEKS                       R25 R26 K15 ["createElement"]
      227 LOADK                            R26 K73 ["TextLabel"]
      228 DUPTABLE                         R27 K80 [{"Size", "Text", "Font", "TextSize", "TextColor3", "TextTruncate", "BackgroundTransparency", "TextXAlignment", "TextYAlignment", "LayoutOrder"}]
      229 GETIMPORT                        R28 K24 [UDim2.new]
      231 LOADN                            R29 1
      232 LOADN                            R30 0
      233 LOADN                            R31 0
      234 MOVE                             R32 R8
      235 CALL                             R28 4 1
      236 SETTABLEKS                       R28 R27 K3 ["Size"]
      238 SETTABLEKS                       R7 R27 K10 ["Text"]
      240 GETTABLEKS                       R28 R2 K81 ["font"]
      242 SETTABLEKS                       R28 R27 K74 ["Font"]
      244 SETTABLEKS                       R6 R27 K75 ["TextSize"]
      246 GETTABLEKS                       R29 R2 K8 ["startScreenTheme"]
      248 GETTABLEKS                       R28 R29 K82 ["darkTextColor"]
      250 SETTABLEKS                       R28 R27 K76 ["TextColor3"]
      252 GETIMPORT                        R28 K84 [Enum.TextTruncate.AtEnd]
      254 SETTABLEKS                       R28 R27 K77 ["TextTruncate"]
      256 LOADN                            R28 1
      257 SETTABLEKS                       R28 R27 K19 ["BackgroundTransparency"]
      259 GETIMPORT                        R28 K85 [Enum.TextXAlignment.Center]
      261 SETTABLEKS                       R28 R27 K78 ["TextXAlignment"]
      263 GETIMPORT                        R28 K86 [Enum.TextYAlignment.Center]
      265 SETTABLEKS                       R28 R27 K79 ["TextYAlignment"]
      267 LOADN                            R28 2
      268 SETTABLEKS                       R28 R27 K62 ["LayoutOrder"]
      270 CALL                             R25 2 1
      271 SETTABLEKS                       R25 R24 K10 ["Text"]
      273 CALL                             R21 3 1
      274 SETTABLEKS                       R21 R20 K39 ["Container"]
      276 CALL                             R17 3 1
      277 SETTABLEKS                       R17 R16 K28 ["CenterFrame"]
      279 CALL                             R13 3 1
      280 SETTABLEKS                       R13 R12 K16 ["Background"]
      282 CALL                             R9 3 -1
      283 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["ContextServices"]
       23 GETTABLEKS                       R4 R3 K10 ["withContext"]
       25 GETTABLEKS                       R6 R2 K11 ["UI"]
       27 GETTABLEKS                       R5 R6 K12 ["CaptureFocus"]
       29 GETIMPORT                        R6 K5 [require]
       31 GETTABLEKS                       R9 R0 K13 ["Src"]
       33 GETTABLEKS                       R8 R9 K14 ["Util"]
       35 GETTABLEKS                       R7 R8 K15 ["Constants"]
       37 CALL                             R6 1 1
       38 GETTABLEKS                       R7 R2 K11 ["UI"]
       40 GETTABLEKS                       R8 R7 K16 ["LoadingIndicator"]
       42 GETTABLEKS                       R9 R1 K17 ["PureComponent"]
       44 LOADK                            R11 K18 ["InProgressCover"]
       45 NAMECALL                         R9 R9 K19 ["extend"]
       47 CALL                             R9 2 1
       48 DUPCLOSURE                       R10 K20 [PROTO_0]
       49 CAPTURE                          VAL R6
       50 CAPTURE                          VAL R1
       51 CAPTURE                          VAL R5
       52 CAPTURE                          VAL R8
       53 SETTABLEKS                       R10 R9 K21 ["render"]
       55 MOVE                             R10 R4
       56 DUPTABLE                         R11 K24 [{"Stylizer", "Localization"}]
       57 GETTABLEKS                       R12 R3 K22 ["Stylizer"]
       59 SETTABLEKS                       R12 R11 K22 ["Stylizer"]
       61 GETTABLEKS                       R12 R3 K23 ["Localization"]
       63 SETTABLEKS                       R12 R11 K23 ["Localization"]
       65 CALL                             R10 1 1
       66 MOVE                             R11 R9
       67 CALL                             R10 1 1
       68 MOVE                             R9 R10
       69 RETURN                           R9 1
