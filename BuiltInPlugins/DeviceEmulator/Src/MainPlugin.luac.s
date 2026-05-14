PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["StudioEnableMultiTouchGestureEmulation"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 1
        6 JUMPIFNOT                        R0 ; [+6]
        7 GETIMPORT                        R0 K1 [game]
        9 LOADK                            R2 K4 ["StudioUnlockMouseWhenEmulating"]
       10 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
       12 CALL                             R0 2 1
       13 RETURN                           R0 1

PROTO_1:
        0 DUPTABLE                         R1 K1 [{"enabled"}]
        1 GETTABLEKS                       R3 R0 K0 ["enabled"]
        3 NOT                              R2 R3
        4 SETTABLEKS                       R2 R1 K0 ["enabled"]
        6 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_1]
        2 NAMECALL                         R0 R0 K1 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"enabled"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["enabled"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"enabled"}]
        2 SETTABLEKS                       R0 R3 K0 ["enabled"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["pluginLoaderContext"]
        5 GETTABLEKS                       R0 R0 K2 ["mainButtonClickedSignal"]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K3 ["toggleEnabled"]
       10 NAMECALL                         R0 R0 K4 ["Connect"]
       12 CALL                             R0 2 0
       13 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"enabled"}]
        2 GETTABLEKS                       R4 R0 K2 ["Enabled"]
        4 SETTABLEKS                       R4 R3 K0 ["enabled"]
        6 NAMECALL                         R1 R1 K3 ["setState"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_7:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

PROTO_8:
        0 DUPTABLE                         R2 K1 [{"enabled"}]
        1 LOADB                            R3 0
        2 SETTABLEKS                       R3 R2 K0 ["enabled"]
        4 SETTABLEKS                       R2 R0 K2 ["state"]
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R2 R0 K3 ["toggleEnabled"]
       10 NEWCLOSURE                       R2 P1
       11 CAPTURE                          VAL R0
       12 SETTABLEKS                       R2 R0 K4 ["onClose"]
       14 NEWCLOSURE                       R2 P2
       15 CAPTURE                          VAL R0
       16 SETTABLEKS                       R2 R0 K5 ["onRestore"]
       18 NEWCLOSURE                       R2 P3
       19 CAPTURE                          VAL R0
       20 SETTABLEKS                       R2 R0 K6 ["onDockWidgetCreated"]
       22 NEWCLOSURE                       R2 P4
       23 CAPTURE                          VAL R0
       24 SETTABLEKS                       R2 R0 K7 ["onWidgetEnabledChanged"]
       26 GETUPVAL                         R2 0
       27 GETTABLEKS                       R2 R2 K8 ["Localization"]
       29 GETTABLEKS                       R2 R2 K9 ["new"]
       31 DUPTABLE                         R3 K13 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
       32 GETUPVAL                         R4 1
       33 SETTABLEKS                       R4 R3 K10 ["stringResourceTable"]
       35 GETUPVAL                         R4 2
       36 SETTABLEKS                       R4 R3 K11 ["translationResourceTable"]
       38 LOADK                            R4 K14 ["DeviceEmulator"]
       39 SETTABLEKS                       R4 R3 K12 ["pluginName"]
       41 CALL                             R2 1 1
       42 SETTABLEKS                       R2 R0 K15 ["localization"]
       44 GETUPVAL                         R2 0
       45 GETTABLEKS                       R2 R2 K16 ["Analytics"]
       47 GETTABLEKS                       R2 R2 K9 ["new"]
       49 DUPCLOSURE                       R3 K17 [PROTO_7]
       50 NEWTABLE                         R4 0 0
       52 CALL                             R2 2 1
       53 SETTABLEKS                       R2 R0 K18 ["analytics"]
       55 GETIMPORT                        R2 K20 [game]
       57 LOADK                            R4 K21 ["StudioEnableMultiTouchGestureEmulation"]
       58 NAMECALL                         R2 R2 K22 ["GetFastFlag"]
       60 CALL                             R2 2 1
       61 JUMPIFNOT                        R2 ; [+6]
       62 GETIMPORT                        R2 K20 [game]
       64 LOADK                            R4 K23 ["StudioUnlockMouseWhenEmulating"]
       65 NAMECALL                         R2 R2 K22 ["GetFastFlag"]
       67 CALL                             R2 2 1
       68 JUMPIFNOT                        R2 ; [+6]
       69 GETUPVAL                         R2 3
       70 GETTABLEKS                       R2 R2 K9 ["new"]
       72 CALL                             R2 0 1
       73 SETTABLEKS                       R2 R0 K24 ["multiTouchController"]
       75 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["multiTouchController"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["multiTouchController"]
        5 NAMECALL                         R1 R1 K1 ["destroy"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["pluginLoaderContext"]
        4 GETTABLEKS                       R1 R1 K2 ["mainButton"]
        6 GETTABLEKS                       R3 R0 K3 ["state"]
        8 GETTABLEKS                       R3 R3 K4 ["enabled"]
       10 NAMECALL                         R1 R1 K5 ["SetActive"]
       12 CALL                             R1 2 0
       13 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Plugin"]
        6 GETTABLEKS                       R4 R2 K3 ["enabled"]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K4 ["createElement"]
       11 GETUPVAL                         R6 1
       12 NEWTABLE                         R7 0 0
       14 CALL                             R5 2 1
       15 GETUPVAL                         R6 0
       16 GETTABLEKS                       R6 R6 K4 ["createElement"]
       18 GETUPVAL                         R7 2
       19 NEWTABLE                         R8 0 0
       21 CALL                             R6 2 1
       22 LOADNIL                          R7
       23 GETIMPORT                        R8 K6 [game]
       25 LOADK                            R10 K7 ["StudioEnableMultiTouchGestureEmulation"]
       26 NAMECALL                         R8 R8 K8 ["GetFastFlag"]
       28 CALL                             R8 2 1
       29 JUMPIFNOT                        R8 ; [+6]
       30 GETIMPORT                        R8 K6 [game]
       32 LOADK                            R10 K9 ["StudioUnlockMouseWhenEmulating"]
       33 NAMECALL                         R8 R8 K8 ["GetFastFlag"]
       35 CALL                             R8 2 1
       36 JUMPIFNOT                        R8 ; [+8]
       37 GETUPVAL                         R8 0
       38 GETTABLEKS                       R8 R8 K4 ["createElement"]
       40 GETUPVAL                         R9 3
       41 NEWTABLE                         R10 0 0
       43 CALL                             R8 2 1
       44 MOVE                             R7 R8
       45 GETUPVAL                         R8 4
       46 GETTABLEKS                       R8 R8 K10 ["provide"]
       48 NEWTABLE                         R9 0 5
       50 GETUPVAL                         R10 5
       51 GETTABLEKS                       R10 R10 K11 ["new"]
       53 MOVE                             R11 R3
       54 CALL                             R10 1 1
       55 GETUPVAL                         R11 6
       56 GETTABLEKS                       R11 R11 K11 ["new"]
       58 NAMECALL                         R12 R3 K12 ["getMouse"]
       60 CALL                             R12 1 -1
       61 CALL                             R11 -1 1
       62 GETUPVAL                         R12 7
       63 CALL                             R12 0 1
       64 GETTABLEKS                       R13 R0 K13 ["localization"]
       66 GETTABLEKS                       R14 R0 K14 ["analytics"]
       68 SETLIST                          R9 R10 5 [1]
       70 DUPTABLE                         R10 K16 [{"MainWidget"}]
       71 GETUPVAL                         R11 0
       72 GETTABLEKS                       R11 R11 K4 ["createElement"]
       74 GETUPVAL                         R12 8
       75 NEWTABLE                         R13 16 0
       77 LOADK                            R14 K17 ["DeviceEmulator"]
       78 SETTABLEKS                       R14 R13 K18 ["Id"]
       80 SETTABLEKS                       R4 R13 K19 ["Enabled"]
       82 GETTABLEKS                       R14 R1 K20 ["pluginLoaderContext"]
       84 GETTABLEKS                       R14 R14 K21 ["mainDockWidget"]
       86 SETTABLEKS                       R14 R13 K22 ["Widget"]
       88 GETTABLEKS                       R14 R0 K13 ["localization"]
       90 LOADK                            R16 K2 ["Plugin"]
       91 LOADK                            R17 K23 ["Name"]
       92 NAMECALL                         R14 R14 K24 ["getText"]
       94 CALL                             R14 3 1
       95 SETTABLEKS                       R14 R13 K25 ["Title"]
       97 GETIMPORT                        R14 K29 [Enum.ZIndexBehavior.Sibling]
       99 SETTABLEKS                       R14 R13 K27 ["ZIndexBehavior"]
      101 GETIMPORT                        R14 K32 [Enum.InitialDockState.Bottom]
      103 SETTABLEKS                       R14 R13 K30 ["InitialDockState"]
      105 GETIMPORT                        R14 K34 [Vector2.new]
      107 LOADN                            R15 104
      108 LOADN                            R16 164
      109 CALL                             R14 2 1
      110 SETTABLEKS                       R14 R13 K35 ["Size"]
      112 GETIMPORT                        R14 K34 [Vector2.new]
      114 LOADN                            R15 44
      115 LOADN                            R16 200
      116 CALL                             R14 2 1
      117 SETTABLEKS                       R14 R13 K36 ["MinSize"]
      119 GETTABLEKS                       R14 R0 K37 ["onClose"]
      121 SETTABLEKS                       R14 R13 K38 ["OnClose"]
      123 LOADB                            R14 1
      124 SETTABLEKS                       R14 R13 K39 ["ShouldRestore"]
      126 GETTABLEKS                       R14 R0 K40 ["onRestore"]
      128 SETTABLEKS                       R14 R13 K41 ["OnWidgetRestored"]
      130 GETTABLEKS                       R14 R0 K42 ["onDockWidgetCreated"]
      132 SETTABLEKS                       R14 R13 K43 ["OnWidgetCreated"]
      134 GETUPVAL                         R14 0
      135 GETTABLEKS                       R14 R14 K44 ["Change"]
      137 GETTABLEKS                       R14 R14 K19 ["Enabled"]
      139 GETTABLEKS                       R15 R0 K45 ["onWidgetEnabledChanged"]
      141 SETTABLE                         R15 R13 R14
      142 DUPTABLE                         R14 K47 [{"MainPane"}]
      143 GETUPVAL                         R15 0
      144 GETTABLEKS                       R15 R15 K4 ["createElement"]
      146 GETUPVAL                         R16 9
      147 DUPTABLE                         R17 K50 [{"Style", "Size", "Position"}]
      148 LOADK                            R18 K51 ["Box"]
      149 SETTABLEKS                       R18 R17 K48 ["Style"]
      151 GETIMPORT                        R18 K54 [UDim2.fromScale]
      153 LOADN                            R19 1
      154 LOADN                            R20 1
      155 CALL                             R18 2 1
      156 SETTABLEKS                       R18 R17 K35 ["Size"]
      158 GETIMPORT                        R18 K56 [UDim2.fromOffset]
      160 LOADN                            R19 0
      161 LOADN                            R20 0
      162 CALL                             R18 2 1
      163 SETTABLEKS                       R18 R17 K49 ["Position"]
      165 DUPTABLE                         R18 K58 [{"ScrollingFrame"}]
      166 GETUPVAL                         R19 0
      167 GETTABLEKS                       R19 R19 K4 ["createElement"]
      169 GETUPVAL                         R20 10
      170 DUPTABLE                         R21 K63 [{"AutomaticCanvasSize", "CanvasSize", "Layout", "Position", "ScrollingDirection"}]
      171 GETIMPORT                        R22 K66 [Enum.AutomaticSize.Y]
      173 SETTABLEKS                       R22 R21 K59 ["AutomaticCanvasSize"]
      175 GETIMPORT                        R22 K54 [UDim2.fromScale]
      177 LOADN                            R23 0
      178 LOADN                            R24 0
      179 CALL                             R22 2 1
      180 SETTABLEKS                       R22 R21 K60 ["CanvasSize"]
      182 GETIMPORT                        R22 K69 [Enum.FillDirection.Vertical]
      184 SETTABLEKS                       R22 R21 K61 ["Layout"]
      186 GETIMPORT                        R22 K54 [UDim2.fromScale]
      188 LOADN                            R23 0
      189 LOADN                            R24 0
      190 CALL                             R22 2 1
      191 SETTABLEKS                       R22 R21 K49 ["Position"]
      193 GETIMPORT                        R22 K70 [Enum.ScrollingDirection.Y]
      195 SETTABLEKS                       R22 R21 K62 ["ScrollingDirection"]
      197 DUPTABLE                         R22 K72 [{"ContainerPane"}]
      198 GETUPVAL                         R23 0
      199 GETTABLEKS                       R23 R23 K4 ["createElement"]
      201 GETUPVAL                         R24 9
      202 DUPTABLE                         R25 K76 [{"AutomaticSize", "Size", "AnchorPoint", "Position", "Layout", "Padding", "Spacing"}]
      203 GETIMPORT                        R26 K66 [Enum.AutomaticSize.Y]
      205 SETTABLEKS                       R26 R25 K64 ["AutomaticSize"]
      207 GETIMPORT                        R26 K54 [UDim2.fromScale]
      209 LOADN                            R27 1
      210 LOADN                            R28 0
      211 CALL                             R26 2 1
      212 SETTABLEKS                       R26 R25 K35 ["Size"]
      214 GETIMPORT                        R26 K34 [Vector2.new]
      216 LOADN                            R27 0
      217 LOADN                            R28 0
      218 CALL                             R26 2 1
      219 SETTABLEKS                       R26 R25 K73 ["AnchorPoint"]
      221 GETIMPORT                        R26 K54 [UDim2.fromScale]
      223 LOADN                            R27 0
      224 LOADN                            R28 0
      225 CALL                             R26 2 1
      226 SETTABLEKS                       R26 R25 K49 ["Position"]
      228 GETIMPORT                        R26 K69 [Enum.FillDirection.Vertical]
      230 SETTABLEKS                       R26 R25 K61 ["Layout"]
      232 LOADN                            R26 5
      233 SETTABLEKS                       R26 R25 K74 ["Padding"]
      235 LOADN                            R26 5
      236 SETTABLEKS                       R26 R25 K75 ["Spacing"]
      238 DUPTABLE                         R26 K80 [{"GraphicsPane", "NetworkPane", "MultiTouchPane"}]
      239 SETTABLEKS                       R5 R26 K77 ["GraphicsPane"]
      241 SETTABLEKS                       R6 R26 K78 ["NetworkPane"]
      243 SETTABLEKS                       R7 R26 K79 ["MultiTouchPane"]
      245 CALL                             R23 3 1
      246 SETTABLEKS                       R23 R22 K71 ["ContainerPane"]
      248 CALL                             R19 3 1
      249 SETTABLEKS                       R19 R18 K57 ["ScrollingFrame"]
      251 CALL                             R15 3 1
      252 SETTABLEKS                       R15 R14 K46 ["MainPane"]
      254 CALL                             R11 3 1
      255 SETTABLEKS                       R11 R10 K15 ["MainWidget"]
      257 CALL                             R8 2 -1
      258 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Packages"]
       11 GETTABLEKS                       R2 R2 K6 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K5 ["Packages"]
       18 GETTABLEKS                       R3 R3 K7 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K8 ["UI"]
       23 GETTABLEKS                       R4 R3 K9 ["Pane"]
       25 GETTABLEKS                       R5 R3 K10 ["ScrollingFrame"]
       27 GETTABLEKS                       R6 R3 K11 ["DockWidget"]
       29 GETTABLEKS                       R7 R2 K12 ["ContextServices"]
       31 GETTABLEKS                       R8 R7 K13 ["Plugin"]
       33 GETTABLEKS                       R9 R7 K14 ["Mouse"]
       35 GETIMPORT                        R10 K4 [require]
       37 GETTABLEKS                       R11 R0 K15 ["Src"]
       39 GETTABLEKS                       R11 R11 K16 ["Resources"]
       41 GETTABLEKS                       R11 R11 K17 ["MakeTheme"]
       43 CALL                             R10 1 1
       44 GETTABLEKS                       R11 R0 K15 ["Src"]
       46 GETTABLEKS                       R11 R11 K16 ["Resources"]
       48 GETTABLEKS                       R11 R11 K18 ["Localization"]
       50 GETTABLEKS                       R11 R11 K19 ["SourceStrings"]
       52 GETTABLEKS                       R12 R0 K15 ["Src"]
       54 GETTABLEKS                       R12 R12 K16 ["Resources"]
       56 GETTABLEKS                       R12 R12 K18 ["Localization"]
       58 GETTABLEKS                       R12 R12 K20 ["LocalizedStrings"]
       60 GETIMPORT                        R13 K4 [require]
       62 GETTABLEKS                       R14 R0 K15 ["Src"]
       64 GETTABLEKS                       R14 R14 K21 ["Components"]
       66 GETTABLEKS                       R14 R14 K22 ["GraphicsPane"]
       68 CALL                             R13 1 1
       69 GETIMPORT                        R14 K4 [require]
       71 GETTABLEKS                       R15 R0 K15 ["Src"]
       73 GETTABLEKS                       R15 R15 K21 ["Components"]
       75 GETTABLEKS                       R15 R15 K23 ["NetworkPane"]
       77 CALL                             R14 1 1
       78 GETIMPORT                        R15 K4 [require]
       80 GETTABLEKS                       R16 R0 K15 ["Src"]
       82 GETTABLEKS                       R16 R16 K21 ["Components"]
       84 GETTABLEKS                       R16 R16 K24 ["MultiTouchPane"]
       86 CALL                             R15 1 1
       87 GETIMPORT                        R16 K4 [require]
       89 GETTABLEKS                       R17 R0 K15 ["Src"]
       91 GETTABLEKS                       R17 R17 K25 ["Controllers"]
       93 GETTABLEKS                       R17 R17 K26 ["MultiTouchController"]
       95 CALL                             R16 1 1
       96 GETTABLEKS                       R17 R1 K27 ["PureComponent"]
       98 LOADK                            R19 K28 ["MainPlugin"]
       99 NAMECALL                         R17 R17 K29 ["extend"]
      101 CALL                             R17 2 1
      102 GETIMPORT                        R18 K4 [require]
      104 GETTABLEKS                       R19 R0 K30 ["Bin"]
      106 GETTABLEKS                       R19 R19 K31 ["defineLuaFlags"]
      108 CALL                             R18 1 0
      109 DUPCLOSURE                       R18 K32 [PROTO_0]
      110 DUPCLOSURE                       R19 K33 [PROTO_8]
      111 CAPTURE                          VAL R7
      112 CAPTURE                          VAL R11
      113 CAPTURE                          VAL R12
      114 CAPTURE                          VAL R16
      115 SETTABLEKS                       R19 R17 K34 ["init"]
      117 DUPCLOSURE                       R19 K35 [PROTO_9]
      118 SETTABLEKS                       R19 R17 K36 ["willUnmount"]
      120 DUPCLOSURE                       R19 K37 [PROTO_10]
      121 SETTABLEKS                       R19 R17 K38 ["didUpdate"]
      123 DUPCLOSURE                       R19 K39 [PROTO_11]
      124 CAPTURE                          VAL R1
      125 CAPTURE                          VAL R13
      126 CAPTURE                          VAL R14
      127 CAPTURE                          VAL R15
      128 CAPTURE                          VAL R7
      129 CAPTURE                          VAL R8
      130 CAPTURE                          VAL R9
      131 CAPTURE                          VAL R10
      132 CAPTURE                          VAL R6
      133 CAPTURE                          VAL R4
      134 CAPTURE                          VAL R5
      135 SETTABLEKS                       R19 R17 K40 ["render"]
      137 RETURN                           R17 1
