PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        6 GETTABLEKS                       R3 R3 K3 ["CGEAlert"]
        8 GETTABLEKS                       R4 R1 K4 ["Title"]
       10 GETTABLEKS                       R5 R1 K5 ["Body"]
       12 LOADK                            R8 K6 ["Common"]
       13 LOADK                            R9 K7 ["LearnMore"]
       14 NAMECALL                         R6 R2 K8 ["getText"]
       16 CALL                             R6 3 1
       17 GETUPVAL                         R7 0
       18 GETTABLEKS                       R7 R7 K9 ["createElement"]
       20 GETUPVAL                         R8 1
       21 DUPTABLE                         R9 K17 [{["LayoutOrder"] = 1, ["AutomaticSize"], ["Padding"], ["BackgroundColor3"], ["Size"], ["OnClick"]}]
       22 GETIMPORT                        R10 K20 [Enum.AutomaticSize.Y]
       24 SETTABLEKS                       R10 R9 K12 ["AutomaticSize"]
       26 GETTABLEKS                       R10 R3 K13 ["Padding"]
       28 SETTABLEKS                       R10 R9 K13 ["Padding"]
       30 GETUPVAL                         R10 2
       31 GETTABLEKS                       R10 R10 K21 ["darker"]
       33 GETTABLEKS                       R11 R3 K22 ["BackgroundColor"]
       35 GETTABLEKS                       R12 R3 K23 ["BackgroundColorHoverDarkerMultiplier"]
       37 CALL                             R10 2 1
       38 SETTABLEKS                       R10 R9 K14 ["BackgroundColor3"]
       40 GETIMPORT                        R10 K26 [UDim2.fromScale]
       42 LOADN                            R11 1
       43 LOADN                            R12 0
       44 CALL                             R10 2 1
       45 SETTABLEKS                       R10 R9 K15 ["Size"]
       47 GETTABLEKS                       R10 R1 K16 ["OnClick"]
       49 SETTABLEKS                       R10 R9 K16 ["OnClick"]
       51 DUPTABLE                         R10 K31 [{"UICorner", "UIStroke", "UISizeConstraint", "Inner"}]
       52 GETUPVAL                         R11 0
       53 GETTABLEKS                       R11 R11 K9 ["createElement"]
       55 LOADK                            R12 K27 ["UICorner"]
       56 DUPTABLE                         R13 K33 [{"CornerRadius"}]
       57 GETTABLEKS                       R14 R3 K32 ["CornerRadius"]
       59 SETTABLEKS                       R14 R13 K32 ["CornerRadius"]
       61 CALL                             R11 2 1
       62 SETTABLEKS                       R11 R10 K27 ["UICorner"]
       64 GETUPVAL                         R11 0
       65 GETTABLEKS                       R11 R11 K9 ["createElement"]
       67 LOADK                            R12 K28 ["UIStroke"]
       68 DUPTABLE                         R13 K36 [{"ApplyStrokeMode", "Color"}]
       69 GETIMPORT                        R14 K38 [Enum.ApplyStrokeMode.Border]
       71 SETTABLEKS                       R14 R13 K34 ["ApplyStrokeMode"]
       73 GETTABLEKS                       R14 R3 K39 ["BorderColor"]
       75 SETTABLEKS                       R14 R13 K35 ["Color"]
       77 CALL                             R11 2 1
       78 SETTABLEKS                       R11 R10 K28 ["UIStroke"]
       80 GETUPVAL                         R12 3
       81 JUMPIFNOT                        R12 ; [+14]
       82 GETUPVAL                         R11 0
       83 GETTABLEKS                       R11 R11 K9 ["createElement"]
       85 LOADK                            R12 K29 ["UISizeConstraint"]
       86 DUPTABLE                         R13 K41 [{"MinSize"}]
       87 GETIMPORT                        R14 K44 [Vector2.new]
       89 LOADN                            R15 90
       90 LOADN                            R16 0
       91 CALL                             R14 2 1
       92 SETTABLEKS                       R14 R13 K40 ["MinSize"]
       94 CALL                             R11 2 1
       95 JUMP                             ; [+1]
       96 LOADNIL                          R11
       97 SETTABLEKS                       R11 R10 K29 ["UISizeConstraint"]
       99 GETUPVAL                         R11 0
      100 GETTABLEKS                       R11 R11 K9 ["createElement"]
      102 GETUPVAL                         R12 1
      103 DUPTABLE                         R13 K48 [{"AutomaticSize", "Padding", "Spacing", "Layout", "HorizontalAlignment", "Size"}]
      104 GETIMPORT                        R14 K20 [Enum.AutomaticSize.Y]
      106 SETTABLEKS                       R14 R13 K12 ["AutomaticSize"]
      108 GETTABLEKS                       R14 R3 K49 ["LinePadding"]
      110 SETTABLEKS                       R14 R13 K13 ["Padding"]
      112 GETTABLEKS                       R14 R3 K50 ["LineSpacing"]
      114 SETTABLEKS                       R14 R13 K45 ["Spacing"]
      116 GETIMPORT                        R14 K53 [Enum.FillDirection.Vertical]
      118 SETTABLEKS                       R14 R13 K46 ["Layout"]
      120 GETIMPORT                        R14 K55 [Enum.HorizontalAlignment.Left]
      122 SETTABLEKS                       R14 R13 K47 ["HorizontalAlignment"]
      124 GETIMPORT                        R14 K26 [UDim2.fromScale]
      126 LOADN                            R15 1
      127 LOADN                            R16 0
      128 CALL                             R14 2 1
      129 SETTABLEKS                       R14 R13 K15 ["Size"]
      131 DUPTABLE                         R14 K57 [{"TopBar", "Body"}]
      132 GETUPVAL                         R16 3
      133 JUMPIFNOT                        R16 ; [+36]
      134 GETUPVAL                         R15 0
      135 GETTABLEKS                       R15 R15 K9 ["createElement"]
      137 GETUPVAL                         R16 4
      138 DUPTABLE                         R17 K63 [{["AutomaticSize"], ["LayoutOrder"] = 1, ["Size"], ["Text"], ["TextXAlignment"], ["TextWrapped"] = True, ["RichText"] = True}]
      139 GETIMPORT                        R18 K20 [Enum.AutomaticSize.Y]
      141 SETTABLEKS                       R18 R17 K12 ["AutomaticSize"]
      143 GETIMPORT                        R18 K26 [UDim2.fromScale]
      145 LOADN                            R19 1
      146 LOADN                            R20 0
      147 CALL                             R18 2 1
      148 SETTABLEKS                       R18 R17 K15 ["Size"]
      150 LOADK                            R19 K64 ["<b>%*</b>  <u>%*</u>"]
      151 MOVE                             R21 R4
      152 GETIMPORT                        R22 K67 [string.gsub]
      154 MOVE                             R23 R6
      155 LOADK                            R24 K68 [" "]
      156 LOADK                            R25 K69 [" "]
      157 CALL                             R22 3 1
      158 NAMECALL                         R19 R19 K70 ["format"]
      160 CALL                             R19 3 1
      161 MOVE                             R18 R19
      162 SETTABLEKS                       R18 R17 K58 ["Text"]
      164 GETIMPORT                        R18 K71 [Enum.TextXAlignment.Left]
      166 SETTABLEKS                       R18 R17 K59 ["TextXAlignment"]
      168 CALL                             R15 2 1
      169 JUMP                             ; [+104]
      170 GETUPVAL                         R15 0
      171 GETTABLEKS                       R15 R15 K9 ["createElement"]
      173 GETUPVAL                         R16 1
      174 DUPTABLE                         R17 K72 [{["AutomaticSize"], ["LayoutOrder"] = 1, ["Size"]}]
      175 GETIMPORT                        R18 K20 [Enum.AutomaticSize.Y]
      177 SETTABLEKS                       R18 R17 K12 ["AutomaticSize"]
      179 GETIMPORT                        R18 K26 [UDim2.fromScale]
      181 LOADN                            R19 1
      182 LOADN                            R20 0
      183 CALL                             R18 2 1
      184 SETTABLEKS                       R18 R17 K15 ["Size"]
      186 DUPTABLE                         R18 K74 [{"Title", "RightSide"}]
      187 GETUPVAL                         R19 0
      188 GETTABLEKS                       R19 R19 K9 ["createElement"]
      190 GETUPVAL                         R20 4
      191 DUPTABLE                         R21 K75 [{["AutomaticSize"], ["Text"], ["TextXAlignment"], ["RichText"] = True, ["LayoutOrder"] = 1}]
      192 GETIMPORT                        R22 K77 [Enum.AutomaticSize.XY]
      194 SETTABLEKS                       R22 R21 K12 ["AutomaticSize"]
      196 LOADK                            R23 K78 ["<b>%*</b>"]
      197 MOVE                             R25 R4
      198 NAMECALL                         R23 R23 K70 ["format"]
      200 CALL                             R23 2 1
      201 MOVE                             R22 R23
      202 SETTABLEKS                       R22 R21 K58 ["Text"]
      204 GETIMPORT                        R22 K71 [Enum.TextXAlignment.Left]
      206 SETTABLEKS                       R22 R21 K59 ["TextXAlignment"]
      208 CALL                             R19 2 1
      209 SETTABLEKS                       R19 R18 K4 ["Title"]
      211 GETUPVAL                         R19 0
      212 GETTABLEKS                       R19 R19 K9 ["createElement"]
      214 GETUPVAL                         R20 1
      215 DUPTABLE                         R21 K82 [{["AnchorPoint"], ["AutomaticSize"], ["Position"], ["Size"], ["LayoutOrder"] = 2}]
      216 GETIMPORT                        R22 K44 [Vector2.new]
      218 LOADN                            R23 1
      219 LOADN                            R24 0
      220 CALL                             R22 2 1
      221 SETTABLEKS                       R22 R21 K79 ["AnchorPoint"]
      223 GETIMPORT                        R22 K84 [Enum.AutomaticSize.X]
      225 SETTABLEKS                       R22 R21 K12 ["AutomaticSize"]
      227 GETIMPORT                        R22 K26 [UDim2.fromScale]
      229 LOADN                            R23 1
      230 LOADN                            R24 0
      231 CALL                             R22 2 1
      232 SETTABLEKS                       R22 R21 K80 ["Position"]
      234 GETIMPORT                        R22 K86 [UDim2.fromOffset]
      236 LOADN                            R23 0
      237 LOADN                            R24 18
      238 CALL                             R22 2 1
      239 SETTABLEKS                       R22 R21 K15 ["Size"]
      241 DUPTABLE                         R22 K88 [{"PrimaryAction"}]
      242 GETUPVAL                         R23 0
      243 GETTABLEKS                       R23 R23 K9 ["createElement"]
      245 GETUPVAL                         R24 4
      246 DUPTABLE                         R25 K91 [{["AutomaticSize"], ["Font"], ["RichText"] = True, ["Text"], ["TextColor"]}]
      247 GETIMPORT                        R26 K77 [Enum.AutomaticSize.XY]
      249 SETTABLEKS                       R26 R25 K12 ["AutomaticSize"]
      251 GETTABLEKS                       R26 R3 K92 ["PrimaryActionFont"]
      253 SETTABLEKS                       R26 R25 K89 ["Font"]
      255 LOADK                            R27 K93 ["<u>%*</u>"]
      256 MOVE                             R29 R6
      257 NAMECALL                         R27 R27 K70 ["format"]
      259 CALL                             R27 2 1
      260 MOVE                             R26 R27
      261 SETTABLEKS                       R26 R25 K58 ["Text"]
      263 GETTABLEKS                       R26 R3 K90 ["TextColor"]
      265 SETTABLEKS                       R26 R25 K90 ["TextColor"]
      267 CALL                             R23 2 1
      268 SETTABLEKS                       R23 R22 K87 ["PrimaryAction"]
      270 CALL                             R19 3 1
      271 SETTABLEKS                       R19 R18 K73 ["RightSide"]
      273 CALL                             R15 3 1
      274 SETTABLEKS                       R15 R14 K56 ["TopBar"]
      276 GETUPVAL                         R15 0
      277 GETTABLEKS                       R15 R15 K9 ["createElement"]
      279 GETUPVAL                         R16 4
      280 DUPTABLE                         R17 K94 [{["LayoutOrder"] = 2, ["AutomaticSize"], ["Text"], ["TextWrapped"] = True, ["TextXAlignment"], ["RichText"] = True}]
      281 GETIMPORT                        R18 K77 [Enum.AutomaticSize.XY]
      283 SETTABLEKS                       R18 R17 K12 ["AutomaticSize"]
      285 SETTABLEKS                       R5 R17 K58 ["Text"]
      287 GETIMPORT                        R18 K71 [Enum.TextXAlignment.Left]
      289 SETTABLEKS                       R18 R17 K59 ["TextXAlignment"]
      291 CALL                             R15 2 1
      292 SETTABLEKS                       R15 R14 K5 ["Body"]
      294 CALL                             R11 3 1
      295 SETTABLEKS                       R11 R10 K30 ["Inner"]
      297 CALL                             R7 3 -1
      298 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["ContextServices"]
       25 GETTABLEKS                       R4 R2 K9 ["Style"]
       27 GETTABLEKS                       R4 R4 K10 ["Colors"]
       29 GETTABLEKS                       R5 R2 K11 ["UI"]
       31 GETTABLEKS                       R6 R5 K12 ["Pane"]
       33 GETTABLEKS                       R7 R5 K13 ["TextLabel"]
       35 GETIMPORT                        R8 K15 [game]
       37 LOADK                            R10 K16 ["CGEAlertTitleWrapFix"]
       38 NAMECALL                         R8 R8 K17 ["GetFastFlag"]
       40 CALL                             R8 2 1
       41 GETTABLEKS                       R9 R1 K18 ["PureComponent"]
       43 LOADK                            R11 K19 ["CGEAlert"]
       44 NAMECALL                         R9 R9 K20 ["extend"]
       46 CALL                             R9 2 1
       47 DUPCLOSURE                       R10 K21 [PROTO_0]
       48 CAPTURE                          VAL R1
       49 CAPTURE                          VAL R6
       50 CAPTURE                          VAL R4
       51 CAPTURE                          VAL R8
       52 CAPTURE                          VAL R7
       53 SETTABLEKS                       R10 R9 K22 ["render"]
       55 GETTABLEKS                       R10 R3 K23 ["withContext"]
       57 DUPTABLE                         R11 K26 [{"Stylizer", "Localization"}]
       58 GETTABLEKS                       R12 R3 K24 ["Stylizer"]
       60 SETTABLEKS                       R12 R11 K24 ["Stylizer"]
       62 GETTABLEKS                       R12 R3 K25 ["Localization"]
       64 SETTABLEKS                       R12 R11 K25 ["Localization"]
       66 CALL                             R10 1 1
       67 MOVE                             R11 R9
       68 CALL                             R10 1 1
       69 MOVE                             R9 R10
       70 RETURN                           R9 1
