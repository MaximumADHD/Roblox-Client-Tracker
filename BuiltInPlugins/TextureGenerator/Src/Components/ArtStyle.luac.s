PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["setArtStyle"]
        3 LOADK                            R1 K1 [""]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["setArtStyle"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["artStyle"]
        3 GETIMPORT                        R3 K3 [string.match]
        5 MOVE                             R4 R2
        6 LOADK                            R5 K4 ["^%d+$"]
        7 CALL                             R3 2 1
        8 JUMPIFNOT                        R3 ; [+3]
        9 LOADK                            R3 K5 ["rbxassetid://"]
       10 MOVE                             R4 R2
       11 CONCAT                           R2 R3 R4
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R3 R4 K6 ["setArtStyle"]
       15 MOVE                             R4 R2
       16 CALL                             R3 1 0
       17 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKN                    R0 K0 [0] ; [+5]
        3 GETUPVAL                         R0 1
        4 LOADB                            R1 1
        5 CALL                             R0 1 0
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 2
        8 GETTABLEKS                       R0 R1 K1 ["current"]
       10 JUMPIF                           R0 ; [+1]
       11 RETURN                           R0 0
       12 GETIMPORT                        R1 K4 [Vector2.new]
       14 GETTABLEKS                       R4 R0 K5 ["AbsolutePosition"]
       16 GETTABLEKS                       R3 R4 K6 ["X"]
       18 GETTABLEKS                       R5 R0 K7 ["AbsoluteSize"]
       20 GETTABLEKS                       R4 R5 K6 ["X"]
       22 ADD                              R2 R3 R4
       23 GETTABLEKS                       R5 R0 K5 ["AbsolutePosition"]
       25 GETTABLEKS                       R4 R5 K8 ["Y"]
       27 GETTABLEKS                       R6 R0 K7 ["AbsoluteSize"]
       29 GETTABLEKS                       R5 R6 K8 ["Y"]
       31 ADD                              R3 R4 R5
       32 CALL                             R1 2 1
       33 GETUPVAL                         R2 3
       34 DUPTABLE                         R4 K10 [{"TargetWidgetUri"}]
       35 GETUPVAL                         R5 4
       36 SETTABLEKS                       R5 R4 K9 ["TargetWidgetUri"]
       38 GETUPVAL                         R6 5
       39 GETTABLEKS                       R5 R6 K11 ["artStyle"]
       41 MOVE                             R6 R1
       42 NAMECALL                         R2 R2 K12 ["OpenPopupAsync"]
       44 CALL                             R2 4 0
       45 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["setArtStyle"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["setStrength"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["setArtStyleExpanded"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R2 R3 K1 ["artStyleExpanded"]
        6 NOT                              R1 R2
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 LOADK                            R4 K1 ["ArtStyle"]
        6 NAMECALL                         R2 R2 K0 ["use"]
        8 CALL                             R2 2 1
        9 GETUPVAL                         R5 2
       10 GETTABLEKS                       R4 R5 K2 ["Plugin"]
       12 GETTABLEKS                       R3 R4 K0 ["use"]
       14 CALL                             R3 0 1
       15 NAMECALL                         R3 R3 K3 ["get"]
       17 CALL                             R3 1 1
       18 LOADK                            R6 K4 ["PopupImagePickerController"]
       19 NAMECALL                         R4 R3 K5 ["GetPluginComponent"]
       21 CALL                             R4 2 1
       22 GETUPVAL                         R6 3
       23 GETTABLEKS                       R5 R6 K6 ["useContext"]
       25 GETUPVAL                         R6 4
       26 CALL                             R5 1 1
       27 GETIMPORT                        R7 K8 [game]
       29 GETTABLEKS                       R6 R7 K9 ["GameId"]
       31 GETUPVAL                         R8 3
       32 GETTABLEKS                       R7 R8 K10 ["useState"]
       34 GETTABLEKS                       R9 R0 K12 ["ShowUnpublishedGameWarning"]
       36 ORK                              R8 R9 K11 [False]
       37 CALL                             R7 1 2
       38 DUPTABLE                         R9 K18 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
       39 LOADK                            R10 K19 ["Standalone"]
       40 SETTABLEKS                       R10 R9 K13 ["DataModel"]
       42 LOADK                            R10 K19 ["Standalone"]
       43 SETTABLEKS                       R10 R9 K14 ["PluginType"]
       45 LOADK                            R10 K20 ["TextureGenerator"]
       46 SETTABLEKS                       R10 R9 K15 ["PluginId"]
       48 LOADK                            R10 K21 ["Widgets"]
       49 SETTABLEKS                       R10 R9 K16 ["Category"]
       51 LOADK                            R10 K22 ["ImportButton"]
       52 SETTABLEKS                       R10 R9 K17 ["ItemId"]
       54 GETUPVAL                         R10 5
       55 MOVE                             R11 R9
       56 CALL                             R10 1 1
       57 GETTABLEKS                       R11 R5 K23 ["artStyle"]
       59 GETUPVAL                         R13 3
       60 GETTABLEKS                       R12 R13 K24 ["useCallback"]
       62 NEWCLOSURE                       R13 P0
       63 CAPTURE                          VAL R5
       64 NEWTABLE                         R14 0 1
       66 GETTABLEKS                       R15 R5 K23 ["artStyle"]
       68 SETLIST                          R14 R15 1 [1]
       70 CALL                             R12 2 1
       71 GETUPVAL                         R14 3
       72 GETTABLEKS                       R13 R14 K24 ["useCallback"]
       74 NEWCLOSURE                       R14 P1
       75 CAPTURE                          VAL R5
       76 NEWTABLE                         R15 0 1
       78 GETTABLEKS                       R16 R5 K23 ["artStyle"]
       80 SETLIST                          R15 R16 1 [1]
       82 CALL                             R13 2 1
       83 GETUPVAL                         R15 3
       84 GETTABLEKS                       R14 R15 K24 ["useCallback"]
       86 NEWCLOSURE                       R15 P2
       87 CAPTURE                          VAL R5
       88 NEWTABLE                         R16 0 1
       90 GETTABLEKS                       R17 R5 K23 ["artStyle"]
       92 SETLIST                          R16 R17 1 [1]
       94 CALL                             R14 2 1
       95 GETUPVAL                         R16 3
       96 GETTABLEKS                       R15 R16 K24 ["useCallback"]
       98 NEWCLOSURE                       R16 P3
       99 CAPTURE                          VAL R6
      100 CAPTURE                          VAL R8
      101 CAPTURE                          VAL R10
      102 CAPTURE                          VAL R4
      103 CAPTURE                          VAL R9
      104 CAPTURE                          VAL R5
      105 NEWTABLE                         R17 0 4
      107 MOVE                             R18 R10
      108 MOVE                             R19 R9
      109 MOVE                             R20 R6
      110 GETTABLEKS                       R21 R5 K23 ["artStyle"]
      112 SETLIST                          R17 R18 4 [1]
      114 CALL                             R15 2 1
      115 GETUPVAL                         R16 6
      116 GETTABLEKS                       R17 R4 K25 ["ImageSelected"]
      118 NEWCLOSURE                       R18 P4
      119 CAPTURE                          VAL R5
      120 NEWTABLE                         R19 0 1
      122 GETTABLEKS                       R20 R5 K23 ["artStyle"]
      124 SETLIST                          R19 R20 1 [1]
      126 CALL                             R16 3 0
      127 GETTABLEKS                       R16 R5 K26 ["strength"]
      129 GETUPVAL                         R18 3
      130 GETTABLEKS                       R17 R18 K24 ["useCallback"]
      132 NEWCLOSURE                       R18 P5
      133 CAPTURE                          VAL R5
      134 NEWTABLE                         R19 0 1
      136 GETTABLEKS                       R20 R5 K26 ["strength"]
      138 SETLIST                          R19 R20 1 [1]
      140 CALL                             R17 2 1
      141 GETUPVAL                         R19 7
      142 GETTABLEKS                       R18 R19 K27 ["new"]
      144 CALL                             R18 0 1
      145 GETUPVAL                         R20 3
      146 GETTABLEKS                       R19 R20 K28 ["createElement"]
      148 GETUPVAL                         R20 8
      149 DUPTABLE                         R21 K39 [{"ContentPadding", "ContentSpacing", "Expanded", "HorizontalAlignment", "Layout", "LayoutOrder", "OnExpandedChanged", "Style", "Text", "VerticalAlignment"}]
      150 GETTABLEKS                       R22 R2 K40 ["Padding"]
      152 SETTABLEKS                       R22 R21 K29 ["ContentPadding"]
      154 GETTABLEKS                       R22 R2 K41 ["Spacing"]
      156 SETTABLEKS                       R22 R21 K30 ["ContentSpacing"]
      158 GETTABLEKS                       R22 R5 K42 ["artStyleExpanded"]
      160 SETTABLEKS                       R22 R21 K31 ["Expanded"]
      162 GETIMPORT                        R22 K45 [Enum.HorizontalAlignment.Center]
      164 SETTABLEKS                       R22 R21 K32 ["HorizontalAlignment"]
      166 GETIMPORT                        R22 K48 [Enum.FillDirection.Vertical]
      168 SETTABLEKS                       R22 R21 K33 ["Layout"]
      170 GETTABLEKS                       R22 R0 K34 ["LayoutOrder"]
      172 SETTABLEKS                       R22 R21 K34 ["LayoutOrder"]
      174 NEWCLOSURE                       R22 P6
      175 CAPTURE                          VAL R5
      176 SETTABLEKS                       R22 R21 K35 ["OnExpandedChanged"]
      178 LOADK                            R22 K49 ["Section"]
      179 SETTABLEKS                       R22 R21 K36 ["Style"]
      181 LOADK                            R24 K1 ["ArtStyle"]
      182 LOADK                            R25 K50 ["Title"]
      183 NAMECALL                         R22 R1 K51 ["getText"]
      185 CALL                             R22 3 1
      186 SETTABLEKS                       R22 R21 K37 ["Text"]
      188 GETIMPORT                        R22 K53 [Enum.VerticalAlignment.Top]
      190 SETTABLEKS                       R22 R21 K38 ["VerticalAlignment"]
      192 DUPTABLE                         R22 K57 [{"Notice", "ImageSelector", "StrengthInputPane"}]
      193 MOVE                             R23 R7
      194 JUMPIFNOT                        R23 ; [+30]
      195 GETUPVAL                         R24 3
      196 GETTABLEKS                       R23 R24 K28 ["createElement"]
      198 GETUPVAL                         R24 9
      199 DUPTABLE                         R25 K61 [{"Title", "Description", "Style", "ZIndex", "OnClose"}]
      200 LOADK                            R28 K1 ["ArtStyle"]
      201 LOADK                            R29 K62 ["UnpublishedGameTitle"]
      202 NAMECALL                         R26 R1 K51 ["getText"]
      204 CALL                             R26 3 1
      205 SETTABLEKS                       R26 R25 K50 ["Title"]
      207 LOADK                            R28 K1 ["ArtStyle"]
      208 LOADK                            R29 K63 ["UnpublishedGameDescription"]
      209 NAMECALL                         R26 R1 K51 ["getText"]
      211 CALL                             R26 3 1
      212 SETTABLEKS                       R26 R25 K58 ["Description"]
      214 LOADK                            R26 K54 ["Notice"]
      215 SETTABLEKS                       R26 R25 K36 ["Style"]
      217 LOADN                            R26 2
      218 SETTABLEKS                       R26 R25 K59 ["ZIndex"]
      220 NEWCLOSURE                       R26 P7
      221 CAPTURE                          VAL R8
      222 SETTABLEKS                       R26 R25 K60 ["OnClose"]
      224 CALL                             R23 2 1
      225 SETTABLEKS                       R23 R22 K54 ["Notice"]
      227 GETUPVAL                         R24 3
      228 GETTABLEKS                       R23 R24 K28 ["createElement"]
      230 GETUPVAL                         R24 10
      231 DUPTABLE                         R25 K71 [{"ButtonRef", "ClearSelection", "LayoutOrder", "ImageId", "OnFocusLost", "OnUrlChanged", "PromptSelection", "Uri"}]
      232 SETTABLEKS                       R10 R25 K64 ["ButtonRef"]
      234 SETTABLEKS                       R12 R25 K65 ["ClearSelection"]
      236 NAMECALL                         R26 R18 K72 ["getNextOrder"]
      238 CALL                             R26 1 1
      239 SETTABLEKS                       R26 R25 K34 ["LayoutOrder"]
      241 SETTABLEKS                       R11 R25 K66 ["ImageId"]
      243 SETTABLEKS                       R14 R25 K67 ["OnFocusLost"]
      245 SETTABLEKS                       R13 R25 K68 ["OnUrlChanged"]
      247 SETTABLEKS                       R15 R25 K69 ["PromptSelection"]
      249 SETTABLEKS                       R9 R25 K70 ["Uri"]
      251 CALL                             R23 2 1
      252 SETTABLEKS                       R23 R22 K55 ["ImageSelector"]
      254 GETUPVAL                         R24 3
      255 GETTABLEKS                       R23 R24 K28 ["createElement"]
      257 GETUPVAL                         R24 11
      258 DUPTABLE                         R25 K74 [{"LayoutOrder", "Layout", "HorizontalAlignment", "Size", "Spacing", "Padding"}]
      259 NAMECALL                         R26 R18 K72 ["getNextOrder"]
      261 CALL                             R26 1 1
      262 SETTABLEKS                       R26 R25 K34 ["LayoutOrder"]
      264 GETIMPORT                        R26 K76 [Enum.FillDirection.Horizontal]
      266 SETTABLEKS                       R26 R25 K33 ["Layout"]
      268 GETIMPORT                        R26 K45 [Enum.HorizontalAlignment.Center]
      270 SETTABLEKS                       R26 R25 K32 ["HorizontalAlignment"]
      272 GETIMPORT                        R26 K78 [UDim2.new]
      274 LOADN                            R27 1
      275 LOADN                            R28 0
      276 LOADN                            R29 0
      277 GETTABLEKS                       R30 R2 K79 ["StrengthPaneHeight"]
      279 CALL                             R26 4 1
      280 SETTABLEKS                       R26 R25 K73 ["Size"]
      282 GETTABLEKS                       R26 R2 K80 ["StrengthPaneContentSpacing"]
      284 SETTABLEKS                       R26 R25 K41 ["Spacing"]
      286 GETTABLEKS                       R26 R2 K40 ["Padding"]
      288 SETTABLEKS                       R26 R25 K40 ["Padding"]
      290 DUPTABLE                         R26 K83 [{"StrengthInputText", "StrengthSlider"}]
      291 GETUPVAL                         R28 3
      292 GETTABLEKS                       R27 R28 K28 ["createElement"]
      294 GETUPVAL                         R28 12
      295 DUPTABLE                         R29 K86 [{"LayoutOrder", "Size", "Text", "TextSize", "TextXAlignment"}]
      296 LOADN                            R30 1
      297 SETTABLEKS                       R30 R29 K34 ["LayoutOrder"]
      299 GETIMPORT                        R30 K78 [UDim2.new]
      301 LOADN                            R31 0
      302 GETTABLEKS                       R32 R2 K87 ["StrengthLabelSize"]
      304 LOADN                            R33 1
      305 LOADN                            R34 0
      306 CALL                             R30 4 1
      307 SETTABLEKS                       R30 R29 K73 ["Size"]
      309 LOADK                            R32 K1 ["ArtStyle"]
      310 LOADK                            R33 K88 ["Strength"]
      311 NAMECALL                         R30 R1 K51 ["getText"]
      313 CALL                             R30 3 1
      314 SETTABLEKS                       R30 R29 K37 ["Text"]
      316 GETTABLEKS                       R30 R2 K89 ["StrengthTextSize"]
      318 SETTABLEKS                       R30 R29 K84 ["TextSize"]
      320 GETIMPORT                        R30 K90 [Enum.TextXAlignment.Center]
      322 SETTABLEKS                       R30 R29 K85 ["TextXAlignment"]
      324 CALL                             R27 2 1
      325 SETTABLEKS                       R27 R26 K81 ["StrengthInputText"]
      327 GETUPVAL                         R28 3
      328 GETTABLEKS                       R27 R28 K28 ["createElement"]
      330 GETUPVAL                         R28 13
      331 DUPTABLE                         R29 K97 [{"InputPrecision", "LayoutOrder", "Min", "Max", "OnValueChanged", "Size", "ShowInput", "Value"}]
      332 LOADN                            R30 1
      333 SETTABLEKS                       R30 R29 K91 ["InputPrecision"]
      335 LOADN                            R30 2
      336 SETTABLEKS                       R30 R29 K34 ["LayoutOrder"]
      338 LOADN                            R30 0
      339 SETTABLEKS                       R30 R29 K92 ["Min"]
      341 LOADN                            R30 1
      342 SETTABLEKS                       R30 R29 K93 ["Max"]
      344 SETTABLEKS                       R17 R29 K94 ["OnValueChanged"]
      346 GETIMPORT                        R30 K78 [UDim2.new]
      348 LOADN                            R31 1
      349 GETTABLEKS                       R33 R2 K87 ["StrengthLabelSize"]
      351 MINUS                            R32 R33
      352 LOADN                            R33 0
      353 GETTABLEKS                       R34 R2 K79 ["StrengthPaneHeight"]
      355 CALL                             R30 4 1
      356 SETTABLEKS                       R30 R29 K73 ["Size"]
      358 LOADB                            R30 1
      359 SETTABLEKS                       R30 R29 K95 ["ShowInput"]
      361 SETTABLEKS                       R16 R29 K96 ["Value"]
      363 CALL                             R27 2 1
      364 SETTABLEKS                       R27 R26 K82 ["StrengthSlider"]
      366 CALL                             R23 3 1
      367 SETTABLEKS                       R23 R22 K56 ["StrengthInputPane"]
      369 CALL                             R19 3 -1
      370 RETURN                           R19 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TextureGenerator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["ReactUtils"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R5 R1 K10 ["Style"]
       30 GETTABLEKS                       R4 R5 K11 ["Stylizer"]
       32 GETTABLEKS                       R5 R3 K12 ["useEventConnection"]
       34 GETTABLEKS                       R6 R1 K13 ["ContextServices"]
       36 GETTABLEKS                       R7 R6 K14 ["Localization"]
       38 GETTABLEKS                       R8 R1 K15 ["UI"]
       40 GETTABLEKS                       R9 R8 K16 ["Alert"]
       42 GETTABLEKS                       R10 R8 K17 ["ExpandablePane"]
       44 GETTABLEKS                       R11 R8 K18 ["Pane"]
       46 GETTABLEKS                       R12 R8 K19 ["Slider"]
       48 GETTABLEKS                       R13 R8 K20 ["TextLabel"]
       50 GETIMPORT                        R14 K5 [require]
       52 GETTABLEKS                       R16 R0 K6 ["Packages"]
       54 GETTABLEKS                       R15 R16 K21 ["StudioFoundation"]
       56 CALL                             R14 1 1
       57 GETTABLEKS                       R16 R14 K22 ["Hooks"]
       59 GETTABLEKS                       R15 R16 K23 ["useWidgetRef"]
       61 GETTABLEKS                       R17 R1 K24 ["Util"]
       63 GETTABLEKS                       R16 R17 K25 ["LayoutOrderIterator"]
       65 GETIMPORT                        R17 K5 [require]
       67 GETTABLEKS                       R20 R0 K26 ["Src"]
       69 GETTABLEKS                       R19 R20 K27 ["Components"]
       71 GETTABLEKS                       R18 R19 K28 ["PromptSelectorWithPreview"]
       73 CALL                             R17 1 1
       74 GETIMPORT                        R18 K5 [require]
       76 GETTABLEKS                       R21 R0 K26 ["Src"]
       78 GETTABLEKS                       R20 R21 K24 ["Util"]
       80 GETTABLEKS                       R19 R20 K29 ["OptionsContext"]
       82 CALL                             R18 1 1
       83 DUPCLOSURE                       R19 K30 [PROTO_8]
       84 CAPTURE                          VAL R7
       85 CAPTURE                          VAL R4
       86 CAPTURE                          VAL R6
       87 CAPTURE                          VAL R2
       88 CAPTURE                          VAL R18
       89 CAPTURE                          VAL R15
       90 CAPTURE                          VAL R5
       91 CAPTURE                          VAL R16
       92 CAPTURE                          VAL R10
       93 CAPTURE                          VAL R9
       94 CAPTURE                          VAL R17
       95 CAPTURE                          VAL R11
       96 CAPTURE                          VAL R13
       97 CAPTURE                          VAL R12
       98 RETURN                           R19 1
