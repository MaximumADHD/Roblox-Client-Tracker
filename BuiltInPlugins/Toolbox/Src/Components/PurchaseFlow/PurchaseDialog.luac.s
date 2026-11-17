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
       95 DUPTABLE                         R19 K33 [{["Size"], ["BackgroundTransparency"] = 1, ["Image"]}]
       96 GETUPVAL                         R20 2
       97 GETTABLEKS                       R20 R20 K18 ["IMAGE_SIZE"]
       99 SETTABLEKS                       R20 R19 K29 ["Size"]
      101 SETTABLEKS                       R7 R19 K32 ["Image"]
      103 CALL                             R17 2 1
      104 SETTABLEKS                       R17 R16 K6 ["Thumbnail"]
      106 GETUPVAL                         R17 3
      107 GETTABLEKS                       R17 R17 K23 ["createElement"]
      109 LOADK                            R18 K34 ["TextLabel"]
      110 DUPTABLE                         R19 K45 [{["Size"], ["Position"], ["AnchorPoint"], ["BackgroundTransparency"] = 1, ["Text"], ["TextSize"], ["Font"], ["TextXAlignment"], ["TextYAlignment"], ["TextColor3"], ["TextWrapped"] = True}]
      111 GETUPVAL                         R20 2
      112 GETTABLEKS                       R20 R20 K20 ["PROMPT_SIZE"]
      114 SETTABLEKS                       R20 R19 K29 ["Size"]
      116 GETIMPORT                        R20 K48 [UDim2.fromScale]
      118 LOADN                            R21 1
      119 LOADN                            R22 0
      120 CALL                             R20 2 1
      121 SETTABLEKS                       R20 R19 K35 ["Position"]
      123 GETIMPORT                        R20 K16 [Vector2.new]
      125 LOADN                            R21 1
      126 LOADN                            R22 0
      127 CALL                             R20 2 1
      128 SETTABLEKS                       R20 R19 K36 ["AnchorPoint"]
      130 SETTABLEKS                       R6 R19 K37 ["Text"]
      132 GETUPVAL                         R20 1
      133 GETTABLEKS                       R20 R20 K49 ["FONT_SIZE_LARGE"]
      135 SETTABLEKS                       R20 R19 K38 ["TextSize"]
      137 GETUPVAL                         R20 1
      138 GETTABLEKS                       R20 R20 K50 ["FONT"]
      140 SETTABLEKS                       R20 R19 K39 ["Font"]
      142 GETIMPORT                        R20 K53 [Enum.TextXAlignment.Left]
      144 SETTABLEKS                       R20 R19 K40 ["TextXAlignment"]
      146 GETIMPORT                        R20 K55 [Enum.TextYAlignment.Top]
      148 SETTABLEKS                       R20 R19 K41 ["TextYAlignment"]
      150 GETTABLEKS                       R20 R9 K56 ["purchaseDialog"]
      152 GETTABLEKS                       R20 R20 K57 ["promptText"]
      154 SETTABLEKS                       R20 R19 K42 ["TextColor3"]
      156 CALL                             R17 2 1
      157 SETTABLEKS                       R17 R16 K5 ["Prompt"]
      159 GETUPVAL                         R17 3
      160 GETTABLEKS                       R17 R17 K23 ["createElement"]
      162 LOADK                            R18 K58 ["Frame"]
      163 DUPTABLE                         R19 K59 [{["Size"], ["Position"], ["AnchorPoint"], ["BackgroundTransparency"] = 1}]
      164 GETUPVAL                         R20 2
      165 GETTABLEKS                       R20 R20 K22 ["BALANCE_SIZE"]
      167 SETTABLEKS                       R20 R19 K29 ["Size"]
      169 GETUPVAL                         R20 2
      170 GETTABLEKS                       R20 R20 K60 ["BALANCE_POSITION"]
      172 SETTABLEKS                       R20 R19 K35 ["Position"]
      174 GETIMPORT                        R20 K16 [Vector2.new]
      176 LOADN                            R21 1
      177 LOADN                            R22 0
      178 CALL                             R20 2 1
      179 SETTABLEKS                       R20 R19 K36 ["AnchorPoint"]
      181 DUPTABLE                         R20 K64 [{"Layout", "Text", "Icon", "Robux"}]
      182 GETUPVAL                         R21 3
      183 GETTABLEKS                       R21 R21 K23 ["createElement"]
      185 LOADK                            R22 K65 ["UIListLayout"]
      186 DUPTABLE                         R23 K70 [{"SortOrder", "FillDirection", "VerticalAlignment", "Padding"}]
      187 GETIMPORT                        R24 K72 [Enum.SortOrder.LayoutOrder]
      189 SETTABLEKS                       R24 R23 K66 ["SortOrder"]
      191 GETIMPORT                        R24 K74 [Enum.FillDirection.Horizontal]
      193 SETTABLEKS                       R24 R23 K67 ["FillDirection"]
      195 GETIMPORT                        R24 K76 [Enum.VerticalAlignment.Center]
      197 SETTABLEKS                       R24 R23 K68 ["VerticalAlignment"]
      199 GETUPVAL                         R24 2
      200 GETTABLEKS                       R24 R24 K77 ["BALANCE_PADDING"]
      202 SETTABLEKS                       R24 R23 K69 ["Padding"]
      204 CALL                             R21 2 1
      205 SETTABLEKS                       R21 R20 K61 ["Layout"]
      207 GETUPVAL                         R21 3
      208 GETTABLEKS                       R21 R21 K23 ["createElement"]
      210 LOADK                            R22 K34 ["TextLabel"]
      211 DUPTABLE                         R23 K78 [{["LayoutOrder"] = 1, ["Size"], ["BackgroundTransparency"] = 1, ["Text"], ["TextSize"], ["Font"], ["TextColor3"]}]
      212 GETIMPORT                        R24 K79 [UDim2.new]
      214 LOADN                            R25 0
      215 MOVE                             R26 R10
      216 LOADN                            R27 1
      217 LOADN                            R28 0
      218 CALL                             R24 4 1
      219 SETTABLEKS                       R24 R23 K29 ["Size"]
      221 GETTABLEKS                       R24 R1 K9 ["Localization"]
      223 LOADK                            R26 K10 ["Purchase"]
      224 LOADK                            R27 K11 ["RobuxBalance"]
      225 NAMECALL                         R24 R24 K12 ["getText"]
      227 CALL                             R24 3 1
      228 SETTABLEKS                       R24 R23 K37 ["Text"]
      230 GETUPVAL                         R24 1
      231 GETTABLEKS                       R24 R24 K13 ["FONT_SIZE_MEDIUM"]
      233 SETTABLEKS                       R24 R23 K38 ["TextSize"]
      235 GETUPVAL                         R24 1
      236 GETTABLEKS                       R24 R24 K50 ["FONT"]
      238 SETTABLEKS                       R24 R23 K39 ["Font"]
      240 GETTABLEKS                       R24 R9 K56 ["purchaseDialog"]
      242 GETTABLEKS                       R24 R24 K80 ["balanceText"]
      244 SETTABLEKS                       R24 R23 K42 ["TextColor3"]
      246 CALL                             R21 2 1
      247 SETTABLEKS                       R21 R20 K37 ["Text"]
      249 GETUPVAL                         R21 3
      250 GETTABLEKS                       R21 R21 K23 ["createElement"]
      252 LOADK                            R22 K28 ["ImageLabel"]
      253 DUPTABLE                         R23 K83 [{["LayoutOrder"] = 2, ["Size"], ["BackgroundTransparency"] = 1, ["Image"], ["ImageColor3"]}]
      254 GETUPVAL                         R24 2
      255 GETTABLEKS                       R24 R24 K84 ["ROBUX_SIZE"]
      257 SETTABLEKS                       R24 R23 K29 ["Size"]
      259 GETUPVAL                         R24 5
      260 GETTABLEKS                       R24 R24 K85 ["ROBUX_SMALL"]
      262 SETTABLEKS                       R24 R23 K32 ["Image"]
      264 GETTABLEKS                       R24 R9 K56 ["purchaseDialog"]
      266 GETTABLEKS                       R24 R24 K80 ["balanceText"]
      268 SETTABLEKS                       R24 R23 K82 ["ImageColor3"]
      270 CALL                             R21 2 1
      271 SETTABLEKS                       R21 R20 K62 ["Icon"]
      273 GETUPVAL                         R21 3
      274 GETTABLEKS                       R21 R21 K23 ["createElement"]
      276 LOADK                            R22 K34 ["TextLabel"]
      277 DUPTABLE                         R23 K87 [{["LayoutOrder"] = 3, ["Size"], ["BackgroundTransparency"] = 1, ["Text"], ["TextSize"], ["Font"], ["TextXAlignment"], ["TextColor3"]}]
      278 GETIMPORT                        R24 K79 [UDim2.new]
      280 LOADN                            R25 1
      281 LOADN                            R26 0
      282 LOADN                            R27 1
      283 LOADN                            R28 0
      284 CALL                             R24 4 1
      285 SETTABLEKS                       R24 R23 K29 ["Size"]
      287 SETTABLEKS                       R8 R23 K37 ["Text"]
      289 GETUPVAL                         R24 1
      290 GETTABLEKS                       R24 R24 K13 ["FONT_SIZE_MEDIUM"]
      292 SETTABLEKS                       R24 R23 K38 ["TextSize"]
      294 GETUPVAL                         R24 1
      295 GETTABLEKS                       R24 R24 K50 ["FONT"]
      297 SETTABLEKS                       R24 R23 K39 ["Font"]
      299 GETIMPORT                        R24 K53 [Enum.TextXAlignment.Left]
      301 SETTABLEKS                       R24 R23 K40 ["TextXAlignment"]
      303 GETTABLEKS                       R24 R9 K56 ["purchaseDialog"]
      305 GETTABLEKS                       R24 R24 K80 ["balanceText"]
      307 SETTABLEKS                       R24 R23 K42 ["TextColor3"]
      309 CALL                             R21 2 1
      310 SETTABLEKS                       R21 R20 K63 ["Robux"]
      312 CALL                             R17 3 1
      313 SETTABLEKS                       R17 R16 K7 ["Balance"]
      315 CALL                             R13 3 -1
      316 RETURN                           R13 -1

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
