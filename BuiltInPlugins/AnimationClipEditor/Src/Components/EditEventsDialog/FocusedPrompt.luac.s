PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["OnButtonClicked"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["Key"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R4 R0 K0 ["props"]
        2 GETUPVAL                         R7 0
        3 GETTABLEKS                       R6 R7 K1 ["PROMPT_BUTTON_SIZE"]
        5 GETTABLEKS                       R5 R6 K2 ["Y"]
        7 GETUPVAL                         R8 0
        8 GETTABLEKS                       R7 R8 K1 ["PROMPT_BUTTON_SIZE"]
       10 GETTABLEKS                       R6 R7 K3 ["X"]
       12 GETUPVAL                         R8 1
       13 GETTABLEKS                       R7 R8 K4 ["createElement"]
       15 GETUPVAL                         R8 2
       16 DUPTABLE                         R9 K10 [{"Size", "LayoutOrder", "Style", "Text", "OnClick"}]
       17 GETIMPORT                        R10 K13 [UDim2.new]
       19 LOADN                            R11 0
       20 MOVE                             R12 R6
       21 LOADN                            R13 0
       22 MOVE                             R14 R5
       23 CALL                             R10 4 1
       24 SETTABLEKS                       R10 R9 K5 ["Size"]
       26 SETTABLEKS                       R1 R9 K6 ["LayoutOrder"]
       28 GETTABLEKS                       R10 R2 K7 ["Style"]
       30 SETTABLEKS                       R10 R9 K7 ["Style"]
       32 GETTABLEKS                       R10 R2 K8 ["Text"]
       34 SETTABLEKS                       R10 R9 K8 ["Text"]
       36 NEWCLOSURE                       R10 P0
       37 CAPTURE                          VAL R4
       38 CAPTURE                          VAL R2
       39 SETTABLEKS                       R10 R9 K9 ["OnClick"]
       41 CALL                             R7 2 -1
       42 RETURN                           R7 -1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R2 K2 ["dialogTheme"]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R4 R5 K3 ["PROMPT_BUTTON_PADDING"]
        9 GETUPVAL                         R7 0
       10 GETTABLEKS                       R6 R7 K4 ["PROMPT_BUTTON_SIZE"]
       12 GETTABLEKS                       R5 R6 K5 ["Y"]
       14 GETTABLEKS                       R6 R1 K6 ["Buttons"]
       16 GETTABLEKS                       R7 R1 K7 ["PromptText"]
       18 GETTABLEKS                       R8 R1 K8 ["Size"]
       20 JUMPIF                           R8 ; [+3]
       21 GETUPVAL                         R9 0
       22 GETTABLEKS                       R8 R9 K9 ["PROMPT_SIZE"]
       24 LOADNIL                          R9
       25 JUMPIFNOT                        R7 ; [+44]
       26 DUPTABLE                         R10 K10 [{"PromptText"}]
       27 GETUPVAL                         R12 1
       28 GETTABLEKS                       R11 R12 K11 ["createElement"]
       30 LOADK                            R12 K12 ["TextLabel"]
       31 DUPTABLE                         R13 K20 [{"Size", "BackgroundTransparency", "TextSize", "TextColor3", "TextXAlignment", "Font", "Text", "TextWrapped"}]
       32 GETIMPORT                        R14 K23 [UDim2.new]
       34 LOADN                            R15 1
       35 LOADN                            R16 0
       36 LOADN                            R17 1
       37 LOADN                            R18 0
       38 CALL                             R14 4 1
       39 SETTABLEKS                       R14 R13 K8 ["Size"]
       41 LOADN                            R14 1
       42 SETTABLEKS                       R14 R13 K13 ["BackgroundTransparency"]
       44 GETTABLEKS                       R14 R3 K24 ["textSize"]
       46 SETTABLEKS                       R14 R13 K14 ["TextSize"]
       48 GETTABLEKS                       R14 R3 K25 ["textColor"]
       50 SETTABLEKS                       R14 R13 K15 ["TextColor3"]
       52 GETIMPORT                        R14 K28 [Enum.TextXAlignment.Left]
       54 SETTABLEKS                       R14 R13 K16 ["TextXAlignment"]
       56 GETTABLEKS                       R14 R2 K29 ["font"]
       58 SETTABLEKS                       R14 R13 K17 ["Font"]
       60 SETTABLEKS                       R7 R13 K18 ["Text"]
       62 LOADB                            R14 1
       63 SETTABLEKS                       R14 R13 K19 ["TextWrapped"]
       65 CALL                             R11 2 1
       66 SETTABLEKS                       R11 R10 K7 ["PromptText"]
       68 MOVE                             R9 R10
       69 JUMP                             ; [+6]
       70 GETTABLEKS                       R10 R0 K0 ["props"]
       72 GETUPVAL                         R12 1
       73 GETTABLEKS                       R11 R12 K30 ["Children"]
       75 GETTABLE                         R9 R10 R11
       76 DUPTABLE                         R10 K32 [{"Layout"}]
       77 GETUPVAL                         R12 1
       78 GETTABLEKS                       R11 R12 K11 ["createElement"]
       80 LOADK                            R12 K33 ["UIListLayout"]
       81 DUPTABLE                         R13 K38 [{"SortOrder", "FillDirection", "HorizontalAlignment", "Padding"}]
       82 GETIMPORT                        R14 K40 [Enum.SortOrder.LayoutOrder]
       84 SETTABLEKS                       R14 R13 K34 ["SortOrder"]
       86 GETIMPORT                        R14 K42 [Enum.FillDirection.Horizontal]
       88 SETTABLEKS                       R14 R13 K35 ["FillDirection"]
       90 GETIMPORT                        R14 K44 [Enum.HorizontalAlignment.Center]
       92 SETTABLEKS                       R14 R13 K36 ["HorizontalAlignment"]
       94 GETIMPORT                        R14 K46 [UDim.new]
       96 LOADN                            R15 0
       97 MOVE                             R16 R4
       98 CALL                             R14 2 1
       99 SETTABLEKS                       R14 R13 K37 ["Padding"]
      101 CALL                             R11 2 1
      102 SETTABLEKS                       R11 R10 K31 ["Layout"]
      104 GETIMPORT                        R11 K48 [ipairs]
      106 MOVE                             R12 R6
      107 CALL                             R11 1 3
      108 FORGPREP_INEXT                   R11
      109 MOVE                             R17 R10
      110 MOVE                             R20 R14
      111 MOVE                             R21 R15
      112 GETTABLEKS                       R22 R3 K24 ["textSize"]
      114 NAMECALL                         R18 R0 K49 ["renderButton"]
      116 CALL                             R18 4 -1
      117 FASTCALL                         TABLE_INSERT ; [+2]
      118 GETIMPORT                        R16 K52 [table.insert]
      120 CALL                             R16 -1 0
      121 FORGLOOP                         R11 2 [inext] ; [-13]
      123 GETUPVAL                         R12 1
      124 GETTABLEKS                       R11 R12 K11 ["createElement"]
      126 GETUPVAL                         R12 2
      127 NEWTABLE                         R13 0 0
      129 DUPTABLE                         R14 K54 [{"Background"}]
      130 GETUPVAL                         R16 1
      131 GETTABLEKS                       R15 R16 K11 ["createElement"]
      133 LOADK                            R16 K55 ["Frame"]
      134 DUPTABLE                         R17 K58 [{"Size", "BackgroundTransparency", "BorderSizePixel", "BackgroundColor3"}]
      135 GETIMPORT                        R18 K23 [UDim2.new]
      137 LOADN                            R19 1
      138 LOADN                            R20 0
      139 LOADN                            R21 1
      140 LOADN                            R22 0
      141 CALL                             R18 4 1
      142 SETTABLEKS                       R18 R17 K8 ["Size"]
      144 LOADK                            R18 K59 [0.35]
      145 SETTABLEKS                       R18 R17 K13 ["BackgroundTransparency"]
      147 LOADN                            R18 0
      148 SETTABLEKS                       R18 R17 K56 ["BorderSizePixel"]
      150 GETIMPORT                        R18 K61 [Color3.new]
      152 CALL                             R18 0 1
      153 SETTABLEKS                       R18 R17 K57 ["BackgroundColor3"]
      155 DUPTABLE                         R18 K63 [{"CenterFrame"}]
      156 GETUPVAL                         R20 1
      157 GETTABLEKS                       R19 R20 K11 ["createElement"]
      159 LOADK                            R20 K64 ["ImageButton"]
      160 DUPTABLE                         R21 K69 [{"Size", "Position", "AnchorPoint", "BorderSizePixel", "BackgroundColor3", "AutoButtonColor", "ImageTransparency"}]
      161 SETTABLEKS                       R8 R21 K8 ["Size"]
      163 GETIMPORT                        R22 K23 [UDim2.new]
      165 LOADK                            R23 K70 [0.5]
      166 LOADN                            R24 0
      167 LOADK                            R25 K70 [0.5]
      168 LOADN                            R26 0
      169 CALL                             R22 4 1
      170 SETTABLEKS                       R22 R21 K65 ["Position"]
      172 GETIMPORT                        R22 K72 [Vector2.new]
      174 LOADK                            R23 K70 [0.5]
      175 LOADK                            R24 K70 [0.5]
      176 CALL                             R22 2 1
      177 SETTABLEKS                       R22 R21 K66 ["AnchorPoint"]
      179 LOADN                            R22 0
      180 SETTABLEKS                       R22 R21 K56 ["BorderSizePixel"]
      182 GETTABLEKS                       R22 R2 K73 ["backgroundColor"]
      184 SETTABLEKS                       R22 R21 K57 ["BackgroundColor3"]
      186 LOADB                            R22 0
      187 SETTABLEKS                       R22 R21 K67 ["AutoButtonColor"]
      189 LOADN                            R22 1
      190 SETTABLEKS                       R22 R21 K68 ["ImageTransparency"]
      192 DUPTABLE                         R22 K75 [{"Padding", "Container", "Buttons"}]
      193 GETUPVAL                         R24 1
      194 GETTABLEKS                       R23 R24 K11 ["createElement"]
      196 LOADK                            R24 K76 ["UIPadding"]
      197 DUPTABLE                         R25 K81 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
      198 GETIMPORT                        R26 K46 [UDim.new]
      200 LOADN                            R27 0
      201 GETUPVAL                         R29 0
      202 GETTABLEKS                       R28 R29 K82 ["PROMPT_VERTICAL_PADDING"]
      204 CALL                             R26 2 1
      205 SETTABLEKS                       R26 R25 K77 ["PaddingTop"]
      207 GETIMPORT                        R26 K46 [UDim.new]
      209 LOADN                            R27 0
      210 GETUPVAL                         R29 0
      211 GETTABLEKS                       R28 R29 K82 ["PROMPT_VERTICAL_PADDING"]
      213 CALL                             R26 2 1
      214 SETTABLEKS                       R26 R25 K78 ["PaddingBottom"]
      216 GETIMPORT                        R26 K46 [UDim.new]
      218 LOADN                            R27 0
      219 GETUPVAL                         R29 0
      220 GETTABLEKS                       R28 R29 K83 ["PROMPT_HORIZONTAL_PADDING"]
      222 CALL                             R26 2 1
      223 SETTABLEKS                       R26 R25 K79 ["PaddingLeft"]
      225 GETIMPORT                        R26 K46 [UDim.new]
      227 LOADN                            R27 0
      228 GETUPVAL                         R29 0
      229 GETTABLEKS                       R28 R29 K83 ["PROMPT_HORIZONTAL_PADDING"]
      231 CALL                             R26 2 1
      232 SETTABLEKS                       R26 R25 K80 ["PaddingRight"]
      234 CALL                             R23 2 1
      235 SETTABLEKS                       R23 R22 K37 ["Padding"]
      237 GETUPVAL                         R24 1
      238 GETTABLEKS                       R23 R24 K11 ["createElement"]
      240 LOADK                            R24 K55 ["Frame"]
      241 DUPTABLE                         R25 K84 [{"Size", "AnchorPoint", "Position", "BackgroundTransparency"}]
      242 GETIMPORT                        R26 K23 [UDim2.new]
      244 LOADN                            R27 1
      245 LOADN                            R28 0
      246 LOADN                            R29 1
      247 GETUPVAL                         R33 0
      248 GETTABLEKS                       R32 R33 K82 ["PROMPT_VERTICAL_PADDING"]
      250 ADD                              R31 R5 R32
      251 MINUS                            R30 R31
      252 CALL                             R26 4 1
      253 SETTABLEKS                       R26 R25 K8 ["Size"]
      255 GETIMPORT                        R26 K72 [Vector2.new]
      257 LOADK                            R27 K70 [0.5]
      258 LOADN                            R28 0
      259 CALL                             R26 2 1
      260 SETTABLEKS                       R26 R25 K66 ["AnchorPoint"]
      262 GETIMPORT                        R26 K23 [UDim2.new]
      264 LOADK                            R27 K70 [0.5]
      265 LOADN                            R28 0
      266 LOADN                            R29 0
      267 LOADN                            R30 0
      268 CALL                             R26 4 1
      269 SETTABLEKS                       R26 R25 K65 ["Position"]
      271 LOADN                            R26 1
      272 SETTABLEKS                       R26 R25 K13 ["BackgroundTransparency"]
      274 MOVE                             R26 R9
      275 CALL                             R23 3 1
      276 SETTABLEKS                       R23 R22 K74 ["Container"]
      278 GETUPVAL                         R24 1
      279 GETTABLEKS                       R23 R24 K11 ["createElement"]
      281 LOADK                            R24 K55 ["Frame"]
      282 DUPTABLE                         R25 K84 [{"Size", "AnchorPoint", "Position", "BackgroundTransparency"}]
      283 GETIMPORT                        R26 K23 [UDim2.new]
      285 LOADN                            R27 1
      286 LOADN                            R28 0
      287 LOADN                            R29 0
      288 MOVE                             R30 R5
      289 CALL                             R26 4 1
      290 SETTABLEKS                       R26 R25 K8 ["Size"]
      292 GETIMPORT                        R26 K72 [Vector2.new]
      294 LOADK                            R27 K70 [0.5]
      295 LOADN                            R28 1
      296 CALL                             R26 2 1
      297 SETTABLEKS                       R26 R25 K66 ["AnchorPoint"]
      299 GETIMPORT                        R26 K23 [UDim2.new]
      301 LOADK                            R27 K70 [0.5]
      302 LOADN                            R28 0
      303 LOADN                            R29 1
      304 LOADN                            R30 0
      305 CALL                             R26 4 1
      306 SETTABLEKS                       R26 R25 K65 ["Position"]
      308 LOADN                            R26 1
      309 SETTABLEKS                       R26 R25 K13 ["BackgroundTransparency"]
      311 MOVE                             R26 R10
      312 CALL                             R23 3 1
      313 SETTABLEKS                       R23 R22 K6 ["Buttons"]
      315 CALL                             R19 3 1
      316 SETTABLEKS                       R19 R18 K62 ["CenterFrame"]
      318 CALL                             R15 3 1
      319 SETTABLEKS                       R15 R14 K53 ["Background"]
      321 CALL                             R11 3 -1
      322 RETURN                           R11 -1

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
       16 GETTABLEKS                       R5 R0 K8 ["Src"]
       18 GETTABLEKS                       R4 R5 K9 ["Util"]
       20 GETTABLEKS                       R3 R4 K10 ["Constants"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K6 ["Packages"]
       27 GETTABLEKS                       R4 R5 K11 ["Framework"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R5 R3 K12 ["UI"]
       32 GETTABLEKS                       R4 R5 K13 ["Button"]
       34 GETTABLEKS                       R6 R3 K12 ["UI"]
       36 GETTABLEKS                       R5 R6 K14 ["CaptureFocus"]
       38 GETTABLEKS                       R6 R3 K15 ["ContextServices"]
       40 GETTABLEKS                       R7 R6 K16 ["withContext"]
       42 GETTABLEKS                       R8 R1 K17 ["PureComponent"]
       44 LOADK                            R10 K18 ["FocusedPrompt"]
       45 NAMECALL                         R8 R8 K19 ["extend"]
       47 CALL                             R8 2 1
       48 DUPCLOSURE                       R9 K20 [PROTO_1]
       49 CAPTURE                          VAL R2
       50 CAPTURE                          VAL R1
       51 CAPTURE                          VAL R4
       52 SETTABLEKS                       R9 R8 K21 ["renderButton"]
       54 DUPCLOSURE                       R9 K22 [PROTO_2]
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R1
       57 CAPTURE                          VAL R5
       58 SETTABLEKS                       R9 R8 K23 ["render"]
       60 MOVE                             R9 R7
       61 DUPTABLE                         R10 K25 [{"Stylizer"}]
       62 GETTABLEKS                       R11 R6 K24 ["Stylizer"]
       64 SETTABLEKS                       R11 R10 K24 ["Stylizer"]
       66 CALL                             R9 1 1
       67 MOVE                             R10 R8
       68 CALL                             R9 1 1
       69 MOVE                             R8 R9
       70 RETURN                           R8 1
