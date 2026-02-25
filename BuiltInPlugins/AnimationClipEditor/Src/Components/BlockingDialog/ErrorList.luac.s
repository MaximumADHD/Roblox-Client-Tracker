PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 GETTABLEKS                       R4 R2 K3 ["dialogTheme"]
        8 GETTABLEKS                       R5 R1 K4 ["ErrorList"]
       10 GETTABLEKS                       R6 R1 K5 ["ErrorKey"]
       12 NEWTABLE                         R7 0 0
       14 LOADN                            R8 1
       15 GETIMPORT                        R9 K7 [ipairs]
       17 MOVE                             R10 R5
       18 CALL                             R9 1 3
       19 FORGPREP_INEXT                   R9
       20 LOADN                            R14 1
       21 JUMPIFNOTLT                      R14 R8 ; [+25]
       23 MOVE                             R15 R7
       24 GETUPVAL                         R17 0
       25 GETTABLEKS                       R16 R17 K8 ["createElement"]
       27 GETUPVAL                         R17 1
       28 DUPTABLE                         R18 K12 [{"Size", "BackgroundTransparency", "LayoutOrder"}]
       29 GETIMPORT                        R19 K15 [UDim2.fromOffset]
       31 LOADN                            R20 0
       32 LOADN                            R21 10
       33 CALL                             R19 2 1
       34 SETTABLEKS                       R19 R18 K9 ["Size"]
       36 LOADN                            R19 1
       37 SETTABLEKS                       R19 R18 K10 ["BackgroundTransparency"]
       39 SETTABLEKS                       R8 R18 K11 ["LayoutOrder"]
       41 CALL                             R16 2 -1
       42 FASTCALL                         TABLE_INSERT ; [+2]
       43 GETIMPORT                        R14 K18 [table.insert]
       45 CALL                             R14 -1 0
       46 ADDK                             R8 R8 K19 [1]
       47 MOVE                             R15 R7
       48 GETUPVAL                         R17 0
       49 GETTABLEKS                       R16 R17 K8 ["createElement"]
       51 GETUPVAL                         R17 1
       52 DUPTABLE                         R18 K26 [{"AutomaticSize", "LayoutOrder", "HorizontalAlignment", "VerticalAlignment", "Layout", "Spacing", "Padding"}]
       53 GETIMPORT                        R19 K29 [Enum.AutomaticSize.XY]
       55 SETTABLEKS                       R19 R18 K20 ["AutomaticSize"]
       57 SETTABLEKS                       R8 R18 K11 ["LayoutOrder"]
       59 GETIMPORT                        R19 K31 [Enum.HorizontalAlignment.Left]
       61 SETTABLEKS                       R19 R18 K21 ["HorizontalAlignment"]
       63 GETIMPORT                        R19 K33 [Enum.VerticalAlignment.Top]
       65 SETTABLEKS                       R19 R18 K22 ["VerticalAlignment"]
       67 GETIMPORT                        R19 K36 [Enum.FillDirection.Horizontal]
       69 SETTABLEKS                       R19 R18 K23 ["Layout"]
       71 LOADN                            R19 2
       72 SETTABLEKS                       R19 R18 K24 ["Spacing"]
       74 DUPTABLE                         R19 K37 [{"Left"}]
       75 LOADN                            R20 2
       76 SETTABLEKS                       R20 R19 K30 ["Left"]
       78 SETTABLEKS                       R19 R18 K25 ["Padding"]
       80 DUPTABLE                         R19 K40 [{"Marker", "Content"}]
       81 GETUPVAL                         R21 0
       82 GETTABLEKS                       R20 R21 K8 ["createElement"]
       84 GETUPVAL                         R21 1
       85 DUPTABLE                         R22 K41 [{"LayoutOrder", "Size"}]
       86 LOADN                            R23 1
       87 SETTABLEKS                       R23 R22 K11 ["LayoutOrder"]
       89 GETIMPORT                        R23 K43 [UDim2.new]
       91 LOADN                            R24 0
       92 LOADN                            R25 18
       93 LOADN                            R26 1
       94 LOADN                            R27 0
       95 CALL                             R23 4 1
       96 SETTABLEKS                       R23 R22 K9 ["Size"]
       98 DUPTABLE                         R23 K45 [{"Image"}]
       99 GETUPVAL                         R25 0
      100 GETTABLEKS                       R24 R25 K8 ["createElement"]
      102 GETUPVAL                         R25 2
      103 DUPTABLE                         R26 K48 [{"Image", "LayoutOrder", "Size", "Position", "AnchorPoint"}]
      104 GETTABLEKS                       R28 R13 K49 ["severity"]
      106 GETUPVAL                         R31 3
      107 GETTABLEKS                       R30 R31 K50 ["SEVERITY"]
      109 GETTABLEKS                       R29 R30 K51 ["Error"]
      111 JUMPIFNOTLE                      R29 R28 ; [+4]
      113 GETTABLEKS                       R27 R4 K52 ["errorImage"]
      115 JUMP                             ; [+2]
      116 GETTABLEKS                       R27 R4 K53 ["warningImage"]
      118 SETTABLEKS                       R27 R26 K44 ["Image"]
      120 LOADN                            R27 1
      121 SETTABLEKS                       R27 R26 K11 ["LayoutOrder"]
      123 GETIMPORT                        R27 K15 [UDim2.fromOffset]
      125 LOADN                            R28 12
      126 LOADN                            R29 12
      127 CALL                             R27 2 1
      128 SETTABLEKS                       R27 R26 K9 ["Size"]
      130 GETIMPORT                        R27 K43 [UDim2.new]
      132 LOADK                            R28 K54 [0.5]
      133 LOADN                            R29 0
      134 LOADN                            R30 0
      135 LOADN                            R31 3
      136 CALL                             R27 4 1
      137 SETTABLEKS                       R27 R26 K46 ["Position"]
      139 GETIMPORT                        R27 K56 [Vector2.new]
      141 LOADK                            R28 K54 [0.5]
      142 LOADN                            R29 0
      143 CALL                             R27 2 1
      144 SETTABLEKS                       R27 R26 K47 ["AnchorPoint"]
      146 CALL                             R24 2 1
      147 SETTABLEKS                       R24 R23 K44 ["Image"]
      149 CALL                             R20 3 1
      150 SETTABLEKS                       R20 R19 K38 ["Marker"]
      152 GETUPVAL                         R21 0
      153 GETTABLEKS                       R20 R21 K8 ["createElement"]
      155 GETUPVAL                         R21 4
      156 DUPTABLE                         R22 K65 [{"AutomaticSize", "Font", "LayoutOrder", "Size", "Text", "TextColor", "TextSize", "TextTruncate", "TextWrapped", "TextXAlignment", "TextYAlignment"}]
      157 GETIMPORT                        R23 K67 [Enum.AutomaticSize.Y]
      159 SETTABLEKS                       R23 R22 K20 ["AutomaticSize"]
      161 GETTABLEKS                       R23 R2 K68 ["font"]
      163 SETTABLEKS                       R23 R22 K57 ["Font"]
      165 LOADN                            R23 2
      166 SETTABLEKS                       R23 R22 K11 ["LayoutOrder"]
      168 GETIMPORT                        R23 K43 [UDim2.new]
      170 LOADN                            R24 1
      171 LOADN                            R25 238
      172 LOADN                            R26 0
      173 LOADN                            R27 0
      174 CALL                             R23 4 1
      175 SETTABLEKS                       R23 R22 K9 ["Size"]
      177 MOVE                             R25 R6
      178 GETTABLEKS                       R26 R13 K69 ["id"]
      180 DUPTABLE                         R27 K71 [{"entries"}]
      181 LOADK                            R28 K72 [""]
      182 SETTABLEKS                       R28 R27 K70 ["entries"]
      184 NAMECALL                         R23 R3 K73 ["getText"]
      186 CALL                             R23 4 1
      187 SETTABLEKS                       R23 R22 K58 ["Text"]
      189 GETTABLEKS                       R23 R4 K74 ["textColor"]
      191 SETTABLEKS                       R23 R22 K59 ["TextColor"]
      193 GETTABLEKS                       R23 R4 K75 ["textSize"]
      195 SETTABLEKS                       R23 R22 K60 ["TextSize"]
      197 GETIMPORT                        R23 K77 [Enum.TextTruncate.AtEnd]
      199 SETTABLEKS                       R23 R22 K61 ["TextTruncate"]
      201 LOADB                            R23 1
      202 SETTABLEKS                       R23 R22 K62 ["TextWrapped"]
      204 GETIMPORT                        R23 K78 [Enum.TextXAlignment.Left]
      206 SETTABLEKS                       R23 R22 K63 ["TextXAlignment"]
      208 GETIMPORT                        R23 K79 [Enum.TextYAlignment.Top]
      210 SETTABLEKS                       R23 R22 K64 ["TextYAlignment"]
      212 CALL                             R20 2 1
      213 SETTABLEKS                       R20 R19 K39 ["Content"]
      215 CALL                             R16 3 -1
      216 FASTCALL                         TABLE_INSERT ; [+2]
      217 GETIMPORT                        R14 K18 [table.insert]
      219 CALL                             R14 -1 0
      220 ADDK                             R8 R8 K19 [1]
      221 GETTABLEKS                       R14 R13 K80 ["details"]
      223 JUMPIFEQKNIL                     R14 ; [+111]
      225 GETTABLEKS                       R14 R13 K80 ["details"]
      227 LOADNIL                          R15
      228 LOADNIL                          R16
      229 FORGPREP                         R14
      230 MOVE                             R20 R7
      231 GETUPVAL                         R22 0
      232 GETTABLEKS                       R21 R22 K8 ["createElement"]
      234 GETUPVAL                         R22 1
      235 DUPTABLE                         R23 K81 [{"AutomaticSize", "LayoutOrder", "HorizontalAlignment", "VerticalAlignment", "Spacing", "Padding"}]
      236 GETIMPORT                        R24 K29 [Enum.AutomaticSize.XY]
      238 SETTABLEKS                       R24 R23 K20 ["AutomaticSize"]
      240 SETTABLEKS                       R8 R23 K11 ["LayoutOrder"]
      242 GETIMPORT                        R24 K31 [Enum.HorizontalAlignment.Left]
      244 SETTABLEKS                       R24 R23 K21 ["HorizontalAlignment"]
      246 GETIMPORT                        R24 K33 [Enum.VerticalAlignment.Top]
      248 SETTABLEKS                       R24 R23 K22 ["VerticalAlignment"]
      250 LOADN                            R24 2
      251 SETTABLEKS                       R24 R23 K24 ["Spacing"]
      253 DUPTABLE                         R24 K37 [{"Left"}]
      254 LOADN                            R25 2
      255 SETTABLEKS                       R25 R24 K30 ["Left"]
      257 SETTABLEKS                       R24 R23 K25 ["Padding"]
      259 DUPTABLE                         R24 K82 [{"Content"}]
      260 GETUPVAL                         R26 0
      261 GETTABLEKS                       R25 R26 K8 ["createElement"]
      263 GETUPVAL                         R26 4
      264 DUPTABLE                         R27 K83 [{"AutomaticSize", "Font", "LayoutOrder", "Size", "Position", "Text", "TextColor", "TextSize", "TextTruncate", "TextWrapped", "TextXAlignment", "TextYAlignment"}]
      265 GETIMPORT                        R28 K67 [Enum.AutomaticSize.Y]
      267 SETTABLEKS                       R28 R27 K20 ["AutomaticSize"]
      269 GETTABLEKS                       R28 R2 K68 ["font"]
      271 SETTABLEKS                       R28 R27 K57 ["Font"]
      273 LOADN                            R28 2
      274 SETTABLEKS                       R28 R27 K11 ["LayoutOrder"]
      276 GETIMPORT                        R28 K43 [UDim2.new]
      278 LOADN                            R29 1
      279 LOADN                            R30 226
      280 LOADN                            R31 0
      281 LOADN                            R32 0
      282 CALL                             R28 4 1
      283 SETTABLEKS                       R28 R27 K9 ["Size"]
      285 GETIMPORT                        R28 K43 [UDim2.new]
      287 LOADN                            R29 0
      288 LOADN                            R30 30
      289 LOADN                            R31 0
      290 LOADN                            R32 0
      291 CALL                             R28 4 1
      292 SETTABLEKS                       R28 R27 K46 ["Position"]
      294 GETIMPORT                        R28 K86 [string.format]
      296 LOADK                            R29 K87 ["- %s"]
      297 MOVE                             R30 R18
      298 CALL                             R28 2 1
      299 SETTABLEKS                       R28 R27 K58 ["Text"]
      301 GETTABLEKS                       R28 R4 K74 ["textColor"]
      303 SETTABLEKS                       R28 R27 K59 ["TextColor"]
      305 GETTABLEKS                       R28 R4 K75 ["textSize"]
      307 SETTABLEKS                       R28 R27 K60 ["TextSize"]
      309 GETIMPORT                        R28 K77 [Enum.TextTruncate.AtEnd]
      311 SETTABLEKS                       R28 R27 K61 ["TextTruncate"]
      313 LOADB                            R28 1
      314 SETTABLEKS                       R28 R27 K62 ["TextWrapped"]
      316 GETIMPORT                        R28 K78 [Enum.TextXAlignment.Left]
      318 SETTABLEKS                       R28 R27 K63 ["TextXAlignment"]
      320 GETIMPORT                        R28 K79 [Enum.TextYAlignment.Top]
      322 SETTABLEKS                       R28 R27 K64 ["TextYAlignment"]
      324 CALL                             R25 2 1
      325 SETTABLEKS                       R25 R24 K39 ["Content"]
      327 CALL                             R21 3 -1
      328 FASTCALL                         TABLE_INSERT ; [+2]
      329 GETIMPORT                        R19 K18 [table.insert]
      331 CALL                             R19 -1 0
      332 ADDK                             R8 R8 K19 [1]
      333 FORGLOOP                         R14 2 ; [-104]
      335 FORGLOOP                         R9 2 [inext] ; [-316]
      337 RETURN                           R7 1

