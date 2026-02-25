PROTO_0:
        0 ORK                              R1 R1 K0 [""]
        1 ORK                              R0 R0 K0 [""]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K1 ["props"]
        5 GETTABLEKS                       R2 R3 K2 ["SetSelectedTab"]
        7 MOVE                             R3 R0
        8 CALL                             R2 1 0
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R3 R4 K1 ["props"]
       12 GETTABLEKS                       R2 R3 K3 ["SetCategoryFilter"]
       14 MOVE                             R3 R1
       15 CALL                             R2 1 0
       16 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        5 GETTABLEKS                       R3 R1 K2 ["SelectedTab"]
        7 GETTABLEKS                       R6 R0 K3 ["PreviewTopBar"]
        9 GETTABLEKS                       R5 R6 K4 ["AbsoluteSize"]
       11 GETTABLEKS                       R4 R5 K5 ["Y"]
       13 GETTABLEKS                       R8 R0 K6 ["GridContainer"]
       15 GETTABLEKS                       R7 R8 K7 ["CategoryList"]
       17 GETTABLEKS                       R6 R7 K4 ["AbsoluteSize"]
       19 GETTABLEKS                       R5 R6 K8 ["X"]
       21 LOADN                            R6 0
       22 LOADN                            R7 1
       23 GETUPVAL                         R9 1
       24 GETTABLEKS                       R8 R9 K9 ["shouldTabShowPlaybackSlider"]
       26 MOVE                             R9 R3
       27 CALL                             R8 1 1
       28 JUMPIFNOT                        R8 ; [+3]
       29 GETTABLEKS                       R6 R2 K10 ["SliderHeight"]
       31 ADDK                             R7 R7 K11 [1]
       32 GETUPVAL                         R8 0
       33 DUPTABLE                         R10 K14 [{"gridHeightOffset", "gridWidthOffset"}]
       34 MULK                             R13 R7 K15 [6]
       35 ADD                              R12 R4 R13
       36 ADD                              R11 R12 R6
       37 SETTABLEKS                       R11 R10 K12 ["gridHeightOffset"]
       39 ADDK                             R11 R5 K15 [6]
       40 SETTABLEKS                       R11 R10 K13 ["gridWidthOffset"]
       42 NAMECALL                         R8 R8 K16 ["setState"]
       44 CALL                             R8 2 0
       45 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R1 K2 [{"gridHeightOffset", "gridWidthOffset"}]
        1 LOADN                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["gridHeightOffset"]
        4 LOADN                            R2 0
        5 SETTABLEKS                       R2 R1 K1 ["gridWidthOffset"]
        7 SETTABLEKS                       R1 R0 K3 ["state"]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R1 R2 K4 ["createRef"]
       12 CALL                             R1 0 1
       13 SETTABLEKS                       R1 R0 K5 ["previewFrameRef"]
       15 NEWCLOSURE                       R1 P0
       16 CAPTURE                          VAL R0
       17 SETTABLEKS                       R1 R0 K6 ["onCategoryChanged"]
       19 NEWCLOSURE                       R1 P1
       20 CAPTURE                          VAL R0
       21 CAPTURE                          UPVAL U1
       22 SETTABLEKS                       R1 R0 K7 ["onAbsoluteSizeChanged"]
       24 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["onAbsoluteSizeChanged"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R2 R3 K1 ["previewFrameRef"]
        6 GETTABLEKS                       R1 R2 K2 ["current"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Size"]
        6 GETTABLEKS                       R4 R1 K3 ["LayoutOrder"]
        8 GETTABLEKS                       R5 R1 K4 ["Stylizer"]
       10 GETTABLEKS                       R6 R1 K5 ["UserAddedAssets"]
       12 GETTABLEKS                       R7 R1 K6 ["SelectedTab"]
       14 GETTABLEKS                       R8 R1 K7 ["IsPlaying"]
       16 GETTABLEKS                       R9 R1 K8 ["Playhead"]
       18 GETTABLEKS                       R10 R1 K9 ["TrackLength"]
       20 GETTABLEKS                       R11 R1 K10 ["SetIsPlaying"]
       22 GETTABLEKS                       R12 R1 K11 ["SetSliderPlayhead"]
       24 GETTABLEKS                       R13 R2 K12 ["gridHeightOffset"]
       26 GETTABLEKS                       R14 R2 K13 ["gridWidthOffset"]
       28 GETUPVAL                         R16 0
       29 GETTABLEKS                       R15 R16 K14 ["new"]
       31 CALL                             R15 0 1
       32 LOADN                            R16 1
       33 GETTABLEKS                       R18 R0 K15 ["previewFrameRef"]
       35 GETTABLEKS                       R17 R18 K16 ["current"]
       37 JUMPIFNOT                        R17 ; [+11]
       38 GETTABLEKS                       R21 R0 K15 ["previewFrameRef"]
       40 GETTABLEKS                       R20 R21 K16 ["current"]
       42 GETTABLEKS                       R19 R20 K18 ["GridContainer"]
       44 GETTABLEKS                       R18 R19 K19 ["Grid"]
       46 GETTABLEKS                       R17 R18 K20 ["ZIndex"]
       48 ADDK                             R16 R17 K17 [1]
       49 GETUPVAL                         R18 1
       50 GETTABLEKS                       R17 R18 K21 ["createElement"]
       52 LOADK                            R18 K22 ["Frame"]
       53 NEWTABLE                         R19 8 0
       55 GETTABLEKS                       R20 R5 K23 ["BackgroundColor"]
       57 SETTABLEKS                       R20 R19 K24 ["BackgroundColor3"]
       59 LOADN                            R20 0
       60 SETTABLEKS                       R20 R19 K25 ["BorderSizePixel"]
       62 SETTABLEKS                       R3 R19 K2 ["Size"]
       64 SETTABLEKS                       R4 R19 K3 ["LayoutOrder"]
       66 GETUPVAL                         R21 1
       67 GETTABLEKS                       R20 R21 K26 ["Ref"]
       69 GETTABLEKS                       R21 R0 K15 ["previewFrameRef"]
       71 SETTABLE                         R21 R19 R20
       72 GETUPVAL                         R22 1
       73 GETTABLEKS                       R21 R22 K27 ["Change"]
       75 GETTABLEKS                       R20 R21 K28 ["AbsoluteSize"]
       77 GETTABLEKS                       R21 R0 K29 ["onAbsoluteSizeChanged"]
       79 SETTABLE                         R21 R19 R20
       80 DUPTABLE                         R20 K34 [{"UIListLayout", "UIPadding", "PreviewTopBar", "GridContainer", "AnimPlaybackSliderContainer"}]
       81 GETUPVAL                         R22 1
       82 GETTABLEKS                       R21 R22 K21 ["createElement"]
       84 LOADK                            R22 K30 ["UIListLayout"]
       85 DUPTABLE                         R23 K40 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
       86 GETIMPORT                        R24 K43 [Enum.FillDirection.Vertical]
       88 SETTABLEKS                       R24 R23 K35 ["FillDirection"]
       90 GETIMPORT                        R24 K45 [Enum.HorizontalAlignment.Center]
       92 SETTABLEKS                       R24 R23 K36 ["HorizontalAlignment"]
       94 GETIMPORT                        R24 K47 [Enum.VerticalAlignment.Top]
       96 SETTABLEKS                       R24 R23 K37 ["VerticalAlignment"]
       98 GETIMPORT                        R24 K48 [Enum.SortOrder.LayoutOrder]
      100 SETTABLEKS                       R24 R23 K38 ["SortOrder"]
      102 GETIMPORT                        R24 K50 [UDim.new]
      104 LOADN                            R25 0
      105 GETTABLEKS                       R26 R5 K39 ["Padding"]
      107 CALL                             R24 2 1
      108 SETTABLEKS                       R24 R23 K39 ["Padding"]
      110 CALL                             R21 2 1
      111 SETTABLEKS                       R21 R20 K30 ["UIListLayout"]
      113 GETUPVAL                         R22 1
      114 GETTABLEKS                       R21 R22 K21 ["createElement"]
      116 LOADK                            R22 K31 ["UIPadding"]
      117 DUPTABLE                         R23 K52 [{"PaddingTop"}]
      118 GETIMPORT                        R24 K50 [UDim.new]
      120 LOADN                            R25 0
      121 GETTABLEKS                       R26 R5 K39 ["Padding"]
      123 CALL                             R24 2 1
      124 SETTABLEKS                       R24 R23 K51 ["PaddingTop"]
      126 CALL                             R21 2 1
      127 SETTABLEKS                       R21 R20 K31 ["UIPadding"]
      129 GETUPVAL                         R22 1
      130 GETTABLEKS                       R21 R22 K21 ["createElement"]
      132 GETUPVAL                         R22 2
      133 DUPTABLE                         R23 K53 [{"LayoutOrder"}]
      134 NAMECALL                         R24 R15 K54 ["getNextOrder"]
      136 CALL                             R24 1 1
      137 SETTABLEKS                       R24 R23 K3 ["LayoutOrder"]
      139 CALL                             R21 2 1
      140 SETTABLEKS                       R21 R20 K32 ["PreviewTopBar"]
      142 GETUPVAL                         R22 1
      143 GETTABLEKS                       R21 R22 K21 ["createElement"]
      145 GETUPVAL                         R22 3
      146 DUPTABLE                         R23 K57 [{"Size", "Layout", "HorizontalAlignment", "LayoutOrder", "BackgroundColor", "Spacing", "Padding"}]
      147 GETIMPORT                        R24 K59 [UDim2.new]
      149 LOADN                            R25 1
      150 LOADN                            R26 0
      151 LOADN                            R27 1
      152 MINUS                            R28 R13
      153 CALL                             R24 4 1
      154 SETTABLEKS                       R24 R23 K2 ["Size"]
      156 GETIMPORT                        R24 K61 [Enum.FillDirection.Horizontal]
      158 SETTABLEKS                       R24 R23 K55 ["Layout"]
      160 GETIMPORT                        R24 K63 [Enum.HorizontalAlignment.Left]
      162 SETTABLEKS                       R24 R23 K36 ["HorizontalAlignment"]
      164 NAMECALL                         R24 R15 K54 ["getNextOrder"]
      166 CALL                             R24 1 1
      167 SETTABLEKS                       R24 R23 K3 ["LayoutOrder"]
      169 GETTABLEKS                       R24 R5 K64 ["GridContainerBackgroundColor"]
      171 SETTABLEKS                       R24 R23 K23 ["BackgroundColor"]
      173 GETTABLEKS                       R24 R5 K65 ["GridContainerSpacing"]
      175 SETTABLEKS                       R24 R23 K56 ["Spacing"]
      177 DUPTABLE                         R24 K67 [{"Top", "Bottom"}]
      178 GETTABLEKS                       R25 R5 K68 ["GridContainerPadding"]
      180 SETTABLEKS                       R25 R24 K46 ["Top"]
      182 GETTABLEKS                       R25 R5 K68 ["GridContainerPadding"]
      184 SETTABLEKS                       R25 R24 K66 ["Bottom"]
      186 SETTABLEKS                       R24 R23 K39 ["Padding"]
      188 DUPTABLE                         R24 K70 [{"CategoryList", "Grid"}]
      189 GETUPVAL                         R26 1
      190 GETTABLEKS                       R25 R26 K21 ["createElement"]
      192 GETUPVAL                         R26 4
      193 DUPTABLE                         R27 K73 [{"LayoutOrder", "OnCategoryChanged", "OnArrowClick"}]
      194 NAMECALL                         R28 R15 K54 ["getNextOrder"]
      196 CALL                             R28 1 1
      197 SETTABLEKS                       R28 R27 K3 ["LayoutOrder"]
      199 GETTABLEKS                       R28 R0 K74 ["onCategoryChanged"]
      201 SETTABLEKS                       R28 R27 K71 ["OnCategoryChanged"]
      203 NEWCLOSURE                       R28 P0
      204 CAPTURE                          VAL R0
      205 SETTABLEKS                       R28 R27 K72 ["OnArrowClick"]
      207 CALL                             R25 2 1
      208 SETTABLEKS                       R25 R24 K69 ["CategoryList"]
      210 GETUPVAL                         R26 1
      211 GETTABLEKS                       R25 R26 K21 ["createElement"]
      213 GETUPVAL                         R26 5
      214 DUPTABLE                         R27 K77 [{"Size", "layoutOrder", "UpdateUserAddedAssets", "UserAddedAssets"}]
      215 GETIMPORT                        R28 K59 [UDim2.new]
      217 LOADN                            R29 1
      218 MINUS                            R30 R14
      219 LOADN                            R31 1
      220 LOADN                            R32 0
      221 CALL                             R28 4 1
      222 SETTABLEKS                       R28 R27 K2 ["Size"]
      224 NAMECALL                         R28 R15 K54 ["getNextOrder"]
      226 CALL                             R28 1 1
      227 SETTABLEKS                       R28 R27 K75 ["layoutOrder"]
      229 GETTABLEKS                       R28 R1 K76 ["UpdateUserAddedAssets"]
      231 SETTABLEKS                       R28 R27 K76 ["UpdateUserAddedAssets"]
      233 SETTABLEKS                       R6 R27 K5 ["UserAddedAssets"]
      235 CALL                             R25 2 1
      236 SETTABLEKS                       R25 R24 K19 ["Grid"]
      238 CALL                             R21 3 1
      239 SETTABLEKS                       R21 R20 K18 ["GridContainer"]
      241 GETUPVAL                         R22 6
      242 GETTABLEKS                       R21 R22 K78 ["shouldTabShowPlaybackSlider"]
      244 MOVE                             R22 R7
      245 CALL                             R21 1 1
      246 JUMPIFNOT                        R21 ; [+52]
      247 GETUPVAL                         R22 1
      248 GETTABLEKS                       R21 R22 K21 ["createElement"]
      250 GETUPVAL                         R22 3
      251 DUPTABLE                         R23 K79 [{"Size", "LayoutOrder"}]
      252 GETIMPORT                        R24 K59 [UDim2.new]
      254 LOADN                            R25 1
      255 GETTABLEKS                       R27 R5 K80 ["MainPadding"]
      257 MINUS                            R26 R27
      258 LOADN                            R27 0
      259 GETTABLEKS                       R28 R5 K81 ["SliderHeight"]
      261 CALL                             R24 4 1
      262 SETTABLEKS                       R24 R23 K2 ["Size"]
      264 NAMECALL                         R24 R15 K54 ["getNextOrder"]
      266 CALL                             R24 1 1
      267 SETTABLEKS                       R24 R23 K3 ["LayoutOrder"]
      269 DUPTABLE                         R24 K83 [{"AnimPlaybackSlider"}]
      270 GETUPVAL                         R26 1
      271 GETTABLEKS                       R25 R26 K21 ["createElement"]
      273 GETUPVAL                         R26 7
      274 DUPTABLE                         R27 K86 [{"IsPlaying", "Playhead", "OnSliderPlayheadChanged", "OnPlayPauseClicked", "Size", "TrackLength"}]
      275 SETTABLEKS                       R8 R27 K7 ["IsPlaying"]
      277 SETTABLEKS                       R9 R27 K8 ["Playhead"]
      279 SETTABLEKS                       R12 R27 K84 ["OnSliderPlayheadChanged"]
      281 SETTABLEKS                       R11 R27 K85 ["OnPlayPauseClicked"]
      283 GETIMPORT                        R28 K59 [UDim2.new]
      285 LOADN                            R29 1
      286 LOADN                            R30 0
      287 LOADN                            R31 0
      288 GETTABLEKS                       R32 R5 K81 ["SliderHeight"]
      290 CALL                             R28 4 1
      291 SETTABLEKS                       R28 R27 K2 ["Size"]
      293 SETTABLEKS                       R10 R27 K9 ["TrackLength"]
      295 CALL                             R25 2 1
      296 SETTABLEKS                       R25 R24 K82 ["AnimPlaybackSlider"]
      298 CALL                             R21 3 1
      299 SETTABLEKS                       R21 R20 K33 ["AnimPlaybackSliderContainer"]
      301 CALL                             R17 3 -1
      302 RETURN                           R17 -1

PROTO_5:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R3 K1 ["SelectedTab"]
        4 GETTABLEKS                       R3 R1 K1 ["SelectedTab"]
        6 JUMPIFEQ                         R2 R3 ; [+8]
        8 GETTABLEKS                       R2 R0 K2 ["onAbsoluteSizeChanged"]
       10 GETTABLEKS                       R4 R0 K3 ["previewFrameRef"]
       12 GETTABLEKS                       R3 R4 K4 ["current"]
       14 CALL                             R2 1 0
       15 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["previewStatus"]
        2 GETTABLEKS                       R3 R0 K1 ["animation"]
        4 DUPTABLE                         R4 K8 [{"SelectedTab", "AnimationId", "IsPlaying", "Playhead", "TrackLength", "SliderPlayhead"}]
        5 GETTABLEKS                       R5 R2 K9 ["selectedTab"]
        7 SETTABLEKS                       R5 R4 K2 ["SelectedTab"]
        9 GETUPVAL                         R6 0
       10 GETTABLEKS                       R5 R6 K10 ["getPreviewingAnimationId"]
       12 MOVE                             R6 R0
       13 CALL                             R5 1 1
       14 SETTABLEKS                       R5 R4 K3 ["AnimationId"]
       16 GETTABLEKS                       R5 R3 K4 ["IsPlaying"]
       18 SETTABLEKS                       R5 R4 K4 ["IsPlaying"]
       20 GETTABLEKS                       R5 R3 K5 ["Playhead"]
       22 SETTABLEKS                       R5 R4 K5 ["Playhead"]
       24 GETTABLEKS                       R5 R3 K6 ["TrackLength"]
       26 SETTABLEKS                       R5 R4 K6 ["TrackLength"]
       28 GETTABLEKS                       R5 R3 K7 ["SliderPlayhead"]
       30 SETTABLEKS                       R5 R4 K7 ["SliderPlayhead"]
       32 RETURN                           R4 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_13:
        0 DUPTABLE                         R1 K6 [{"SetSelectedTab", "SetCategoryFilter", "SetIsPlaying", "SetSliderPlayhead", "SetPlayhead", "SetTrackLength"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["SetSelectedTab"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["SetCategoryFilter"]
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 SETTABLEKS                       R2 R1 K2 ["SetIsPlaying"]
       16 NEWCLOSURE                       R2 P3
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U3
       19 SETTABLEKS                       R2 R1 K3 ["SetSliderPlayhead"]
       21 NEWCLOSURE                       R2 P4
       22 CAPTURE                          VAL R0
       23 CAPTURE                          UPVAL U4
       24 SETTABLEKS                       R2 R1 K4 ["SetPlayhead"]
       26 NEWCLOSURE                       R2 P5
       27 CAPTURE                          VAL R0
       28 CAPTURE                          UPVAL U5
       29 SETTABLEKS                       R2 R1 K5 ["SetTrackLength"]
       31 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["RoactRodux"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R5 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R5 K8 ["Cryo"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K4 [require]
       32 GETTABLEKS                       R6 R0 K5 ["Packages"]
       34 GETTABLEKS                       R5 R6 K9 ["AvatarToolsShared"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R6 R4 K10 ["Util"]
       39 GETTABLEKS                       R5 R6 K11 ["AccessoryAndBodyToolShared"]
       41 GETTABLEKS                       R6 R5 K12 ["PreviewConstantsInterface"]
       43 GETTABLEKS                       R7 R4 K13 ["Components"]
       45 GETTABLEKS                       R8 R7 K14 ["AnimationPlaybackSlider"]
       47 GETTABLEKS                       R9 R7 K15 ["PreviewDockWidget"]
       49 GETTABLEKS                       R10 R7 K16 ["PreviewCategoryList"]
       51 GETIMPORT                        R11 K4 [require]
       53 GETTABLEKS                       R13 R0 K5 ["Packages"]
       55 GETTABLEKS                       R12 R13 K17 ["Framework"]
       57 CALL                             R11 1 1
       58 GETTABLEKS                       R12 R11 K18 ["ContextServices"]
       60 GETTABLEKS                       R13 R12 K19 ["withContext"]
       62 GETTABLEKS                       R14 R11 K10 ["Util"]
       64 GETTABLEKS                       R15 R14 K20 ["LayoutOrderIterator"]
       66 GETTABLEKS                       R16 R14 K21 ["Typecheck"]
       68 GETTABLEKS                       R17 R11 K22 ["UI"]
       70 GETTABLEKS                       R18 R17 K23 ["Pane"]
       72 GETIMPORT                        R19 K4 [require]
       74 GETTABLEKS                       R23 R0 K24 ["Src"]
       76 GETTABLEKS                       R22 R23 K13 ["Components"]
       78 GETTABLEKS                       R21 R22 K25 ["Preview"]
       80 GETTABLEKS                       R20 R21 K26 ["PreviewTabsRibbon"]
       82 CALL                             R19 1 1
       83 GETIMPORT                        R20 K4 [require]
       85 GETTABLEKS                       R24 R0 K24 ["Src"]
       87 GETTABLEKS                       R23 R24 K13 ["Components"]
       89 GETTABLEKS                       R22 R23 K25 ["Preview"]
       91 GETTABLEKS                       R21 R22 K27 ["Grid"]
       93 CALL                             R20 1 1
       94 GETIMPORT                        R21 K4 [require]
       96 GETTABLEKS                       R25 R0 K24 ["Src"]
       98 GETTABLEKS                       R24 R25 K13 ["Components"]
      100 GETTABLEKS                       R23 R24 K25 ["Preview"]
      102 GETTABLEKS                       R22 R23 K28 ["PreviewTopBarWrapper"]
      104 CALL                             R21 1 1
      105 GETIMPORT                        R22 K4 [require]
      107 GETTABLEKS                       R25 R0 K24 ["Src"]
      109 GETTABLEKS                       R24 R25 K29 ["Actions"]
      111 GETTABLEKS                       R23 R24 K30 ["SelectPreviewTab"]
      113 CALL                             R22 1 1
      114 GETIMPORT                        R23 K4 [require]
      116 GETTABLEKS                       R26 R0 K24 ["Src"]
      118 GETTABLEKS                       R25 R26 K29 ["Actions"]
      120 GETTABLEKS                       R24 R25 K31 ["SetCategoryFilter"]
      122 CALL                             R23 1 1
      123 GETIMPORT                        R24 K4 [require]
      125 GETTABLEKS                       R27 R0 K24 ["Src"]
      127 GETTABLEKS                       R26 R27 K29 ["Actions"]
      129 GETTABLEKS                       R25 R26 K32 ["SetSliderPlayhead"]
      131 CALL                             R24 1 1
      132 GETIMPORT                        R25 K4 [require]
      134 GETTABLEKS                       R28 R0 K24 ["Src"]
      136 GETTABLEKS                       R27 R28 K29 ["Actions"]
      138 GETTABLEKS                       R26 R27 K33 ["SetIsPlaying"]
      140 CALL                             R25 1 1
      141 GETIMPORT                        R26 K4 [require]
      143 GETTABLEKS                       R29 R0 K24 ["Src"]
      145 GETTABLEKS                       R28 R29 K29 ["Actions"]
      147 GETTABLEKS                       R27 R28 K34 ["SetPlayhead"]
      149 CALL                             R26 1 1
      150 GETIMPORT                        R27 K4 [require]
      152 GETTABLEKS                       R30 R0 K24 ["Src"]
      154 GETTABLEKS                       R29 R30 K29 ["Actions"]
      156 GETTABLEKS                       R28 R29 K35 ["SetTrackLength"]
      158 CALL                             R27 1 1
      159 GETTABLEKS                       R28 R5 K36 ["PreviewingInfo"]
      161 GETTABLEKS                       R29 R1 K37 ["PureComponent"]
      163 LOADK                            R31 K38 ["PreviewFrame"]
      164 NAMECALL                         R29 R29 K39 ["extend"]
      166 CALL                             R29 2 1
      167 GETTABLEKS                       R30 R16 K40 ["wrap"]
      169 MOVE                             R31 R29
      170 GETIMPORT                        R32 K1 [script]
      172 CALL                             R30 2 0
      173 DUPCLOSURE                       R30 K41 [PROTO_2]
      174 CAPTURE                          VAL R1
      175 CAPTURE                          VAL R6
      176 SETTABLEKS                       R30 R29 K42 ["init"]
      178 DUPCLOSURE                       R30 K43 [PROTO_4]
      179 CAPTURE                          VAL R15
      180 CAPTURE                          VAL R1
      181 CAPTURE                          VAL R21
      182 CAPTURE                          VAL R18
      183 CAPTURE                          VAL R10
      184 CAPTURE                          VAL R20
      185 CAPTURE                          VAL R6
      186 CAPTURE                          VAL R8
      187 SETTABLEKS                       R30 R29 K44 ["render"]
      189 DUPCLOSURE                       R30 K45 [PROTO_5]
      190 SETTABLEKS                       R30 R29 K46 ["didUpdate"]
      192 MOVE                             R30 R13
      193 DUPTABLE                         R31 K48 [{"Stylizer"}]
      194 GETTABLEKS                       R32 R12 K47 ["Stylizer"]
      196 SETTABLEKS                       R32 R31 K47 ["Stylizer"]
      198 CALL                             R30 1 1
      199 MOVE                             R31 R29
      200 CALL                             R30 1 1
      201 MOVE                             R29 R30
      202 DUPCLOSURE                       R30 K49 [PROTO_6]
      203 CAPTURE                          VAL R28
      204 DUPCLOSURE                       R31 K50 [PROTO_13]
      205 CAPTURE                          VAL R22
      206 CAPTURE                          VAL R23
      207 CAPTURE                          VAL R25
      208 CAPTURE                          VAL R24
      209 CAPTURE                          VAL R26
      210 CAPTURE                          VAL R27
      211 GETTABLEKS                       R32 R2 K51 ["connect"]
      213 MOVE                             R33 R30
      214 MOVE                             R34 R31
      215 CALL                             R32 2 1
      216 MOVE                             R33 R29
      217 CALL                             R32 1 -1
      218 RETURN                           R32 -1
