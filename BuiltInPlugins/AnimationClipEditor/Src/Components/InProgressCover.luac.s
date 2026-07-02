PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R0 K0 ["props"]
        6 GETTABLEKS                       R3 R3 K2 ["Localization"]
        8 GETTABLEKS                       R4 R1 K3 ["Size"]
       10 JUMPIF                           R4 ; [+3]
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K4 ["PROMPT_SIZE"]
       14 GETIMPORT                        R5 K7 [Vector2.new]
       16 LOADN                            R6 60
       17 LOADN                            R7 15
       18 CALL                             R5 2 1
       19 GETTABLEKS                       R6 R2 K8 ["startScreenTheme"]
       21 GETTABLEKS                       R6 R6 K9 ["textSize"]
       23 GETTABLEKS                       R7 R1 K10 ["Text"]
       25 JUMPIF                           R7 ; [+5]
       26 LOADK                            R9 K11 ["Toast"]
       27 LOADK                            R10 K12 ["ImportingAnimation"]
       28 NAMECALL                         R7 R3 K13 ["getText"]
       30 CALL                             R7 3 1
       31 GETTABLEKS                       R9 R2 K8 ["startScreenTheme"]
       33 GETTABLEKS                       R9 R9 K9 ["textSize"]
       35 ADDK                             R8 R9 K14 [4]
       36 GETUPVAL                         R9 1
       37 GETTABLEKS                       R9 R9 K15 ["createElement"]
       39 GETUPVAL                         R10 2
       40 NEWTABLE                         R11 0 0
       42 DUPTABLE                         R12 K17 [{"Background"}]
       43 GETUPVAL                         R13 1
       44 GETTABLEKS                       R13 R13 K15 ["createElement"]
       46 LOADK                            R14 K18 ["Frame"]
       47 DUPTABLE                         R15 K24 [{["Size"], ["BackgroundTransparency"] = 0.35, ["BorderSizePixel"] = 0, ["BackgroundColor3"]}]
       48 GETIMPORT                        R16 K26 [UDim2.new]
       50 LOADN                            R17 1
       51 LOADN                            R18 0
       52 LOADN                            R19 1
       53 LOADN                            R20 0
       54 CALL                             R16 4 1
       55 SETTABLEKS                       R16 R15 K3 ["Size"]
       57 GETIMPORT                        R16 K28 [Color3.new]
       59 CALL                             R16 0 1
       60 SETTABLEKS                       R16 R15 K23 ["BackgroundColor3"]
       62 DUPTABLE                         R16 K30 [{"CenterFrame"}]
       63 GETUPVAL                         R17 1
       64 GETTABLEKS                       R17 R17 K15 ["createElement"]
       66 LOADK                            R18 K31 ["ImageButton"]
       67 DUPTABLE                         R19 K38 [{["Size"], ["Position"], ["AnchorPoint"], ["BorderSizePixel"] = 0, ["BackgroundColor3"], ["AutoButtonColor"] = False, ["ImageTransparency"] = 1}]
       68 SETTABLEKS                       R4 R19 K3 ["Size"]
       70 GETIMPORT                        R20 K26 [UDim2.new]
       72 LOADK                            R21 K39 [0.5]
       73 LOADN                            R22 0
       74 LOADK                            R23 K39 [0.5]
       75 LOADN                            R24 0
       76 CALL                             R20 4 1
       77 SETTABLEKS                       R20 R19 K32 ["Position"]
       79 GETIMPORT                        R20 K7 [Vector2.new]
       81 LOADK                            R21 K39 [0.5]
       82 LOADK                            R22 K39 [0.5]
       83 CALL                             R20 2 1
       84 SETTABLEKS                       R20 R19 K33 ["AnchorPoint"]
       86 GETTABLEKS                       R20 R2 K40 ["backgroundColor"]
       88 SETTABLEKS                       R20 R19 K23 ["BackgroundColor3"]
       90 DUPTABLE                         R20 K43 [{"Padding", "Container"}]
       91 GETUPVAL                         R21 1
       92 GETTABLEKS                       R21 R21 K15 ["createElement"]
       94 LOADK                            R22 K44 ["UIPadding"]
       95 DUPTABLE                         R23 K49 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
       96 GETIMPORT                        R24 K51 [UDim.new]
       98 LOADN                            R25 0
       99 GETUPVAL                         R26 0
      100 GETTABLEKS                       R26 R26 K52 ["PROMPT_VERTICAL_PADDING"]
      102 CALL                             R24 2 1
      103 SETTABLEKS                       R24 R23 K45 ["PaddingTop"]
      105 GETIMPORT                        R24 K51 [UDim.new]
      107 LOADN                            R25 0
      108 GETUPVAL                         R26 0
      109 GETTABLEKS                       R26 R26 K52 ["PROMPT_VERTICAL_PADDING"]
      111 CALL                             R24 2 1
      112 SETTABLEKS                       R24 R23 K46 ["PaddingBottom"]
      114 GETIMPORT                        R24 K51 [UDim.new]
      116 LOADN                            R25 0
      117 GETUPVAL                         R26 0
      118 GETTABLEKS                       R26 R26 K53 ["PROMPT_HORIZONTAL_PADDING"]
      120 CALL                             R24 2 1
      121 SETTABLEKS                       R24 R23 K47 ["PaddingLeft"]
      123 GETIMPORT                        R24 K51 [UDim.new]
      125 LOADN                            R25 0
      126 GETUPVAL                         R26 0
      127 GETTABLEKS                       R26 R26 K53 ["PROMPT_HORIZONTAL_PADDING"]
      129 CALL                             R24 2 1
      130 SETTABLEKS                       R24 R23 K48 ["PaddingRight"]
      132 CALL                             R21 2 1
      133 SETTABLEKS                       R21 R20 K41 ["Padding"]
      135 GETUPVAL                         R21 1
      136 GETTABLEKS                       R21 R21 K15 ["createElement"]
      138 LOADK                            R22 K18 ["Frame"]
      139 DUPTABLE                         R23 K54 [{["Size"], ["BackgroundTransparency"] = 1}]
      140 GETIMPORT                        R24 K26 [UDim2.new]
      142 LOADN                            R25 1
      143 LOADN                            R26 0
      144 LOADN                            R27 1
      145 LOADN                            R28 0
      146 CALL                             R24 4 1
      147 SETTABLEKS                       R24 R23 K3 ["Size"]
      149 DUPTABLE                         R24 K57 [{"Layout", "LoadingIndicator", "Text"}]
      150 GETUPVAL                         R25 1
      151 GETTABLEKS                       R25 R25 K15 ["createElement"]
      153 LOADK                            R26 K58 ["UIListLayout"]
      154 DUPTABLE                         R27 K63 [{"SortOrder", "FillDirection", "HorizontalAlignment", "VerticalAlignment", "Padding"}]
      155 GETIMPORT                        R28 K66 [Enum.SortOrder.LayoutOrder]
      157 SETTABLEKS                       R28 R27 K59 ["SortOrder"]
      159 GETIMPORT                        R28 K68 [Enum.FillDirection.Vertical]
      161 SETTABLEKS                       R28 R27 K60 ["FillDirection"]
      163 GETIMPORT                        R28 K70 [Enum.HorizontalAlignment.Center]
      165 SETTABLEKS                       R28 R27 K61 ["HorizontalAlignment"]
      167 GETIMPORT                        R28 K71 [Enum.VerticalAlignment.Center]
      169 SETTABLEKS                       R28 R27 K62 ["VerticalAlignment"]
      171 GETIMPORT                        R28 K51 [UDim.new]
      173 LOADN                            R29 0
      174 GETUPVAL                         R31 0
      175 GETTABLEKS                       R31 R31 K52 ["PROMPT_VERTICAL_PADDING"]
      177 DIVK                             R30 R31 K72 [2]
      178 CALL                             R28 2 1
      179 SETTABLEKS                       R28 R27 K41 ["Padding"]
      181 CALL                             R25 2 1
      182 SETTABLEKS                       R25 R24 K55 ["Layout"]
      184 GETUPVAL                         R25 1
      185 GETTABLEKS                       R25 R25 K15 ["createElement"]
      187 GETUPVAL                         R26 3
      188 DUPTABLE                         R27 K73 [{["Size"], ["LayoutOrder"] = 1}]
      189 GETIMPORT                        R28 K26 [UDim2.new]
      191 LOADN                            R29 0
      192 GETTABLEKS                       R30 R5 K74 ["X"]
      194 LOADN                            R31 0
      195 GETTABLEKS                       R32 R5 K75 ["Y"]
      197 CALL                             R28 4 1
      198 SETTABLEKS                       R28 R27 K3 ["Size"]
      200 CALL                             R25 2 1
      201 SETTABLEKS                       R25 R24 K56 ["LoadingIndicator"]
      203 GETUPVAL                         R25 1
      204 GETTABLEKS                       R25 R25 K15 ["createElement"]
      206 LOADK                            R26 K76 ["TextLabel"]
      207 DUPTABLE                         R27 K83 [{["Size"], ["Text"], ["Font"], ["TextSize"], ["TextColor3"], ["TextTruncate"], ["BackgroundTransparency"] = 1, ["TextXAlignment"], ["TextYAlignment"], ["LayoutOrder"] = 2}]
      208 GETIMPORT                        R28 K26 [UDim2.new]
      210 LOADN                            R29 1
      211 LOADN                            R30 0
      212 LOADN                            R31 0
      213 MOVE                             R32 R8
      214 CALL                             R28 4 1
      215 SETTABLEKS                       R28 R27 K3 ["Size"]
      217 SETTABLEKS                       R7 R27 K10 ["Text"]
      219 GETTABLEKS                       R28 R2 K84 ["font"]
      221 SETTABLEKS                       R28 R27 K77 ["Font"]
      223 SETTABLEKS                       R6 R27 K78 ["TextSize"]
      225 GETTABLEKS                       R28 R2 K8 ["startScreenTheme"]
      227 GETTABLEKS                       R28 R28 K85 ["darkTextColor"]
      229 SETTABLEKS                       R28 R27 K79 ["TextColor3"]
      231 GETIMPORT                        R28 K87 [Enum.TextTruncate.AtEnd]
      233 SETTABLEKS                       R28 R27 K80 ["TextTruncate"]
      235 GETIMPORT                        R28 K88 [Enum.TextXAlignment.Center]
      237 SETTABLEKS                       R28 R27 K81 ["TextXAlignment"]
      239 GETIMPORT                        R28 K89 [Enum.TextYAlignment.Center]
      241 SETTABLEKS                       R28 R27 K82 ["TextYAlignment"]
      243 CALL                             R25 2 1
      244 SETTABLEKS                       R25 R24 K10 ["Text"]
      246 CALL                             R21 3 1
      247 SETTABLEKS                       R21 R20 K42 ["Container"]
      249 CALL                             R17 3 1
      250 SETTABLEKS                       R17 R16 K29 ["CenterFrame"]
      252 CALL                             R13 3 1
      253 SETTABLEKS                       R13 R12 K16 ["Background"]
      255 CALL                             R9 3 -1
      256 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["ContextServices"]
       23 GETTABLEKS                       R4 R3 K10 ["withContext"]
       25 GETTABLEKS                       R5 R2 K11 ["UI"]
       27 GETTABLEKS                       R5 R5 K12 ["CaptureFocus"]
       29 GETIMPORT                        R6 K5 [require]
       31 GETTABLEKS                       R7 R0 K13 ["Src"]
       33 GETTABLEKS                       R7 R7 K14 ["Util"]
       35 GETTABLEKS                       R7 R7 K15 ["Constants"]
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
