PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        3 GETTABLEKS                       R2 R2 K1 ["Y"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R1 K2 [UDim2.new]
        2 LOADN                            R2 1
        3 LOADN                            R3 0
        4 LOADN                            R4 0
        5 FASTCALL2K                       MATH_MIN R0 K3 ; [+5]
        7 MOVE                             R6 R0
        8 LOADK                            R7 K3 [180]
        9 GETIMPORT                        R5 K6 [math.min]
       11 CALL                             R5 2 1
       12 CALL                             R1 4 -1
       13 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["createNextOrder"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 LOADK                            R5 K2 ["GenerationCard"]
       10 NAMECALL                         R3 R3 K0 ["use"]
       12 CALL                             R3 2 1
       13 GETUPVAL                         R4 3
       14 GETTABLEKS                       R4 R4 K3 ["useBinding"]
       16 LOADN                            R5 0
       17 CALL                             R4 1 2
       18 GETUPVAL                         R6 3
       19 GETTABLEKS                       R6 R6 K4 ["useCallback"]
       21 NEWCLOSURE                       R7 P0
       22 CAPTURE                          VAL R5
       23 NEWTABLE                         R8 0 1
       25 MOVE                             R9 R5
       26 SETLIST                          R8 R9 1 [1]
       28 CALL                             R6 2 1
       29 GETUPVAL                         R7 3
       30 GETTABLEKS                       R7 R7 K5 ["createElement"]
       32 GETUPVAL                         R8 4
       33 NEWTABLE                         R9 16 0
       35 GETTABLEKS                       R10 R0 K6 ["LayoutOrder"]
       37 SETTABLEKS                       R10 R9 K6 ["LayoutOrder"]
       39 GETIMPORT                        R10 K9 [UDim2.new]
       41 LOADN                            R11 1
       42 LOADN                            R12 -24
       43 LOADN                            R13 0
       44 LOADN                            R14 0
       45 CALL                             R10 4 1
       46 SETTABLEKS                       R10 R9 K10 ["Size"]
       48 GETIMPORT                        R10 K12 [Vector2.new]
       50 LOADK                            R11 K13 [0.5]
       51 LOADN                            R12 1
       52 CALL                             R10 2 1
       53 SETTABLEKS                       R10 R9 K14 ["AnchorPoint"]
       55 GETIMPORT                        R10 K9 [UDim2.new]
       57 LOADK                            R11 K13 [0.5]
       58 LOADN                            R12 0
       59 LOADN                            R13 1
       60 LOADN                            R14 -12
       61 CALL                             R10 4 1
       62 SETTABLEKS                       R10 R9 K15 ["Position"]
       64 GETIMPORT                        R10 K19 [Enum.AutomaticSize.Y]
       66 SETTABLEKS                       R10 R9 K17 ["AutomaticSize"]
       68 GETIMPORT                        R10 K22 [Enum.FillDirection.Vertical]
       70 SETTABLEKS                       R10 R9 K23 ["Layout"]
       72 LOADN                            R10 0
       73 SETTABLEKS                       R10 R9 K24 ["BackgroundTransparency"]
       75 GETTABLEKS                       R10 R3 K25 ["BackgroundColor"]
       77 SETTABLEKS                       R10 R9 K26 ["BackgroundColor3"]
       79 GETUPVAL                         R10 3
       80 GETTABLEKS                       R10 R10 K27 ["Tag"]
       82 LOADK                            R11 K28 ["data-testid=avatar-chat-progress-card"]
       83 SETTABLE                         R11 R9 R10
       84 LOADN                            R10 2
       85 SETTABLEKS                       R10 R9 K29 ["Spacing"]
       87 GETTABLEKS                       R10 R3 K30 ["InnerPadding"]
       89 SETTABLEKS                       R10 R9 K31 ["Padding"]
       91 DUPTABLE                         R10 K38 [{"TitlePane", "UISizeConstraint", "ProgressBar", "Details", "UICorner", "UIStroke"}]
       92 GETUPVAL                         R11 3
       93 GETTABLEKS                       R11 R11 K5 ["createElement"]
       95 GETUPVAL                         R12 4
       96 DUPTABLE                         R13 K40 [{["AutomaticSize"], ["LayoutOrder"], ["Layout"], ["Spacing"] = 2}]
       97 GETIMPORT                        R14 K19 [Enum.AutomaticSize.Y]
       99 SETTABLEKS                       R14 R13 K17 ["AutomaticSize"]
      101 MOVE                             R14 R2
      102 CALL                             R14 0 1
      103 SETTABLEKS                       R14 R13 K6 ["LayoutOrder"]
      105 GETIMPORT                        R14 K42 [Enum.FillDirection.Horizontal]
      107 SETTABLEKS                       R14 R13 K23 ["Layout"]
      109 DUPTABLE                         R14 K45 [{"Title", "Cancel"}]
      110 GETUPVAL                         R15 3
      111 GETTABLEKS                       R15 R15 K5 ["createElement"]
      113 GETUPVAL                         R16 5
      114 DUPTABLE                         R17 K55 [{["Size"], ["AutomaticSize"], ["LayoutOrder"], ["Font"], ["Text"], ["TextColor"], ["TextWrapped"] = False, ["TextSize"], ["TextTruncate"], ["TextXAlignment"], ["TextYAlignment"]}]
      115 GETIMPORT                        R18 K57 [UDim2.fromScale]
      117 LOADN                            R19 0
      118 LOADN                            R20 0
      119 CALL                             R18 2 1
      120 SETTABLEKS                       R18 R17 K10 ["Size"]
      122 GETIMPORT                        R18 K59 [Enum.AutomaticSize.XY]
      124 SETTABLEKS                       R18 R17 K17 ["AutomaticSize"]
      126 MOVE                             R18 R2
      127 CALL                             R18 0 1
      128 SETTABLEKS                       R18 R17 K6 ["LayoutOrder"]
      130 GETTABLEKS                       R18 R3 K60 ["TitleFont"]
      132 SETTABLEKS                       R18 R17 K46 ["Font"]
      134 LOADK                            R20 K61 ["AvatarChatScreen"]
      135 LOADK                            R21 K62 ["ProgressTitle"]
      136 NAMECALL                         R18 R1 K63 ["getText"]
      138 CALL                             R18 3 1
      139 SETTABLEKS                       R18 R17 K47 ["Text"]
      141 GETTABLEKS                       R18 R3 K48 ["TextColor"]
      143 SETTABLEKS                       R18 R17 K48 ["TextColor"]
      145 GETTABLEKS                       R18 R3 K51 ["TextSize"]
      147 SETTABLEKS                       R18 R17 K51 ["TextSize"]
      149 GETIMPORT                        R18 K65 [Enum.TextTruncate.AtEnd]
      151 SETTABLEKS                       R18 R17 K52 ["TextTruncate"]
      153 GETIMPORT                        R18 K67 [Enum.TextXAlignment.Left]
      155 SETTABLEKS                       R18 R17 K53 ["TextXAlignment"]
      157 GETIMPORT                        R18 K69 [Enum.TextYAlignment.Top]
      159 SETTABLEKS                       R18 R17 K54 ["TextYAlignment"]
      161 DUPTABLE                         R18 K71 [{"UIFlexItem"}]
      162 GETUPVAL                         R19 3
      163 GETTABLEKS                       R19 R19 K5 ["createElement"]
      165 LOADK                            R20 K70 ["UIFlexItem"]
      166 DUPTABLE                         R21 K73 [{"FlexMode"}]
      167 GETIMPORT                        R22 K76 [Enum.UIFlexMode.Fill]
      169 SETTABLEKS                       R22 R21 K72 ["FlexMode"]
      171 CALL                             R19 2 1
      172 SETTABLEKS                       R19 R18 K70 ["UIFlexItem"]
      174 CALL                             R15 3 1
      175 SETTABLEKS                       R15 R14 K43 ["Title"]
      177 GETUPVAL                         R15 3
      178 GETTABLEKS                       R15 R15 K5 ["createElement"]
      180 GETUPVAL                         R16 6
      181 DUPTABLE                         R17 K83 [{["LayoutOrder"], ["icon"], ["size"], ["variant"], ["onActivated"], ["testId"] = "avatar-chat-generating-cancel"}]
      182 MOVE                             R18 R2
      183 CALL                             R18 0 1
      184 SETTABLEKS                       R18 R17 K6 ["LayoutOrder"]
      186 GETUPVAL                         R18 7
      187 GETTABLEKS                       R18 R18 K84 ["X"]
      189 SETTABLEKS                       R18 R17 K77 ["icon"]
      191 GETUPVAL                         R18 8
      192 GETTABLEKS                       R18 R18 K85 ["XSmall"]
      194 SETTABLEKS                       R18 R17 K78 ["size"]
      196 GETUPVAL                         R18 9
      197 GETTABLEKS                       R18 R18 K86 ["Utility"]
      199 SETTABLEKS                       R18 R17 K79 ["variant"]
      201 GETTABLEKS                       R18 R0 K87 ["onCancel"]
      203 SETTABLEKS                       R18 R17 K80 ["onActivated"]
      205 CALL                             R15 2 1
      206 SETTABLEKS                       R15 R14 K44 ["Cancel"]
      208 CALL                             R11 3 1
      209 SETTABLEKS                       R11 R10 K32 ["TitlePane"]
      211 GETUPVAL                         R11 3
      212 GETTABLEKS                       R11 R11 K5 ["createElement"]
      214 LOADK                            R12 K33 ["UISizeConstraint"]
      215 DUPTABLE                         R13 K89 [{"MaxSize"}]
      216 GETIMPORT                        R14 K12 [Vector2.new]
      218 GETTABLEKS                       R15 R3 K90 ["MaxWidth"]
      220 LOADK                            R16 K91 [Infinity]
      221 CALL                             R14 2 1
      222 SETTABLEKS                       R14 R13 K88 ["MaxSize"]
      224 CALL                             R11 2 1
      225 SETTABLEKS                       R11 R10 K33 ["UISizeConstraint"]
      227 GETUPVAL                         R11 3
      228 GETTABLEKS                       R11 R11 K5 ["createElement"]
      230 GETUPVAL                         R12 4
      231 DUPTABLE                         R13 K94 [{["LayoutOrder"], ["Layout"], ["HorizontalAlignment"], ["Size"], ["Spacing"] = 10}]
      232 MOVE                             R14 R2
      233 CALL                             R14 0 1
      234 SETTABLEKS                       R14 R13 K6 ["LayoutOrder"]
      236 GETIMPORT                        R14 K42 [Enum.FillDirection.Horizontal]
      238 SETTABLEKS                       R14 R13 K23 ["Layout"]
      240 GETIMPORT                        R14 K96 [Enum.HorizontalAlignment.Center]
      242 SETTABLEKS                       R14 R13 K92 ["HorizontalAlignment"]
      244 GETIMPORT                        R14 K9 [UDim2.new]
      246 LOADN                            R15 1
      247 LOADN                            R16 0
      248 LOADN                            R17 0
      249 LOADN                            R18 32
      250 CALL                             R14 4 1
      251 SETTABLEKS                       R14 R13 K10 ["Size"]
      253 DUPTABLE                         R14 K99 [{"LoadingBar", "ProgressPercentage"}]
      254 GETUPVAL                         R15 3
      255 GETTABLEKS                       R15 R15 K5 ["createElement"]
      257 GETUPVAL                         R16 10
      258 DUPTABLE                         R17 K101 [{"LayoutOrder", "Progress", "Size"}]
      259 MOVE                             R18 R2
      260 CALL                             R18 0 1
      261 SETTABLEKS                       R18 R17 K6 ["LayoutOrder"]
      263 GETTABLEKS                       R18 R0 K102 ["displayedProgress"]
      265 SETTABLEKS                       R18 R17 K100 ["Progress"]
      267 GETIMPORT                        R18 K9 [UDim2.new]
      269 LOADN                            R19 1
      270 LOADN                            R20 -50
      271 LOADN                            R21 0
      272 LOADN                            R22 12
      273 CALL                             R18 4 1
      274 SETTABLEKS                       R18 R17 K10 ["Size"]
      276 CALL                             R15 2 1
      277 SETTABLEKS                       R15 R14 K97 ["LoadingBar"]
      279 GETUPVAL                         R15 3
      280 GETTABLEKS                       R15 R15 K5 ["createElement"]
      282 GETUPVAL                         R16 5
      283 DUPTABLE                         R17 K103 [{"AutomaticSize", "LayoutOrder", "Size", "Text", "TextXAlignment"}]
      284 GETIMPORT                        R18 K19 [Enum.AutomaticSize.Y]
      286 SETTABLEKS                       R18 R17 K17 ["AutomaticSize"]
      288 MOVE                             R18 R2
      289 CALL                             R18 0 1
      290 SETTABLEKS                       R18 R17 K6 ["LayoutOrder"]
      292 GETIMPORT                        R18 K105 [UDim2.fromOffset]
      294 LOADN                            R19 40
      295 LOADN                            R20 0
      296 CALL                             R18 2 1
      297 SETTABLEKS                       R18 R17 K10 ["Size"]
      299 GETIMPORT                        R18 K108 [string.format]
      301 LOADK                            R19 K109 ["%0d%%"]
      302 GETTABLEKS                       R21 R0 K102 ["displayedProgress"]
      304 MULK                             R20 R21 K110 [100]
      305 CALL                             R18 2 1
      306 SETTABLEKS                       R18 R17 K47 ["Text"]
      308 GETIMPORT                        R18 K67 [Enum.TextXAlignment.Left]
      310 SETTABLEKS                       R18 R17 K53 ["TextXAlignment"]
      312 CALL                             R15 2 1
      313 SETTABLEKS                       R15 R14 K98 ["ProgressPercentage"]
      315 CALL                             R11 3 1
      316 SETTABLEKS                       R11 R10 K34 ["ProgressBar"]
      318 GETUPVAL                         R11 3
      319 GETTABLEKS                       R11 R11 K5 ["createElement"]
      321 LOADK                            R12 K111 ["ScrollingFrame"]
      322 DUPTABLE                         R13 K121 [{["LayoutOrder"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["Size"], ["CanvasSize"], ["AutomaticCanvasSize"], ["ScrollingDirection"], ["ScrollBarThickness"] = 6, ["VerticalScrollBarInset"]}]
      323 MOVE                             R14 R2
      324 CALL                             R14 0 1
      325 SETTABLEKS                       R14 R13 K6 ["LayoutOrder"]
      327 DUPCLOSURE                       R16 K122 [PROTO_1]
      328 NAMECALL                         R14 R4 K123 ["map"]
      330 CALL                             R14 2 1
      331 SETTABLEKS                       R14 R13 K10 ["Size"]
      333 GETIMPORT                        R14 K57 [UDim2.fromScale]
      335 LOADN                            R15 1
      336 LOADN                            R16 0
      337 CALL                             R14 2 1
      338 SETTABLEKS                       R14 R13 K115 ["CanvasSize"]
      340 GETIMPORT                        R14 K19 [Enum.AutomaticSize.Y]
      342 SETTABLEKS                       R14 R13 K116 ["AutomaticCanvasSize"]
      344 GETIMPORT                        R14 K124 [Enum.ScrollingDirection.Y]
      346 SETTABLEKS                       R14 R13 K117 ["ScrollingDirection"]
      348 GETIMPORT                        R14 K127 [Enum.ScrollBarInset.ScrollBar]
      350 SETTABLEKS                       R14 R13 K120 ["VerticalScrollBarInset"]
      352 DUPTABLE                         R14 K129 [{"Stages"}]
      353 GETUPVAL                         R15 3
      354 GETTABLEKS                       R15 R15 K5 ["createElement"]
      356 GETUPVAL                         R16 11
      357 DUPTABLE                         R17 K133 [{["tag"] = "size-full-0 auto-y", ["onAbsoluteSizeChanged"]}]
      358 SETTABLEKS                       R6 R17 K132 ["onAbsoluteSizeChanged"]
      360 DUPTABLE                         R18 K135 [{"ProgressDetails"}]
      361 GETUPVAL                         R19 3
      362 GETTABLEKS                       R19 R19 K5 ["createElement"]
      364 GETUPVAL                         R20 12
      365 DUPTABLE                         R21 K140 [{"progress", "step", "nodes", "thoughtByNode"}]
      366 GETTABLEKS                       R22 R0 K136 ["progress"]
      368 SETTABLEKS                       R22 R21 K136 ["progress"]
      370 GETTABLEKS                       R22 R0 K137 ["step"]
      372 SETTABLEKS                       R22 R21 K137 ["step"]
      374 GETTABLEKS                       R22 R0 K138 ["nodes"]
      376 SETTABLEKS                       R22 R21 K138 ["nodes"]
      378 GETTABLEKS                       R22 R0 K139 ["thoughtByNode"]
      380 SETTABLEKS                       R22 R21 K139 ["thoughtByNode"]
      382 CALL                             R19 2 1
      383 SETTABLEKS                       R19 R18 K134 ["ProgressDetails"]
      385 CALL                             R15 3 1
      386 SETTABLEKS                       R15 R14 K128 ["Stages"]
      388 CALL                             R11 3 1
      389 SETTABLEKS                       R11 R10 K35 ["Details"]
      391 GETUPVAL                         R11 3
      392 GETTABLEKS                       R11 R11 K5 ["createElement"]
      394 LOADK                            R12 K36 ["UICorner"]
      395 DUPTABLE                         R13 K142 [{"CornerRadius"}]
      396 GETTABLEKS                       R14 R3 K141 ["CornerRadius"]
      398 SETTABLEKS                       R14 R13 K141 ["CornerRadius"]
      400 CALL                             R11 2 1
      401 SETTABLEKS                       R11 R10 K36 ["UICorner"]
      403 GETUPVAL                         R11 3
      404 GETTABLEKS                       R11 R11 K5 ["createElement"]
      406 LOADK                            R12 K37 ["UIStroke"]
      407 DUPTABLE                         R13 K146 [{"ApplyStrokeMode", "Color", "Thickness"}]
      408 GETIMPORT                        R14 K148 [Enum.ApplyStrokeMode.Border]
      410 SETTABLEKS                       R14 R13 K143 ["ApplyStrokeMode"]
      412 GETTABLEKS                       R14 R3 K149 ["StrokeColor"]
      414 SETTABLEKS                       R14 R13 K144 ["Color"]
      416 GETTABLEKS                       R14 R3 K150 ["StrokeThickness"]
      418 SETTABLEKS                       R14 R13 K145 ["Thickness"]
      420 CALL                             R11 2 1
      421 SETTABLEKS                       R11 R10 K37 ["UIStroke"]
      423 CALL                             R7 3 -1
      424 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["ReactUtils"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["Foundation"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R4 K11 ["Enums"]
       37 GETTABLEKS                       R5 R5 K12 ["ButtonVariant"]
       39 GETTABLEKS                       R6 R4 K13 ["IconButton"]
       41 GETTABLEKS                       R7 R4 K11 ["Enums"]
       43 GETTABLEKS                       R7 R7 K14 ["IconName"]
       45 GETTABLEKS                       R8 R4 K11 ["Enums"]
       47 GETTABLEKS                       R8 R8 K15 ["InputSize"]
       49 GETTABLEKS                       R9 R4 K16 ["View"]
       51 GETIMPORT                        R10 K5 [require]
       53 GETTABLEKS                       R11 R0 K17 ["Src"]
       55 GETTABLEKS                       R11 R11 K18 ["Components"]
       57 GETTABLEKS                       R11 R11 K19 ["Screens"]
       59 GETTABLEKS                       R11 R11 K20 ["AvatarChatScreen"]
       61 GETTABLEKS                       R11 R11 K21 ["ProgressDetails"]
       63 CALL                             R10 1 1
       64 GETIMPORT                        R11 K5 [require]
       66 GETTABLEKS                       R12 R0 K17 ["Src"]
       68 GETTABLEKS                       R12 R12 K22 ["Resources"]
       70 GETTABLEKS                       R12 R12 K23 ["Theme"]
       72 CALL                             R11 1 1
       73 GETIMPORT                        R12 K5 [require]
       75 GETTABLEKS                       R13 R0 K17 ["Src"]
       77 GETTABLEKS                       R13 R13 K24 ["Types"]
       79 CALL                             R12 1 1
       80 GETTABLEKS                       R13 R1 K25 ["ContextServices"]
       82 GETTABLEKS                       R13 R13 K26 ["Localization"]
       84 GETTABLEKS                       R14 R1 K25 ["ContextServices"]
       86 GETTABLEKS                       R14 R14 K27 ["Stylizer"]
       88 GETTABLEKS                       R15 R1 K28 ["UI"]
       90 GETTABLEKS                       R16 R15 K29 ["LoadingBar"]
       92 GETTABLEKS                       R17 R15 K30 ["Pane"]
       94 GETTABLEKS                       R18 R15 K31 ["TextLabel"]
       96 DUPCLOSURE                       R19 K32 [PROTO_2]
       97 CAPTURE                          VAL R13
       98 CAPTURE                          VAL R3
       99 CAPTURE                          VAL R14
      100 CAPTURE                          VAL R2
      101 CAPTURE                          VAL R17
      102 CAPTURE                          VAL R18
      103 CAPTURE                          VAL R6
      104 CAPTURE                          VAL R7
      105 CAPTURE                          VAL R8
      106 CAPTURE                          VAL R5
      107 CAPTURE                          VAL R16
      108 CAPTURE                          VAL R9
      109 CAPTURE                          VAL R10
      110 RETURN                           R19 1
