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
        1 GETTABLEKS                       R0 R0 K0 ["state"]
        3 GETTABLEKS                       R0 R0 K1 ["enabled"]
        5 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K4 ["store"]
        8 GETUPVAL                         R2 1
        9 GETUPVAL                         R3 2
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K5 ["analytics"]
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R5 R5 K6 ["meshEditingContext"]
       16 CALL                             R2 3 -1
       17 NAMECALL                         R0 R0 K7 ["dispatch"]
       19 CALL                             R0 -1 0
       20 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["IsEdit"]
        3 CALL                             R0 1 1
        4 JUMPIF                           R0 ; [+16]
        5 GETUPVAL                         R0 1
        6 CALL                             R0 0 1
        7 JUMPIFNOT                        R0 ; [+8]
        8 GETUPVAL                         R0 2
        9 GETUPVAL                         R1 3
       10 GETTABLEKS                       R1 R1 K1 ["toolbarButton"]
       12 GETUPVAL                         R2 3
       13 GETTABLEKS                       R2 R2 K2 ["isWidgetEnabled"]
       15 CALL                             R0 2 0
       16 GETUPVAL                         R0 3
       17 NAMECALL                         R0 R0 K3 ["showEditorInPlayModeError"]
       19 CALL                             R0 1 0
       20 RETURN                           R0 0
       21 GETUPVAL                         R1 3
       22 GETTABLEKS                       R1 R1 K4 ["state"]
       24 GETTABLEKS                       R1 R1 K5 ["enabled"]
       26 NOT                              R0 R1
       27 JUMPIFNOT                        R0 ; [+13]
       28 GETUPVAL                         R1 4
       29 LOADB                            R3 1
       30 NAMECALL                         R1 R1 K6 ["Activate"]
       32 CALL                             R1 2 0
       33 GETUPVAL                         R1 3
       34 GETTABLEKS                       R1 R1 K7 ["analytics"]
       36 LOADK                            R3 K8 ["PluginOpened"]
       37 NAMECALL                         R1 R1 K9 ["getHandler"]
       39 CALL                             R1 2 1
       40 CALL                             R1 0 0
       41 GETUPVAL                         R1 3
       42 DUPTABLE                         R3 K10 [{"enabled"}]
       43 SETTABLEKS                       R0 R3 K5 ["enabled"]
       45 NAMECALL                         R1 R1 K11 ["setState"]
       47 CALL                             R1 2 0
       48 JUMPIF                           R0 ; [+15]
       49 GETUPVAL                         R1 3
       50 GETTABLEKS                       R1 R1 K12 ["store"]
       52 GETUPVAL                         R3 5
       53 GETUPVAL                         R4 4
       54 GETUPVAL                         R5 3
       55 GETTABLEKS                       R5 R5 K7 ["analytics"]
       57 GETUPVAL                         R6 3
       58 GETTABLEKS                       R6 R6 K13 ["meshEditingContext"]
       60 CALL                             R3 3 -1
       61 NAMECALL                         R1 R1 K14 ["dispatch"]
       63 CALL                             R1 -1 0
       64 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+9]
        3 GETUPVAL                         R0 1
        4 GETUPVAL                         R1 2
        5 GETTABLEKS                       R1 R1 K0 ["toolbarButton"]
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K1 ["isWidgetEnabled"]
       10 CALL                             R0 2 0
       11 JUMP                             ; [+7]
       12 GETUPVAL                         R0 2
       13 GETTABLEKS                       R0 R0 K0 ["toolbarButton"]
       15 LOADB                            R2 1
       16 NAMECALL                         R0 R0 K2 ["SetActive"]
       18 CALL                             R0 2 0
       19 GETUPVAL                         R0 2
       20 GETTABLEKS                       R0 R0 K3 ["signals"]
       22 GETUPVAL                         R2 3
       23 GETTABLEKS                       R2 R2 K4 ["SIGNAL_KEYS"]
       25 GETTABLEKS                       R2 R2 K5 ["PluginWindowFocused"]
       27 NAMECALL                         R0 R0 K6 ["get"]
       29 CALL                             R0 2 1
       30 NAMECALL                         R0 R0 K7 ["Fire"]
       32 CALL                             R0 1 0
       33 RETURN                           R0 0

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
       27 CAPTURE                          UPVAL U3
       28 CAPTURE                          UPVAL U4
       29 CALL                             R1 2 0
       30 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["Enabled"]
        2 JUMPIFNOT                        R1 ; [+15]
        3 GETUPVAL                         R1 0
        4 NAMECALL                         R1 R1 K1 ["IsEdit"]
        6 CALL                             R1 1 1
        7 JUMPIF                           R1 ; [+10]
        8 GETUPVAL                         R1 1
        9 DUPTABLE                         R3 K4 [{["enabled"] = False}]
       10 NAMECALL                         R1 R1 K5 ["setState"]
       12 CALL                             R1 2 0
       13 GETUPVAL                         R1 1
       14 NAMECALL                         R1 R1 K6 ["showEditorInPlayModeError"]
       16 CALL                             R1 1 0
       17 RETURN                           R0 0
       18 GETUPVAL                         R1 1
       19 DUPTABLE                         R3 K7 [{"enabled"}]
       20 GETTABLEKS                       R4 R0 K0 ["Enabled"]
       22 SETTABLEKS                       R4 R3 K2 ["enabled"]
       24 NAMECALL                         R1 R1 K5 ["setState"]
       26 CALL                             R1 2 0
       27 RETURN                           R0 0

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
       16 DUPTABLE                         R2 K8 [{["enabled"] = False}]
       17 SETTABLEKS                       R2 R0 K9 ["state"]
       19 GETUPVAL                         R2 1
       20 GETTABLEKS                       R2 R2 K10 ["Store"]
       22 GETTABLEKS                       R2 R2 K5 ["new"]
       24 GETUPVAL                         R3 2
       25 NEWTABLE                         R4 0 0
       27 GETUPVAL                         R5 3
       28 CALL                             R2 3 1
       29 SETTABLEKS                       R2 R0 K11 ["store"]
       31 GETUPVAL                         R2 4
       32 GETTABLEKS                       R2 R2 K12 ["makePluginTheme"]
       34 CALL                             R2 0 1
       35 SETTABLEKS                       R2 R0 K13 ["theme"]
       37 GETUPVAL                         R2 0
       38 GETTABLEKS                       R2 R2 K14 ["Analytics"]
       40 GETTABLEKS                       R2 R2 K5 ["new"]
       42 GETUPVAL                         R3 5
       43 CALL                             R2 1 1
       44 SETTABLEKS                       R2 R0 K15 ["analytics"]
       46 GETUPVAL                         R2 0
       47 GETTABLEKS                       R2 R2 K16 ["Localization"]
       49 GETTABLEKS                       R2 R2 K5 ["new"]
       51 DUPTABLE                         R3 K21 [{["pluginName"] = "LayeredClothingEditor", ["stringResourceTable"], ["translationResourceTable"], ["libraries"]}]
       52 GETUPVAL                         R4 6
       53 SETTABLEKS                       R4 R3 K18 ["stringResourceTable"]
       55 GETUPVAL                         R4 7
       56 SETTABLEKS                       R4 R3 K19 ["translationResourceTable"]
       58 NEWTABLE                         R4 1 0
       60 GETUPVAL                         R5 8
       61 GETTABLEKS                       R5 R5 K22 ["Resources"]
       63 GETTABLEKS                       R5 R5 K23 ["LOCALIZATION_PROJECT_NAME"]
       65 DUPTABLE                         R6 K24 [{"stringResourceTable", "translationResourceTable"}]
       66 GETUPVAL                         R7 8
       67 GETTABLEKS                       R7 R7 K22 ["Resources"]
       69 GETTABLEKS                       R7 R7 K25 ["SourceStrings"]
       71 SETTABLEKS                       R7 R6 K18 ["stringResourceTable"]
       73 GETUPVAL                         R7 8
       74 GETTABLEKS                       R7 R7 K22 ["Resources"]
       76 GETTABLEKS                       R7 R7 K26 ["LocalizedStrings"]
       78 SETTABLEKS                       R7 R6 K19 ["translationResourceTable"]
       80 SETTABLE                         R6 R4 R5
       81 SETTABLEKS                       R4 R3 K20 ["libraries"]
       83 CALL                             R2 1 1
       84 SETTABLEKS                       R2 R0 K27 ["localization"]
       86 LOADK                            R4 K28 ["Avatar"]
       87 NAMECALL                         R2 R1 K29 ["CreateToolbar"]
       89 CALL                             R2 2 1
       90 LOADK                            R5 K30 ["LayeredClothingEditorButton"]
       91 GETTABLEKS                       R6 R0 K27 ["localization"]
       93 LOADK                            R8 K31 ["Main"]
       94 LOADK                            R9 K32 ["Tooltip"]
       95 NAMECALL                         R6 R6 K33 ["getText"]
       97 CALL                             R6 3 1
       98 LOADK                            R7 K34 [""]
       99 GETTABLEKS                       R8 R0 K27 ["localization"]
      101 LOADK                            R10 K31 ["Main"]
      102 LOADK                            R11 K35 ["ToolbarButton"]
      103 NAMECALL                         R8 R8 K33 ["getText"]
      105 CALL                             R8 3 -1
      106 NAMECALL                         R3 R2 K36 ["CreateButton"]
      108 CALL                             R3 -1 1
      109 SETTABLEKS                       R3 R0 K37 ["toolbarButton"]
      111 GETUPVAL                         R3 9
      112 GETTABLEKS                       R5 R0 K1 ["plugin"]
      114 MOVE                             R6 R2
      115 GETTABLEKS                       R7 R0 K27 ["localization"]
      117 GETTABLEKS                       R8 R0 K15 ["analytics"]
      119 NAMECALL                         R3 R3 K38 ["init"]
      121 CALL                             R3 5 0
      122 NEWCLOSURE                       R3 P0
      123 CAPTURE                          VAL R0
      124 SETTABLEKS                       R3 R0 K39 ["isWidgetEnabled"]
      126 NEWCLOSURE                       R3 P1
      127 CAPTURE                          VAL R0
      128 CAPTURE                          UPVAL U10
      129 CAPTURE                          VAL R1
      130 SETTABLEKS                       R3 R0 K40 ["onClose"]
      132 GETTABLEKS                       R3 R0 K0 ["props"]
      134 GETTABLEKS                       R3 R3 K41 ["RunService"]
      136 JUMPIF                           R3 ; [+1]
      137 GETUPVAL                         R3 11
      138 NEWCLOSURE                       R4 P2
      139 CAPTURE                          VAL R3
      140 CAPTURE                          UPVAL U12
      141 CAPTURE                          UPVAL U13
      142 CAPTURE                          VAL R0
      143 CAPTURE                          VAL R1
      144 CAPTURE                          UPVAL U10
      145 SETTABLEKS                       R4 R0 K42 ["onToggleWidget"]
      147 GETUPVAL                         R4 0
      148 GETTABLEKS                       R4 R4 K43 ["PluginActions"]
      150 GETTABLEKS                       R4 R4 K5 ["new"]
      152 MOVE                             R5 R1
      153 GETUPVAL                         R6 14
      154 MOVE                             R7 R1
      155 GETTABLEKS                       R8 R0 K27 ["localization"]
      157 CALL                             R6 2 -1
      158 CALL                             R4 -1 1
      159 SETTABLEKS                       R4 R0 K44 ["pluginActions"]
      161 GETUPVAL                         R4 15
      162 GETTABLEKS                       R4 R4 K5 ["new"]
      164 GETUPVAL                         R5 16
      165 GETTABLEKS                       R5 R5 K45 ["SIGNAL_KEYS"]
      167 CALL                             R4 1 1
      168 SETTABLEKS                       R4 R0 K46 ["signals"]
      170 GETUPVAL                         R4 17
      171 GETTABLEKS                       R4 R4 K5 ["new"]
      173 CALL                             R4 0 1
      174 SETTABLEKS                       R4 R0 K47 ["editingItemContext"]
      176 GETUPVAL                         R4 18
      177 GETTABLEKS                       R4 R4 K5 ["new"]
      179 CALL                             R4 0 1
      180 GETUPVAL                         R7 16
      181 GETTABLEKS                       R7 R7 K48 ["DEFAULT_FALLOFF"]
      183 NAMECALL                         R5 R4 K49 ["setFalloff"]
      185 CALL                             R5 2 0
      186 GETUPVAL                         R5 19
      187 GETTABLEKS                       R5 R5 K5 ["new"]
      189 NEWTABLE                         R6 1 0
      191 GETUPVAL                         R7 16
      192 GETTABLEKS                       R7 R7 K50 ["TOOL_MODE"]
      194 GETTABLEKS                       R7 R7 K51 ["Point"]
      196 SETTABLE                         R4 R6 R7
      197 CALL                             R5 1 1
      198 SETTABLEKS                       R5 R0 K52 ["meshEditingContext"]
      200 GETTABLEKS                       R5 R0 K37 ["toolbarButton"]
      202 GETTABLEKS                       R5 R5 K53 ["Click"]
      204 GETTABLEKS                       R7 R0 K42 ["onToggleWidget"]
      206 NAMECALL                         R5 R5 K54 ["connect"]
      208 CALL                             R5 2 0
      209 NEWCLOSURE                       R5 P3
      210 CAPTURE                          VAL R1
      211 CAPTURE                          UPVAL U12
      212 CAPTURE                          UPVAL U13
      213 CAPTURE                          VAL R0
      214 CAPTURE                          UPVAL U16
      215 SETTABLEKS                       R5 R0 K55 ["onFocus"]
      217 NEWCLOSURE                       R5 P4
      218 CAPTURE                          UPVAL U11
      219 CAPTURE                          VAL R0
      220 SETTABLEKS                       R5 R0 K56 ["onWidgetEnabledChanged"]
      222 RETURN                           R0 0

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
      166 GETTABLEKS                       R27 R27 K42 ["syncToolbarButtonActive"]
      168 CALL                             R26 1 1
      169 GETIMPORT                        R27 K4 [require]
      171 GETTABLEKS                       R28 R0 K26 ["Src"]
      173 GETTABLEKS                       R28 R28 K40 ["Util"]
      175 GETTABLEKS                       R28 R28 K43 ["Constants"]
      177 CALL                             R27 1 1
      178 GETIMPORT                        R28 K4 [require]
      180 GETTABLEKS                       R29 R0 K26 ["Src"]
      182 GETTABLEKS                       R29 R29 K40 ["Util"]
      184 GETTABLEKS                       R29 R29 K44 ["ShowDialog"]
      186 CALL                             R28 1 1
      187 GETIMPORT                        R29 K4 [require]
      189 GETTABLEKS                       R30 R0 K45 ["Bin"]
      191 GETTABLEKS                       R30 R30 K46 ["ClothesHelper"]
      193 CALL                             R29 1 1
      194 GETIMPORT                        R30 K4 [require]
      196 GETTABLEKS                       R31 R0 K26 ["Src"]
      198 GETTABLEKS                       R31 R31 K38 ["Thunks"]
      200 GETTABLEKS                       R31 R31 K47 ["FinishSelectingFromExplorer"]
      202 CALL                             R30 1 1
      203 GETIMPORT                        R31 K4 [require]
      205 GETTABLEKS                       R32 R0 K26 ["Src"]
      207 GETTABLEKS                       R32 R32 K48 ["Flags"]
      209 GETTABLEKS                       R32 R32 K49 ["getFFlagLayeredClothingEditorSyncToolbarButtonState"]
      211 CALL                             R31 1 1
      212 GETTABLEKS                       R32 R1 K50 ["PureComponent"]
      214 LOADK                            R34 K51 ["LayeredClothingEditorPlugin"]
      215 NAMECALL                         R32 R32 K52 ["extend"]
      217 CALL                             R32 2 1
      218 GETIMPORT                        R33 K55 [Vector2.new]
      220 LOADN                            R34 380
      221 LOADN                            R35 550
      222 CALL                             R33 2 1
      223 DUPCLOSURE                       R34 K56 [PROTO_0]
      224 CAPTURE                          VAL R28
      225 CAPTURE                          VAL R8
      226 SETTABLEKS                       R34 R32 K57 ["showEditorInPlayModeError"]
      228 DUPCLOSURE                       R34 K58 [PROTO_7]
      229 CAPTURE                          VAL R15
      230 CAPTURE                          VAL R2
      231 CAPTURE                          VAL R17
      232 CAPTURE                          VAL R18
      233 CAPTURE                          VAL R20
      234 CAPTURE                          VAL R19
      235 CAPTURE                          VAL R21
      236 CAPTURE                          VAL R22
      237 CAPTURE                          VAL R4
      238 CAPTURE                          VAL R29
      239 CAPTURE                          VAL R24
      240 CAPTURE                          VAL R12
      241 CAPTURE                          VAL R31
      242 CAPTURE                          VAL R26
      243 CAPTURE                          VAL R25
      244 CAPTURE                          VAL R11
      245 CAPTURE                          VAL R27
      246 CAPTURE                          VAL R10
      247 CAPTURE                          VAL R6
      248 CAPTURE                          VAL R9
      249 SETTABLEKS                       R34 R32 K59 ["init"]
      251 DUPCLOSURE                       R34 K60 [PROTO_9]
      252 CAPTURE                          VAL R30
      253 CAPTURE                          VAL R1
      254 CAPTURE                          VAL R16
      255 CAPTURE                          VAL R14
      256 CAPTURE                          VAL R33
      257 CAPTURE                          VAL R23
      258 SETTABLEKS                       R34 R32 K61 ["render"]
      260 RETURN                           R32 1
