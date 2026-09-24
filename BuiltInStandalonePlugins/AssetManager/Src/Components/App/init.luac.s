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
        2 NAMECALL                         R1 R1 K0 ["setAppSizes"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+7]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["createElement"]
        6 GETUPVAL                         R2 2
        7 MOVE                             R3 R0
        8 CALL                             R1 2 -1
        9 RETURN                           R1 -1
       10 GETUPVAL                         R1 3
       11 GETTABLEKS                       R1 R1 K1 ["new"]
       13 CALL                             R1 0 1
       14 GETUPVAL                         R2 4
       15 GETTABLEKS                       R2 R2 K2 ["use"]
       17 CALL                             R2 0 1
       18 GETUPVAL                         R3 5
       19 CALL                             R3 0 1
       20 GETUPVAL                         R4 6
       21 CALL                             R4 0 1
       22 GETUPVAL                         R5 7
       23 CALL                             R5 0 1
       24 GETUPVAL                         R6 8
       25 CALL                             R6 0 1
       26 GETUPVAL                         R7 9
       27 LOADNIL                          R8
       28 CALL                             R7 1 1
       29 GETUPVAL                         R8 1
       30 GETTABLEKS                       R8 R8 K3 ["useState"]
       32 LOADNIL                          R9
       33 CALL                             R8 1 2
       34 GETUPVAL                         R10 10
       35 NEWCLOSURE                       R11 P0
       36 CAPTURE                          VAL R7
       37 CAPTURE                          VAL R2
       38 NEWTABLE                         R12 0 1
       40 GETTABLEKS                       R13 R7 K4 ["current"]
       42 SETLIST                          R12 R13 1 [1]
       44 CALL                             R10 2 0
       45 GETUPVAL                         R10 1
       46 GETTABLEKS                       R10 R10 K0 ["createElement"]
       48 GETUPVAL                         R11 11
       49 DUPTABLE                         R12 K9 [{["LayoutOrder"], ["ExplorerItems"], ["ZIndex"] = 2}]
       50 NAMECALL                         R13 R1 K10 ["getNextOrder"]
       52 CALL                             R13 1 1
       53 SETTABLEKS                       R13 R12 K5 ["LayoutOrder"]
       55 GETTABLEKS                       R13 R6 K11 ["Items"]
       57 SETTABLEKS                       R13 R12 K6 ["ExplorerItems"]
       59 CALL                             R10 2 1
       60 GETUPVAL                         R11 1
       61 GETTABLEKS                       R11 R11 K0 ["createElement"]
       63 GETUPVAL                         R12 12
       64 DUPTABLE                         R13 K12 [{"LayoutOrder"}]
       65 NAMECALL                         R14 R1 K10 ["getNextOrder"]
       67 CALL                             R14 1 1
       68 SETTABLEKS                       R14 R13 K5 ["LayoutOrder"]
       70 CALL                             R11 2 1
       71 NEWTABLE                         R12 16 0
       73 GETUPVAL                         R13 13
       74 CALL                             R13 0 1
       75 JUMPIF                           R4 ; [+42]
       76 JUMPIFNOT                        R3 ; [+41]
       77 GETUPVAL                         R14 1
       78 GETTABLEKS                       R14 R14 K0 ["createElement"]
       80 GETUPVAL                         R15 14
       81 NEWTABLE                         R16 8 0
       83 LOADN                            R17 1
       84 SETTABLEKS                       R17 R16 K7 ["ZIndex"]
       86 LOADB                            R17 0
       87 SETTABLEKS                       R17 R16 K13 ["UseScale"]
       89 LOADB                            R17 1
       90 SETTABLEKS                       R17 R16 K14 ["ClampSize"]
       92 NAMECALL                         R17 R2 K15 ["getAppMinSizes"]
       94 CALL                             R17 1 1
       95 SETTABLEKS                       R17 R16 K16 ["MinSizes"]
       97 SETTABLEKS                       R13 R16 K17 ["Sizes"]
       99 NEWCLOSURE                       R17 P1
      100 CAPTURE                          VAL R2
      101 SETTABLEKS                       R17 R16 K18 ["OnSizesChange"]
      103 GETUPVAL                         R17 1
      104 GETTABLEKS                       R17 R17 K19 ["Tag"]
      106 LOADK                            R18 K20 ["size-full"]
      107 SETTABLE                         R18 R16 R17
      108 NEWTABLE                         R17 0 2
      110 MOVE                             R18 R10
      111 MOVE                             R19 R11
      112 SETLIST                          R17 R18 2 [1]
      114 CALL                             R14 3 1
      115 SETTABLEKS                       R14 R12 K21 ["SplitContents"]
      117 JUMP                             ; [+2]
      118 SETTABLEKS                       R11 R12 K22 ["MainView"]
      120 JUMPIF                           R4 ; [+13]
      121 GETUPVAL                         R14 1
      122 GETTABLEKS                       R14 R14 K0 ["createElement"]
      124 GETUPVAL                         R15 15
      125 DUPTABLE                         R16 K12 [{"LayoutOrder"}]
      126 NAMECALL                         R17 R1 K10 ["getNextOrder"]
      128 CALL                             R17 1 1
      129 SETTABLEKS                       R17 R16 K5 ["LayoutOrder"]
      131 CALL                             R14 2 1
      132 SETTABLEKS                       R14 R12 K23 ["SidebarToggleButton"]
      134 GETTABLEKS                       R14 R0 K24 ["HideDialogs"]
      136 JUMPIF                           R14 ; [+10]
      137 GETUPVAL                         R14 1
      138 GETTABLEKS                       R14 R14 K0 ["createElement"]
      140 GETUPVAL                         R15 16
      141 DUPTABLE                         R16 K26 [{"Active"}]
      142 SETTABLEKS                       R5 R16 K25 ["Active"]
      144 CALL                             R14 2 1
      145 SETTABLEKS                       R14 R12 K27 ["Dialogs"]
      147 GETUPVAL                         R14 1
      148 GETTABLEKS                       R14 R14 K0 ["createElement"]
      150 GETUPVAL                         R15 17
      151 CALL                             R14 1 1
      152 SETTABLEKS                       R14 R12 K28 ["ContextMenu"]
      154 GETUPVAL                         R14 18
      155 CALL                             R14 0 1
      156 JUMPIF                           R14 ; [+7]
      157 GETUPVAL                         R14 1
      158 GETTABLEKS                       R14 R14 K0 ["createElement"]
      160 GETUPVAL                         R15 19
      161 CALL                             R14 1 1
      162 SETTABLEKS                       R14 R12 K29 ["Toast"]
      164 GETUPVAL                         R14 1
      165 GETTABLEKS                       R14 R14 K0 ["createElement"]
      167 GETUPVAL                         R15 20
      168 CALL                             R14 1 1
      169 SETTABLEKS                       R14 R12 K30 ["DragInvalidPopover"]
      171 GETUPVAL                         R14 21
      172 CALL                             R14 0 1
      173 JUMPIFNOT                        R14 ; [+63]
      174 GETUPVAL                         R14 1
      175 GETTABLEKS                       R14 R14 K0 ["createElement"]
      177 GETUPVAL                         R15 22
      178 GETTABLEKS                       R15 R15 K31 ["View"]
      180 DUPTABLE                         R16 K38 [{["Position"], ["tag"] = "anchor-bottom-left size-0", ["ref"], ["testId"] = "intro-tutorial-anchor"}]
      181 GETIMPORT                        R17 K40 [UDim2.new]
      183 LOADN                            R18 0
      184 LOADN                            R19 8
      185 LOADN                            R20 1
      186 LOADN                            R21 -8
      187 CALL                             R17 4 1
      188 SETTABLEKS                       R17 R16 K32 ["Position"]
      190 SETTABLEKS                       R9 R16 K35 ["ref"]
      192 CALL                             R14 2 1
      193 SETTABLEKS                       R14 R12 K41 ["IntroTutorialAnchor"]
      195 GETUPVAL                         R14 1
      196 GETTABLEKS                       R14 R14 K0 ["createElement"]
      198 GETUPVAL                         R15 23
      199 DUPTABLE                         R16 K47 [{"tutorialId", "stepId", "anchorInstance", "side", "align"}]
      200 GETUPVAL                         R17 24
      201 GETTABLEKS                       R17 R17 K48 ["TutorialId"]
      203 GETTABLEKS                       R17 R17 K49 ["Intro"]
      205 SETTABLEKS                       R17 R16 K42 ["tutorialId"]
      207 GETUPVAL                         R17 24
      208 GETTABLEKS                       R17 R17 K50 ["TutorialStepId"]
      210 GETTABLEKS                       R17 R17 K51 ["Welcome"]
      212 SETTABLEKS                       R17 R16 K43 ["stepId"]
      214 SETTABLEKS                       R8 R16 K44 ["anchorInstance"]
      216 GETUPVAL                         R17 22
      217 GETTABLEKS                       R17 R17 K52 ["Enums"]
      219 GETTABLEKS                       R17 R17 K53 ["PopoverSide"]
      221 GETTABLEKS                       R17 R17 K54 ["Top"]
      223 SETTABLEKS                       R17 R16 K45 ["side"]
      225 GETUPVAL                         R17 22
      226 GETTABLEKS                       R17 R17 K52 ["Enums"]
      228 GETTABLEKS                       R17 R17 K55 ["PopoverAlign"]
      230 GETTABLEKS                       R17 R17 K56 ["Start"]
      232 SETTABLEKS                       R17 R16 K46 ["align"]
      234 CALL                             R14 2 1
      235 SETTABLEKS                       R14 R12 K57 ["IntroTutorialTooltip"]
      237 GETUPVAL                         R14 1
      238 GETTABLEKS                       R14 R14 K0 ["createElement"]
      240 GETUPVAL                         R15 25
      241 NEWTABLE                         R16 2 0
      243 SETTABLEKS                       R7 R16 K58 ["ForwardRef"]
      245 GETUPVAL                         R17 1
      246 GETTABLEKS                       R17 R17 K19 ["Tag"]
      248 LOADK                            R18 K59 ["App X-Fill"]
      249 SETTABLE                         R18 R16 R17
      250 MOVE                             R17 R12
      251 CALL                             R14 3 -1
      252 RETURN                           R14 -1

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
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["Util"]
       30 GETTABLEKS                       R4 R4 K11 ["LayoutOrderIterator"]
       32 GETTABLEKS                       R5 R3 K12 ["UI"]
       34 GETTABLEKS                       R6 R5 K13 ["Pane"]
       36 GETTABLEKS                       R7 R5 K14 ["SplitPane"]
       38 GETIMPORT                        R8 K5 [require]
       40 GETTABLEKS                       R9 R0 K15 ["Src"]
       42 GETTABLEKS                       R9 R9 K16 ["Flags"]
       44 GETTABLEKS                       R9 R9 K17 ["getFFlagAmrFlexPaneSizing"]
       46 CALL                             R8 1 1
       47 MOVE                             R10 R8
       48 CALL                             R10 0 1
       49 JUMPIFNOT                        R10 ; [+8]
       50 GETIMPORT                        R9 K5 [require]
       52 GETIMPORT                        R10 K1 [script]
       54 GETTABLEKS                       R10 R10 K18 ["FlexLayout"]
       56 CALL                             R9 1 1
       57 JUMP                             ; [+1]
       58 LOADNIL                          R9
       59 GETIMPORT                        R10 K5 [require]
       61 GETIMPORT                        R11 K1 [script]
       63 GETTABLEKS                       R11 R11 K19 ["MainView"]
       65 CALL                             R10 1 1
       66 GETIMPORT                        R11 K5 [require]
       68 GETIMPORT                        R12 K1 [script]
       70 GETTABLEKS                       R12 R12 K20 ["Sidebar"]
       72 CALL                             R11 1 1
       73 GETIMPORT                        R12 K5 [require]
       75 GETIMPORT                        R13 K1 [script]
       77 GETTABLEKS                       R13 R13 K20 ["Sidebar"]
       79 GETTABLEKS                       R13 R13 K21 ["ToggleButton"]
       81 CALL                             R12 1 1
       82 GETIMPORT                        R13 K5 [require]
       84 GETIMPORT                        R14 K1 [script]
       86 GETTABLEKS                       R14 R14 K22 ["Dialogs"]
       88 CALL                             R13 1 1
       89 GETIMPORT                        R14 K5 [require]
       91 GETIMPORT                        R15 K1 [script]
       93 GETTABLEKS                       R15 R15 K23 ["ContextMenu"]
       95 CALL                             R14 1 1
       96 GETIMPORT                        R15 K5 [require]
       98 GETIMPORT                        R16 K1 [script]
      100 GETTABLEKS                       R16 R16 K24 ["Toast"]
      102 CALL                             R15 1 1
      103 GETIMPORT                        R16 K5 [require]
      105 GETIMPORT                        R17 K1 [script]
      107 GETTABLEKS                       R17 R17 K25 ["DragInvalidPopover"]
      109 CALL                             R16 1 1
      110 GETIMPORT                        R17 K5 [require]
      112 GETTABLEKS                       R18 R0 K15 ["Src"]
      114 GETTABLEKS                       R18 R18 K26 ["Components"]
      116 GETTABLEKS                       R18 R18 K27 ["Shared"]
      118 GETTABLEKS                       R18 R18 K28 ["TutorialTooltip"]
      120 CALL                             R17 1 1
      121 GETIMPORT                        R18 K5 [require]
      123 GETTABLEKS                       R19 R0 K15 ["Src"]
      125 GETTABLEKS                       R19 R19 K29 ["Types"]
      127 CALL                             R18 1 1
      128 GETIMPORT                        R19 K5 [require]
      130 GETTABLEKS                       R20 R0 K15 ["Src"]
      132 GETTABLEKS                       R20 R20 K30 ["Controllers"]
      134 GETTABLEKS                       R20 R20 K31 ["LayoutController"]
      136 CALL                             R19 1 1
      137 GETIMPORT                        R20 K5 [require]
      139 GETTABLEKS                       R21 R0 K15 ["Src"]
      141 GETTABLEKS                       R21 R21 K16 ["Flags"]
      143 GETTABLEKS                       R21 R21 K32 ["getFFlagAmrStudioToastsIntegration"]
      145 CALL                             R20 1 1
      146 GETIMPORT                        R21 K5 [require]
      148 GETTABLEKS                       R22 R0 K15 ["Src"]
      150 GETTABLEKS                       R22 R22 K16 ["Flags"]
      152 GETTABLEKS                       R22 R22 K33 ["getFFlagAmrEnableTutorials"]
      154 CALL                             R21 1 1
      155 GETTABLEKS                       R22 R1 K34 ["useEffect"]
      157 GETTABLEKS                       R23 R1 K35 ["useRef"]
      159 GETIMPORT                        R24 K5 [require]
      161 GETTABLEKS                       R25 R0 K15 ["Src"]
      163 GETTABLEKS                       R25 R25 K36 ["Hooks"]
      165 GETTABLEKS                       R25 R25 K37 ["useDialogs"]
      167 CALL                             R24 1 1
      168 GETIMPORT                        R25 K5 [require]
      170 GETTABLEKS                       R26 R0 K15 ["Src"]
      172 GETTABLEKS                       R26 R26 K36 ["Hooks"]
      174 GETTABLEKS                       R26 R26 K38 ["useIsCompact"]
      176 CALL                             R25 1 1
      177 GETIMPORT                        R26 K5 [require]
      179 GETTABLEKS                       R27 R0 K15 ["Src"]
      181 GETTABLEKS                       R27 R27 K36 ["Hooks"]
      183 GETTABLEKS                       R27 R27 K39 ["useAppSizes"]
      185 CALL                             R26 1 1
      186 GETIMPORT                        R27 K5 [require]
      188 GETTABLEKS                       R28 R0 K15 ["Src"]
      190 GETTABLEKS                       R28 R28 K36 ["Hooks"]
      192 GETTABLEKS                       R28 R28 K40 ["useShowSidebar"]
      194 CALL                             R27 1 1
      195 GETIMPORT                        R28 K5 [require]
      197 GETTABLEKS                       R29 R0 K15 ["Src"]
      199 GETTABLEKS                       R29 R29 K36 ["Hooks"]
      201 GETTABLEKS                       R29 R29 K41 ["useExplorerInfo"]
      203 CALL                             R28 1 1
      204 DUPCLOSURE                       R29 K42 [PROTO_2]
      205 CAPTURE                          VAL R8
      206 CAPTURE                          VAL R1
      207 CAPTURE                          VAL R9
      208 CAPTURE                          VAL R4
      209 CAPTURE                          VAL R19
      210 CAPTURE                          VAL R27
      211 CAPTURE                          VAL R25
      212 CAPTURE                          VAL R24
      213 CAPTURE                          VAL R28
      214 CAPTURE                          VAL R23
      215 CAPTURE                          VAL R22
      216 CAPTURE                          VAL R11
      217 CAPTURE                          VAL R10
      218 CAPTURE                          VAL R26
      219 CAPTURE                          VAL R7
      220 CAPTURE                          VAL R12
      221 CAPTURE                          VAL R13
      222 CAPTURE                          VAL R14
      223 CAPTURE                          VAL R20
      224 CAPTURE                          VAL R15
      225 CAPTURE                          VAL R16
      226 CAPTURE                          VAL R21
      227 CAPTURE                          VAL R2
      228 CAPTURE                          VAL R17
      229 CAPTURE                          VAL R18
      230 CAPTURE                          VAL R6
      231 RETURN                           R29 1
