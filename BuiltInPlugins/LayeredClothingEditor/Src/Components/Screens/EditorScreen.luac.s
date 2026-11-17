PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K0 ["props"]
        6 GETTABLEKS                       R1 R1 K1 ["LuaMeshEditingModuleContext"]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K0 ["props"]
       11 GETTABLEKS                       R2 R2 K2 ["EditingItemContext"]
       13 NAMECALL                         R2 R2 K3 ["getItem"]
       15 CALL                             R2 1 1
       16 JUMPIFNOT                        R1 ; [+8]
       17 JUMPIFNOT                        R2 ; [+7]
       18 NAMECALL                         R3 R1 K4 ["enableEditing"]
       20 CALL                             R3 1 0
       21 MOVE                             R5 R2
       22 NAMECALL                         R3 R1 K5 ["updateCageLocationsFromInstance"]
       24 CALL                             R3 2 0
       25 GETUPVAL                         R3 0
       26 GETTABLEKS                       R3 R3 K0 ["props"]
       28 GETTABLEKS                       R3 R3 K6 ["FinishSelectingFromExplorer"]
       30 CALL                             R3 0 0
       31 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["SetToolMode"]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K2 ["TOOL_MODE"]
        8 GETTABLEKS                       R1 R1 K3 ["None"]
       10 CALL                             R0 1 0
       11 GETUPVAL                         R0 0
       12 GETTABLEKS                       R0 R0 K0 ["props"]
       14 GETTABLEKS                       R0 R0 K4 ["GoToNext"]
       16 CALL                             R0 0 0
       17 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["SetToolMode"]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K2 ["TOOL_MODE"]
        8 GETTABLEKS                       R1 R1 K3 ["None"]
       10 CALL                             R0 1 0
       11 GETUPVAL                         R0 0
       12 GETTABLEKS                       R0 R0 K0 ["props"]
       14 GETTABLEKS                       R0 R0 K4 ["GoToPrevious"]
       16 CALL                             R0 0 0
       17 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 SETTABLEKS                       R1 R0 K0 ["finishSelectingFromExplorer"]
        4 NEWCLOSURE                       R1 P1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U0
        7 SETTABLEKS                       R1 R0 K1 ["onNext"]
        9 NEWCLOSURE                       R1 P2
       10 CAPTURE                          VAL R0
       11 CAPTURE                          UPVAL U0
       12 SETTABLEKS                       R1 R0 K2 ["onPrevious"]
       14 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Docked"]
        4 GETTABLEKS                       R3 R1 K2 ["UserAddedAssets"]
        6 GETTABLEKS                       R4 R1 K3 ["Stylizer"]
        8 GETTABLEKS                       R5 R1 K4 ["AddUserAddedAssetForPreview"]
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R6 R6 K5 ["new"]
       13 CALL                             R6 0 1
       14 JUMPIFNOT                        R2 ; [+3]
       15 GETTABLEKS                       R7 R4 K6 ["PreviewViewportFrameHeight"]
       17 JUMP                             ; [+1]
       18 LOADN                            R7 0
       19 GETUPVAL                         R8 1
       20 GETTABLEKS                       R8 R8 K7 ["provide"]
       22 NEWTABLE                         R9 0 1
       24 GETUPVAL                         R10 2
       25 GETTABLEKS                       R10 R10 K5 ["new"]
       27 CALL                             R10 0 -1
       28 SETLIST                          R9 R10 -1 [1]
       30 DUPTABLE                         R10 K9 [{"Container"}]
       31 GETUPVAL                         R11 3
       32 GETTABLEKS                       R11 R11 K10 ["createElement"]
       34 GETUPVAL                         R12 4
       35 DUPTABLE                         R13 K15 [{"BackgroundColor3", "Layout", "VerticalAlignment", "HorizontalAlignment"}]
       36 GETTABLEKS                       R14 R4 K16 ["BackgroundColor"]
       38 SETTABLEKS                       R14 R13 K11 ["BackgroundColor3"]
       40 GETIMPORT                        R14 K20 [Enum.FillDirection.Vertical]
       42 SETTABLEKS                       R14 R13 K12 ["Layout"]
       44 GETIMPORT                        R14 K22 [Enum.VerticalAlignment.Top]
       46 SETTABLEKS                       R14 R13 K13 ["VerticalAlignment"]
       48 GETIMPORT                        R14 K24 [Enum.HorizontalAlignment.Center]
       50 SETTABLEKS                       R14 R13 K14 ["HorizontalAlignment"]
       52 DUPTABLE                         R14 K31 [{"EditorToolsManager", "PreviewViewportFrameContainer", "MainFrame", "ControlsPanelBlocker", "AnimationPlaybackWrapper", "ExplorerPreviewInstances"}]
       53 GETUPVAL                         R15 3
       54 GETTABLEKS                       R15 R15 K10 ["createElement"]
       56 GETUPVAL                         R16 5
       57 CALL                             R15 1 1
       58 SETTABLEKS                       R15 R14 K25 ["EditorToolsManager"]
       60 GETUPVAL                         R15 3
       61 GETTABLEKS                       R15 R15 K10 ["createElement"]
       63 GETUPVAL                         R16 6
       64 DUPTABLE                         R17 K33 [{"LayoutOrder"}]
       65 NAMECALL                         R18 R6 K34 ["getNextOrder"]
       67 CALL                             R18 1 1
       68 SETTABLEKS                       R18 R17 K32 ["LayoutOrder"]
       70 CALL                             R15 2 1
       71 SETTABLEKS                       R15 R14 K26 ["PreviewViewportFrameContainer"]
       73 GETUPVAL                         R15 3
       74 GETTABLEKS                       R15 R15 K10 ["createElement"]
       76 GETUPVAL                         R16 7
       77 DUPTABLE                         R17 K37 [{"Size", "AutomaticCanvasSize", "Layout", "LayoutOrder"}]
       78 GETIMPORT                        R18 K39 [UDim2.new]
       80 LOADN                            R19 1
       81 LOADN                            R20 0
       82 LOADN                            R21 1
       83 MINUS                            R22 R7
       84 CALL                             R18 4 1
       85 SETTABLEKS                       R18 R17 K35 ["Size"]
       87 GETIMPORT                        R18 K42 [Enum.AutomaticSize.XY]
       89 SETTABLEKS                       R18 R17 K36 ["AutomaticCanvasSize"]
       91 GETIMPORT                        R18 K20 [Enum.FillDirection.Vertical]
       93 SETTABLEKS                       R18 R17 K12 ["Layout"]
       95 NAMECALL                         R18 R6 K34 ["getNextOrder"]
       97 CALL                             R18 1 1
       98 SETTABLEKS                       R18 R17 K32 ["LayoutOrder"]
      100 DUPTABLE                         R18 K45 [{"PreviewFrame", "GenerateContainer"}]
      101 GETUPVAL                         R19 3
      102 GETTABLEKS                       R19 R19 K10 ["createElement"]
      104 GETUPVAL                         R20 8
      105 DUPTABLE                         R21 K47 [{"Size", "UserAddedAssets", "UpdateUserAddedAssets", "LayoutOrder"}]
      106 GETIMPORT                        R22 K39 [UDim2.new]
      108 LOADN                            R23 1
      109 LOADN                            R24 0
      110 LOADN                            R25 1
      111 GETTABLEKS                       R27 R4 K48 ["GenerateHeight"]
      113 MINUS                            R26 R27
      114 CALL                             R22 4 1
      115 SETTABLEKS                       R22 R21 K35 ["Size"]
      117 SETTABLEKS                       R3 R21 K2 ["UserAddedAssets"]
      119 SETTABLEKS                       R5 R21 K46 ["UpdateUserAddedAssets"]
      121 NAMECALL                         R22 R6 K34 ["getNextOrder"]
      123 CALL                             R22 1 1
      124 SETTABLEKS                       R22 R21 K32 ["LayoutOrder"]
      126 CALL                             R19 2 1
      127 SETTABLEKS                       R19 R18 K43 ["PreviewFrame"]
      129 GETUPVAL                         R19 3
      130 GETTABLEKS                       R19 R19 K10 ["createElement"]
      132 GETUPVAL                         R20 4
      133 DUPTABLE                         R21 K49 [{"Size", "LayoutOrder"}]
      134 GETIMPORT                        R22 K39 [UDim2.new]
      136 LOADN                            R23 1
      137 LOADN                            R24 0
      138 LOADN                            R25 0
      139 GETTABLEKS                       R26 R4 K48 ["GenerateHeight"]
      141 CALL                             R22 4 1
      142 SETTABLEKS                       R22 R21 K35 ["Size"]
      144 NAMECALL                         R22 R6 K34 ["getNextOrder"]
      146 CALL                             R22 1 1
      147 SETTABLEKS                       R22 R21 K32 ["LayoutOrder"]
      149 DUPTABLE                         R22 K51 [{"GenerateScreen"}]
      150 GETUPVAL                         R23 3
      151 GETTABLEKS                       R23 R23 K10 ["createElement"]
      153 GETUPVAL                         R24 9
      154 DUPTABLE                         R25 K54 [{"GoToNext", "GoToPrevious"}]
      155 GETTABLEKS                       R26 R0 K55 ["onNext"]
      157 SETTABLEKS                       R26 R25 K52 ["GoToNext"]
      159 GETTABLEKS                       R26 R0 K56 ["onPrevious"]
      161 SETTABLEKS                       R26 R25 K53 ["GoToPrevious"]
      163 CALL                             R23 2 1
      164 SETTABLEKS                       R23 R22 K50 ["GenerateScreen"]
      166 CALL                             R19 3 1
      167 SETTABLEKS                       R19 R18 K44 ["GenerateContainer"]
      169 CALL                             R15 3 1
      170 SETTABLEKS                       R15 R14 K27 ["MainFrame"]
      172 GETTABLEKS                       R15 R1 K57 ["IsControlsPanelBlockerActive"]
      174 JUMPIFNOT                        R15 ; [+14]
      175 GETUPVAL                         R15 3
      176 GETTABLEKS                       R15 R15 K10 ["createElement"]
      178 GETUPVAL                         R16 10
      179 DUPTABLE                         R17 K60 [{"OnFocused", "Text"}]
      180 GETTABLEKS                       R18 R0 K61 ["finishSelectingFromExplorer"]
      182 SETTABLEKS                       R18 R17 K58 ["OnFocused"]
      184 GETTABLEKS                       R18 R1 K62 ["ControlsPanelBlockerMessage"]
      186 SETTABLEKS                       R18 R17 K59 ["Text"]
      188 CALL                             R15 2 1
      189 SETTABLEKS                       R15 R14 K28 ["ControlsPanelBlocker"]
      191 GETUPVAL                         R15 3
      192 GETTABLEKS                       R15 R15 K10 ["createElement"]
      194 GETUPVAL                         R16 11
      195 CALL                             R15 1 1
      196 SETTABLEKS                       R15 R14 K29 ["AnimationPlaybackWrapper"]
      198 GETUPVAL                         R15 3
      199 GETTABLEKS                       R15 R15 K10 ["createElement"]
      201 GETUPVAL                         R16 12
      202 DUPTABLE                         R17 K63 [{"UserAddedAssets"}]
      203 SETTABLEKS                       R3 R17 K2 ["UserAddedAssets"]
      205 CALL                             R15 2 1
      206 SETTABLEKS                       R15 R14 K30 ["ExplorerPreviewInstances"]
      208 CALL                             R11 3 1
      209 SETTABLEKS                       R11 R10 K8 ["Container"]
      211 CALL                             R8 2 -1
      212 RETURN                           R8 -1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["ClearPreviewAssetsSelected"]
        4 CALL                             R2 0 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["controlsPanelBlocker"]
        2 GETTABLEKS                       R3 R0 K1 ["previewStatus"]
        4 GETTABLEKS                       R4 R0 K2 ["selectItem"]
        6 DUPTABLE                         R5 K7 [{"IsControlsPanelBlockerActive", "ControlsPanelBlockerMessage", "UserAddedAssets", "Docked"}]
        7 GETTABLEKS                       R6 R2 K8 ["isActive"]
        9 SETTABLEKS                       R6 R5 K3 ["IsControlsPanelBlockerActive"]
       11 GETTABLEKS                       R6 R2 K9 ["message"]
       13 SETTABLEKS                       R6 R5 K4 ["ControlsPanelBlockerMessage"]
       15 GETTABLEKS                       R6 R3 K10 ["userAddedAssets"]
       17 SETTABLEKS                       R6 R5 K5 ["UserAddedAssets"]
       19 GETTABLEKS                       R6 R3 K11 ["docked"]
       21 SETTABLEKS                       R6 R5 K6 ["Docked"]
       23 RETURN                           R5 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 0
        4 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NEWTABLE                         R2 0 0
        4 CALL                             R1 1 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_11:
        0 DUPTABLE                         R1 K4 [{"SetToolMode", "FinishSelectingFromExplorer", "ClearPreviewAssetsSelected", "AddUserAddedAssetForPreview"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["SetToolMode"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["FinishSelectingFromExplorer"]
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 SETTABLEKS                       R2 R1 K2 ["ClearPreviewAssetsSelected"]
       16 NEWCLOSURE                       R2 P3
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U3
       19 SETTABLEKS                       R2 R1 K3 ["AddUserAddedAssetForPreview"]
       21 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R2 K6 ["Roact"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["Packages"]
       22 GETTABLEKS                       R3 R3 K7 ["RoactRodux"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R4 R0 K5 ["Packages"]
       29 GETTABLEKS                       R4 R4 K8 ["AvatarToolsShared"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R4 R3 K9 ["Contexts"]
       34 GETTABLEKS                       R4 R4 K10 ["LuaMeshEditingModuleContext"]
       36 GETTABLEKS                       R5 R3 K9 ["Contexts"]
       38 GETTABLEKS                       R5 R5 K11 ["PreviewContext"]
       40 GETTABLEKS                       R6 R3 K9 ["Contexts"]
       42 GETTABLEKS                       R6 R6 K12 ["EditingItemContext"]
       44 GETTABLEKS                       R7 R3 K13 ["Components"]
       46 GETTABLEKS                       R8 R7 K14 ["InputBlocker"]
       48 GETIMPORT                        R9 K4 [require]
       50 GETTABLEKS                       R10 R0 K5 ["Packages"]
       52 GETTABLEKS                       R10 R10 K15 ["Framework"]
       54 CALL                             R9 1 1
       55 GETTABLEKS                       R10 R9 K16 ["ContextServices"]
       57 GETTABLEKS                       R11 R10 K17 ["withContext"]
       59 GETTABLEKS                       R12 R9 K18 ["Util"]
       61 GETTABLEKS                       R13 R12 K19 ["LayoutOrderIterator"]
       63 GETTABLEKS                       R14 R9 K20 ["UI"]
       65 GETTABLEKS                       R15 R14 K21 ["Pane"]
       67 GETTABLEKS                       R16 R14 K22 ["ScrollingFrame"]
       69 GETTABLEKS                       R17 R14 K22 ["ScrollingFrame"]
       71 GETIMPORT                        R18 K4 [require]
       73 GETTABLEKS                       R19 R0 K23 ["Src"]
       75 GETTABLEKS                       R19 R19 K13 ["Components"]
       77 GETTABLEKS                       R19 R19 K24 ["Screens"]
       79 GETTABLEKS                       R19 R19 K25 ["GenerateScreen"]
       81 CALL                             R18 1 1
       82 GETIMPORT                        R19 K4 [require]
       84 GETTABLEKS                       R20 R0 K23 ["Src"]
       86 GETTABLEKS                       R20 R20 K13 ["Components"]
       88 GETTABLEKS                       R20 R20 K26 ["EditorToolsManager"]
       90 CALL                             R19 1 1
       91 GETIMPORT                        R20 K4 [require]
       93 GETTABLEKS                       R21 R0 K23 ["Src"]
       95 GETTABLEKS                       R21 R21 K13 ["Components"]
       97 GETTABLEKS                       R21 R21 K27 ["PreviewFrame"]
       99 CALL                             R20 1 1
      100 GETIMPORT                        R21 K4 [require]
      102 GETTABLEKS                       R22 R0 K23 ["Src"]
      104 GETTABLEKS                       R22 R22 K13 ["Components"]
      106 GETTABLEKS                       R22 R22 K28 ["Preview"]
      108 GETTABLEKS                       R22 R22 K29 ["PreviewViewportFrameContainer"]
      110 CALL                             R21 1 1
      111 GETIMPORT                        R22 K4 [require]
      113 GETTABLEKS                       R23 R0 K23 ["Src"]
      115 GETTABLEKS                       R23 R23 K13 ["Components"]
      117 GETTABLEKS                       R23 R23 K28 ["Preview"]
      119 GETTABLEKS                       R23 R23 K30 ["ExplorerPreviewInstances"]
      121 CALL                             R22 1 1
      122 GETIMPORT                        R23 K4 [require]
      124 GETTABLEKS                       R24 R0 K23 ["Src"]
      126 GETTABLEKS                       R24 R24 K13 ["Components"]
      128 GETTABLEKS                       R24 R24 K31 ["AnimationPlayback"]
      130 GETTABLEKS                       R24 R24 K32 ["AnimationPlaybackWrapper"]
      132 CALL                             R23 1 1
      133 GETIMPORT                        R24 K4 [require]
      135 GETTABLEKS                       R25 R0 K23 ["Src"]
      137 GETTABLEKS                       R25 R25 K33 ["Actions"]
      139 GETTABLEKS                       R25 R25 K34 ["SetToolMode"]
      141 CALL                             R24 1 1
      142 GETIMPORT                        R25 K4 [require]
      144 GETTABLEKS                       R26 R0 K23 ["Src"]
      146 GETTABLEKS                       R26 R26 K35 ["Thunks"]
      148 GETTABLEKS                       R26 R26 K36 ["FinishSelectingFromExplorer"]
      150 CALL                             R25 1 1
      151 GETIMPORT                        R26 K4 [require]
      153 GETTABLEKS                       R27 R0 K23 ["Src"]
      155 GETTABLEKS                       R27 R27 K35 ["Thunks"]
      157 GETTABLEKS                       R27 R27 K37 ["AddUserAddedAssetForPreview"]
      159 CALL                             R26 1 1
      160 GETIMPORT                        R27 K4 [require]
      162 GETTABLEKS                       R28 R0 K23 ["Src"]
      164 GETTABLEKS                       R28 R28 K18 ["Util"]
      166 GETTABLEKS                       R28 R28 K38 ["Constants"]
      168 CALL                             R27 1 1
      169 GETIMPORT                        R28 K4 [require]
      171 GETTABLEKS                       R29 R0 K23 ["Src"]
      173 GETTABLEKS                       R29 R29 K33 ["Actions"]
      175 GETTABLEKS                       R29 R29 K39 ["SetPreviewAssetsSelected"]
      177 CALL                             R28 1 1
      178 GETTABLEKS                       R29 R1 K40 ["PureComponent"]
      180 LOADK                            R31 K41 ["EditorScreen"]
      181 NAMECALL                         R29 R29 K42 ["extend"]
      183 CALL                             R29 2 1
      184 GETTABLEKS                       R30 R12 K43 ["Typecheck"]
      186 GETTABLEKS                       R31 R30 K44 ["wrap"]
      188 MOVE                             R32 R29
      189 GETIMPORT                        R33 K1 [script]
      191 CALL                             R31 2 0
      192 DUPCLOSURE                       R31 K45 [PROTO_3]
      193 CAPTURE                          VAL R27
      194 SETTABLEKS                       R31 R29 K46 ["init"]
      196 DUPCLOSURE                       R31 K47 [PROTO_4]
      197 CAPTURE                          VAL R13
      198 CAPTURE                          VAL R10
      199 CAPTURE                          VAL R5
      200 CAPTURE                          VAL R1
      201 CAPTURE                          VAL R15
      202 CAPTURE                          VAL R19
      203 CAPTURE                          VAL R21
      204 CAPTURE                          VAL R17
      205 CAPTURE                          VAL R20
      206 CAPTURE                          VAL R18
      207 CAPTURE                          VAL R8
      208 CAPTURE                          VAL R23
      209 CAPTURE                          VAL R22
      210 SETTABLEKS                       R31 R29 K48 ["render"]
      212 DUPCLOSURE                       R31 K49 [PROTO_5]
      213 SETTABLEKS                       R31 R29 K50 ["willUnmount"]
      215 DUPCLOSURE                       R31 K51 [PROTO_6]
      216 DUPCLOSURE                       R32 K52 [PROTO_11]
      217 CAPTURE                          VAL R24
      218 CAPTURE                          VAL R25
      219 CAPTURE                          VAL R28
      220 CAPTURE                          VAL R26
      221 MOVE                             R33 R11
      222 DUPTABLE                         R34 K54 [{"Stylizer", "EditingItemContext", "LuaMeshEditingModuleContext"}]
      223 GETTABLEKS                       R35 R10 K53 ["Stylizer"]
      225 SETTABLEKS                       R35 R34 K53 ["Stylizer"]
      227 SETTABLEKS                       R6 R34 K12 ["EditingItemContext"]
      229 SETTABLEKS                       R4 R34 K10 ["LuaMeshEditingModuleContext"]
      231 CALL                             R33 1 1
      232 MOVE                             R34 R29
      233 CALL                             R33 1 1
      234 MOVE                             R29 R33
      235 GETTABLEKS                       R33 R2 K55 ["connect"]
      237 MOVE                             R34 R31
      238 MOVE                             R35 R32
      239 CALL                             R33 2 1
      240 MOVE                             R34 R29
      241 CALL                             R33 1 -1
      242 RETURN                           R33 -1
