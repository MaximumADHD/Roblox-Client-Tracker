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
       21 JUMPIFNOTLT                      R14 R8 ; [+22]
       23 MOVE                             R15 R7
       24 GETUPVAL                         R16 0
       25 GETTABLEKS                       R16 R16 K8 ["createElement"]
       27 GETUPVAL                         R17 1
       28 DUPTABLE                         R18 K13 [{["Size"], ["BackgroundTransparency"] = 1, ["LayoutOrder"]}]
       29 GETIMPORT                        R19 K16 [UDim2.fromOffset]
       31 LOADN                            R20 0
       32 LOADN                            R21 10
       33 CALL                             R19 2 1
       34 SETTABLEKS                       R19 R18 K9 ["Size"]
       36 SETTABLEKS                       R8 R18 K12 ["LayoutOrder"]
       38 CALL                             R16 2 -1
       39 FASTCALL                         TABLE_INSERT ; [+2]
       40 GETIMPORT                        R14 K19 [table.insert]
       42 CALL                             R14 -1 0
       43 ADDK                             R8 R8 K11 [1]
       44 MOVE                             R15 R7
       45 GETUPVAL                         R16 0
       46 GETTABLEKS                       R16 R16 K8 ["createElement"]
       48 GETUPVAL                         R17 1
       49 DUPTABLE                         R18 K27 [{["AutomaticSize"], ["LayoutOrder"], ["HorizontalAlignment"], ["VerticalAlignment"], ["Layout"], ["Spacing"] = 2, ["Padding"]}]
       50 GETIMPORT                        R19 K30 [Enum.AutomaticSize.XY]
       52 SETTABLEKS                       R19 R18 K20 ["AutomaticSize"]
       54 SETTABLEKS                       R8 R18 K12 ["LayoutOrder"]
       56 GETIMPORT                        R19 K32 [Enum.HorizontalAlignment.Left]
       58 SETTABLEKS                       R19 R18 K21 ["HorizontalAlignment"]
       60 GETIMPORT                        R19 K34 [Enum.VerticalAlignment.Top]
       62 SETTABLEKS                       R19 R18 K22 ["VerticalAlignment"]
       64 GETIMPORT                        R19 K37 [Enum.FillDirection.Horizontal]
       66 SETTABLEKS                       R19 R18 K23 ["Layout"]
       68 DUPTABLE                         R19 K38 [{["Left"] = 2}]
       69 SETTABLEKS                       R19 R18 K26 ["Padding"]
       71 DUPTABLE                         R19 K41 [{"Marker", "Content"}]
       72 GETUPVAL                         R20 0
       73 GETTABLEKS                       R20 R20 K8 ["createElement"]
       75 GETUPVAL                         R21 1
       76 DUPTABLE                         R22 K42 [{["LayoutOrder"] = 1, ["Size"]}]
       77 GETIMPORT                        R23 K44 [UDim2.new]
       79 LOADN                            R24 0
       80 LOADN                            R25 18
       81 LOADN                            R26 1
       82 LOADN                            R27 0
       83 CALL                             R23 4 1
       84 SETTABLEKS                       R23 R22 K9 ["Size"]
       86 DUPTABLE                         R23 K46 [{"Image"}]
       87 GETUPVAL                         R24 0
       88 GETTABLEKS                       R24 R24 K8 ["createElement"]
       90 GETUPVAL                         R25 2
       91 DUPTABLE                         R26 K49 [{["Image"], ["LayoutOrder"] = 1, ["Size"], ["Position"], ["AnchorPoint"]}]
       92 GETTABLEKS                       R28 R13 K50 ["severity"]
       94 GETUPVAL                         R29 3
       95 GETTABLEKS                       R29 R29 K51 ["SEVERITY"]
       97 GETTABLEKS                       R29 R29 K52 ["Error"]
       99 JUMPIFNOTLE                      R29 R28 ; [+4]
      101 GETTABLEKS                       R27 R4 K53 ["errorImage"]
      103 JUMP                             ; [+2]
      104 GETTABLEKS                       R27 R4 K54 ["warningImage"]
      106 SETTABLEKS                       R27 R26 K45 ["Image"]
      108 GETIMPORT                        R27 K16 [UDim2.fromOffset]
      110 LOADN                            R28 12
      111 LOADN                            R29 12
      112 CALL                             R27 2 1
      113 SETTABLEKS                       R27 R26 K9 ["Size"]
      115 GETIMPORT                        R27 K44 [UDim2.new]
      117 LOADK                            R28 K55 [0.5]
      118 LOADN                            R29 0
      119 LOADN                            R30 0
      120 LOADN                            R31 3
      121 CALL                             R27 4 1
      122 SETTABLEKS                       R27 R26 K47 ["Position"]
      124 GETIMPORT                        R27 K57 [Vector2.new]
      126 LOADK                            R28 K55 [0.5]
      127 LOADN                            R29 0
      128 CALL                             R27 2 1
      129 SETTABLEKS                       R27 R26 K48 ["AnchorPoint"]
      131 CALL                             R24 2 1
      132 SETTABLEKS                       R24 R23 K45 ["Image"]
      134 CALL                             R20 3 1
      135 SETTABLEKS                       R20 R19 K39 ["Marker"]
      137 GETUPVAL                         R20 0
      138 GETTABLEKS                       R20 R20 K8 ["createElement"]
      140 GETUPVAL                         R21 4
      141 DUPTABLE                         R22 K67 [{["AutomaticSize"], ["Font"], ["LayoutOrder"] = 2, ["Size"], ["Text"], ["TextColor"], ["TextSize"], ["TextTruncate"], ["TextWrapped"] = True, ["TextXAlignment"], ["TextYAlignment"]}]
      142 GETIMPORT                        R23 K69 [Enum.AutomaticSize.Y]
      144 SETTABLEKS                       R23 R22 K20 ["AutomaticSize"]
      146 GETTABLEKS                       R23 R2 K70 ["font"]
      148 SETTABLEKS                       R23 R22 K58 ["Font"]
      150 GETIMPORT                        R23 K44 [UDim2.new]
      152 LOADN                            R24 1
      153 LOADN                            R25 -18
      154 LOADN                            R26 0
      155 LOADN                            R27 0
      156 CALL                             R23 4 1
      157 SETTABLEKS                       R23 R22 K9 ["Size"]
      159 MOVE                             R25 R6
      160 GETTABLEKS                       R26 R13 K71 ["id"]
      162 DUPTABLE                         R27 K74 [{["entries"] = ""}]
      163 NAMECALL                         R23 R3 K75 ["getText"]
      165 CALL                             R23 4 1
      166 SETTABLEKS                       R23 R22 K59 ["Text"]
      168 GETTABLEKS                       R23 R4 K76 ["textColor"]
      170 SETTABLEKS                       R23 R22 K60 ["TextColor"]
      172 GETTABLEKS                       R23 R4 K77 ["textSize"]
      174 SETTABLEKS                       R23 R22 K61 ["TextSize"]
      176 GETIMPORT                        R23 K79 [Enum.TextTruncate.AtEnd]
      178 SETTABLEKS                       R23 R22 K62 ["TextTruncate"]
      180 GETIMPORT                        R23 K80 [Enum.TextXAlignment.Left]
      182 SETTABLEKS                       R23 R22 K65 ["TextXAlignment"]
      184 GETIMPORT                        R23 K81 [Enum.TextYAlignment.Top]
      186 SETTABLEKS                       R23 R22 K66 ["TextYAlignment"]
      188 CALL                             R20 2 1
      189 SETTABLEKS                       R20 R19 K40 ["Content"]
      191 CALL                             R16 3 -1
      192 FASTCALL                         TABLE_INSERT ; [+2]
      193 GETIMPORT                        R14 K19 [table.insert]
      195 CALL                             R14 -1 0
      196 ADDK                             R8 R8 K11 [1]
      197 GETTABLEKS                       R14 R13 K82 ["details"]
      199 JUMPIFEQKNIL                     R14 ; [+99]
      201 GETTABLEKS                       R14 R13 K82 ["details"]
      203 LOADNIL                          R15
      204 LOADNIL                          R16
      205 FORGPREP                         R14
      206 MOVE                             R20 R7
      207 GETUPVAL                         R21 0
      208 GETTABLEKS                       R21 R21 K8 ["createElement"]
      210 GETUPVAL                         R22 1
      211 DUPTABLE                         R23 K83 [{["AutomaticSize"], ["LayoutOrder"], ["HorizontalAlignment"], ["VerticalAlignment"], ["Spacing"] = 2, ["Padding"]}]
      212 GETIMPORT                        R24 K30 [Enum.AutomaticSize.XY]
      214 SETTABLEKS                       R24 R23 K20 ["AutomaticSize"]
      216 SETTABLEKS                       R8 R23 K12 ["LayoutOrder"]
      218 GETIMPORT                        R24 K32 [Enum.HorizontalAlignment.Left]
      220 SETTABLEKS                       R24 R23 K21 ["HorizontalAlignment"]
      222 GETIMPORT                        R24 K34 [Enum.VerticalAlignment.Top]
      224 SETTABLEKS                       R24 R23 K22 ["VerticalAlignment"]
      226 DUPTABLE                         R24 K38 [{["Left"] = 2}]
      227 SETTABLEKS                       R24 R23 K26 ["Padding"]
      229 DUPTABLE                         R24 K84 [{"Content"}]
      230 GETUPVAL                         R25 0
      231 GETTABLEKS                       R25 R25 K8 ["createElement"]
      233 GETUPVAL                         R26 4
      234 DUPTABLE                         R27 K85 [{["AutomaticSize"], ["Font"], ["LayoutOrder"] = 2, ["Size"], ["Position"], ["Text"], ["TextColor"], ["TextSize"], ["TextTruncate"], ["TextWrapped"] = True, ["TextXAlignment"], ["TextYAlignment"]}]
      235 GETIMPORT                        R28 K69 [Enum.AutomaticSize.Y]
      237 SETTABLEKS                       R28 R27 K20 ["AutomaticSize"]
      239 GETTABLEKS                       R28 R2 K70 ["font"]
      241 SETTABLEKS                       R28 R27 K58 ["Font"]
      243 GETIMPORT                        R28 K44 [UDim2.new]
      245 LOADN                            R29 1
      246 LOADN                            R30 -30
      247 LOADN                            R31 0
      248 LOADN                            R32 0
      249 CALL                             R28 4 1
      250 SETTABLEKS                       R28 R27 K9 ["Size"]
      252 GETIMPORT                        R28 K44 [UDim2.new]
      254 LOADN                            R29 0
      255 LOADN                            R30 30
      256 LOADN                            R31 0
      257 LOADN                            R32 0
      258 CALL                             R28 4 1
      259 SETTABLEKS                       R28 R27 K47 ["Position"]
      261 GETIMPORT                        R28 K88 [string.format]
      263 LOADK                            R29 K89 ["- %s"]
      264 MOVE                             R30 R18
      265 CALL                             R28 2 1
      266 SETTABLEKS                       R28 R27 K59 ["Text"]
      268 GETTABLEKS                       R28 R4 K76 ["textColor"]
      270 SETTABLEKS                       R28 R27 K60 ["TextColor"]
      272 GETTABLEKS                       R28 R4 K77 ["textSize"]
      274 SETTABLEKS                       R28 R27 K61 ["TextSize"]
      276 GETIMPORT                        R28 K79 [Enum.TextTruncate.AtEnd]
      278 SETTABLEKS                       R28 R27 K62 ["TextTruncate"]
      280 GETIMPORT                        R28 K80 [Enum.TextXAlignment.Left]
      282 SETTABLEKS                       R28 R27 K65 ["TextXAlignment"]
      284 GETIMPORT                        R28 K81 [Enum.TextYAlignment.Top]
      286 SETTABLEKS                       R28 R27 K66 ["TextYAlignment"]
      288 CALL                             R25 2 1
      289 SETTABLEKS                       R25 R24 K40 ["Content"]
      291 CALL                             R21 3 -1
      292 FASTCALL                         TABLE_INSERT ; [+2]
      293 GETIMPORT                        R19 K19 [table.insert]
      295 CALL                             R19 -1 0
      296 ADDK                             R8 R8 K11 [1]
      297 FORGLOOP                         R14 2 ; [-92]
      299 FORGLOOP                         R9 2 [inext] ; [-280]
      301 RETURN                           R7 1

