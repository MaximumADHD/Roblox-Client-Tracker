PROTO_0:
        0 NEWTABLE                         R0 0 2
        2 LOADK                            R1 K0 ["SelectedTabColor"]
        3 LOADK                            R2 K1 ["UIGroupColor"]
        4 SETLIST                          R0 R1 2 [1]
        6 GETIMPORT                        R1 K3 [ipairs]
        8 MOVE                             R2 R0
        9 CALL                             R1 1 3
       10 FORGPREP_INEXT                   R1
       11 GETUPVAL                         R6 0
       12 GETUPVAL                         R8 1
       13 GETUPVAL                         R10 0
       14 GETTABLE                         R9 R10 R5
       15 GETTABLE                         R7 R8 R9
       16 SETTABLE                         R7 R6 R5
       17 FORGLOOP                         R1 2 [inext] ; [-7]
       19 RETURN                           R0 0

PROTO_1:
        0 NEWTABLE                         R0 32 0
        2 GETIMPORT                        R1 K2 [UDim2.new]
        4 LOADN                            R2 0
        5 LOADN                            R3 160
        6 LOADN                            R4 0
        7 LOADN                            R5 32
        8 CALL                             R1 4 1
        9 SETTABLEKS                       R1 R0 K3 ["PrimaryButtonSize"]
       11 LOADN                            R1 340
       12 SETTABLEKS                       R1 R0 K4 ["UIGroupWidthPx"]
       14 LOADN                            R1 10
       15 SETTABLEKS                       R1 R0 K5 ["PaddingPx"]
       17 GETUPVAL                         R1 0
       18 GETTABLEKS                       R1 R1 K6 ["Button"]
       20 GETUPVAL                         R2 1
       21 GETTABLEKS                       R2 R2 K7 ["Dictionary"]
       23 GETTABLEKS                       R2 R2 K8 ["join"]
       25 GETUPVAL                         R3 2
       26 NEWTABLE                         R4 2 0
       28 GETUPVAL                         R5 1
       29 GETTABLEKS                       R5 R5 K7 ["Dictionary"]
       31 GETTABLEKS                       R5 R5 K8 ["join"]
       33 GETUPVAL                         R6 3
       34 NEWTABLE                         R7 2 0
       36 GETUPVAL                         R8 4
       37 GETTABLEKS                       R8 R8 K9 ["Selected"]
       39 DUPTABLE                         R9 K12 [{"BackgroundStyle", "TextColor"}]
       40 GETUPVAL                         R10 1
       41 GETTABLEKS                       R10 R10 K7 ["Dictionary"]
       43 GETTABLEKS                       R10 R10 K8 ["join"]
       45 GETUPVAL                         R11 5
       46 DUPTABLE                         R12 K14 [{"Color"}]
       47 GETIMPORT                        R13 K17 [Color3.fromRGB]
       49 LOADN                            R14 255
       50 LOADN                            R15 211
       51 LOADN                            R16 16
       52 CALL                             R13 3 1
       53 SETTABLEKS                       R13 R12 K13 ["Color"]
       55 CALL                             R10 2 1
       56 SETTABLEKS                       R10 R9 K10 ["BackgroundStyle"]
       58 GETIMPORT                        R10 K17 [Color3.fromRGB]
       60 LOADN                            R11 0
       61 LOADN                            R12 0
       62 LOADN                            R13 0
       63 CALL                             R10 3 1
       64 SETTABLEKS                       R10 R9 K11 ["TextColor"]
       66 SETTABLE                         R9 R7 R8
       67 GETUPVAL                         R8 4
       68 GETTABLEKS                       R8 R8 K18 ["Pressed"]
       70 DUPTABLE                         R9 K12 [{"BackgroundStyle", "TextColor"}]
       71 GETUPVAL                         R10 1
       72 GETTABLEKS                       R10 R10 K7 ["Dictionary"]
       74 GETTABLEKS                       R10 R10 K8 ["join"]
       76 GETUPVAL                         R11 5
       77 DUPTABLE                         R12 K14 [{"Color"}]
       78 GETIMPORT                        R13 K17 [Color3.fromRGB]
       80 LOADN                            R14 255
       81 LOADN                            R15 25
       82 LOADN                            R16 25
       83 CALL                             R13 3 1
       84 SETTABLEKS                       R13 R12 K13 ["Color"]
       86 CALL                             R10 2 1
       87 SETTABLEKS                       R10 R9 K10 ["BackgroundStyle"]
       89 GETIMPORT                        R10 K17 [Color3.fromRGB]
       91 LOADN                            R11 255
       92 LOADN                            R12 255
       93 LOADN                            R13 255
       94 CALL                             R10 3 1
       95 SETTABLEKS                       R10 R9 K11 ["TextColor"]
       97 SETTABLE                         R9 R7 R8
       98 CALL                             R5 2 1
       99 SETTABLEKS                       R5 R4 K19 ["&RoundPrimaryRecordButton"]
      101 GETUPVAL                         R5 1
      102 GETTABLEKS                       R5 R5 K7 ["Dictionary"]
      104 GETTABLEKS                       R5 R5 K8 ["join"]
      106 GETUPVAL                         R6 3
      107 NEWTABLE                         R7 2 0
      109 GETUPVAL                         R8 4
      110 GETTABLEKS                       R8 R8 K9 ["Selected"]
      112 DUPTABLE                         R9 K12 [{"BackgroundStyle", "TextColor"}]
      113 GETUPVAL                         R10 1
      114 GETTABLEKS                       R10 R10 K7 ["Dictionary"]
      116 GETTABLEKS                       R10 R10 K8 ["join"]
      118 GETUPVAL                         R11 5
      119 DUPTABLE                         R12 K14 [{"Color"}]
      120 GETIMPORT                        R13 K17 [Color3.fromRGB]
      122 LOADN                            R14 255
      123 LOADN                            R15 211
      124 LOADN                            R16 16
      125 CALL                             R13 3 1
      126 SETTABLEKS                       R13 R12 K13 ["Color"]
      128 CALL                             R10 2 1
      129 SETTABLEKS                       R10 R9 K10 ["BackgroundStyle"]
      131 GETIMPORT                        R10 K17 [Color3.fromRGB]
      133 LOADN                            R11 0
      134 LOADN                            R12 0
      135 LOADN                            R13 0
      136 CALL                             R10 3 1
      137 SETTABLEKS                       R10 R9 K11 ["TextColor"]
      139 SETTABLE                         R9 R7 R8
      140 GETUPVAL                         R8 4
      141 GETTABLEKS                       R8 R8 K18 ["Pressed"]
      143 DUPTABLE                         R9 K12 [{"BackgroundStyle", "TextColor"}]
      144 GETUPVAL                         R10 1
      145 GETTABLEKS                       R10 R10 K7 ["Dictionary"]
      147 GETTABLEKS                       R10 R10 K8 ["join"]
      149 GETUPVAL                         R11 5
      150 DUPTABLE                         R12 K14 [{"Color"}]
      151 GETIMPORT                        R13 K17 [Color3.fromRGB]
      153 LOADN                            R14 0
      154 LOADN                            R15 219
      155 LOADN                            R16 26
      156 CALL                             R13 3 1
      157 SETTABLEKS                       R13 R12 K13 ["Color"]
      159 CALL                             R10 2 1
      160 SETTABLEKS                       R10 R9 K10 ["BackgroundStyle"]
      162 GETIMPORT                        R10 K17 [Color3.fromRGB]
      164 LOADN                            R11 255
      165 LOADN                            R12 255
      166 LOADN                            R13 255
      167 CALL                             R10 3 1
      168 SETTABLEKS                       R10 R9 K11 ["TextColor"]
      170 SETTABLE                         R9 R7 R8
      171 CALL                             R5 2 1
      172 SETTABLEKS                       R5 R4 K20 ["&RoundPrimaryPlayButton"]
      174 CALL                             R2 2 1
      175 SETTABLE                         R2 R0 R1
      176 GETUPVAL                         R1 0
      177 GETTABLEKS                       R1 R1 K21 ["Pane"]
      179 GETUPVAL                         R2 1
      180 GETTABLEKS                       R2 R2 K7 ["Dictionary"]
      182 GETTABLEKS                       R2 R2 K8 ["join"]
      184 GETUPVAL                         R3 6
      185 NEWTABLE                         R4 2 0
      187 DUPTABLE                         R5 K24 [{"CornerRadius", "Background"}]
      188 GETIMPORT                        R6 K26 [UDim.new]
      190 LOADN                            R7 0
      191 LOADN                            R8 8
      192 CALL                             R6 2 1
      193 SETTABLEKS                       R6 R5 K22 ["CornerRadius"]
      195 GETUPVAL                         R6 7
      196 GETTABLEKS                       R6 R6 K27 ["UIGroupColor"]
      198 SETTABLEKS                       R6 R5 K23 ["Background"]
      200 SETTABLEKS                       R5 R4 K28 ["&CornerBox"]
      202 DUPTABLE                         R5 K24 [{"CornerRadius", "Background"}]
      203 GETIMPORT                        R6 K26 [UDim.new]
      205 LOADN                            R7 0
      206 LOADN                            R8 8
      207 CALL                             R6 2 1
      208 SETTABLEKS                       R6 R5 K22 ["CornerRadius"]
      210 GETIMPORT                        R6 K29 [Color3.new]
      212 LOADN                            R7 0
      213 LOADN                            R8 0
      214 LOADN                            R9 0
      215 CALL                             R6 3 1
      216 SETTABLEKS                       R6 R5 K23 ["Background"]
      218 SETTABLEKS                       R5 R4 K30 ["&KeyTileBox"]
      220 CALL                             R2 2 1
      221 SETTABLE                         R2 R0 R1
      222 GETUPVAL                         R1 0
      223 GETTABLEKS                       R1 R1 K31 ["TabbedView"]
      225 DUPTABLE                         R2 K36 [{["TabBarHeightPx"] = 30, ["ForegroundTabColor"], ["TabBarBackgroundColor"]}]
      226 GETUPVAL                         R3 7
      227 GETTABLEKS                       R3 R3 K37 ["SelectedTabColor"]
      229 SETTABLEKS                       R3 R2 K34 ["ForegroundTabColor"]
      231 GETUPVAL                         R3 7
      232 GETTABLEKS                       R3 R3 K38 ["SubBackground"]
      234 SETTABLEKS                       R3 R2 K35 ["TabBarBackgroundColor"]
      236 SETTABLE                         R2 R0 R1
      237 GETUPVAL                         R1 0
      238 GETTABLEKS                       R1 R1 K39 ["PlaybackTabView"]
      240 DUPTABLE                         R2 K41 [{["PaddingPx"] = 10}]
      241 SETTABLE                         R2 R0 R1
      242 GETUPVAL                         R1 0
      243 GETTABLEKS                       R1 R1 K42 ["FileSelectorUIGroup"]
      245 DUPTABLE                         R2 K41 [{["PaddingPx"] = 10}]
      246 SETTABLE                         R2 R0 R1
      247 GETUPVAL                         R1 0
      248 GETTABLEKS                       R1 R1 K43 ["TextLabel"]
      250 GETUPVAL                         R2 1
      251 GETTABLEKS                       R2 R2 K7 ["Dictionary"]
      253 GETTABLEKS                       R2 R2 K8 ["join"]
      255 GETUPVAL                         R3 8
      256 NEWTABLE                         R4 1 0
      258 DUPTABLE                         R5 K48 [{["TextSize"] = 16, ["TextColor"], ["TextWrapped"] = True}]
      259 GETUPVAL                         R6 7
      260 GETTABLEKS                       R6 R6 K49 ["MainText"]
      262 SETTABLEKS                       R6 R5 K11 ["TextColor"]
      264 SETTABLEKS                       R5 R4 K50 ["&StatusTextLabel"]
      266 CALL                             R2 2 1
      267 SETTABLE                         R2 R0 R1
      268 GETUPVAL                         R1 0
      269 GETTABLEKS                       R1 R1 K51 ["LabeledToggleButton"]
      271 DUPTABLE                         R2 K56 [{["ComponentSize"], ["ToggleSize"], ["LeftInsetPx"] = 12, ["PaddingPx"] = 10}]
      272 GETIMPORT                        R3 K2 [UDim2.new]
      274 LOADN                            R4 0
      275 LOADN                            R5 150
      276 LOADN                            R6 0
      277 LOADN                            R7 30
      278 CALL                             R3 4 1
      279 SETTABLEKS                       R3 R2 K52 ["ComponentSize"]
      281 GETIMPORT                        R3 K58 [UDim2.fromOffset]
      283 LOADN                            R4 40
      284 LOADN                            R5 24
      285 CALL                             R3 2 1
      286 SETTABLEKS                       R3 R2 K53 ["ToggleSize"]
      288 SETTABLE                         R2 R0 R1
      289 GETUPVAL                         R1 0
      290 GETTABLEKS                       R1 R1 K59 ["UIKeyValueTextLabel"]
      292 DUPTABLE                         R2 K64 [{["PaddingPx"] = 10, ["HeightPx"] = 25, ["KeyWidthPx"] = 150}]
      293 SETTABLE                         R2 R0 R1
      294 GETUPVAL                         R1 0
      295 GETTABLEKS                       R1 R1 K42 ["FileSelectorUIGroup"]
      297 DUPTABLE                         R2 K67 [{["PaddingPx"] = 10, ["ProgressBarWidth"] = 250}]
      298 SETTABLE                         R2 R0 R1
      299 GETUPVAL                         R1 0
      300 GETTABLEKS                       R1 R1 K68 ["FilterSettingsUIGroup"]
      302 DUPTABLE                         R2 K74 [{["GridAreaHeightPx"] = 100, ["PaddingPx"] = 10, ["GridLayoutCellSize"], ["GridCellPaddingYPx"] = 2}]
      303 GETIMPORT                        R3 K58 [UDim2.fromOffset]
      305 LOADN                            R4 150
      306 LOADN                            R5 30
      307 CALL                             R3 2 1
      308 SETTABLEKS                       R3 R2 K71 ["GridLayoutCellSize"]
      310 SETTABLE                         R2 R0 R1
      311 GETUPVAL                         R1 0
      312 GETTABLEKS                       R1 R1 K75 ["PlaybackInfoUIGroup"]
      314 DUPTABLE                         R2 K41 [{["PaddingPx"] = 10}]
      315 SETTABLE                         R2 R0 R1
      316 GETUPVAL                         R1 1
      317 GETTABLEKS                       R1 R1 K7 ["Dictionary"]
      319 GETTABLEKS                       R1 R1 K8 ["join"]
      321 GETUPVAL                         R2 9
      322 DUPTABLE                         R3 K77 [{"Size"}]
      323 GETIMPORT                        R4 K2 [UDim2.new]
      325 LOADN                            R5 0
      326 LOADN                            R6 240
      327 LOADN                            R7 0
      328 LOADN                            R8 32
      329 CALL                             R4 4 1
      330 SETTABLEKS                       R4 R3 K76 ["Size"]
      332 CALL                             R1 2 1
      333 SETTABLEKS                       R1 R0 K78 ["PlaybackSelectInput"]
      335 GETUPVAL                         R1 0
      336 GETTABLEKS                       R1 R1 K79 ["ChooseRecordingNamePopUp"]
      338 DUPTABLE                         R2 K86 [{["ContentSize"], ["PanelSize"], ["PanelPosition"], ["DialogMessageSize"], ["TextInputSize"], ["PaddingPx"] = 1}]
      339 GETIMPORT                        R3 K88 [Vector2.new]
      341 LOADN                            R4 300
      342 LOADN                            R5 60
      343 CALL                             R3 2 1
      344 SETTABLEKS                       R3 R2 K80 ["ContentSize"]
      346 GETIMPORT                        R3 K58 [UDim2.fromOffset]
      348 LOADN                            R4 250
      349 LOADN                            R5 60
      350 CALL                             R3 2 1
      351 SETTABLEKS                       R3 R2 K81 ["PanelSize"]
      353 GETIMPORT                        R3 K58 [UDim2.fromOffset]
      355 LOADN                            R4 20
      356 LOADN                            R5 -10
      357 CALL                             R3 2 1
      358 SETTABLEKS                       R3 R2 K82 ["PanelPosition"]
      360 GETIMPORT                        R3 K2 [UDim2.new]
      362 LOADN                            R4 1
      363 LOADN                            R5 0
      364 LOADN                            R6 0
      365 LOADN                            R7 40
      366 CALL                             R3 4 1
      367 SETTABLEKS                       R3 R2 K83 ["DialogMessageSize"]
      369 GETIMPORT                        R3 K58 [UDim2.fromOffset]
      371 LOADN                            R4 250
      372 LOADN                            R5 30
      373 CALL                             R3 2 1
      374 SETTABLEKS                       R3 R2 K84 ["TextInputSize"]
      376 SETTABLE                         R2 R0 R1
      377 GETUPVAL                         R1 0
      378 GETTABLEKS                       R1 R1 K89 ["InputVisualizer"]
      380 DUPTABLE                         R2 K92 [{["KeyBarRowSpacingPx"] = 2, ["KeyBarSize"]}]
      381 GETIMPORT                        R3 K58 [UDim2.fromOffset]
      383 LOADN                            R4 200
      384 LOADN                            R5 100
      385 CALL                             R3 2 1
      386 SETTABLEKS                       R3 R2 K91 ["KeyBarSize"]
      388 SETTABLE                         R2 R0 R1
      389 GETUPVAL                         R1 0
      390 GETTABLEKS                       R1 R1 K93 ["KeyBarTile"]
      392 DUPTABLE                         R2 K95 [{"TextColor", "BackgroundColor"}]
      393 GETIMPORT                        R3 K29 [Color3.new]
      395 LOADN                            R4 1
      396 LOADN                            R5 1
      397 LOADN                            R6 1
      398 CALL                             R3 3 1
      399 SETTABLEKS                       R3 R2 K11 ["TextColor"]
      401 GETIMPORT                        R3 K29 [Color3.new]
      403 LOADN                            R4 0
      404 LOADN                            R5 0
      405 LOADN                            R6 0
      406 CALL                             R3 3 1
      407 SETTABLEKS                       R3 R2 K94 ["BackgroundColor"]
      409 SETTABLE                         R2 R0 R1
      410 RETURN                           R0 1