PROTO_1:
        0 NAMECALL                         R1 R0 K0 ["makeMessageElements"]
        2 CALL                             R1 1 1
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R2 R3 K1 ["createElement"]
        6 LOADK                            R3 K2 ["Frame"]
        7 DUPTABLE                         R4 K5 [{"Size", "BackgroundTransparency"}]
        8 GETIMPORT                        R5 K8 [UDim2.new]
       10 LOADN                            R6 1
       11 LOADN                            R7 0
       12 LOADN                            R8 1
       13 LOADN                            R9 0
       14 CALL                             R5 4 1
       15 SETTABLEKS                       R5 R4 K3 ["Size"]
       17 LOADN                            R5 1
       18 SETTABLEKS                       R5 R4 K4 ["BackgroundTransparency"]
       20 DUPTABLE                         R5 K11 [{"Layout", "Body"}]
       21 GETUPVAL                         R7 0
       22 GETTABLEKS                       R6 R7 K1 ["createElement"]
       24 LOADK                            R7 K12 ["UIListLayout"]
       25 DUPTABLE                         R8 K16 [{"SortOrder", "FillDirection", "Padding"}]
       26 GETIMPORT                        R9 K19 [Enum.SortOrder.LayoutOrder]
       28 SETTABLEKS                       R9 R8 K13 ["SortOrder"]
       30 GETIMPORT                        R9 K21 [Enum.FillDirection.Vertical]
       32 SETTABLEKS                       R9 R8 K14 ["FillDirection"]
       34 GETIMPORT                        R9 K23 [UDim.new]
       36 LOADN                            R10 0
       37 LOADN                            R11 10
       38 CALL                             R9 2 1
       39 SETTABLEKS                       R9 R8 K15 ["Padding"]
       41 CALL                             R6 2 1
       42 SETTABLEKS                       R6 R5 K9 ["Layout"]
       44 GETUPVAL                         R7 0
       45 GETTABLEKS                       R6 R7 K1 ["createElement"]
       47 GETUPVAL                         R7 1
       48 DUPTABLE                         R8 K24 [{"LayoutOrder", "Size"}]
       49 LOADN                            R9 2
       50 SETTABLEKS                       R9 R8 K18 ["LayoutOrder"]
       52 GETIMPORT                        R9 K8 [UDim2.new]
       54 LOADN                            R10 1
       55 LOADN                            R11 0
       56 LOADN                            R12 1
       57 LOADN                            R13 246
       58 CALL                             R9 4 1
       59 SETTABLEKS                       R9 R8 K3 ["Size"]
       61 DUPTABLE                         R9 K26 [{"MessagesPane"}]
       62 GETUPVAL                         R11 0
       63 GETTABLEKS                       R10 R11 K1 ["createElement"]
       65 GETUPVAL                         R11 2
       66 DUPTABLE                         R12 K30 [{"AutomaticSize", "HorizontalAlignment", "VerticalAlignment", "Layout"}]
       67 GETIMPORT                        R13 K32 [Enum.AutomaticSize.XY]
       69 SETTABLEKS                       R13 R12 K27 ["AutomaticSize"]
       71 GETIMPORT                        R13 K34 [Enum.HorizontalAlignment.Left]
       73 SETTABLEKS                       R13 R12 K28 ["HorizontalAlignment"]
       75 GETIMPORT                        R13 K36 [Enum.VerticalAlignment.Top]
       77 SETTABLEKS                       R13 R12 K29 ["VerticalAlignment"]
       79 GETIMPORT                        R13 K21 [Enum.FillDirection.Vertical]
       81 SETTABLEKS                       R13 R12 K9 ["Layout"]
       83 MOVE                             R13 R1
       84 CALL                             R10 3 1
       85 SETTABLEKS                       R10 R9 K25 ["MessagesPane"]
       87 CALL                             R6 3 1
       88 SETTABLEKS                       R6 R5 K10 ["Body"]
       90 CALL                             R2 3 -1
       91 RETURN                           R2 -1

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
       21 GETTABLEKS                       R3 R2 K9 ["UI"]
       23 GETTABLEKS                       R4 R3 K10 ["ScrollingFrame"]
       25 GETTABLEKS                       R5 R3 K11 ["Pane"]
       27 GETTABLEKS                       R6 R3 K12 ["Image"]
       29 GETTABLEKS                       R7 R3 K13 ["TextLabel"]
       31 GETIMPORT                        R8 K5 [require]
       33 GETTABLEKS                       R11 R0 K14 ["Src"]
       35 GETTABLEKS                       R10 R11 K15 ["Util"]
       37 GETTABLEKS                       R9 R10 K16 ["Constants"]
       39 CALL                             R8 1 1
       40 GETTABLEKS                       R9 R2 K17 ["ContextServices"]
       42 GETTABLEKS                       R10 R9 K18 ["withContext"]
       44 GETTABLEKS                       R11 R1 K19 ["PureComponent"]
       46 LOADK                            R13 K20 ["ErrorList"]
       47 NAMECALL                         R11 R11 K21 ["extend"]
       49 CALL                             R11 2 1
       50 DUPCLOSURE                       R12 K22 [PROTO_0]
       51 CAPTURE                          VAL R1
       52 CAPTURE                          VAL R5
       53 CAPTURE                          VAL R6
       54 CAPTURE                          VAL R8
       55 CAPTURE                          VAL R7
       56 SETTABLEKS                       R12 R11 K23 ["makeMessageElements"]
       58 DUPCLOSURE                       R12 K24 [PROTO_1]
       59 CAPTURE                          VAL R1
       60 CAPTURE                          VAL R4
       61 CAPTURE                          VAL R5
       62 SETTABLEKS                       R12 R11 K25 ["render"]
       64 MOVE                             R12 R10
       65 DUPTABLE                         R13 K28 [{"Stylizer", "Localization"}]
       66 GETTABLEKS                       R14 R9 K26 ["Stylizer"]
       68 SETTABLEKS                       R14 R13 K26 ["Stylizer"]
       70 GETTABLEKS                       R14 R9 K27 ["Localization"]
       72 SETTABLEKS                       R14 R13 K27 ["Localization"]
       74 CALL                             R12 1 1
       75 MOVE                             R13 R11
       76 CALL                             R12 1 1
       77 MOVE                             R11 R12
       78 RETURN                           R11 1
