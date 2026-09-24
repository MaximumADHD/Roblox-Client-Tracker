PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+7]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["current"]
        8 NAMECALL                         R0 R0 K1 ["setPluginFrame"]
       10 CALL                             R0 2 0
       11 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["adjustSidebarWidth"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 CALL                             R2 0 1
        6 GETUPVAL                         R3 2
        7 CALL                             R3 0 1
        8 GETUPVAL                         R4 3
        9 CALL                             R4 0 1
       10 GETUPVAL                         R5 4
       11 CALL                             R5 0 1
       12 GETUPVAL                         R6 5
       13 CALL                             R6 0 1
       14 GETUPVAL                         R7 6
       15 LOADNIL                          R8
       16 CALL                             R7 1 1
       17 GETUPVAL                         R8 7
       18 GETTABLEKS                       R8 R8 K1 ["useState"]
       20 LOADNIL                          R9
       21 CALL                             R8 1 2
       22 GETUPVAL                         R10 8
       23 NEWCLOSURE                       R11 P0
       24 CAPTURE                          VAL R7
       25 CAPTURE                          VAL R1
       26 NEWTABLE                         R12 0 1
       28 GETTABLEKS                       R13 R7 K2 ["current"]
       30 SETLIST                          R12 R13 1 [1]
       32 CALL                             R10 2 0
       33 GETUPVAL                         R10 9
       34 NEWCLOSURE                       R11 P1
       35 CAPTURE                          VAL R1
       36 NEWTABLE                         R12 0 0
       38 CALL                             R10 2 1
       39 NEWTABLE                         R11 8 0
       41 NOT                              R13 R3
       42 AND                              R12 R13 R2
       43 DUPTABLE                         R13 K5 [{"Fill", "Child"}]
       44 GETUPVAL                         R14 10
       45 SETTABLEKS                       R14 R13 K3 ["Fill"]
       47 GETUPVAL                         R14 7
       48 GETTABLEKS                       R14 R14 K6 ["createElement"]
       50 GETUPVAL                         R15 11
       51 DUPTABLE                         R16 K9 [{["LayoutOrder"] = 1}]
       52 CALL                             R14 2 1
       53 SETTABLEKS                       R14 R13 K4 ["Child"]
       55 JUMPIFNOT                        R12 ; [+19]
       56 GETUPVAL                         R14 7
       57 GETTABLEKS                       R14 R14 K6 ["createElement"]
       59 GETUPVAL                         R15 12
       60 DUPTABLE                         R16 K12 [{"orientation", "OnResize"}]
       61 GETUPVAL                         R17 13
       62 GETTABLEKS                       R17 R17 K13 ["Enums"]
       64 GETTABLEKS                       R17 R17 K14 ["Orientation"]
       66 GETTABLEKS                       R17 R17 K15 ["Vertical"]
       68 SETTABLEKS                       R17 R16 K10 ["orientation"]
       70 SETTABLEKS                       R10 R16 K11 ["OnResize"]
       72 CALL                             R14 2 1
       73 SETTABLEKS                       R14 R13 K16 ["Divider"]
       75 DUPTABLE                         R14 K19 [{"Layout", "Content"}]
       76 GETUPVAL                         R15 7
       77 GETTABLEKS                       R15 R15 K6 ["createElement"]
       79 LOADK                            R16 K20 ["UIListLayout"]
       80 DUPTABLE                         R17 K23 [{"FillDirection", "SortOrder"}]
       81 GETIMPORT                        R18 K26 [Enum.FillDirection.Horizontal]
       83 SETTABLEKS                       R18 R17 K21 ["FillDirection"]
       85 GETIMPORT                        R18 K27 [Enum.SortOrder.LayoutOrder]
       87 SETTABLEKS                       R18 R17 K22 ["SortOrder"]
       89 CALL                             R15 2 1
       90 SETTABLEKS                       R15 R14 K17 ["Layout"]
       92 GETUPVAL                         R15 7
       93 GETTABLEKS                       R15 R15 K6 ["createElement"]
       95 GETUPVAL                         R16 13
       96 GETTABLEKS                       R16 R16 K28 ["View"]
       98 DUPTABLE                         R17 K32 [{["LayoutOrder"] = 2, ["ZIndex"] = 2, ["Size"]}]
       99 GETIMPORT                        R18 K35 [UDim2.fromScale]
      101 LOADN                            R19 0
      102 LOADN                            R20 1
      103 CALL                             R18 2 1
      104 SETTABLEKS                       R18 R17 K31 ["Size"]
      106 MOVE                             R18 R13
      107 CALL                             R15 3 1
      108 SETTABLEKS                       R15 R14 K18 ["Content"]
      110 JUMPIFNOT                        R12 ; [+57]
      111 GETUPVAL                         R15 7
      112 GETTABLEKS                       R15 R15 K6 ["createElement"]
      114 GETUPVAL                         R16 13
      115 GETTABLEKS                       R16 R16 K28 ["View"]
      117 DUPTABLE                         R17 K36 [{["LayoutOrder"] = 1, ["ZIndex"] = 1, ["Size"]}]
      118 GETTABLEKS                       R18 R4 K37 ["Sidebar"]
      120 GETTABLEKS                       R18 R18 K31 ["Size"]
      122 SETTABLEKS                       R18 R17 K31 ["Size"]
      124 DUPTABLE                         R18 K39 [{"Bounds", "Child"}]
      125 GETUPVAL                         R19 7
      126 GETTABLEKS                       R19 R19 K6 ["createElement"]
      128 LOADK                            R20 K40 ["UISizeConstraint"]
      129 DUPTABLE                         R21 K43 [{"MinSize", "MaxSize"}]
      130 GETIMPORT                        R22 K46 [Vector2.new]
      132 GETTABLEKS                       R23 R4 K37 ["Sidebar"]
      134 GETTABLEKS                       R23 R23 K47 ["MinWidth"]
      136 LOADN                            R24 0
      137 CALL                             R22 2 1
      138 SETTABLEKS                       R22 R21 K41 ["MinSize"]
      140 GETIMPORT                        R22 K46 [Vector2.new]
      142 GETTABLEKS                       R23 R4 K37 ["Sidebar"]
      144 GETTABLEKS                       R23 R23 K48 ["MaxWidth"]
      146 LOADK                            R24 K49 [∞]
      147 CALL                             R22 2 1
      148 SETTABLEKS                       R22 R21 K42 ["MaxSize"]
      150 CALL                             R19 2 1
      151 SETTABLEKS                       R19 R18 K38 ["Bounds"]
      153 GETUPVAL                         R19 7
      154 GETTABLEKS                       R19 R19 K6 ["createElement"]
      156 GETUPVAL                         R20 14
      157 DUPTABLE                         R21 K51 [{["LayoutOrder"] = 1, ["ExplorerItems"], ["ZIndex"] = 2}]
      158 GETTABLEKS                       R22 R6 K52 ["Items"]
      160 SETTABLEKS                       R22 R21 K50 ["ExplorerItems"]
      162 CALL                             R19 2 1
      163 SETTABLEKS                       R19 R18 K4 ["Child"]
      165 CALL                             R15 3 1
      166 SETTABLEKS                       R15 R14 K37 ["Sidebar"]
      168 GETUPVAL                         R15 7
      169 GETTABLEKS                       R15 R15 K6 ["createElement"]
      171 GETUPVAL                         R16 13
      172 GETTABLEKS                       R16 R16 K28 ["View"]
      174 DUPTABLE                         R17 K53 [{["LayoutOrder"] = 1, ["Size"]}]
      175 GETIMPORT                        R18 K35 [UDim2.fromScale]
      177 LOADN                            R19 1
      178 LOADN                            R20 1
      179 CALL                             R18 2 1
      180 SETTABLEKS                       R18 R17 K31 ["Size"]
      182 MOVE                             R18 R14
      183 CALL                             R15 3 1
      184 SETTABLEKS                       R15 R11 K54 ["Contents"]
      186 JUMPIF                           R3 ; [+8]
      187 GETUPVAL                         R15 7
      188 GETTABLEKS                       R15 R15 K6 ["createElement"]
      190 GETUPVAL                         R16 15
      191 DUPTABLE                         R17 K55 [{["LayoutOrder"] = 2}]
      192 CALL                             R15 2 1
      193 SETTABLEKS                       R15 R11 K56 ["SidebarToggleButton"]
      195 GETTABLEKS                       R15 R0 K57 ["HideDialogs"]
      197 JUMPIF                           R15 ; [+10]
      198 GETUPVAL                         R15 7
      199 GETTABLEKS                       R15 R15 K6 ["createElement"]
      201 GETUPVAL                         R16 16
      202 DUPTABLE                         R17 K59 [{"Active"}]
      203 SETTABLEKS                       R5 R17 K58 ["Active"]
      205 CALL                             R15 2 1
      206 SETTABLEKS                       R15 R11 K60 ["Dialogs"]
      208 GETUPVAL                         R15 7
      209 GETTABLEKS                       R15 R15 K6 ["createElement"]
      211 GETUPVAL                         R16 17
      212 CALL                             R15 1 1
      213 SETTABLEKS                       R15 R11 K61 ["ContextMenu"]
      215 GETUPVAL                         R15 18
      216 CALL                             R15 0 1
      217 JUMPIF                           R15 ; [+7]
      218 GETUPVAL                         R15 7
      219 GETTABLEKS                       R15 R15 K6 ["createElement"]
      221 GETUPVAL                         R16 19
      222 CALL                             R15 1 1
      223 SETTABLEKS                       R15 R11 K62 ["Toast"]
      225 GETUPVAL                         R15 7
      226 GETTABLEKS                       R15 R15 K6 ["createElement"]
      228 GETUPVAL                         R16 20
      229 CALL                             R15 1 1
      230 SETTABLEKS                       R15 R11 K63 ["DragInvalidPopover"]
      232 GETUPVAL                         R15 21
      233 CALL                             R15 0 1
      234 JUMPIFNOT                        R15 ; [+63]
      235 GETUPVAL                         R15 7
      236 GETTABLEKS                       R15 R15 K6 ["createElement"]
      238 GETUPVAL                         R16 13
      239 GETTABLEKS                       R16 R16 K28 ["View"]
      241 DUPTABLE                         R17 K70 [{["Position"], ["tag"] = "anchor-bottom-left size-0", ["ref"], ["testId"] = "intro-tutorial-anchor"}]
      242 GETIMPORT                        R18 K71 [UDim2.new]
      244 LOADN                            R19 0
      245 LOADN                            R20 8
      246 LOADN                            R21 1
      247 LOADN                            R22 -8
      248 CALL                             R18 4 1
      249 SETTABLEKS                       R18 R17 K64 ["Position"]
      251 SETTABLEKS                       R9 R17 K67 ["ref"]
      253 CALL                             R15 2 1
      254 SETTABLEKS                       R15 R11 K72 ["IntroTutorialAnchor"]
      256 GETUPVAL                         R15 7
      257 GETTABLEKS                       R15 R15 K6 ["createElement"]
      259 GETUPVAL                         R16 22
      260 DUPTABLE                         R17 K78 [{"tutorialId", "stepId", "anchorInstance", "side", "align"}]
      261 GETUPVAL                         R18 23
      262 GETTABLEKS                       R18 R18 K79 ["TutorialId"]
      264 GETTABLEKS                       R18 R18 K80 ["Intro"]
      266 SETTABLEKS                       R18 R17 K73 ["tutorialId"]
      268 GETUPVAL                         R18 23
      269 GETTABLEKS                       R18 R18 K81 ["TutorialStepId"]
      271 GETTABLEKS                       R18 R18 K82 ["Welcome"]
      273 SETTABLEKS                       R18 R17 K74 ["stepId"]
      275 SETTABLEKS                       R8 R17 K75 ["anchorInstance"]
      277 GETUPVAL                         R18 13
      278 GETTABLEKS                       R18 R18 K13 ["Enums"]
      280 GETTABLEKS                       R18 R18 K83 ["PopoverSide"]
      282 GETTABLEKS                       R18 R18 K84 ["Top"]
      284 SETTABLEKS                       R18 R17 K76 ["side"]
      286 GETUPVAL                         R18 13
      287 GETTABLEKS                       R18 R18 K13 ["Enums"]
      289 GETTABLEKS                       R18 R18 K85 ["PopoverAlign"]
      291 GETTABLEKS                       R18 R18 K86 ["Start"]
      293 SETTABLEKS                       R18 R17 K77 ["align"]
      295 CALL                             R15 2 1
      296 SETTABLEKS                       R15 R11 K87 ["IntroTutorialTooltip"]
      298 GETUPVAL                         R15 7
      299 GETTABLEKS                       R15 R15 K6 ["createElement"]
      301 GETUPVAL                         R16 13
      302 GETTABLEKS                       R16 R16 K28 ["View"]
      304 DUPTABLE                         R17 K89 [{["ref"], ["tag"] = "size-full App"}]
      305 SETTABLEKS                       R7 R17 K67 ["ref"]
      307 MOVE                             R18 R11
      308 CALL                             R15 3 -1
      309 RETURN                           R15 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETIMPORT                        R4 K1 [script]
       25 GETTABLEKS                       R4 R4 K9 ["Parent"]
       27 GETTABLEKS                       R4 R4 K10 ["MainView"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETIMPORT                        R5 K1 [script]
       34 GETTABLEKS                       R5 R5 K9 ["Parent"]
       36 GETTABLEKS                       R5 R5 K11 ["Sidebar"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETIMPORT                        R6 K1 [script]
       43 GETTABLEKS                       R6 R6 K9 ["Parent"]
       45 GETTABLEKS                       R6 R6 K11 ["Sidebar"]
       47 GETTABLEKS                       R6 R6 K12 ["ToggleButton"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETIMPORT                        R7 K1 [script]
       54 GETTABLEKS                       R7 R7 K9 ["Parent"]
       56 GETTABLEKS                       R7 R7 K13 ["Dialogs"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K5 [require]
       61 GETIMPORT                        R8 K1 [script]
       63 GETTABLEKS                       R8 R8 K9 ["Parent"]
       65 GETTABLEKS                       R8 R8 K14 ["ContextMenu"]
       67 CALL                             R7 1 1
       68 GETIMPORT                        R8 K5 [require]
       70 GETIMPORT                        R9 K1 [script]
       72 GETTABLEKS                       R9 R9 K9 ["Parent"]
       74 GETTABLEKS                       R9 R9 K15 ["Toast"]
       76 CALL                             R8 1 1
       77 GETIMPORT                        R9 K5 [require]
       79 GETIMPORT                        R10 K1 [script]
       81 GETTABLEKS                       R10 R10 K9 ["Parent"]
       83 GETTABLEKS                       R10 R10 K16 ["DragInvalidPopover"]
       85 CALL                             R9 1 1
       86 GETIMPORT                        R10 K5 [require]
       88 GETIMPORT                        R11 K1 [script]
       90 GETTABLEKS                       R11 R11 K9 ["Parent"]
       92 GETTABLEKS                       R11 R11 K17 ["ResizeDivider"]
       94 CALL                             R10 1 1
       95 GETIMPORT                        R11 K5 [require]
       97 GETTABLEKS                       R12 R0 K18 ["Src"]
       99 GETTABLEKS                       R12 R12 K19 ["Types"]
      101 CALL                             R11 1 1
      102 GETIMPORT                        R12 K5 [require]
      104 GETTABLEKS                       R13 R0 K18 ["Src"]
      106 GETTABLEKS                       R13 R13 K20 ["Controllers"]
      108 GETTABLEKS                       R13 R13 K21 ["LayoutController"]
      110 CALL                             R12 1 1
      111 GETIMPORT                        R13 K5 [require]
      113 GETTABLEKS                       R14 R0 K18 ["Src"]
      115 GETTABLEKS                       R14 R14 K22 ["Components"]
      117 GETTABLEKS                       R14 R14 K23 ["Shared"]
      119 GETTABLEKS                       R14 R14 K24 ["TutorialTooltip"]
      121 CALL                             R13 1 1
      122 GETIMPORT                        R14 K5 [require]
      124 GETTABLEKS                       R15 R0 K18 ["Src"]
      126 GETTABLEKS                       R15 R15 K25 ["Flags"]
      128 GETTABLEKS                       R15 R15 K26 ["getFFlagAmrStudioToastsIntegration"]
      130 CALL                             R14 1 1
      131 GETIMPORT                        R15 K5 [require]
      133 GETTABLEKS                       R16 R0 K18 ["Src"]
      135 GETTABLEKS                       R16 R16 K25 ["Flags"]
      137 GETTABLEKS                       R16 R16 K27 ["getFFlagAmrEnableTutorials"]
      139 CALL                             R15 1 1
      140 GETTABLEKS                       R16 R1 K28 ["useCallback"]
      142 GETTABLEKS                       R17 R1 K29 ["useEffect"]
      144 GETTABLEKS                       R18 R1 K30 ["useRef"]
      146 GETIMPORT                        R19 K5 [require]
      148 GETTABLEKS                       R20 R0 K18 ["Src"]
      150 GETTABLEKS                       R20 R20 K31 ["Hooks"]
      152 GETTABLEKS                       R20 R20 K32 ["useDialogs"]
      154 CALL                             R19 1 1
      155 GETIMPORT                        R20 K5 [require]
      157 GETTABLEKS                       R21 R0 K18 ["Src"]
      159 GETTABLEKS                       R21 R21 K31 ["Hooks"]
      161 GETTABLEKS                       R21 R21 K33 ["useIsCompact"]
      163 CALL                             R20 1 1
      164 GETIMPORT                        R21 K5 [require]
      166 GETTABLEKS                       R22 R0 K18 ["Src"]
      168 GETTABLEKS                       R22 R22 K31 ["Hooks"]
      170 GETTABLEKS                       R22 R22 K34 ["useLayoutSizing"]
      172 CALL                             R21 1 1
      173 GETIMPORT                        R22 K5 [require]
      175 GETTABLEKS                       R23 R0 K18 ["Src"]
      177 GETTABLEKS                       R23 R23 K31 ["Hooks"]
      179 GETTABLEKS                       R23 R23 K35 ["useShowSidebar"]
      181 CALL                             R22 1 1
      182 GETIMPORT                        R23 K5 [require]
      184 GETTABLEKS                       R24 R0 K18 ["Src"]
      186 GETTABLEKS                       R24 R24 K31 ["Hooks"]
      188 GETTABLEKS                       R24 R24 K36 ["useExplorerInfo"]
      190 CALL                             R23 1 1
      191 GETTABLEKS                       R24 R1 K37 ["createElement"]
      193 LOADK                            R25 K38 ["UIFlexItem"]
      194 DUPTABLE                         R26 K40 [{"FlexMode"}]
      195 GETIMPORT                        R27 K44 [Enum.UIFlexMode.Fill]
      197 SETTABLEKS                       R27 R26 K39 ["FlexMode"]
      199 CALL                             R24 2 1
      200 DUPCLOSURE                       R25 K45 [PROTO_2]
      201 CAPTURE                          VAL R12
      202 CAPTURE                          VAL R22
      203 CAPTURE                          VAL R20
      204 CAPTURE                          VAL R21
      205 CAPTURE                          VAL R19
      206 CAPTURE                          VAL R23
      207 CAPTURE                          VAL R18
      208 CAPTURE                          VAL R1
      209 CAPTURE                          VAL R17
      210 CAPTURE                          VAL R16
      211 CAPTURE                          VAL R24
      212 CAPTURE                          VAL R3
      213 CAPTURE                          VAL R10
      214 CAPTURE                          VAL R2
      215 CAPTURE                          VAL R4
      216 CAPTURE                          VAL R5
      217 CAPTURE                          VAL R6
      218 CAPTURE                          VAL R7
      219 CAPTURE                          VAL R14
      220 CAPTURE                          VAL R8
      221 CAPTURE                          VAL R9
      222 CAPTURE                          VAL R15
      223 CAPTURE                          VAL R13
      224 CAPTURE                          VAL R11
      225 RETURN                           R25 1
