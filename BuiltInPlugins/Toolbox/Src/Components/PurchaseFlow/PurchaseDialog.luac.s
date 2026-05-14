PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Buttons"]
        4 GETTABLEKS                       R3 R1 K2 ["OnButtonClicked"]
        6 GETTABLEKS                       R4 R1 K3 ["OnClose"]
        8 GETTABLEKS                       R5 R1 K4 ["Title"]
       10 GETTABLEKS                       R6 R1 K5 ["Prompt"]
       12 GETTABLEKS                       R7 R1 K6 ["Thumbnail"]
       14 GETTABLEKS                       R8 R1 K7 ["Balance"]
       16 GETTABLEKS                       R9 R0 K0 ["props"]
       18 GETTABLEKS                       R9 R9 K8 ["Stylizer"]
       20 GETUPVAL                         R10 0
       21 GETTABLEKS                       R11 R1 K9 ["Localization"]
       23 LOADK                            R13 K10 ["Purchase"]
       24 LOADK                            R14 K11 ["RobuxBalance"]
       25 NAMECALL                         R11 R11 K12 ["getText"]
       27 CALL                             R11 3 1
       28 GETUPVAL                         R12 1
       29 GETTABLEKS                       R12 R12 K13 ["FONT_SIZE_MEDIUM"]
       31 LOADNIL                          R13
       32 GETIMPORT                        R14 K16 [Vector2.new]
       34 LOADN                            R15 0
       35 LOADN                            R16 0
       36 CALL                             R14 2 -1
       37 CALL                             R10 -1 1
       38 GETTABLEKS                       R10 R10 K17 ["X"]
       40 GETUPVAL                         R12 2
       41 GETTABLEKS                       R12 R12 K18 ["IMAGE_SIZE"]
       43 GETTABLEKS                       R12 R12 K17 ["X"]
       45 GETTABLEKS                       R12 R12 K19 ["Offset"]
       47 GETUPVAL                         R13 2
       48 GETTABLEKS                       R13 R13 K20 ["PROMPT_SIZE"]
       50 GETTABLEKS                       R13 R13 K17 ["X"]
       52 GETTABLEKS                       R13 R13 K19 ["Offset"]
       54 ADD                              R11 R12 R13
       55 GETUPVAL                         R13 2
       56 GETTABLEKS                       R13 R13 K20 ["PROMPT_SIZE"]
       58 GETTABLEKS                       R13 R13 K21 ["Y"]
       60 GETTABLEKS                       R13 R13 K19 ["Offset"]
       62 GETUPVAL                         R14 2
       63 GETTABLEKS                       R14 R14 K22 ["BALANCE_SIZE"]
       65 GETTABLEKS                       R14 R14 K21 ["Y"]
       67 GETTABLEKS                       R14 R14 K19 ["Offset"]
       69 ADD                              R12 R13 R14
       70 GETUPVAL                         R13 3
       71 GETTABLEKS                       R13 R13 K23 ["createElement"]
       73 GETUPVAL                         R14 4
       74 DUPTABLE                         R15 K26 [{"Title", "MinContentSize", "Buttons", "OnButtonPressed", "OnClose"}]
       75 SETTABLEKS                       R5 R15 K4 ["Title"]
       77 GETIMPORT                        R16 K16 [Vector2.new]
       79 MOVE                             R17 R11
       80 MOVE                             R18 R12
       81 CALL                             R16 2 1
       82 SETTABLEKS                       R16 R15 K24 ["MinContentSize"]
       84 SETTABLEKS                       R2 R15 K1 ["Buttons"]
       86 SETTABLEKS                       R3 R15 K25 ["OnButtonPressed"]
       88 SETTABLEKS                       R4 R15 K3 ["OnClose"]
       90 DUPTABLE                         R16 K27 [{"Thumbnail", "Prompt", "Balance"}]
       91 GETUPVAL                         R17 3
       92 GETTABLEKS                       R17 R17 K23 ["createElement"]
       94 LOADK                            R18 K28 ["ImageLabel"]
       95 DUPTABLE                         R19 K32 [{"Size", "BackgroundTransparency", "Image"}]
       96 GETUPVAL                         R20 2
       97 GETTABLEKS                       R20 R20 K18 ["IMAGE_SIZE"]
       99 SETTABLEKS                       R20 R19 K29 ["Size"]
      101 LOADN                            R20 1
      102 SETTABLEKS                       R20 R19 K30 ["BackgroundTransparency"]
      104 SETTABLEKS                       R7 R19 K31 ["Image"]
      106 CALL                             R17 2 1
      107 SETTABLEKS                       R17 R16 K6 ["Thumbnail"]
      109 GETUPVAL                         R17 3
      110 GETTABLEKS                       R17 R17 K23 ["createElement"]
      112 LOADK                            R18 K33 ["TextLabel"]
      113 DUPTABLE                         R19 K43 [{"Size", "Position", "AnchorPoint", "BackgroundTransparency", "Text", "TextSize", "Font", "TextXAlignment", "TextYAlignment", "TextColor3", "TextWrapped"}]
      114 GETUPVAL                         R20 2
      115 GETTABLEKS                       R20 R20 K20 ["PROMPT_SIZE"]
      117 SETTABLEKS                       R20 R19 K29 ["Size"]
      119 GETIMPORT                        R20 K46 [UDim2.fromScale]
      121 LOADN                            R21 1
      122 LOADN                            R22 0
      123 CALL                             R20 2 1
      124 SETTABLEKS                       R20 R19 K34 ["Position"]
      126 GETIMPORT                        R20 K16 [Vector2.new]
      128 LOADN                            R21 1
      129 LOADN                            R22 0
      130 CALL                             R20 2 1
      131 SETTABLEKS                       R20 R19 K35 ["AnchorPoint"]
      133 LOADN                            R20 1
      134 SETTABLEKS                       R20 R19 K30 ["BackgroundTransparency"]
      136 SETTABLEKS                       R6 R19 K36 ["Text"]
      138 GETUPVAL                         R20 1
      139 GETTABLEKS                       R20 R20 K47 ["FONT_SIZE_LARGE"]
      141 SETTABLEKS                       R20 R19 K37 ["TextSize"]
      143 GETUPVAL                         R20 1
      144 GETTABLEKS                       R20 R20 K48 ["FONT"]
      146 SETTABLEKS                       R20 R19 K38 ["Font"]
      148 GETIMPORT                        R20 K51 [Enum.TextXAlignment.Left]
      150 SETTABLEKS                       R20 R19 K39 ["TextXAlignment"]
      152 GETIMPORT                        R20 K53 [Enum.TextYAlignment.Top]
      154 SETTABLEKS                       R20 R19 K40 ["TextYAlignment"]
      156 GETTABLEKS                       R20 R9 K54 ["purchaseDialog"]
      158 GETTABLEKS                       R20 R20 K55 ["promptText"]
      160 SETTABLEKS                       R20 R19 K41 ["TextColor3"]
      162 LOADB                            R20 1
      163 SETTABLEKS                       R20 R19 K42 ["TextWrapped"]
      165 CALL                             R17 2 1
      166 SETTABLEKS                       R17 R16 K5 ["Prompt"]
      168 GETUPVAL                         R17 3
      169 GETTABLEKS                       R17 R17 K23 ["createElement"]
      171 LOADK                            R18 K56 ["Frame"]
      172 DUPTABLE                         R19 K57 [{"Size", "Position", "AnchorPoint", "BackgroundTransparency"}]
      173 GETUPVAL                         R20 2
      174 GETTABLEKS                       R20 R20 K22 ["BALANCE_SIZE"]
      176 SETTABLEKS                       R20 R19 K29 ["Size"]
      178 GETUPVAL                         R20 2
      179 GETTABLEKS                       R20 R20 K58 ["BALANCE_POSITION"]
      181 SETTABLEKS                       R20 R19 K34 ["Position"]
      183 GETIMPORT                        R20 K16 [Vector2.new]
      185 LOADN                            R21 1
      186 LOADN                            R22 0
      187 CALL                             R20 2 1
      188 SETTABLEKS                       R20 R19 K35 ["AnchorPoint"]
      190 LOADN                            R20 1
      191 SETTABLEKS                       R20 R19 K30 ["BackgroundTransparency"]
      193 DUPTABLE                         R20 K62 [{"Layout", "Text", "Icon", "Robux"}]
      194 GETUPVAL                         R21 3
      195 GETTABLEKS                       R21 R21 K23 ["createElement"]
      197 LOADK                            R22 K63 ["UIListLayout"]
      198 DUPTABLE                         R23 K68 [{"SortOrder", "FillDirection", "VerticalAlignment", "Padding"}]
      199 GETIMPORT                        R24 K70 [Enum.SortOrder.LayoutOrder]
      201 SETTABLEKS                       R24 R23 K64 ["SortOrder"]
      203 GETIMPORT                        R24 K72 [Enum.FillDirection.Horizontal]
      205 SETTABLEKS                       R24 R23 K65 ["FillDirection"]
      207 GETIMPORT                        R24 K74 [Enum.VerticalAlignment.Center]
      209 SETTABLEKS                       R24 R23 K66 ["VerticalAlignment"]
      211 GETUPVAL                         R24 2
      212 GETTABLEKS                       R24 R24 K75 ["BALANCE_PADDING"]
      214 SETTABLEKS                       R24 R23 K67 ["Padding"]
      216 CALL                             R21 2 1
      217 SETTABLEKS                       R21 R20 K59 ["Layout"]
      219 GETUPVAL                         R21 3
      220 GETTABLEKS                       R21 R21 K23 ["createElement"]
      222 LOADK                            R22 K33 ["TextLabel"]
      223 DUPTABLE                         R23 K76 [{"LayoutOrder", "Size", "BackgroundTransparency", "Text", "TextSize", "Font", "TextColor3"}]
      224 LOADN                            R24 1
      225 SETTABLEKS                       R24 R23 K69 ["LayoutOrder"]
      227 GETIMPORT                        R24 K77 [UDim2.new]
      229 LOADN                            R25 0
      230 MOVE                             R26 R10
      231 LOADN                            R27 1
      232 LOADN                            R28 0
      233 CALL                             R24 4 1
      234 SETTABLEKS                       R24 R23 K29 ["Size"]
      236 LOADN                            R24 1
      237 SETTABLEKS                       R24 R23 K30 ["BackgroundTransparency"]
      239 GETTABLEKS                       R24 R1 K9 ["Localization"]
      241 LOADK                            R26 K10 ["Purchase"]
      242 LOADK                            R27 K11 ["RobuxBalance"]
      243 NAMECALL                         R24 R24 K12 ["getText"]
      245 CALL                             R24 3 1
      246 SETTABLEKS                       R24 R23 K36 ["Text"]
      248 GETUPVAL                         R24 1
      249 GETTABLEKS                       R24 R24 K13 ["FONT_SIZE_MEDIUM"]
      251 SETTABLEKS                       R24 R23 K37 ["TextSize"]
      253 GETUPVAL                         R24 1
      254 GETTABLEKS                       R24 R24 K48 ["FONT"]
      256 SETTABLEKS                       R24 R23 K38 ["Font"]
      258 GETTABLEKS                       R24 R9 K54 ["purchaseDialog"]
      260 GETTABLEKS                       R24 R24 K78 ["balanceText"]
      262 SETTABLEKS                       R24 R23 K41 ["TextColor3"]
      264 CALL                             R21 2 1
      265 SETTABLEKS                       R21 R20 K36 ["Text"]
      267 GETUPVAL                         R21 3
      268 GETTABLEKS                       R21 R21 K23 ["createElement"]
      270 LOADK                            R22 K28 ["ImageLabel"]
      271 DUPTABLE                         R23 K80 [{"LayoutOrder", "Size", "BackgroundTransparency", "Image", "ImageColor3"}]
      272 LOADN                            R24 2
      273 SETTABLEKS                       R24 R23 K69 ["LayoutOrder"]
      275 GETUPVAL                         R24 2
      276 GETTABLEKS                       R24 R24 K81 ["ROBUX_SIZE"]
      278 SETTABLEKS                       R24 R23 K29 ["Size"]
      280 LOADN                            R24 1
      281 SETTABLEKS                       R24 R23 K30 ["BackgroundTransparency"]
      283 GETUPVAL                         R24 5
      284 GETTABLEKS                       R24 R24 K82 ["ROBUX_SMALL"]
      286 SETTABLEKS                       R24 R23 K31 ["Image"]
      288 GETTABLEKS                       R24 R9 K54 ["purchaseDialog"]
      290 GETTABLEKS                       R24 R24 K78 ["balanceText"]
      292 SETTABLEKS                       R24 R23 K79 ["ImageColor3"]
      294 CALL                             R21 2 1
      295 SETTABLEKS                       R21 R20 K60 ["Icon"]
      297 GETUPVAL                         R21 3
      298 GETTABLEKS                       R21 R21 K23 ["createElement"]
      300 LOADK                            R22 K33 ["TextLabel"]
      301 DUPTABLE                         R23 K83 [{"LayoutOrder", "Size", "BackgroundTransparency", "Text", "TextSize", "Font", "TextXAlignment", "TextColor3"}]
      302 LOADN                            R24 3
      303 SETTABLEKS                       R24 R23 K69 ["LayoutOrder"]
      305 GETIMPORT                        R24 K77 [UDim2.new]
      307 LOADN                            R25 1
      308 LOADN                            R26 0
      309 LOADN                            R27 1
      310 LOADN                            R28 0
      311 CALL                             R24 4 1
      312 SETTABLEKS                       R24 R23 K29 ["Size"]
      314 LOADN                            R24 1
      315 SETTABLEKS                       R24 R23 K30 ["BackgroundTransparency"]
      317 SETTABLEKS                       R8 R23 K36 ["Text"]
      319 GETUPVAL                         R24 1
      320 GETTABLEKS                       R24 R24 K13 ["FONT_SIZE_MEDIUM"]
      322 SETTABLEKS                       R24 R23 K37 ["TextSize"]
      324 GETUPVAL                         R24 1
      325 GETTABLEKS                       R24 R24 K48 ["FONT"]
      327 SETTABLEKS                       R24 R23 K38 ["Font"]
      329 GETIMPORT                        R24 K51 [Enum.TextXAlignment.Left]
      331 SETTABLEKS                       R24 R23 K39 ["TextXAlignment"]
      333 GETTABLEKS                       R24 R9 K54 ["purchaseDialog"]
      335 GETTABLEKS                       R24 R24 K78 ["balanceText"]
      337 SETTABLEKS                       R24 R23 K41 ["TextColor3"]
      339 CALL                             R21 2 1
      340 SETTABLEKS                       R21 R20 K61 ["Robux"]
      342 CALL                             R17 3 1
      343 SETTABLEKS                       R17 R16 K7 ["Balance"]
      345 CALL                             R13 3 -1
      346 RETURN                           R13 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETTABLEKS                       R1 R0 K3 ["Packages"]
       13 GETIMPORT                        R2 K5 [require]
       15 GETTABLEKS                       R3 R1 K6 ["Roact"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R1 K7 ["Framework"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R4 R3 K8 ["ContextServices"]
       25 GETTABLEKS                       R5 R4 K9 ["withContext"]
       27 GETTABLEKS                       R6 R3 K10 ["UI"]
       29 GETTABLEKS                       R7 R6 K11 ["StyledDialog"]
       31 GETTABLEKS                       R8 R3 K12 ["Util"]
       33 GETTABLEKS                       R8 R8 K13 ["GetTextSize"]
       35 GETIMPORT                        R9 K5 [require]
       37 GETTABLEKS                       R10 R0 K14 ["Src"]
       39 GETTABLEKS                       R10 R10 K12 ["Util"]
       41 GETTABLEKS                       R10 R10 K15 ["Images"]
       43 CALL                             R9 1 1
       44 GETIMPORT                        R10 K5 [require]
       46 GETTABLEKS                       R11 R0 K14 ["Src"]
       48 GETTABLEKS                       R11 R11 K12 ["Util"]
       50 GETTABLEKS                       R11 R11 K16 ["Constants"]
       52 CALL                             R10 1 1
       53 GETTABLEKS                       R11 R10 K17 ["Dialog"]
       55 GETTABLEKS                       R12 R2 K18 ["PureComponent"]
       57 LOADK                            R14 K19 ["PurchaseDialog"]
       58 NAMECALL                         R12 R12 K20 ["extend"]
       60 CALL                             R12 2 1
       61 DUPCLOSURE                       R13 K21 [PROTO_0]
       62 CAPTURE                          VAL R8
       63 CAPTURE                          VAL R10
       64 CAPTURE                          VAL R11
       65 CAPTURE                          VAL R2
       66 CAPTURE                          VAL R7
       67 CAPTURE                          VAL R9
       68 SETTABLEKS                       R13 R12 K22 ["render"]
       70 MOVE                             R13 R5
       71 DUPTABLE                         R14 K25 [{"Localization", "Stylizer"}]
       72 GETTABLEKS                       R15 R4 K23 ["Localization"]
       74 SETTABLEKS                       R15 R14 K23 ["Localization"]
       76 GETTABLEKS                       R15 R4 K24 ["Stylizer"]
       78 SETTABLEKS                       R15 R14 K24 ["Stylizer"]
       80 CALL                             R13 1 1
       81 MOVE                             R14 R12
       82 CALL                             R13 1 1
       83 MOVE                             R12 R13
       84 RETURN                           R12 1
