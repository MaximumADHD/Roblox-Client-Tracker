PROTO_0:
        0 DUPTABLE                         R1 K10 [{"TitleBar", "TabBar", "ScrollBar", "PropertyRow", "Arrow", "ClassIcon", "ColorSwatch", "Vector", "NumberSequence", "RowStops"}]
        1 DUPTABLE                         R2 K12 [{"Height"}]
        2 GETTABLEKS                       R3 R0 K13 ["Size"]
        4 GETTABLEKS                       R3 R3 K14 ["Size_800"]
        6 SETTABLEKS                       R3 R2 K11 ["Height"]
        8 SETTABLEKS                       R2 R1 K0 ["TitleBar"]
       10 DUPTABLE                         R2 K12 [{"Height"}]
       11 GETTABLEKS                       R3 R0 K13 ["Size"]
       13 GETTABLEKS                       R3 R3 K14 ["Size_800"]
       15 SETTABLEKS                       R3 R2 K11 ["Height"]
       17 SETTABLEKS                       R2 R1 K1 ["TabBar"]
       19 DUPTABLE                         R2 K17 [{["Width"] = 6}]
       20 SETTABLEKS                       R2 R1 K2 ["ScrollBar"]
       22 DUPTABLE                         R2 K21 [{"MinHeight", "Label", "Value"}]
       23 GETTABLEKS                       R3 R0 K13 ["Size"]
       25 GETTABLEKS                       R3 R3 K22 ["Size_600"]
       27 SETTABLEKS                       R3 R2 K18 ["MinHeight"]
       29 DUPTABLE                         R3 K30 [{"MaxWidth", "IndentWidth", "Color", "Transparency", "Fade", "ReadOnly", "Unimplemented"}]
       30 GETUPVAL                         R4 0
       31 SETTABLEKS                       R4 R3 K23 ["MaxWidth"]
       33 GETTABLEKS                       R4 R0 K13 ["Size"]
       35 GETTABLEKS                       R4 R4 K14 ["Size_800"]
       37 SETTABLEKS                       R4 R3 K24 ["IndentWidth"]
       39 GETTABLEKS                       R4 R0 K25 ["Color"]
       41 GETTABLEKS                       R4 R4 K31 ["Content"]
       43 GETTABLEKS                       R4 R4 K32 ["Default"]
       45 GETTABLEKS                       R4 R4 K33 ["Color3"]
       47 SETTABLEKS                       R4 R3 K25 ["Color"]
       49 GETTABLEKS                       R4 R0 K25 ["Color"]
       51 GETTABLEKS                       R4 R4 K31 ["Content"]
       53 GETTABLEKS                       R4 R4 K32 ["Default"]
       55 GETTABLEKS                       R4 R4 K26 ["Transparency"]
       57 SETTABLEKS                       R4 R3 K26 ["Transparency"]
       59 DUPTABLE                         R4 K34 [{"Width", "Color"}]
       60 GETTABLEKS                       R5 R0 K35 ["Padding"]
       62 GETTABLEKS                       R5 R5 K36 ["Medium"]
       64 SETTABLEKS                       R5 R4 K15 ["Width"]
       66 DUPTABLE                         R5 K39 [{"Light", "Dark"}]
       67 GETIMPORT                        R6 K41 [Color3.fromHex]
       69 LOADK                            R7 K42 ["#FFFFFF"]
       70 CALL                             R6 1 1
       71 SETTABLEKS                       R6 R5 K37 ["Light"]
       73 GETTABLEKS                       R6 R0 K25 ["Color"]
       75 GETTABLEKS                       R6 R6 K43 ["Surface"]
       77 GETTABLEKS                       R6 R6 K44 ["Surface_100"]
       79 GETTABLEKS                       R6 R6 K33 ["Color3"]
       81 SETTABLEKS                       R6 R5 K38 ["Dark"]
       83 SETTABLEKS                       R5 R4 K25 ["Color"]
       85 SETTABLEKS                       R4 R3 K27 ["Fade"]
       87 DUPTABLE                         R4 K46 [{["Transparency"] = 0.5}]
       88 SETTABLEKS                       R4 R3 K28 ["ReadOnly"]
       90 DUPTABLE                         R4 K47 [{"Color"}]
       91 GETIMPORT                        R5 K49 [Color3.fromRGB]
       93 LOADN                            R6 223
       94 LOADN                            R7 40
       95 LOADN                            R8 31
       96 CALL                             R5 3 1
       97 SETTABLEKS                       R5 R4 K25 ["Color"]
       99 SETTABLEKS                       R4 R3 K29 ["Unimplemented"]
      101 SETTABLEKS                       R3 R2 K19 ["Label"]
      103 DUPTABLE                         R3 K51 [{"MinWidth"}]
      104 GETUPVAL                         R4 1
      105 SETTABLEKS                       R4 R3 K50 ["MinWidth"]
      107 SETTABLEKS                       R3 R2 K20 ["Value"]
      109 SETTABLEKS                       R2 R1 K3 ["PropertyRow"]
      111 DUPTABLE                         R2 K53 [{"Indent", "Size"}]
      112 GETTABLEKS                       R3 R0 K13 ["Size"]
      114 GETTABLEKS                       R3 R3 K54 ["Size_300"]
      116 SETTABLEKS                       R3 R2 K52 ["Indent"]
      118 GETIMPORT                        R4 K57 [Vector2.one]
      120 GETTABLEKS                       R5 R0 K13 ["Size"]
      122 GETTABLEKS                       R5 R5 K58 ["Size_400"]
      124 MUL                              R3 R4 R5
      125 SETTABLEKS                       R3 R2 K13 ["Size"]
      127 SETTABLEKS                       R2 R1 K4 ["Arrow"]
      129 DUPTABLE                         R2 K61 [{["DisabledTransparency"] = 0.62}]
      130 SETTABLEKS                       R2 R1 K5 ["ClassIcon"]
      132 DUPTABLE                         R2 K63 [{"MultipleColor"}]
      133 GETIMPORT                        R3 K49 [Color3.fromRGB]
      135 LOADN                            R4 255
      136 LOADN                            R5 255
      137 LOADN                            R6 255
      138 CALL                             R3 3 1
      139 SETTABLEKS                       R3 R2 K62 ["MultipleColor"]
      141 SETTABLEKS                       R2 R1 K6 ["ColorSwatch"]
      143 DUPTABLE                         R2 K65 [{"Chip"}]
      144 DUPTABLE                         R3 K69 [{"XColor", "YColor", "ZColor"}]
      145 GETIMPORT                        R4 K41 [Color3.fromHex]
      147 LOADK                            R5 K70 ["#DF281F"]
      148 CALL                             R4 1 1
      149 SETTABLEKS                       R4 R3 K66 ["XColor"]
      151 GETIMPORT                        R4 K41 [Color3.fromHex]
      153 LOADK                            R5 K71 ["#39C582"]
      154 CALL                             R4 1 1
      155 SETTABLEKS                       R4 R3 K67 ["YColor"]
      157 GETIMPORT                        R4 K41 [Color3.fromHex]
      159 LOADK                            R5 K72 ["#2F7AC6"]
      160 CALL                             R4 1 1
      161 SETTABLEKS                       R4 R3 K68 ["ZColor"]
      163 SETTABLEKS                       R3 R2 K64 ["Chip"]
      165 SETTABLEKS                       R2 R1 K7 ["Vector"]
      167 DUPTABLE                         R2 K94 [{["EditorInitialSize"], ["EditorMinWidth"] = 500, ["EditorMinHeight"] = 200, ["MaxRows"] = 4, ["EditorYPadding"], ["EditorFillPadding"], ["EnvelopeColor"], ["EnvelopeTransparency"], ["EnvelopeMinOutlineThickness"] = 4, ["EnvelopeOutlineThicknessScale"] = 2, ["CurveColor"], ["ScaleTextSize"], ["ScaleTextColor"], ["Point"], ["EnvelopeHandles"], ["ZIndex"], ["Scale"]}]
      168 GETIMPORT                        R3 K96 [Vector2.new]
      170 LOADN                            R4 700
      171 LOADN                            R5 200
      172 CALL                             R3 2 1
      173 SETTABLEKS                       R3 R2 K73 ["EditorInitialSize"]
      175 GETTABLEKS                       R3 R0 K97 ["Gap"]
      177 GETTABLEKS                       R3 R3 K98 ["Large"]
      179 SETTABLEKS                       R3 R2 K80 ["EditorYPadding"]
      181 GETTABLEKS                       R3 R0 K97 ["Gap"]
      183 GETTABLEKS                       R3 R3 K99 ["Small"]
      185 SETTABLEKS                       R3 R2 K81 ["EditorFillPadding"]
      187 GETTABLEKS                       R3 R0 K25 ["Color"]
      189 GETTABLEKS                       R3 R3 K100 ["Shift"]
      191 GETTABLEKS                       R3 R3 K101 ["Shift_200"]
      193 GETTABLEKS                       R3 R3 K33 ["Color3"]
      195 SETTABLEKS                       R3 R2 K82 ["EnvelopeColor"]
      197 GETTABLEKS                       R3 R0 K25 ["Color"]
      199 GETTABLEKS                       R3 R3 K100 ["Shift"]
      201 GETTABLEKS                       R3 R3 K101 ["Shift_200"]
      203 GETTABLEKS                       R3 R3 K26 ["Transparency"]
      205 SETTABLEKS                       R3 R2 K83 ["EnvelopeTransparency"]
      207 GETTABLEKS                       R3 R0 K25 ["Color"]
      209 GETTABLEKS                       R3 R3 K102 ["System"]
      211 GETTABLEKS                       R3 R3 K103 ["Contrast"]
      213 GETTABLEKS                       R3 R3 K33 ["Color3"]
      215 SETTABLEKS                       R3 R2 K87 ["CurveColor"]
      217 GETTABLEKS                       R3 R0 K104 ["FontSize"]
      219 GETTABLEKS                       R3 R3 K105 ["FontSize_200"]
      221 SETTABLEKS                       R3 R2 K88 ["ScaleTextSize"]
      223 GETTABLEKS                       R3 R0 K25 ["Color"]
      225 GETTABLEKS                       R3 R3 K31 ["Content"]
      227 GETTABLEKS                       R3 R3 K32 ["Default"]
      229 GETTABLEKS                       R3 R3 K33 ["Color3"]
      231 SETTABLEKS                       R3 R2 K89 ["ScaleTextColor"]
      233 DUPTABLE                         R3 K109 [{"SelectedStyle", "UnselectedStyle", "GhostStyle"}]
      234 DUPTABLE                         R4 K115 [{["Color3"], ["OutlineColor3"], ["OutlineThickness"] = 2, ["Size"] = 11, ["DetectorInflate"] = 1}]
      235 GETTABLEKS                       R5 R0 K25 ["Color"]
      237 GETTABLEKS                       R5 R5 K102 ["System"]
      239 GETTABLEKS                       R5 R5 K116 ["Emphasis"]
      241 GETTABLEKS                       R5 R5 K33 ["Color3"]
      243 SETTABLEKS                       R5 R4 K33 ["Color3"]
      245 GETTABLEKS                       R5 R0 K25 ["Color"]
      247 GETTABLEKS                       R5 R5 K102 ["System"]
      249 GETTABLEKS                       R5 R5 K103 ["Contrast"]
      251 GETTABLEKS                       R5 R5 K33 ["Color3"]
      253 SETTABLEKS                       R5 R4 K110 ["OutlineColor3"]
      255 SETTABLEKS                       R4 R3 K106 ["SelectedStyle"]
      257 DUPTABLE                         R4 K119 [{["Color3"], ["OutlineColor3"], ["OutlineThickness"] = 3, ["Size"] = 7, ["DetectorInflate"] = 3}]
      258 GETIMPORT                        R5 K49 [Color3.fromRGB]
      260 LOADN                            R6 255
      261 LOADN                            R7 255
      262 LOADN                            R8 255
      263 CALL                             R5 3 1
      264 SETTABLEKS                       R5 R4 K33 ["Color3"]
      266 GETTABLEKS                       R5 R0 K25 ["Color"]
      268 GETTABLEKS                       R5 R5 K102 ["System"]
      270 GETTABLEKS                       R5 R5 K116 ["Emphasis"]
      272 GETTABLEKS                       R5 R5 K33 ["Color3"]
      274 SETTABLEKS                       R5 R4 K110 ["OutlineColor3"]
      276 SETTABLEKS                       R4 R3 K107 ["UnselectedStyle"]
      278 DUPTABLE                         R4 K123 [{["Color3"], ["OutlineColor3"] = , ["OutlineThickness"] = 0, ["Size"] = 10, ["DetectorInflate"] = 3}]
      279 GETTABLEKS                       R5 R0 K25 ["Color"]
      281 GETTABLEKS                       R5 R5 K102 ["System"]
      283 GETTABLEKS                       R5 R5 K103 ["Contrast"]
      285 GETTABLEKS                       R5 R5 K33 ["Color3"]
      287 SETTABLEKS                       R5 R4 K33 ["Color3"]
      289 SETTABLEKS                       R4 R3 K108 ["GhostStyle"]
      291 SETTABLEKS                       R3 R2 K90 ["Point"]
      293 DUPTABLE                         R3 K144 [{["CircleImage"] = "rbxasset://textures/smallWhiteCircle.png", ["Thickness"] = 3, ["LengthPixels"] = 6, ["MaxLengthPixels"] = 12, ["WrapAngle"] = 0.698131700797732, ["ConnectorHoverOffsetYPixels"] = 10, ["ConnectorThicknessPixels"] = 8, ["DetectorWidthOffsetPixels"] = 18, ["DetectorHeightPixels"] = 14, ["BaseViewportHeightPixels"] = 164, ["DTimeToSlopeBlend"], ["EnvelopeToOffset"], ["EnvelopeToOffsetBlend"]}]
      294 NEWTABLE                         R4 0 2
      296 GETIMPORT                        R5 K96 [Vector2.new]
      298 LOADN                            R6 0
      299 LOADN                            R7 0
      300 CALL                             R5 2 1
      301 GETIMPORT                        R6 K96 [Vector2.new]
      303 LOADK                            R7 K145 [0.2]
      304 LOADN                            R8 1
      305 CALL                             R6 2 -1
      306 SETLIST                          R4 R5 -1 [1]
      308 SETTABLEKS                       R4 R3 K141 ["DTimeToSlopeBlend"]
      310 NEWTABLE                         R4 0 2
      312 GETIMPORT                        R5 K96 [Vector2.new]
      314 LOADN                            R6 0
      315 LOADN                            R7 6
      316 CALL                             R5 2 1
      317 GETIMPORT                        R6 K96 [Vector2.new]
      319 LOADK                            R7 K146 [0.3]
      320 LOADN                            R8 8
      321 CALL                             R6 2 -1
      322 SETLIST                          R4 R5 -1 [1]
      324 SETTABLEKS                       R4 R3 K142 ["EnvelopeToOffset"]
      326 NEWTABLE                         R4 0 2
      328 GETIMPORT                        R5 K96 [Vector2.new]
      330 LOADN                            R6 0
      331 LOADN                            R7 0
      332 CALL                             R5 2 1
      333 GETIMPORT                        R6 K96 [Vector2.new]
      335 LOADK                            R7 K145 [0.2]
      336 LOADN                            R8 1
      337 CALL                             R6 2 -1
      338 SETLIST                          R4 R5 -1 [1]
      340 SETTABLEKS                       R4 R3 K143 ["EnvelopeToOffsetBlend"]
      342 SETTABLEKS                       R3 R2 K91 ["EnvelopeHandles"]
      344 DUPTABLE                         R3 K155 [{["EnvelopeCurve"] = 9, ["Keypoint"] = 10, ["GhostKeypoint"] = 10, ["SelectedKeypoint"] = 15, ["Overlay"] = 20}]
      345 SETTABLEKS                       R3 R2 K92 ["ZIndex"]
      347 DUPTABLE                         R3 K167 [{["MinX"] = 0, ["MaxX"] = 1, ["InitialMinY"] = 0, ["InitialMaxY"] = 10, ["MinYLimit"] = -999, ["MaxYLimit"] = 999, ["MinYRange"] = 1, ["InputRightMargin"], ["InputTopMargin"]}]
      348 GETTABLEKS                       R4 R0 K13 ["Size"]
      350 GETTABLEKS                       R4 R4 K168 ["Size_100"]
      352 SETTABLEKS                       R4 R3 K165 ["InputRightMargin"]
      354 GETTABLEKS                       R5 R0 K35 ["Padding"]
      356 GETTABLEKS                       R5 R5 K36 ["Medium"]
      358 GETTABLEKS                       R6 R0 K97 ["Gap"]
      360 GETTABLEKS                       R6 R6 K99 ["Small"]
      362 SUB                              R4 R5 R6
      363 SETTABLEKS                       R4 R3 K166 ["InputTopMargin"]
      365 SETTABLEKS                       R3 R2 K93 ["Scale"]
      367 SETTABLEKS                       R2 R1 K8 ["NumberSequence"]
      369 DUPTABLE                         R2 K174 [{"HeaderContentHeight", "HeaderBottomPadding", "RowsGap", "RowSlotYPadding", "CellContentHeight"}]
      370 GETTABLEKS                       R3 R0 K13 ["Size"]
      372 GETTABLEKS                       R3 R3 K22 ["Size_600"]
      374 SETTABLEKS                       R3 R2 K169 ["HeaderContentHeight"]
      376 GETTABLEKS                       R3 R0 K35 ["Padding"]
      378 GETTABLEKS                       R3 R3 K99 ["Small"]
      380 SETTABLEKS                       R3 R2 K170 ["HeaderBottomPadding"]
      382 GETTABLEKS                       R3 R0 K97 ["Gap"]
      384 GETTABLEKS                       R3 R3 K99 ["Small"]
      386 SETTABLEKS                       R3 R2 K171 ["RowsGap"]
      388 GETTABLEKS                       R3 R0 K97 ["Gap"]
      390 GETTABLEKS                       R3 R3 K175 ["XSmall"]
      392 SETTABLEKS                       R3 R2 K172 ["RowSlotYPadding"]
      394 GETTABLEKS                       R3 R0 K13 ["Size"]
      396 GETTABLEKS                       R3 R3 K22 ["Size_600"]
      398 SETTABLEKS                       R3 R2 K173 ["CellContentHeight"]
      400 SETTABLEKS                       R2 R1 K9 ["RowStops"]
      402 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Foundation"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K9 [game]
       16 LOADK                            R5 K10 ["PropertiesMaxLabelWidth"]
       17 LOADN                            R6 135
       18 NAMECALL                         R3 R3 K11 ["DefineFastInt"]
       20 CALL                             R3 3 1
       21 GETIMPORT                        R4 K9 [game]
       23 LOADK                            R6 K12 ["PropertiesMinValueWidth"]
       24 LOADN                            R7 155
       25 NAMECALL                         R4 R4 K11 ["DefineFastInt"]
       27 CALL                             R4 3 1
       28 DUPCLOSURE                       R5 K13 [PROTO_0]
       29 CAPTURE                          VAL R3
       30 CAPTURE                          VAL R4
       31 RETURN                           R5 1
