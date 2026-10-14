PROTO_0:
        0 LOADK                            R1 K0 [0.05]
        1 JUMPIFNOTLT                      R0 R1 ; [+3]
        3 LOADN                            R1 0
        4 RETURN                           R1 1
        5 SUBK                             R2 R0 K0 [0.05]
        6 DIVK                             R1 R2 K1 [0.75]
        7 LOADK                            R6 K3 [18.8495559215388]
        8 MUL                              R5 R6 R1
        9 FASTCALL1                        MATH_SIN R5 ; [+2]
       10 GETIMPORT                        R4 K6 [math.sin]
       12 CALL                             R4 1 1
       13 MULK                             R3 R4 K2 [25]
       14 GETUPVAL                         R4 0
       15 SUBRK                            R6 K7 [1] R1
       16 GETIMPORT                        R7 K11 [Enum.EasingStyle.Quad]
       18 GETIMPORT                        R8 K14 [Enum.EasingDirection.In]
       20 NAMECALL                         R4 R4 K15 ["GetValue"]
       22 CALL                             R4 4 1
       23 MUL                              R2 R3 R4
       24 RETURN                           R2 1

PROTO_1:
        0 DUPTABLE                         R1 K12 [{"TitleBar", "TabBar", "ScrollBar", "PropertyRow", "Arrow", "Divider", "ClassIcon", "ColorSwatch", "Vector", "NumberSequence", "RowStops", "Animations"}]
        1 DUPTABLE                         R2 K14 [{"Height"}]
        2 GETTABLEKS                       R3 R0 K15 ["Size"]
        4 GETTABLEKS                       R3 R3 K16 ["Size_800"]
        6 SETTABLEKS                       R3 R2 K13 ["Height"]
        8 SETTABLEKS                       R2 R1 K0 ["TitleBar"]
       10 DUPTABLE                         R2 K14 [{"Height"}]
       11 GETTABLEKS                       R3 R0 K15 ["Size"]
       13 GETTABLEKS                       R3 R3 K16 ["Size_800"]
       15 SETTABLEKS                       R3 R2 K13 ["Height"]
       17 SETTABLEKS                       R2 R1 K1 ["TabBar"]
       19 DUPTABLE                         R2 K19 [{["Width"] = 6}]
       20 SETTABLEKS                       R2 R1 K2 ["ScrollBar"]
       22 DUPTABLE                         R2 K23 [{"MinHeight", "Label", "Value"}]
       23 GETTABLEKS                       R3 R0 K15 ["Size"]
       25 GETTABLEKS                       R3 R3 K24 ["Size_600"]
       27 SETTABLEKS                       R3 R2 K20 ["MinHeight"]
       29 DUPTABLE                         R3 K32 [{"MaxWidth", "IndentWidth", "Color", "Transparency", "Fade", "ReadOnly", "Unimplemented"}]
       30 GETUPVAL                         R4 0
       31 SETTABLEKS                       R4 R3 K25 ["MaxWidth"]
       33 GETTABLEKS                       R4 R0 K15 ["Size"]
       35 GETTABLEKS                       R4 R4 K16 ["Size_800"]
       37 SETTABLEKS                       R4 R3 K26 ["IndentWidth"]
       39 GETTABLEKS                       R4 R0 K27 ["Color"]
       41 GETTABLEKS                       R4 R4 K33 ["Content"]
       43 GETTABLEKS                       R4 R4 K34 ["Default"]
       45 GETTABLEKS                       R4 R4 K35 ["Color3"]
       47 SETTABLEKS                       R4 R3 K27 ["Color"]
       49 GETTABLEKS                       R4 R0 K27 ["Color"]
       51 GETTABLEKS                       R4 R4 K33 ["Content"]
       53 GETTABLEKS                       R4 R4 K34 ["Default"]
       55 GETTABLEKS                       R4 R4 K28 ["Transparency"]
       57 SETTABLEKS                       R4 R3 K28 ["Transparency"]
       59 DUPTABLE                         R4 K36 [{"Width", "Color"}]
       60 GETTABLEKS                       R5 R0 K37 ["Padding"]
       62 GETTABLEKS                       R5 R5 K38 ["Medium"]
       64 SETTABLEKS                       R5 R4 K17 ["Width"]
       66 DUPTABLE                         R5 K41 [{"Light", "Dark"}]
       67 GETIMPORT                        R6 K43 [Color3.fromHex]
       69 LOADK                            R7 K44 ["#FFFFFF"]
       70 CALL                             R6 1 1
       71 SETTABLEKS                       R6 R5 K39 ["Light"]
       73 GETTABLEKS                       R6 R0 K27 ["Color"]
       75 GETTABLEKS                       R6 R6 K45 ["Surface"]
       77 GETTABLEKS                       R6 R6 K46 ["Surface_100"]
       79 GETTABLEKS                       R6 R6 K35 ["Color3"]
       81 SETTABLEKS                       R6 R5 K40 ["Dark"]
       83 SETTABLEKS                       R5 R4 K27 ["Color"]
       85 SETTABLEKS                       R4 R3 K29 ["Fade"]
       87 DUPTABLE                         R4 K48 [{["Transparency"] = 0.5}]
       88 SETTABLEKS                       R4 R3 K30 ["ReadOnly"]
       90 DUPTABLE                         R4 K49 [{"Color"}]
       91 GETIMPORT                        R5 K51 [Color3.fromRGB]
       93 LOADN                            R6 223
       94 LOADN                            R7 40
       95 LOADN                            R8 31
       96 CALL                             R5 3 1
       97 SETTABLEKS                       R5 R4 K27 ["Color"]
       99 SETTABLEKS                       R4 R3 K31 ["Unimplemented"]
      101 SETTABLEKS                       R3 R2 K21 ["Label"]
      103 DUPTABLE                         R3 K53 [{"MinWidth"}]
      104 GETUPVAL                         R4 1
      105 SETTABLEKS                       R4 R3 K52 ["MinWidth"]
      107 SETTABLEKS                       R3 R2 K22 ["Value"]
      109 SETTABLEKS                       R2 R1 K3 ["PropertyRow"]
      111 DUPTABLE                         R2 K55 [{"Indent", "Size"}]
      112 GETTABLEKS                       R3 R0 K15 ["Size"]
      114 GETTABLEKS                       R3 R3 K56 ["Size_300"]
      116 SETTABLEKS                       R3 R2 K54 ["Indent"]
      118 GETIMPORT                        R4 K59 [Vector2.one]
      120 GETTABLEKS                       R5 R0 K15 ["Size"]
      122 GETTABLEKS                       R5 R5 K60 ["Size_400"]
      124 MUL                              R3 R4 R5
      125 SETTABLEKS                       R3 R2 K15 ["Size"]
      127 SETTABLEKS                       R2 R1 K4 ["Arrow"]
      129 DUPTABLE                         R2 K66 [{["SpacingAround"] = 3, ["PaddedSpacingAround"] = 9, ["Height"] = 1, ["Color"], ["Transparency"]}]
      130 GETTABLEKS                       R3 R0 K27 ["Color"]
      132 GETTABLEKS                       R3 R3 K67 ["Shift"]
      134 GETTABLEKS                       R3 R3 K68 ["Shift_300"]
      136 GETTABLEKS                       R3 R3 K35 ["Color3"]
      138 SETTABLEKS                       R3 R2 K27 ["Color"]
      140 GETTABLEKS                       R3 R0 K27 ["Color"]
      142 GETTABLEKS                       R3 R3 K67 ["Shift"]
      144 GETTABLEKS                       R3 R3 K68 ["Shift_300"]
      146 GETTABLEKS                       R3 R3 K28 ["Transparency"]
      148 SETTABLEKS                       R3 R2 K28 ["Transparency"]
      150 SETTABLEKS                       R2 R1 K5 ["Divider"]
      152 DUPTABLE                         R2 K71 [{["DisabledTransparency"] = 0.62}]
      153 SETTABLEKS                       R2 R1 K6 ["ClassIcon"]
      155 DUPTABLE                         R2 K73 [{"MultipleColor"}]
      156 GETIMPORT                        R3 K51 [Color3.fromRGB]
      158 LOADN                            R4 255
      159 LOADN                            R5 255
      160 LOADN                            R6 255
      161 CALL                             R3 3 1
      162 SETTABLEKS                       R3 R2 K72 ["MultipleColor"]
      164 SETTABLEKS                       R2 R1 K7 ["ColorSwatch"]
      166 DUPTABLE                         R2 K75 [{"Chip"}]
      167 DUPTABLE                         R3 K79 [{"XColor", "YColor", "ZColor"}]
      168 GETIMPORT                        R4 K43 [Color3.fromHex]
      170 LOADK                            R5 K80 ["#DF281F"]
      171 CALL                             R4 1 1
      172 SETTABLEKS                       R4 R3 K76 ["XColor"]
      174 GETIMPORT                        R4 K43 [Color3.fromHex]
      176 LOADK                            R5 K81 ["#39C582"]
      177 CALL                             R4 1 1
      178 SETTABLEKS                       R4 R3 K77 ["YColor"]
      180 GETIMPORT                        R4 K43 [Color3.fromHex]
      182 LOADK                            R5 K82 ["#2F7AC6"]
      183 CALL                             R4 1 1
      184 SETTABLEKS                       R4 R3 K78 ["ZColor"]
      186 SETTABLEKS                       R3 R2 K74 ["Chip"]
      188 SETTABLEKS                       R2 R1 K8 ["Vector"]
      190 DUPTABLE                         R2 K104 [{["EditorInitialSize"], ["EditorMinWidth"] = 500, ["EditorMinHeight"] = 200, ["MaxRows"] = 4, ["EditorYPadding"], ["EditorFillPadding"], ["EnvelopeColor"], ["EnvelopeTransparency"], ["EnvelopeMinOutlineThickness"] = 4, ["EnvelopeOutlineThicknessScale"] = 2, ["CurveColor"], ["ScaleTextSize"], ["ScaleTextColor"], ["Point"], ["EnvelopeHandles"], ["ZIndex"], ["Scale"]}]
      191 GETIMPORT                        R3 K106 [Vector2.new]
      193 LOADN                            R4 700
      194 LOADN                            R5 200
      195 CALL                             R3 2 1
      196 SETTABLEKS                       R3 R2 K83 ["EditorInitialSize"]
      198 GETTABLEKS                       R3 R0 K107 ["Gap"]
      200 GETTABLEKS                       R3 R3 K108 ["Large"]
      202 SETTABLEKS                       R3 R2 K90 ["EditorYPadding"]
      204 GETTABLEKS                       R3 R0 K107 ["Gap"]
      206 GETTABLEKS                       R3 R3 K109 ["Small"]
      208 SETTABLEKS                       R3 R2 K91 ["EditorFillPadding"]
      210 GETTABLEKS                       R3 R0 K27 ["Color"]
      212 GETTABLEKS                       R3 R3 K67 ["Shift"]
      214 GETTABLEKS                       R3 R3 K110 ["Shift_200"]
      216 GETTABLEKS                       R3 R3 K35 ["Color3"]
      218 SETTABLEKS                       R3 R2 K92 ["EnvelopeColor"]
      220 GETTABLEKS                       R3 R0 K27 ["Color"]
      222 GETTABLEKS                       R3 R3 K67 ["Shift"]
      224 GETTABLEKS                       R3 R3 K110 ["Shift_200"]
      226 GETTABLEKS                       R3 R3 K28 ["Transparency"]
      228 SETTABLEKS                       R3 R2 K93 ["EnvelopeTransparency"]
      230 GETTABLEKS                       R3 R0 K27 ["Color"]
      232 GETTABLEKS                       R3 R3 K111 ["System"]
      234 GETTABLEKS                       R3 R3 K112 ["Contrast"]
      236 GETTABLEKS                       R3 R3 K35 ["Color3"]
      238 SETTABLEKS                       R3 R2 K97 ["CurveColor"]
      240 GETTABLEKS                       R3 R0 K113 ["FontSize"]
      242 GETTABLEKS                       R3 R3 K114 ["FontSize_200"]
      244 SETTABLEKS                       R3 R2 K98 ["ScaleTextSize"]
      246 GETTABLEKS                       R3 R0 K27 ["Color"]
      248 GETTABLEKS                       R3 R3 K33 ["Content"]
      250 GETTABLEKS                       R3 R3 K34 ["Default"]
      252 GETTABLEKS                       R3 R3 K35 ["Color3"]
      254 SETTABLEKS                       R3 R2 K99 ["ScaleTextColor"]
      256 DUPTABLE                         R3 K118 [{"SelectedStyle", "UnselectedStyle", "GhostStyle"}]
      257 DUPTABLE                         R4 K124 [{["Color3"], ["OutlineColor3"], ["OutlineThickness"] = 1.5, ["Size"] = 11, ["DetectorInflate"] = 1}]
      258 GETTABLEKS                       R5 R0 K27 ["Color"]
      260 GETTABLEKS                       R5 R5 K111 ["System"]
      262 GETTABLEKS                       R5 R5 K125 ["Emphasis"]
      264 GETTABLEKS                       R5 R5 K35 ["Color3"]
      266 SETTABLEKS                       R5 R4 K35 ["Color3"]
      268 GETTABLEKS                       R5 R0 K27 ["Color"]
      270 GETTABLEKS                       R5 R5 K111 ["System"]
      272 GETTABLEKS                       R5 R5 K112 ["Contrast"]
      274 GETTABLEKS                       R5 R5 K35 ["Color3"]
      276 SETTABLEKS                       R5 R4 K119 ["OutlineColor3"]
      278 SETTABLEKS                       R4 R3 K115 ["SelectedStyle"]
      280 DUPTABLE                         R4 K127 [{["Color3"], ["OutlineColor3"], ["OutlineThickness"] = 3, ["Size"] = 7, ["DetectorInflate"] = 3}]
      281 GETTABLEKS                       R5 R0 K27 ["Color"]
      283 GETTABLEKS                       R5 R5 K111 ["System"]
      285 GETTABLEKS                       R5 R5 K112 ["Contrast"]
      287 GETTABLEKS                       R5 R5 K35 ["Color3"]
      289 SETTABLEKS                       R5 R4 K35 ["Color3"]
      291 GETTABLEKS                       R5 R0 K27 ["Color"]
      293 GETTABLEKS                       R5 R5 K111 ["System"]
      295 GETTABLEKS                       R5 R5 K125 ["Emphasis"]
      297 GETTABLEKS                       R5 R5 K35 ["Color3"]
      299 SETTABLEKS                       R5 R4 K119 ["OutlineColor3"]
      301 SETTABLEKS                       R4 R3 K116 ["UnselectedStyle"]
      303 DUPTABLE                         R4 K131 [{["Color3"], ["OutlineColor3"] = , ["OutlineThickness"] = 0, ["Size"] = 10, ["DetectorInflate"] = 3}]
      304 GETTABLEKS                       R5 R0 K27 ["Color"]
      306 GETTABLEKS                       R5 R5 K111 ["System"]
      308 GETTABLEKS                       R5 R5 K112 ["Contrast"]
      310 GETTABLEKS                       R5 R5 K35 ["Color3"]
      312 SETTABLEKS                       R5 R4 K35 ["Color3"]
      314 SETTABLEKS                       R4 R3 K117 ["GhostStyle"]
      316 SETTABLEKS                       R3 R2 K100 ["Point"]
      318 GETUPVAL                         R3 2
      319 DUPTABLE                         R4 K153 [{["CircleImage"] = "rbxasset://textures/smallWhiteCircle.png", ["Thickness"] = 3.75, ["LengthPixels"] = 6, ["MaxLengthPixels"] = 12, ["WrapAngle"] = 0.698131700797732, ["ConnectorHoverOffsetYPixels"] = 18, ["ConnectorThicknessPixels"] = 25, ["DetectorWidthOffsetPixels"] = 18, ["DetectorHeightPixels"] = 14, ["BaseViewportHeightPixels"] = 164, ["DTimeToSlopeBlend"], ["EnvelopeToOffset"], ["EnvelopeToOffsetBlend"]}]
      320 NEWTABLE                         R5 0 2
      322 GETIMPORT                        R6 K106 [Vector2.new]
      324 LOADN                            R7 0
      325 LOADN                            R8 0
      326 CALL                             R6 2 1
      327 GETIMPORT                        R7 K106 [Vector2.new]
      329 LOADK                            R8 K154 [0.2]
      330 LOADN                            R9 1
      331 CALL                             R7 2 -1
      332 SETLIST                          R5 R6 -1 [1]
      334 SETTABLEKS                       R5 R4 K150 ["DTimeToSlopeBlend"]
      336 NEWTABLE                         R5 0 2
      338 GETIMPORT                        R6 K106 [Vector2.new]
      340 LOADN                            R7 0
      341 LOADK                            R8 K155 [4.5]
      342 CALL                             R6 2 1
      343 GETIMPORT                        R7 K106 [Vector2.new]
      345 LOADK                            R8 K156 [0.3]
      346 LOADN                            R9 8
      347 CALL                             R7 2 -1
      348 SETLIST                          R5 R6 -1 [1]
      350 SETTABLEKS                       R5 R4 K151 ["EnvelopeToOffset"]
      352 NEWTABLE                         R5 0 2
      354 GETIMPORT                        R6 K106 [Vector2.new]
      356 LOADN                            R7 0
      357 LOADN                            R8 0
      358 CALL                             R6 2 1
      359 GETIMPORT                        R7 K106 [Vector2.new]
      361 LOADK                            R8 K154 [0.2]
      362 LOADN                            R9 1
      363 CALL                             R7 2 -1
      364 SETLIST                          R5 R6 -1 [1]
      366 SETTABLEKS                       R5 R4 K152 ["EnvelopeToOffsetBlend"]
      368 CALL                             R3 1 1
      369 SETTABLEKS                       R3 R2 K101 ["EnvelopeHandles"]
      371 DUPTABLE                         R3 K164 [{["EnvelopeCurve"] = 9, ["Keypoint"] = 10, ["GhostKeypoint"] = 10, ["SelectedKeypoint"] = 15, ["Overlay"] = 20}]
      372 SETTABLEKS                       R3 R2 K102 ["ZIndex"]
      374 DUPTABLE                         R3 K176 [{["MinX"] = 0, ["MaxX"] = 1, ["InitialMinY"] = 0, ["InitialMaxY"] = 10, ["MinYLimit"] = -999, ["MaxYLimit"] = 999, ["MinYRange"] = 1, ["InputRightMargin"], ["InputTopMargin"]}]
      375 GETTABLEKS                       R4 R0 K15 ["Size"]
      377 GETTABLEKS                       R4 R4 K177 ["Size_100"]
      379 SETTABLEKS                       R4 R3 K174 ["InputRightMargin"]
      381 GETTABLEKS                       R5 R0 K37 ["Padding"]
      383 GETTABLEKS                       R5 R5 K38 ["Medium"]
      385 GETTABLEKS                       R6 R0 K107 ["Gap"]
      387 GETTABLEKS                       R6 R6 K109 ["Small"]
      389 SUB                              R4 R5 R6
      390 SETTABLEKS                       R4 R3 K175 ["InputTopMargin"]
      392 SETTABLEKS                       R3 R2 K103 ["Scale"]
      394 SETTABLEKS                       R2 R1 K9 ["NumberSequence"]
      396 DUPTABLE                         R2 K183 [{"HeaderContentHeight", "HeaderBottomPadding", "RowsGap", "RowSlotYPadding", "CellContentHeight"}]
      397 GETTABLEKS                       R3 R0 K15 ["Size"]
      399 GETTABLEKS                       R3 R3 K24 ["Size_600"]
      401 SETTABLEKS                       R3 R2 K178 ["HeaderContentHeight"]
      403 GETTABLEKS                       R3 R0 K37 ["Padding"]
      405 GETTABLEKS                       R3 R3 K109 ["Small"]
      407 SETTABLEKS                       R3 R2 K179 ["HeaderBottomPadding"]
      409 GETTABLEKS                       R3 R0 K107 ["Gap"]
      411 GETTABLEKS                       R3 R3 K109 ["Small"]
      413 SETTABLEKS                       R3 R2 K180 ["RowsGap"]
      415 GETTABLEKS                       R3 R0 K107 ["Gap"]
      417 GETTABLEKS                       R3 R3 K184 ["XSmall"]
      419 SETTABLEKS                       R3 R2 K181 ["RowSlotYPadding"]
      421 GETTABLEKS                       R3 R0 K15 ["Size"]
      423 GETTABLEKS                       R3 R3 K24 ["Size_600"]
      425 SETTABLEKS                       R3 R2 K182 ["CellContentHeight"]
      427 SETTABLEKS                       R2 R1 K10 ["RowStops"]
      429 DUPTABLE                         R2 K186 [{"RotationWiggle"}]
      430 DUPTABLE                         R3 K192 [{["StartUpDelay"] = 0.05, ["Length"] = 0.8, ["AngleAtTime"]}]
      431 DUPCLOSURE                       R4 K193 [PROTO_0]
      432 CAPTURE                          UPVAL U3
      433 SETTABLEKS                       R4 R3 K191 ["AngleAtTime"]
      435 SETTABLEKS                       R3 R2 K185 ["RotationWiggle"]
      437 SETTABLEKS                       R2 R1 K11 ["Animations"]
      439 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["TweenService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["Properties"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETTABLEKS                       R2 R1 K8 ["Parent"]
       15 GETIMPORT                        R3 K10 [require]
       17 GETTABLEKS                       R4 R2 K11 ["Foundation"]
       19 CALL                             R3 1 1
       20 GETIMPORT                        R4 K10 [require]
       22 GETTABLEKS                       R5 R1 K12 ["Util"]
       24 GETTABLEKS                       R5 R5 K13 ["as"]
       26 CALL                             R4 1 1
       27 GETIMPORT                        R5 K1 [game]
       29 LOADK                            R7 K14 ["PropertiesMaxLabelWidth"]
       30 LOADN                            R8 135
       31 NAMECALL                         R5 R5 K15 ["DefineFastInt"]
       33 CALL                             R5 3 1
       34 GETIMPORT                        R6 K1 [game]
       36 LOADK                            R8 K16 ["PropertiesMinValueWidth"]
       37 LOADN                            R9 155
       38 NAMECALL                         R6 R6 K15 ["DefineFastInt"]
       40 CALL                             R6 3 1
       41 DUPCLOSURE                       R7 K17 [PROTO_1]
       42 CAPTURE                          VAL R5
       43 CAPTURE                          VAL R6
       44 CAPTURE                          VAL R4
       45 CAPTURE                          VAL R0
       46 RETURN                           R7 1