PROTO_2:
        0 LOADNIL                          R1
        1 JUMPIFNOT                        R0 ; [+10]
        2 GETUPVAL                         R2 0
        3 CALL                             R2 0 0
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["mock"]
        7 GETUPVAL                         R3 2
        8 GETUPVAL                         R4 3
        9 CALL                             R2 2 1
       10 MOVE                             R1 R2
       11 JUMP                             ; [+7]
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R2 R2 K1 ["new"]
       15 GETUPVAL                         R3 2
       16 GETUPVAL                         R4 3
       17 CALL                             R2 2 1
       18 MOVE                             R1 R2
       19 GETUPVAL                         R4 4
       20 CALL                             R4 0 1
       21 NAMECALL                         R2 R1 K2 ["extend"]
       23 CALL                             R2 2 -1
       24 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Framework"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Cryo"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R1 K8 ["Style"]
       25 GETTABLEKS                       R3 R3 K9 ["getRawComponentStyle"]
       27 GETTABLEKS                       R4 R1 K8 ["Style"]
       29 GETTABLEKS                       R5 R4 K10 ["Themes"]
       31 GETTABLEKS                       R5 R5 K11 ["StudioTheme"]
       33 GETTABLEKS                       R6 R4 K12 ["ComponentSymbols"]
       35 GETTABLEKS                       R7 R4 K13 ["StyleKey"]
       37 GETTABLEKS                       R8 R1 K14 ["Util"]
       39 GETTABLEKS                       R9 R8 K15 ["StyleModifier"]
       41 GETTABLEKS                       R10 R8 K16 ["deepCopy"]
       43 GETTABLEKS                       R11 R4 K10 ["Themes"]
       45 GETTABLEKS                       R11 R11 K17 ["DarkTheme"]
       47 GETTABLEKS                       R12 R4 K10 ["Themes"]
       49 GETTABLEKS                       R12 R12 K18 ["LightTheme"]
       51 GETTABLEKS                       R13 R2 K19 ["Dictionary"]
       53 GETTABLEKS                       R13 R13 K20 ["join"]
       55 MOVE                             R14 R11
       56 NEWTABLE                         R15 2 0
       58 GETTABLEKS                       R16 R7 K21 ["SelectedTabColor"]
       60 GETIMPORT                        R17 K24 [Color3.fromRGB]
       62 LOADN                            R18 64
       63 LOADN                            R19 64
       64 LOADN                            R20 64
       65 CALL                             R17 3 1
       66 SETTABLE                         R17 R15 R16
       67 GETTABLEKS                       R16 R7 K25 ["UIGroupColor"]
       69 GETIMPORT                        R17 K24 [Color3.fromRGB]
       71 LOADN                            R18 77
       72 LOADN                            R19 77
       73 LOADN                            R20 77
       74 CALL                             R17 3 1
       75 SETTABLE                         R17 R15 R16
       76 CALL                             R13 2 1
       77 GETTABLEKS                       R14 R2 K19 ["Dictionary"]
       79 GETTABLEKS                       R14 R14 K20 ["join"]
       81 MOVE                             R15 R12
       82 NEWTABLE                         R16 2 0
       84 GETTABLEKS                       R17 R7 K21 ["SelectedTabColor"]
       86 GETIMPORT                        R18 K24 [Color3.fromRGB]
       88 LOADN                            R19 253
       89 LOADN                            R20 253
       90 LOADN                            R21 253
       91 CALL                             R18 3 1
       92 SETTABLE                         R18 R16 R17
       93 GETTABLEKS                       R17 R7 K25 ["UIGroupColor"]
       95 GETIMPORT                        R18 K24 [Color3.fromRGB]
       97 LOADN                            R19 246
       98 LOADN                            R20 247
       99 LOADN                            R21 248
      100 CALL                             R18 3 1
      101 SETTABLE                         R18 R16 R17
      102 CALL                             R14 2 1
      103 DUPCLOSURE                       R15 K26 [PROTO_0]
      104 CAPTURE                          VAL R7
      105 CAPTURE                          VAL R14
      106 LOADK                            R18 K27 ["TabbedView"]
      107 NAMECALL                         R16 R6 K28 ["add"]
      109 CALL                             R16 2 0
      110 LOADK                            R18 K29 ["PlaybackTabView"]
      111 NAMECALL                         R16 R6 K28 ["add"]
      113 CALL                             R16 2 0
      114 LOADK                            R18 K30 ["FileSelectorUIGroup"]
      115 NAMECALL                         R16 R6 K28 ["add"]
      117 CALL                             R16 2 0
      118 LOADK                            R18 K31 ["PlaybackInfoUIGroup"]
      119 NAMECALL                         R16 R6 K28 ["add"]
      121 CALL                             R16 2 0
      122 LOADK                            R18 K32 ["FilterSettingsUIGroup"]
      123 NAMECALL                         R16 R6 K28 ["add"]
      125 CALL                             R16 2 0
      126 LOADK                            R18 K33 ["LabeledToggleButton"]
      127 NAMECALL                         R16 R6 K28 ["add"]
      129 CALL                             R16 2 0
      130 LOADK                            R18 K34 ["UIKeyValueTextLabel"]
      131 NAMECALL                         R16 R6 K28 ["add"]
      133 CALL                             R16 2 0
      134 LOADK                            R18 K35 ["ChooseRecordingNamePopUp"]
      135 NAMECALL                         R16 R6 K28 ["add"]
      137 CALL                             R16 2 0
      138 LOADK                            R18 K36 ["InputVisualizer"]
      139 NAMECALL                         R16 R6 K28 ["add"]
      141 CALL                             R16 2 0
      142 LOADK                            R18 K37 ["KeyBarTile"]
      143 NAMECALL                         R16 R6 K28 ["add"]
      145 CALL                             R16 2 0
      146 MOVE                             R16 R3
      147 LOADK                            R17 K38 ["Button"]
      148 CALL                             R16 1 1
      149 GETTABLEKS                       R17 R16 K39 ["&RoundPrimary"]
      151 MOVE                             R18 R3
      152 LOADK                            R19 K40 ["TextLabel"]
      153 CALL                             R18 1 1
      154 MOVE                             R19 R3
      155 LOADK                            R20 K41 ["RoundBox"]
      156 CALL                             R19 1 1
      157 MOVE                             R20 R3
      158 LOADK                            R21 K42 ["SelectInput"]
      159 CALL                             R20 1 1
      160 MOVE                             R21 R3
      161 LOADK                            R22 K43 ["Pane"]
      162 CALL                             R21 1 1
      163 MOVE                             R22 R10
      164 MOVE                             R23 R19
      165 CALL                             R22 1 1
      166 DUPCLOSURE                       R23 K44 [PROTO_1]
      167 CAPTURE                          VAL R6
      168 CAPTURE                          VAL R2
      169 CAPTURE                          VAL R16
      170 CAPTURE                          VAL R17
      171 CAPTURE                          VAL R9
      172 CAPTURE                          VAL R22
      173 CAPTURE                          VAL R21
      174 CAPTURE                          VAL R7
      175 CAPTURE                          VAL R18
      176 CAPTURE                          VAL R20
      177 DUPCLOSURE                       R24 K45 [PROTO_2]
      178 CAPTURE                          VAL R15
      179 CAPTURE                          VAL R5
      180 CAPTURE                          VAL R13
      181 CAPTURE                          VAL R14
      182 CAPTURE                          VAL R23
      183 RETURN                           R24 1
