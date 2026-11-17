PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setArtStyle"]
        3 LOADK                            R1 K1 [""]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setArtStyle"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["artStyle"]
        3 GETIMPORT                        R3 K3 [string.match]
        5 MOVE                             R4 R2
        6 LOADK                            R5 K4 ["^%d+$"]
        7 CALL                             R3 2 1
        8 JUMPIFNOT                        R3 ; [+3]
        9 LOADK                            R3 K5 ["rbxassetid://"]
       10 MOVE                             R4 R2
       11 CONCAT                           R2 R3 R4
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K6 ["setArtStyle"]
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
        7 GETUPVAL                         R0 2
        8 GETTABLEKS                       R0 R0 K1 ["current"]
       10 JUMPIF                           R0 ; [+1]
       11 RETURN                           R0 0
       12 GETIMPORT                        R1 K4 [Vector2.new]
       14 GETTABLEKS                       R3 R0 K5 ["AbsolutePosition"]
       16 GETTABLEKS                       R3 R3 K6 ["X"]
       18 GETTABLEKS                       R4 R0 K7 ["AbsoluteSize"]
       20 GETTABLEKS                       R4 R4 K6 ["X"]
       22 ADD                              R2 R3 R4
       23 GETTABLEKS                       R4 R0 K5 ["AbsolutePosition"]
       25 GETTABLEKS                       R4 R4 K8 ["Y"]
       27 GETTABLEKS                       R5 R0 K7 ["AbsoluteSize"]
       29 GETTABLEKS                       R5 R5 K8 ["Y"]
       31 ADD                              R3 R4 R5
       32 CALL                             R1 2 1
       33 GETUPVAL                         R2 3
       34 DUPTABLE                         R4 K10 [{"TargetWidgetUri"}]
       35 GETUPVAL                         R5 4
       36 SETTABLEKS                       R5 R4 K9 ["TargetWidgetUri"]
       38 GETUPVAL                         R5 5
       39 GETTABLEKS                       R5 R5 K11 ["artStyle"]
       41 MOVE                             R6 R1
       42 NAMECALL                         R2 R2 K12 ["OpenPopupAsync"]
       44 CALL                             R2 4 0
       45 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setArtStyle"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setStrength"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setArtStyleExpanded"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["artStyleExpanded"]
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
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R3 R3 K2 ["Plugin"]
       12 GETTABLEKS                       R3 R3 K0 ["use"]
       14 CALL                             R3 0 1
       15 NAMECALL                         R3 R3 K3 ["get"]
       17 CALL                             R3 1 1
       18 LOADK                            R6 K4 ["PopupImagePickerController"]
       19 NAMECALL                         R4 R3 K5 ["GetPluginComponent"]
       21 CALL                             R4 2 1
       22 GETUPVAL                         R5 3
       23 GETTABLEKS                       R5 R5 K6 ["useContext"]
       25 GETUPVAL                         R6 4
       26 CALL                             R5 1 1
       27 GETIMPORT                        R6 K8 [game]
       29 GETTABLEKS                       R6 R6 K9 ["GameId"]
       31 GETUPVAL                         R7 3
       32 GETTABLEKS                       R7 R7 K10 ["useState"]
       34 GETTABLEKS                       R9 R0 K12 ["ShowUnpublishedGameWarning"]
       36 ORK                              R8 R9 K11 [False]
       37 CALL                             R7 1 2
       38 DUPTABLE                         R9 K22 [{["DataModel"] = "Standalone", ["PluginType"] = "Standalone", ["PluginId"] = "TextureGenerator", ["Category"] = "Widgets", ["ItemId"] = "ImportButton"}]
       39 GETUPVAL                         R10 5
       40 MOVE                             R11 R9
       41 CALL                             R10 1 1
       42 GETTABLEKS                       R11 R5 K23 ["artStyle"]
       44 GETUPVAL                         R12 3
       45 GETTABLEKS                       R12 R12 K24 ["useCallback"]
       47 NEWCLOSURE                       R13 P0
       48 CAPTURE                          VAL R5
       49 NEWTABLE                         R14 0 1
       51 GETTABLEKS                       R15 R5 K23 ["artStyle"]
       53 SETLIST                          R14 R15 1 [1]
       55 CALL                             R12 2 1
       56 GETUPVAL                         R13 3
       57 GETTABLEKS                       R13 R13 K24 ["useCallback"]
       59 NEWCLOSURE                       R14 P1
       60 CAPTURE                          VAL R5
       61 NEWTABLE                         R15 0 1
       63 GETTABLEKS                       R16 R5 K23 ["artStyle"]
       65 SETLIST                          R15 R16 1 [1]
       67 CALL                             R13 2 1
       68 GETUPVAL                         R14 3
       69 GETTABLEKS                       R14 R14 K24 ["useCallback"]
       71 NEWCLOSURE                       R15 P2
       72 CAPTURE                          VAL R5
       73 NEWTABLE                         R16 0 1
       75 GETTABLEKS                       R17 R5 K23 ["artStyle"]
       77 SETLIST                          R16 R17 1 [1]
       79 CALL                             R14 2 1
       80 GETUPVAL                         R15 3
       81 GETTABLEKS                       R15 R15 K24 ["useCallback"]
       83 NEWCLOSURE                       R16 P3
       84 CAPTURE                          VAL R6
       85 CAPTURE                          VAL R8
       86 CAPTURE                          VAL R10
       87 CAPTURE                          VAL R4
       88 CAPTURE                          VAL R9
       89 CAPTURE                          VAL R5
       90 NEWTABLE                         R17 0 4
       92 MOVE                             R18 R10
       93 MOVE                             R19 R9
       94 MOVE                             R20 R6
       95 GETTABLEKS                       R21 R5 K23 ["artStyle"]
       97 SETLIST                          R17 R18 4 [1]
       99 CALL                             R15 2 1
      100 GETUPVAL                         R16 6
      101 GETTABLEKS                       R17 R4 K25 ["ImageSelected"]
      103 NEWCLOSURE                       R18 P4
      104 CAPTURE                          VAL R5
      105 NEWTABLE                         R19 0 1
      107 GETTABLEKS                       R20 R5 K23 ["artStyle"]
      109 SETLIST                          R19 R20 1 [1]
      111 CALL                             R16 3 0
      112 GETTABLEKS                       R16 R5 K26 ["strength"]
      114 GETUPVAL                         R17 3
      115 GETTABLEKS                       R17 R17 K24 ["useCallback"]
      117 NEWCLOSURE                       R18 P5
      118 CAPTURE                          VAL R5
      119 NEWTABLE                         R19 0 1
      121 GETTABLEKS                       R20 R5 K26 ["strength"]
      123 SETLIST                          R19 R20 1 [1]
      125 CALL                             R17 2 1
      126 GETUPVAL                         R18 7
      127 GETTABLEKS                       R18 R18 K27 ["new"]
      129 CALL                             R18 0 1
      130 GETUPVAL                         R19 3
      131 GETTABLEKS                       R19 R19 K28 ["createElement"]
      133 GETUPVAL                         R20 8
      134 DUPTABLE                         R21 K40 [{["ContentPadding"], ["ContentSpacing"], ["Expanded"], ["HorizontalAlignment"], ["Layout"], ["LayoutOrder"], ["OnExpandedChanged"], ["Style"] = "Section", ["Text"], ["VerticalAlignment"]}]
      135 GETTABLEKS                       R22 R2 K41 ["Padding"]
      137 SETTABLEKS                       R22 R21 K29 ["ContentPadding"]
      139 GETTABLEKS                       R22 R2 K42 ["Spacing"]
      141 SETTABLEKS                       R22 R21 K30 ["ContentSpacing"]
      143 GETTABLEKS                       R22 R5 K43 ["artStyleExpanded"]
      145 SETTABLEKS                       R22 R21 K31 ["Expanded"]
      147 GETIMPORT                        R22 K46 [Enum.HorizontalAlignment.Center]
      149 SETTABLEKS                       R22 R21 K32 ["HorizontalAlignment"]
      151 GETIMPORT                        R22 K49 [Enum.FillDirection.Vertical]
      153 SETTABLEKS                       R22 R21 K33 ["Layout"]
      155 GETTABLEKS                       R22 R0 K34 ["LayoutOrder"]
      157 SETTABLEKS                       R22 R21 K34 ["LayoutOrder"]
      159 NEWCLOSURE                       R22 P6
      160 CAPTURE                          VAL R5
      161 SETTABLEKS                       R22 R21 K35 ["OnExpandedChanged"]
      163 LOADK                            R24 K1 ["ArtStyle"]
      164 LOADK                            R25 K50 ["Title"]
      165 NAMECALL                         R22 R1 K51 ["getText"]
      167 CALL                             R22 3 1
      168 SETTABLEKS                       R22 R21 K38 ["Text"]
      170 GETIMPORT                        R22 K53 [Enum.VerticalAlignment.Top]
      172 SETTABLEKS                       R22 R21 K39 ["VerticalAlignment"]
      174 DUPTABLE                         R22 K57 [{"Notice", "ImageSelector", "StrengthInputPane"}]
      175 MOVE                             R23 R7
      176 JUMPIFNOT                        R23 ; [+24]
      177 GETUPVAL                         R23 3
      178 GETTABLEKS                       R23 R23 K28 ["createElement"]
      180 GETUPVAL                         R24 9
      181 DUPTABLE                         R25 K62 [{["Title"], ["Description"], ["Style"] = "Notice", ["ZIndex"] = 2, ["OnClose"]}]
      182 LOADK                            R28 K1 ["ArtStyle"]
      183 LOADK                            R29 K63 ["UnpublishedGameTitle"]
      184 NAMECALL                         R26 R1 K51 ["getText"]
      186 CALL                             R26 3 1
      187 SETTABLEKS                       R26 R25 K50 ["Title"]
      189 LOADK                            R28 K1 ["ArtStyle"]
      190 LOADK                            R29 K64 ["UnpublishedGameDescription"]
      191 NAMECALL                         R26 R1 K51 ["getText"]
      193 CALL                             R26 3 1
      194 SETTABLEKS                       R26 R25 K58 ["Description"]
      196 NEWCLOSURE                       R26 P7
      197 CAPTURE                          VAL R8
      198 SETTABLEKS                       R26 R25 K61 ["OnClose"]
      200 CALL                             R23 2 1
      201 SETTABLEKS                       R23 R22 K54 ["Notice"]
      203 GETUPVAL                         R23 3
      204 GETTABLEKS                       R23 R23 K28 ["createElement"]
      206 GETUPVAL                         R24 10
      207 DUPTABLE                         R25 K72 [{"ButtonRef", "ClearSelection", "LayoutOrder", "ImageId", "OnFocusLost", "OnUrlChanged", "PromptSelection", "Uri"}]
      208 SETTABLEKS                       R10 R25 K65 ["ButtonRef"]
      210 SETTABLEKS                       R12 R25 K66 ["ClearSelection"]
      212 NAMECALL                         R26 R18 K73 ["getNextOrder"]
      214 CALL                             R26 1 1
      215 SETTABLEKS                       R26 R25 K34 ["LayoutOrder"]
      217 SETTABLEKS                       R11 R25 K67 ["ImageId"]
      219 SETTABLEKS                       R14 R25 K68 ["OnFocusLost"]
      221 SETTABLEKS                       R13 R25 K69 ["OnUrlChanged"]
      223 SETTABLEKS                       R15 R25 K70 ["PromptSelection"]
      225 SETTABLEKS                       R9 R25 K71 ["Uri"]
      227 CALL                             R23 2 1
      228 SETTABLEKS                       R23 R22 K55 ["ImageSelector"]
      230 GETUPVAL                         R23 3
      231 GETTABLEKS                       R23 R23 K28 ["createElement"]
      233 GETUPVAL                         R24 11
      234 DUPTABLE                         R25 K75 [{"LayoutOrder", "Layout", "HorizontalAlignment", "Size", "Spacing", "Padding"}]
      235 NAMECALL                         R26 R18 K73 ["getNextOrder"]
      237 CALL                             R26 1 1
      238 SETTABLEKS                       R26 R25 K34 ["LayoutOrder"]
      240 GETIMPORT                        R26 K77 [Enum.FillDirection.Horizontal]
      242 SETTABLEKS                       R26 R25 K33 ["Layout"]
      244 GETIMPORT                        R26 K46 [Enum.HorizontalAlignment.Center]
      246 SETTABLEKS                       R26 R25 K32 ["HorizontalAlignment"]
      248 GETIMPORT                        R26 K79 [UDim2.new]
      250 LOADN                            R27 1
      251 LOADN                            R28 0
      252 LOADN                            R29 0
      253 GETTABLEKS                       R30 R2 K80 ["StrengthPaneHeight"]
      255 CALL                             R26 4 1
      256 SETTABLEKS                       R26 R25 K74 ["Size"]
      258 GETTABLEKS                       R26 R2 K81 ["StrengthPaneContentSpacing"]
      260 SETTABLEKS                       R26 R25 K42 ["Spacing"]
      262 GETTABLEKS                       R26 R2 K41 ["Padding"]
      264 SETTABLEKS                       R26 R25 K41 ["Padding"]
      266 DUPTABLE                         R26 K84 [{"StrengthInputText", "StrengthSlider"}]
      267 GETUPVAL                         R27 3
      268 GETTABLEKS                       R27 R27 K28 ["createElement"]
      270 GETUPVAL                         R28 12
      271 DUPTABLE                         R29 K88 [{["LayoutOrder"] = 1, ["Size"], ["Text"], ["TextSize"], ["TextXAlignment"]}]
      272 GETIMPORT                        R30 K79 [UDim2.new]
      274 LOADN                            R31 0
      275 GETTABLEKS                       R32 R2 K89 ["StrengthLabelSize"]
      277 LOADN                            R33 1
      278 LOADN                            R34 0
      279 CALL                             R30 4 1
      280 SETTABLEKS                       R30 R29 K74 ["Size"]
      282 LOADK                            R32 K1 ["ArtStyle"]
      283 LOADK                            R33 K90 ["Strength"]
      284 NAMECALL                         R30 R1 K51 ["getText"]
      286 CALL                             R30 3 1
      287 SETTABLEKS                       R30 R29 K38 ["Text"]
      289 GETTABLEKS                       R30 R2 K91 ["StrengthTextSize"]
      291 SETTABLEKS                       R30 R29 K86 ["TextSize"]
      293 GETIMPORT                        R30 K92 [Enum.TextXAlignment.Center]
      295 SETTABLEKS                       R30 R29 K87 ["TextXAlignment"]
      297 CALL                             R27 2 1
      298 SETTABLEKS                       R27 R26 K82 ["StrengthInputText"]
      300 GETUPVAL                         R27 3
      301 GETTABLEKS                       R27 R27 K28 ["createElement"]
      303 GETUPVAL                         R28 13
      304 DUPTABLE                         R29 K101 [{["InputPrecision"] = 1, ["LayoutOrder"] = 2, ["Min"] = 0, ["Max"] = 1, ["OnValueChanged"], ["Size"], ["ShowInput"] = True, ["Value"]}]
      305 SETTABLEKS                       R17 R29 K97 ["OnValueChanged"]
      307 GETIMPORT                        R30 K79 [UDim2.new]
      309 LOADN                            R31 1
      310 GETTABLEKS                       R33 R2 K89 ["StrengthLabelSize"]
      312 MINUS                            R32 R33
      313 LOADN                            R33 0
      314 GETTABLEKS                       R34 R2 K80 ["StrengthPaneHeight"]
      316 CALL                             R30 4 1
      317 SETTABLEKS                       R30 R29 K74 ["Size"]
      319 SETTABLEKS                       R16 R29 K100 ["Value"]
      321 CALL                             R27 2 1
      322 SETTABLEKS                       R27 R26 K83 ["StrengthSlider"]
      324 CALL                             R23 3 1
      325 SETTABLEKS                       R23 R22 K56 ["StrengthInputPane"]
      327 CALL                             R19 3 -1
      328 RETURN                           R19 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TextureGenerator"]
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
       28 GETTABLEKS                       R4 R1 K10 ["Style"]
       30 GETTABLEKS                       R4 R4 K11 ["Stylizer"]
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
       52 GETTABLEKS                       R15 R0 K6 ["Packages"]
       54 GETTABLEKS                       R15 R15 K21 ["StudioFoundation"]
       56 CALL                             R14 1 1
       57 GETTABLEKS                       R15 R14 K22 ["Hooks"]
       59 GETTABLEKS                       R15 R15 K23 ["useWidgetRef"]
       61 GETTABLEKS                       R16 R1 K24 ["Util"]
       63 GETTABLEKS                       R16 R16 K25 ["LayoutOrderIterator"]
       65 GETIMPORT                        R17 K5 [require]
       67 GETTABLEKS                       R18 R0 K26 ["Src"]
       69 GETTABLEKS                       R18 R18 K27 ["Components"]
       71 GETTABLEKS                       R18 R18 K28 ["PromptSelectorWithPreview"]
       73 CALL                             R17 1 1
       74 GETIMPORT                        R18 K5 [require]
       76 GETTABLEKS                       R19 R0 K26 ["Src"]
       78 GETTABLEKS                       R19 R19 K24 ["Util"]
       80 GETTABLEKS                       R19 R19 K29 ["OptionsContext"]
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