PROTO_1:
        0 NAMECALL                         R1 R0 K0 ["makeMessageElements"]
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["createElement"]
        6 LOADK                            R3 K2 ["Frame"]
        7 DUPTABLE                         R4 K6 [{["Size"], ["BackgroundTransparency"] = 1}]
        8 GETIMPORT                        R5 K9 [UDim2.new]
       10 LOADN                            R6 1
       11 LOADN                            R7 0
       12 LOADN                            R8 1
       13 LOADN                            R9 0
       14 CALL                             R5 4 1
       15 SETTABLEKS                       R5 R4 K3 ["Size"]
       17 DUPTABLE                         R5 K12 [{"Layout", "Body"}]
       18 GETUPVAL                         R6 0
       19 GETTABLEKS                       R6 R6 K1 ["createElement"]
       21 LOADK                            R7 K13 ["UIListLayout"]
       22 DUPTABLE                         R8 K17 [{"SortOrder", "FillDirection", "Padding"}]
       23 GETIMPORT                        R9 K20 [Enum.SortOrder.LayoutOrder]
       25 SETTABLEKS                       R9 R8 K14 ["SortOrder"]
       27 GETIMPORT                        R9 K22 [Enum.FillDirection.Vertical]
       29 SETTABLEKS                       R9 R8 K15 ["FillDirection"]
       31 GETIMPORT                        R9 K24 [UDim.new]
       33 LOADN                            R10 0
       34 LOADN                            R11 10
       35 CALL                             R9 2 1
       36 SETTABLEKS                       R9 R8 K16 ["Padding"]
       38 CALL                             R6 2 1
       39 SETTABLEKS                       R6 R5 K10 ["Layout"]
       41 GETUPVAL                         R6 0
       42 GETTABLEKS                       R6 R6 K1 ["createElement"]
       44 GETUPVAL                         R7 1
       45 DUPTABLE                         R8 K26 [{["LayoutOrder"] = 2, ["Size"]}]
       46 GETIMPORT                        R9 K9 [UDim2.new]
       48 LOADN                            R10 1
       49 LOADN                            R11 0
       50 LOADN                            R12 1
       51 LOADN                            R13 -10
       52 CALL                             R9 4 1
       53 SETTABLEKS                       R9 R8 K3 ["Size"]
       55 DUPTABLE                         R9 K28 [{"MessagesPane"}]
       56 GETUPVAL                         R10 0
       57 GETTABLEKS                       R10 R10 K1 ["createElement"]
       59 GETUPVAL                         R11 2
       60 DUPTABLE                         R12 K32 [{"AutomaticSize", "HorizontalAlignment", "VerticalAlignment", "Layout"}]
       61 GETIMPORT                        R13 K34 [Enum.AutomaticSize.XY]
       63 SETTABLEKS                       R13 R12 K29 ["AutomaticSize"]
       65 GETIMPORT                        R13 K36 [Enum.HorizontalAlignment.Left]
       67 SETTABLEKS                       R13 R12 K30 ["HorizontalAlignment"]
       69 GETIMPORT                        R13 K38 [Enum.VerticalAlignment.Top]
       71 SETTABLEKS                       R13 R12 K31 ["VerticalAlignment"]
       73 GETIMPORT                        R13 K22 [Enum.FillDirection.Vertical]
       75 SETTABLEKS                       R13 R12 K10 ["Layout"]
       77 MOVE                             R13 R1
       78 CALL                             R10 3 1
       79 SETTABLEKS                       R10 R9 K27 ["MessagesPane"]
       81 CALL                             R6 3 1
       82 SETTABLEKS                       R6 R5 K11 ["Body"]
       84 CALL                             R2 3 -1
       85 RETURN                           R2 -1

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
       21 GETTABLEKS                       R3 R2 K9 ["UI"]
       23 GETTABLEKS                       R4 R3 K10 ["ScrollingFrame"]
       25 GETTABLEKS                       R5 R3 K11 ["Pane"]
       27 GETTABLEKS                       R6 R3 K12 ["Image"]
       29 GETTABLEKS                       R7 R3 K13 ["TextLabel"]
       31 GETIMPORT                        R8 K5 [require]
       33 GETTABLEKS                       R9 R0 K14 ["Src"]
       35 GETTABLEKS                       R9 R9 K15 ["Util"]
       37 GETTABLEKS                       R9 R9 K16 ["Constants"]
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
