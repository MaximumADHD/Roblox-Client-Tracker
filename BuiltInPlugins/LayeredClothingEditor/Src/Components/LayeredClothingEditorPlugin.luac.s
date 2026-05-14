PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["plugin"]
        3 GETTABLEKS                       R3 R0 K1 ["localization"]
        5 GETUPVAL                         R4 1
        6 DUPTABLE                         R5 K3 [{"Text"}]
        7 GETTABLEKS                       R6 R0 K1 ["localization"]
        9 LOADK                            R8 K4 ["EditorErrors"]
       10 LOADK                            R9 K5 ["OpenedWhileRunning"]
       11 NAMECALL                         R6 R6 K6 ["getText"]
       13 CALL                             R6 3 1
       14 SETTABLEKS                       R6 R5 K2 ["Text"]
       16 CALL                             R1 4 0
       17 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"enabled"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["enabled"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 GETUPVAL                         R0 0
        9 GETTABLEKS                       R0 R0 K3 ["store"]
       11 GETUPVAL                         R2 1
       12 GETUPVAL                         R3 2
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R4 R4 K4 ["analytics"]
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R5 R5 K5 ["meshEditingContext"]
       19 CALL                             R2 3 -1
       20 NAMECALL                         R0 R0 K6 ["dispatch"]
       22 CALL                             R0 -1 0
       23 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R1 K1 [{"enabled"}]
        1 GETTABLEKS                       R3 R0 K0 ["enabled"]
        3 NOT                              R2 R3
        4 SETTABLEKS                       R2 R1 K0 ["enabled"]
        6 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["IsEdit"]
        3 CALL                             R0 1 1
        4 JUMPIF                           R0 ; [+5]
        5 GETUPVAL                         R0 1
        6 NAMECALL                         R0 R0 K1 ["showEditorInPlayModeError"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0
       10 GETUPVAL                         R0 1
       11 GETTABLEKS                       R0 R0 K2 ["state"]
       13 GETTABLEKS                       R0 R0 K3 ["enabled"]
       15 JUMPIF                           R0 ; [+13]
       16 GETUPVAL                         R0 2
       17 LOADB                            R2 1
       18 NAMECALL                         R0 R0 K4 ["Activate"]
       20 CALL                             R0 2 0
       21 GETUPVAL                         R0 1
       22 GETTABLEKS                       R0 R0 K5 ["analytics"]
       24 LOADK                            R2 K6 ["PluginOpened"]
       25 NAMECALL                         R0 R0 K7 ["getHandler"]
       27 CALL                             R0 2 1
       28 CALL                             R0 0 0
       29 GETUPVAL                         R0 1
       30 DUPCLOSURE                       R2 K8 [PROTO_2]
       31 NAMECALL                         R0 R0 K9 ["setState"]
       33 CALL                             R0 2 0
       34 GETUPVAL                         R0 1
       35 GETTABLEKS                       R0 R0 K2 ["state"]
       37 GETTABLEKS                       R0 R0 K3 ["enabled"]
       39 JUMPIF                           R0 ; [+15]
       40 GETUPVAL                         R0 1
       41 GETTABLEKS                       R0 R0 K10 ["store"]
       43 GETUPVAL                         R2 3
       44 GETUPVAL                         R3 2
       45 GETUPVAL                         R4 1
       46 GETTABLEKS                       R4 R4 K5 ["analytics"]
       48 GETUPVAL                         R5 1
       49 GETTABLEKS                       R5 R5 K11 ["meshEditingContext"]
       51 CALL                             R2 3 -1
       52 NAMECALL                         R0 R0 K12 ["dispatch"]
       54 CALL                             R0 -1 0
       55 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["toolbarButton"]
        3 LOADB                            R2 1
        4 NAMECALL                         R0 R0 K1 ["SetActive"]
        6 CALL                             R0 2 0
        7 GETUPVAL                         R0 0
        8 GETTABLEKS                       R0 R0 K2 ["signals"]
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K3 ["SIGNAL_KEYS"]
       13 GETTABLEKS                       R2 R2 K4 ["PluginWindowFocused"]
       15 NAMECALL                         R0 R0 K5 ["get"]
       17 CALL                             R0 2 1
       18 NAMECALL                         R0 R0 K6 ["Fire"]
       20 CALL                             R0 1 0
       21 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["Selection"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 1
        6 NEWTABLE                         R3 0 0
        8 NAMECALL                         R1 R0 K4 ["Set"]
       10 CALL                             R1 2 0
       11 GETUPVAL                         R1 0
       12 NAMECALL                         R1 R1 K5 ["IsActivatedWithExclusiveMouse"]
       14 CALL                             R1 1 1
       15 JUMPIF                           R1 ; [+5]
       16 GETUPVAL                         R1 0
       17 LOADB                            R3 1
       18 NAMECALL                         R1 R1 K6 ["Activate"]
       20 CALL                             R1 2 0
       21 GETIMPORT                        R1 K9 [task.delay]
       23 LOADN                            R2 0
       24 NEWCLOSURE                       R3 P0
       25 CAPTURE                          UPVAL U1
       26 CAPTURE                          UPVAL U2
       27 CALL                             R1 2 0
       28 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["Enabled"]
        2 JUMPIFNOT                        R1 ; [+18]
        3 GETUPVAL                         R1 0
        4 NAMECALL                         R1 R1 K1 ["IsEdit"]
        6 CALL                             R1 1 1
        7 JUMPIF                           R1 ; [+13]
        8 GETUPVAL                         R1 1
        9 DUPTABLE                         R3 K3 [{"enabled"}]
       10 LOADB                            R4 0
       11 SETTABLEKS                       R4 R3 K2 ["enabled"]
       13 NAMECALL                         R1 R1 K4 ["setState"]
       15 CALL                             R1 2 0
       16 GETUPVAL                         R1 1
       17 NAMECALL                         R1 R1 K5 ["showEditorInPlayModeError"]
       19 CALL                             R1 1 0
       20 RETURN                           R0 0
       21 GETUPVAL                         R1 1
       22 DUPTABLE                         R3 K3 [{"enabled"}]
       23 GETTABLEKS                       R4 R0 K0 ["Enabled"]
       25 SETTABLEKS                       R4 R3 K2 ["enabled"]
       27 NAMECALL                         R1 R1 K4 ["setState"]
       29 CALL                             R1 2 0
       30 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["plugin"]
        4 LOADK                            R2 K2 ["LayeredClothingEditor"]
        5 SETTABLEKS                       R2 R1 K3 ["Name"]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K4 ["Plugin"]
       10 GETTABLEKS                       R2 R2 K5 ["new"]
       12 MOVE                             R3 R1
       13 CALL                             R2 1 1
       14 SETTABLEKS                       R2 R0 K1 ["plugin"]
       16 DUPTABLE                         R2 K7 [{"enabled"}]
       17 LOADB                            R3 0
       18 SETTABLEKS                       R3 R2 K6 ["enabled"]
       20 SETTABLEKS                       R2 R0 K8 ["state"]
       22 GETUPVAL                         R2 1
       23 GETTABLEKS                       R2 R2 K9 ["Store"]
       25 GETTABLEKS                       R2 R2 K5 ["new"]
       27 GETUPVAL                         R3 2
       28 NEWTABLE                         R4 0 0
       30 GETUPVAL                         R5 3
       31 CALL                             R2 3 1
       32 SETTABLEKS                       R2 R0 K10 ["store"]
       34 GETUPVAL                         R2 4
       35 GETTABLEKS                       R2 R2 K11 ["makePluginTheme"]
       37 CALL                             R2 0 1
       38 SETTABLEKS                       R2 R0 K12 ["theme"]
       40 GETUPVAL                         R2 0
       41 GETTABLEKS                       R2 R2 K13 ["Analytics"]
       43 GETTABLEKS                       R2 R2 K5 ["new"]
       45 GETUPVAL                         R3 5
       46 CALL                             R2 1 1
       47 SETTABLEKS                       R2 R0 K14 ["analytics"]
       49 GETUPVAL                         R2 0
       50 GETTABLEKS                       R2 R2 K15 ["Localization"]
       52 GETTABLEKS                       R2 R2 K5 ["new"]
       54 DUPTABLE                         R3 K20 [{"pluginName", "stringResourceTable", "translationResourceTable", "libraries"}]
       55 LOADK                            R4 K2 ["LayeredClothingEditor"]
       56 SETTABLEKS                       R4 R3 K16 ["pluginName"]
       58 GETUPVAL                         R4 6
       59 SETTABLEKS                       R4 R3 K17 ["stringResourceTable"]
       61 GETUPVAL                         R4 7
       62 SETTABLEKS                       R4 R3 K18 ["translationResourceTable"]
       64 NEWTABLE                         R4 1 0
       66 GETUPVAL                         R5 8
       67 GETTABLEKS                       R5 R5 K21 ["Resources"]
       69 GETTABLEKS                       R5 R5 K22 ["LOCALIZATION_PROJECT_NAME"]
       71 DUPTABLE                         R6 K23 [{"stringResourceTable", "translationResourceTable"}]
       72 GETUPVAL                         R7 8
       73 GETTABLEKS                       R7 R7 K21 ["Resources"]
       75 GETTABLEKS                       R7 R7 K24 ["SourceStrings"]
       77 SETTABLEKS                       R7 R6 K17 ["stringResourceTable"]
       79 GETUPVAL                         R7 8
       80 GETTABLEKS                       R7 R7 K21 ["Resources"]
       82 GETTABLEKS                       R7 R7 K25 ["LocalizedStrings"]
       84 SETTABLEKS                       R7 R6 K18 ["translationResourceTable"]
       86 SETTABLE                         R6 R4 R5
       87 SETTABLEKS                       R4 R3 K19 ["libraries"]
       89 CALL                             R2 1 1
       90 SETTABLEKS                       R2 R0 K26 ["localization"]
       92 LOADK                            R4 K27 ["Avatar"]
       93 NAMECALL                         R2 R1 K28 ["CreateToolbar"]
       95 CALL                             R2 2 1
       96 LOADK                            R5 K29 ["LayeredClothingEditorButton"]
       97 GETTABLEKS                       R6 R0 K26 ["localization"]
       99 LOADK                            R8 K30 ["Main"]
      100 LOADK                            R9 K31 ["Tooltip"]
      101 NAMECALL                         R6 R6 K32 ["getText"]
      103 CALL                             R6 3 1
      104 LOADK                            R7 K33 [""]
      105 GETTABLEKS                       R8 R0 K26 ["localization"]
      107 LOADK                            R10 K30 ["Main"]
      108 LOADK                            R11 K34 ["ToolbarButton"]
      109 NAMECALL                         R8 R8 K32 ["getText"]
      111 CALL                             R8 3 -1
      112 NAMECALL                         R3 R2 K35 ["CreateButton"]
      114 CALL                             R3 -1 1
      115 SETTABLEKS                       R3 R0 K36 ["toolbarButton"]
      117 GETUPVAL                         R3 9
      118 GETTABLEKS                       R5 R0 K1 ["plugin"]
      120 MOVE                             R6 R2
      121 GETTABLEKS                       R7 R0 K26 ["localization"]
      123 GETTABLEKS                       R8 R0 K14 ["analytics"]
      125 NAMECALL                         R3 R3 K37 ["init"]
      127 CALL                             R3 5 0
      128 NEWCLOSURE                       R3 P0
      129 CAPTURE                          VAL R0
      130 CAPTURE                          UPVAL U10
      131 CAPTURE                          VAL R1
      132 SETTABLEKS                       R3 R0 K38 ["onClose"]
      134 NEWCLOSURE                       R3 P1
      135 CAPTURE                          UPVAL U11
      136 CAPTURE                          VAL R0
      137 CAPTURE                          VAL R1
      138 CAPTURE                          UPVAL U10
      139 SETTABLEKS                       R3 R0 K39 ["onToggleWidget"]
      141 GETUPVAL                         R3 0
      142 GETTABLEKS                       R3 R3 K40 ["PluginActions"]
      144 GETTABLEKS                       R3 R3 K5 ["new"]
      146 MOVE                             R4 R1
      147 GETUPVAL                         R5 12
      148 MOVE                             R6 R1
      149 GETTABLEKS                       R7 R0 K26 ["localization"]
      151 CALL                             R5 2 -1
      152 CALL                             R3 -1 1
      153 SETTABLEKS                       R3 R0 K41 ["pluginActions"]
      155 GETUPVAL                         R3 13
      156 GETTABLEKS                       R3 R3 K5 ["new"]
      158 GETUPVAL                         R4 14
      159 GETTABLEKS                       R4 R4 K42 ["SIGNAL_KEYS"]
      161 CALL                             R3 1 1
      162 SETTABLEKS                       R3 R0 K43 ["signals"]
      164 GETUPVAL                         R3 15
      165 GETTABLEKS                       R3 R3 K5 ["new"]
      167 CALL                             R3 0 1
      168 SETTABLEKS                       R3 R0 K44 ["editingItemContext"]
      170 GETUPVAL                         R3 16
      171 GETTABLEKS                       R3 R3 K5 ["new"]
      173 CALL                             R3 0 1
      174 GETUPVAL                         R6 14
      175 GETTABLEKS                       R6 R6 K45 ["DEFAULT_FALLOFF"]
      177 NAMECALL                         R4 R3 K46 ["setFalloff"]
      179 CALL                             R4 2 0
      180 GETUPVAL                         R4 17
      181 GETTABLEKS                       R4 R4 K5 ["new"]
      183 NEWTABLE                         R5 1 0
      185 GETUPVAL                         R6 14
      186 GETTABLEKS                       R6 R6 K47 ["TOOL_MODE"]
      188 GETTABLEKS                       R6 R6 K48 ["Point"]
      190 SETTABLE                         R3 R5 R6
      191 CALL                             R4 1 1
      192 SETTABLEKS                       R4 R0 K49 ["meshEditingContext"]
      194 GETTABLEKS                       R4 R0 K36 ["toolbarButton"]
      196 GETTABLEKS                       R4 R4 K50 ["Click"]
      198 GETTABLEKS                       R6 R0 K39 ["onToggleWidget"]
      200 NAMECALL                         R4 R4 K51 ["connect"]
      202 CALL                             R4 2 0
      203 NEWCLOSURE                       R4 P2
      204 CAPTURE                          VAL R1
      205 CAPTURE                          VAL R0
      206 CAPTURE                          UPVAL U14
      207 SETTABLEKS                       R4 R0 K52 ["onFocus"]
      209 NEWCLOSURE                       R4 P3
      210 CAPTURE                          UPVAL U11
      211 CAPTURE                          VAL R0
      212 SETTABLEKS                       R4 R0 K53 ["onWidgetEnabledChanged"]
      214 RETURN                           R0 0

PROTO_8:
        0 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["toolbarButton"]
        2 GETTABLEKS                       R3 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R3 K2 ["enabled"]
        6 NAMECALL                         R1 R1 K3 ["SetActive"]
        8 CALL                             R1 2 0
        9 GETTABLEKS                       R1 R0 K1 ["state"]
       11 GETTABLEKS                       R1 R1 K2 ["enabled"]
       13 JUMPIF                           R1 ; [+7]
       14 GETTABLEKS                       R1 R0 K4 ["store"]
       16 GETUPVAL                         R3 0
       17 CALL                             R3 0 -1
       18 NAMECALL                         R1 R1 K5 ["dispatch"]
       20 CALL                             R1 -1 0
       21 GETUPVAL                         R1 1
       22 GETTABLEKS                       R1 R1 K6 ["createElement"]
       24 GETUPVAL                         R2 2
       25 DUPTABLE                         R3 K16 [{"plugin", "analytics", "localization", "theme", "store", "pluginActions", "mouse", "signals", "editingItemContext", "meshEditingContext"}]
       26 GETTABLEKS                       R4 R0 K7 ["plugin"]
       28 SETTABLEKS                       R4 R3 K7 ["plugin"]
       30 GETTABLEKS                       R4 R0 K8 ["analytics"]
       32 SETTABLEKS                       R4 R3 K8 ["analytics"]
       34 GETTABLEKS                       R4 R0 K9 ["localization"]
       36 SETTABLEKS                       R4 R3 K9 ["localization"]
       38 GETTABLEKS                       R4 R0 K10 ["theme"]
       40 SETTABLEKS                       R4 R3 K10 ["theme"]
       42 GETTABLEKS                       R4 R0 K4 ["store"]
       44 SETTABLEKS                       R4 R3 K4 ["store"]
       46 GETTABLEKS                       R4 R0 K11 ["pluginActions"]
       48 SETTABLEKS                       R4 R3 K11 ["pluginActions"]
       50 GETTABLEKS                       R4 R0 K17 ["props"]
       52 GETTABLEKS                       R4 R4 K7 ["plugin"]
       54 NAMECALL                         R4 R4 K18 ["getMouse"]
       56 CALL                             R4 1 1
       57 SETTABLEKS                       R4 R3 K12 ["mouse"]
       59 GETTABLEKS                       R4 R0 K13 ["signals"]
       61 SETTABLEKS                       R4 R3 K13 ["signals"]
       63 GETTABLEKS                       R4 R0 K14 ["editingItemContext"]
       65 SETTABLEKS                       R4 R3 K14 ["editingItemContext"]
       67 GETTABLEKS                       R4 R0 K15 ["meshEditingContext"]
       69 SETTABLEKS                       R4 R3 K15 ["meshEditingContext"]
       71 DUPTABLE                         R4 K20 [{"Widget"}]
       72 GETUPVAL                         R5 1
       73 GETTABLEKS                       R5 R5 K6 ["createElement"]
       75 GETUPVAL                         R6 3
       76 NEWTABLE                         R7 16 0
       78 LOADK                            R8 K21 ["LayeredClothingEditor"]
       79 SETTABLEKS                       R8 R7 K22 ["Id"]
       81 GETTABLEKS                       R8 R0 K9 ["localization"]
       83 LOADK                            R10 K23 ["Main"]
       84 LOADK                            R11 K24 ["Title"]
       85 NAMECALL                         R8 R8 K25 ["getText"]
       87 CALL                             R8 3 1
       88 SETTABLEKS                       R8 R7 K24 ["Title"]
       90 GETTABLEKS                       R8 R0 K1 ["state"]
       92 GETTABLEKS                       R8 R8 K2 ["enabled"]
       94 SETTABLEKS                       R8 R7 K26 ["Enabled"]
       96 GETUPVAL                         R8 4
       97 SETTABLEKS                       R8 R7 K27 ["Size"]
       99 GETIMPORT                        R8 K31 [Enum.InitialDockState.Left]
      101 SETTABLEKS                       R8 R7 K29 ["InitialDockState"]
      103 GETUPVAL                         R8 4
      104 SETTABLEKS                       R8 R7 K32 ["MinSize"]
      106 GETIMPORT                        R8 K35 [Enum.ZIndexBehavior.Sibling]
      108 SETTABLEKS                       R8 R7 K33 ["ZIndexBehavior"]
      110 LOADB                            R8 1
      111 SETTABLEKS                       R8 R7 K36 ["ShouldRestore"]
      113 GETTABLEKS                       R8 R0 K7 ["plugin"]
      115 SETTABLEKS                       R8 R7 K37 ["Plugin"]
      117 GETTABLEKS                       R8 R0 K38 ["onClose"]
      119 SETTABLEKS                       R8 R7 K39 ["OnClose"]
      121 DUPCLOSURE                       R8 K40 [PROTO_8]
      122 SETTABLEKS                       R8 R7 K41 ["OnWidgetRestored"]
      124 GETTABLEKS                       R8 R0 K42 ["onFocus"]
      126 SETTABLEKS                       R8 R7 K43 ["OnWidgetFocused"]
      128 GETUPVAL                         R8 1
      129 GETTABLEKS                       R8 R8 K44 ["Change"]
      131 GETTABLEKS                       R8 R8 K26 ["Enabled"]
      133 GETTABLEKS                       R9 R0 K45 ["onWidgetEnabledChanged"]
      135 SETTABLE                         R9 R7 R8
      136 DUPTABLE                         R8 K46 [{"LayeredClothingEditor"}]
      137 GETTABLEKS                       R9 R0 K1 ["state"]
      139 GETTABLEKS                       R9 R9 K2 ["enabled"]
      141 JUMPIFNOT                        R9 ; [+5]
      142 GETUPVAL                         R9 1
      143 GETTABLEKS                       R9 R9 K6 ["createElement"]
      145 GETUPVAL                         R10 5
      146 CALL                             R9 1 1
      147 SETTABLEKS                       R9 R8 K21 ["LayeredClothingEditor"]
      149 CALL                             R5 3 1
      150 SETTABLEKS                       R5 R4 K19 ["Widget"]
      152 CALL                             R1 3 -1
      153 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Rodux"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R4 K8 ["Framework"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K4 [require]
       32 GETTABLEKS                       R5 R0 K5 ["Packages"]
       34 GETTABLEKS                       R5 R5 K9 ["AvatarToolsShared"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R0 K5 ["Packages"]
       39 GETTABLEKS                       R5 R5 K10 ["LuaMeshEditingModule"]
       41 GETIMPORT                        R6 K4 [require]
       43 GETTABLEKS                       R7 R5 K11 ["Tools"]
       45 GETTABLEKS                       R7 R7 K12 ["PointTool"]
       47 CALL                             R6 1 1
       48 GETTABLEKS                       R7 R4 K13 ["Components"]
       50 GETTABLEKS                       R8 R7 K14 ["ConfirmDialog"]
       52 GETTABLEKS                       R9 R4 K15 ["Contexts"]
       54 GETTABLEKS                       R9 R9 K16 ["LuaMeshEditingModuleContext"]
       56 GETTABLEKS                       R10 R4 K15 ["Contexts"]
       58 GETTABLEKS                       R10 R10 K17 ["EditingItemContext"]
       60 GETTABLEKS                       R11 R4 K15 ["Contexts"]
       62 GETTABLEKS                       R11 R11 K18 ["Signals"]
       64 GETIMPORT                        R12 K20 [game]
       66 LOADK                            R14 K21 ["RunService"]
       67 NAMECALL                         R12 R12 K22 ["GetService"]
       69 CALL                             R12 2 1
       70 GETTABLEKS                       R13 R3 K23 ["UI"]
       72 GETTABLEKS                       R14 R13 K24 ["DockWidget"]
       74 GETTABLEKS                       R15 R3 K25 ["ContextServices"]
       76 GETIMPORT                        R16 K4 [require]
       78 GETTABLEKS                       R17 R0 K26 ["Src"]
       80 GETTABLEKS                       R17 R17 K13 ["Components"]
       82 GETTABLEKS                       R17 R17 K27 ["ServiceWrapper"]
       84 CALL                             R16 1 1
       85 GETIMPORT                        R17 K4 [require]
       87 GETTABLEKS                       R18 R0 K26 ["Src"]
       89 GETTABLEKS                       R18 R18 K28 ["Reducers"]
       91 GETTABLEKS                       R18 R18 K29 ["MainReducer"]
       93 CALL                             R17 1 1
       94 GETIMPORT                        R18 K4 [require]
       96 GETTABLEKS                       R19 R0 K26 ["Src"]
       98 GETTABLEKS                       R19 R19 K30 ["Middleware"]
      100 GETTABLEKS                       R19 R19 K31 ["MainMiddleware"]
      102 CALL                             R18 1 1
      103 GETIMPORT                        R19 K4 [require]
      105 GETTABLEKS                       R20 R0 K26 ["Src"]
      107 GETTABLEKS                       R20 R20 K32 ["Resources"]
      109 GETTABLEKS                       R20 R20 K33 ["AnalyticsHandlers"]
      111 CALL                             R19 1 1
      112 GETIMPORT                        R20 K4 [require]
      114 GETTABLEKS                       R21 R0 K26 ["Src"]
      116 GETTABLEKS                       R21 R21 K32 ["Resources"]
      118 GETTABLEKS                       R21 R21 K34 ["PluginTheme"]
      120 CALL                             R20 1 1
      121 GETTABLEKS                       R21 R0 K26 ["Src"]
      123 GETTABLEKS                       R21 R21 K32 ["Resources"]
      125 GETTABLEKS                       R21 R21 K35 ["SourceStrings"]
      127 GETTABLEKS                       R22 R0 K26 ["Src"]
      129 GETTABLEKS                       R22 R22 K32 ["Resources"]
      131 GETTABLEKS                       R22 R22 K36 ["LocalizedStrings"]
      133 GETIMPORT                        R23 K4 [require]
      135 GETTABLEKS                       R24 R0 K26 ["Src"]
      137 GETTABLEKS                       R24 R24 K13 ["Components"]
      139 GETTABLEKS                       R24 R24 K37 ["LayeredClothingEditor"]
      141 CALL                             R23 1 1
      142 GETIMPORT                        R24 K4 [require]
      144 GETTABLEKS                       R25 R0 K26 ["Src"]
      146 GETTABLEKS                       R25 R25 K38 ["Thunks"]
      148 GETTABLEKS                       R25 R25 K39 ["CloseEditor"]
      150 CALL                             R24 1 1
      151 GETIMPORT                        R25 K4 [require]
      153 GETTABLEKS                       R26 R0 K26 ["Src"]
      155 GETTABLEKS                       R26 R26 K40 ["Util"]
      157 GETTABLEKS                       R26 R26 K41 ["makePluginActions"]
      159 CALL                             R25 1 1
      160 GETIMPORT                        R26 K4 [require]
      162 GETTABLEKS                       R27 R0 K26 ["Src"]
      164 GETTABLEKS                       R27 R27 K40 ["Util"]
      166 GETTABLEKS                       R27 R27 K42 ["Constants"]
      168 CALL                             R26 1 1
      169 GETIMPORT                        R27 K4 [require]
      171 GETTABLEKS                       R28 R0 K26 ["Src"]
      173 GETTABLEKS                       R28 R28 K40 ["Util"]
      175 GETTABLEKS                       R28 R28 K43 ["ShowDialog"]
      177 CALL                             R27 1 1
      178 GETIMPORT                        R28 K4 [require]
      180 GETTABLEKS                       R29 R0 K44 ["Bin"]
      182 GETTABLEKS                       R29 R29 K45 ["ClothesHelper"]
      184 CALL                             R28 1 1
      185 GETIMPORT                        R29 K4 [require]
      187 GETTABLEKS                       R30 R0 K26 ["Src"]
      189 GETTABLEKS                       R30 R30 K38 ["Thunks"]
      191 GETTABLEKS                       R30 R30 K46 ["FinishSelectingFromExplorer"]
      193 CALL                             R29 1 1
      194 GETTABLEKS                       R30 R1 K47 ["PureComponent"]
      196 LOADK                            R32 K48 ["LayeredClothingEditorPlugin"]
      197 NAMECALL                         R30 R30 K49 ["extend"]
      199 CALL                             R30 2 1
      200 GETIMPORT                        R31 K52 [Vector2.new]
      202 LOADN                            R32 124
      203 LOADN                            R33 38
      204 CALL                             R31 2 1
      205 DUPCLOSURE                       R32 K53 [PROTO_0]
      206 CAPTURE                          VAL R27
      207 CAPTURE                          VAL R8
      208 SETTABLEKS                       R32 R30 K54 ["showEditorInPlayModeError"]
      210 DUPCLOSURE                       R32 K55 [PROTO_7]
      211 CAPTURE                          VAL R15
      212 CAPTURE                          VAL R2
      213 CAPTURE                          VAL R17
      214 CAPTURE                          VAL R18
      215 CAPTURE                          VAL R20
      216 CAPTURE                          VAL R19
      217 CAPTURE                          VAL R21
      218 CAPTURE                          VAL R22
      219 CAPTURE                          VAL R4
      220 CAPTURE                          VAL R28
      221 CAPTURE                          VAL R24
      222 CAPTURE                          VAL R12
      223 CAPTURE                          VAL R25
      224 CAPTURE                          VAL R11
      225 CAPTURE                          VAL R26
      226 CAPTURE                          VAL R10
      227 CAPTURE                          VAL R6
      228 CAPTURE                          VAL R9
      229 SETTABLEKS                       R32 R30 K56 ["init"]
      231 DUPCLOSURE                       R32 K57 [PROTO_9]
      232 CAPTURE                          VAL R29
      233 CAPTURE                          VAL R1
      234 CAPTURE                          VAL R16
      235 CAPTURE                          VAL R14
      236 CAPTURE                          VAL R31
      237 CAPTURE                          VAL R23
      238 SETTABLEKS                       R32 R30 K58 ["render"]
      240 RETURN                           R30 1
