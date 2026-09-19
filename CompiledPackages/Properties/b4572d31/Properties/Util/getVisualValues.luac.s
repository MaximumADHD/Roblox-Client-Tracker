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
      234 DUPTABLE                         R4 K116 [{["Color3"], ["OutlineColor3"], ["OutlineThickness"] = 1.5, ["Size"] = 11, ["DetectorInflate"] = 1}]
      235 GETTABLEKS                       R5 R0 K25 ["Color"]
      237 GETTABLEKS                       R5 R5 K102 ["System"]
      239 GETTABLEKS                       R5 R5 K117 ["Emphasis"]
      241 GETTABLEKS                       R5 R5 K33 ["Color3"]
      243 SETTABLEKS                       R5 R4 K33 ["Color3"]
      245 GETTABLEKS                       R5 R0 K25 ["Color"]
      247 GETTABLEKS                       R5 R5 K102 ["System"]
      249 GETTABLEKS                       R5 R5 K103 ["Contrast"]
      251 GETTABLEKS                       R5 R5 K33 ["Color3"]
      253 SETTABLEKS                       R5 R4 K110 ["OutlineColor3"]
      255 SETTABLEKS                       R4 R3 K106 ["SelectedStyle"]
      257 DUPTABLE                         R4 K120 [{["Color3"], ["OutlineColor3"], ["OutlineThickness"] = 3, ["Size"] = 7, ["DetectorInflate"] = 3}]
      258 GETTABLEKS                       R5 R0 K25 ["Color"]
      260 GETTABLEKS                       R5 R5 K102 ["System"]
      262 GETTABLEKS                       R5 R5 K103 ["Contrast"]
      264 GETTABLEKS                       R5 R5 K33 ["Color3"]
      266 SETTABLEKS                       R5 R4 K33 ["Color3"]
      268 GETTABLEKS                       R5 R0 K25 ["Color"]
      270 GETTABLEKS                       R5 R5 K102 ["System"]
      272 GETTABLEKS                       R5 R5 K117 ["Emphasis"]
      274 GETTABLEKS                       R5 R5 K33 ["Color3"]
      276 SETTABLEKS                       R5 R4 K110 ["OutlineColor3"]
      278 SETTABLEKS                       R4 R3 K107 ["UnselectedStyle"]
      280 DUPTABLE                         R4 K124 [{["Color3"], ["OutlineColor3"] = , ["OutlineThickness"] = 0, ["Size"] = 10, ["DetectorInflate"] = 3}]
      281 GETTABLEKS                       R5 R0 K25 ["Color"]
      283 GETTABLEKS                       R5 R5 K102 ["System"]
      285 GETTABLEKS                       R5 R5 K103 ["Contrast"]
      287 GETTABLEKS                       R5 R5 K33 ["Color3"]
      289 SETTABLEKS                       R5 R4 K33 ["Color3"]
      291 SETTABLEKS                       R4 R3 K108 ["GhostStyle"]
      293 SETTABLEKS                       R3 R2 K90 ["Point"]
      295 GETUPVAL                         R3 2
      296 DUPTABLE                         R4 K146 [{["CircleImage"] = "rbxasset://textures/smallWhiteCircle.png", ["Thickness"] = 3.75, ["LengthPixels"] = 6, ["MaxLengthPixels"] = 12, ["WrapAngle"] = 0.698131700797732, ["ConnectorHoverOffsetYPixels"] = 18, ["ConnectorThicknessPixels"] = 25, ["DetectorWidthOffsetPixels"] = 18, ["DetectorHeightPixels"] = 14, ["BaseViewportHeightPixels"] = 164, ["DTimeToSlopeBlend"], ["EnvelopeToOffset"], ["EnvelopeToOffsetBlend"]}]
      297 NEWTABLE                         R5 0 2
      299 GETIMPORT                        R6 K96 [Vector2.new]
      301 LOADN                            R7 0
      302 LOADN                            R8 0
      303 CALL                             R6 2 1
      304 GETIMPORT                        R7 K96 [Vector2.new]
      306 LOADK                            R8 K147 [0.2]
      307 LOADN                            R9 1
      308 CALL                             R7 2 -1
      309 SETLIST                          R5 R6 -1 [1]
      311 SETTABLEKS                       R5 R4 K143 ["DTimeToSlopeBlend"]
      313 NEWTABLE                         R5 0 2
      315 GETIMPORT                        R6 K96 [Vector2.new]
      317 LOADN                            R7 0
      318 LOADK                            R8 K148 [4.5]
      319 CALL                             R6 2 1
      320 GETIMPORT                        R7 K96 [Vector2.new]
      322 LOADK                            R8 K149 [0.3]
      323 LOADN                            R9 8
      324 CALL                             R7 2 -1
      325 SETLIST                          R5 R6 -1 [1]
      327 SETTABLEKS                       R5 R4 K144 ["EnvelopeToOffset"]
      329 NEWTABLE                         R5 0 2
      331 GETIMPORT                        R6 K96 [Vector2.new]
      333 LOADN                            R7 0
      334 LOADN                            R8 0
      335 CALL                             R6 2 1
      336 GETIMPORT                        R7 K96 [Vector2.new]
      338 LOADK                            R8 K147 [0.2]
      339 LOADN                            R9 1
      340 CALL                             R7 2 -1
      341 SETLIST                          R5 R6 -1 [1]
      343 SETTABLEKS                       R5 R4 K145 ["EnvelopeToOffsetBlend"]
      345 CALL                             R3 1 1
      346 SETTABLEKS                       R3 R2 K91 ["EnvelopeHandles"]
      348 DUPTABLE                         R3 K158 [{["EnvelopeCurve"] = 9, ["Keypoint"] = 10, ["GhostKeypoint"] = 10, ["SelectedKeypoint"] = 15, ["Overlay"] = 20}]
      349 SETTABLEKS                       R3 R2 K92 ["ZIndex"]
      351 DUPTABLE                         R3 K170 [{["MinX"] = 0, ["MaxX"] = 1, ["InitialMinY"] = 0, ["InitialMaxY"] = 10, ["MinYLimit"] = -999, ["MaxYLimit"] = 999, ["MinYRange"] = 1, ["InputRightMargin"], ["InputTopMargin"]}]
      352 GETTABLEKS                       R4 R0 K13 ["Size"]
      354 GETTABLEKS                       R4 R4 K171 ["Size_100"]
      356 SETTABLEKS                       R4 R3 K168 ["InputRightMargin"]
      358 GETTABLEKS                       R5 R0 K35 ["Padding"]
      360 GETTABLEKS                       R5 R5 K36 ["Medium"]
      362 GETTABLEKS                       R6 R0 K97 ["Gap"]
      364 GETTABLEKS                       R6 R6 K99 ["Small"]
      366 SUB                              R4 R5 R6
      367 SETTABLEKS                       R4 R3 K169 ["InputTopMargin"]
      369 SETTABLEKS                       R3 R2 K93 ["Scale"]
      371 SETTABLEKS                       R2 R1 K8 ["NumberSequence"]
      373 DUPTABLE                         R2 K177 [{"HeaderContentHeight", "HeaderBottomPadding", "RowsGap", "RowSlotYPadding", "CellContentHeight"}]
      374 GETTABLEKS                       R3 R0 K13 ["Size"]
      376 GETTABLEKS                       R3 R3 K22 ["Size_600"]
      378 SETTABLEKS                       R3 R2 K172 ["HeaderContentHeight"]
      380 GETTABLEKS                       R3 R0 K35 ["Padding"]
      382 GETTABLEKS                       R3 R3 K99 ["Small"]
      384 SETTABLEKS                       R3 R2 K173 ["HeaderBottomPadding"]
      386 GETTABLEKS                       R3 R0 K97 ["Gap"]
      388 GETTABLEKS                       R3 R3 K99 ["Small"]
      390 SETTABLEKS                       R3 R2 K174 ["RowsGap"]
      392 GETTABLEKS                       R3 R0 K97 ["Gap"]
      394 GETTABLEKS                       R3 R3 K178 ["XSmall"]
      396 SETTABLEKS                       R3 R2 K175 ["RowSlotYPadding"]
      398 GETTABLEKS                       R3 R0 K13 ["Size"]
      400 GETTABLEKS                       R3 R3 K22 ["Size_600"]
      402 SETTABLEKS                       R3 R2 K176 ["CellContentHeight"]
      404 SETTABLEKS                       R2 R1 K9 ["RowStops"]
      406 RETURN                           R1 1

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
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Util"]
       18 GETTABLEKS                       R4 R4 K9 ["as"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K11 [game]
       23 LOADK                            R6 K12 ["PropertiesMaxLabelWidth"]
       24 LOADN                            R7 135
       25 NAMECALL                         R4 R4 K13 ["DefineFastInt"]
       27 CALL                             R4 3 1
       28 GETIMPORT                        R5 K11 [game]
       30 LOADK                            R7 K14 ["PropertiesMinValueWidth"]
       31 LOADN                            R8 155
       32 NAMECALL                         R5 R5 K13 ["DefineFastInt"]
       34 CALL                             R5 3 1
       35 DUPCLOSURE                       R6 K15 [PROTO_0]
       36 CAPTURE                          VAL R4
       37 CAPTURE                          VAL R5
       38 CAPTURE                          VAL R3
       39 RETURN                           R6 1
