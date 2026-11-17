PROTO_0:
        0 DUPTABLE                         R0 K2 [{[1] = True}]
        1 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 DUPCLOSURE                       R3 K0 [PROTO_0]
        2 NAMECALL                         R1 R1 K1 ["setState"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R0 K2 [{[1] = False}]
        1 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 DUPCLOSURE                       R3 K0 [PROTO_2]
        2 NAMECALL                         R1 R1 K1 ["setState"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R0 K2 [{[1] = True}]
        1 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 GETTABLE                         R2 R3 R4
        4 NAMECALL                         R0 R0 K0 ["ActivateAsync"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R1 K2 [task.spawn]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_7:
        0 NEWTABLE                         R1 1 0
        2 GETUPVAL                         R2 0
        3 DUPTABLE                         R3 K1 [{"Enabled"}]
        4 GETUPVAL                         R6 1
        5 GETTABLEKS                       R6 R6 K2 ["state"]
        7 GETUPVAL                         R7 0
        8 GETTABLE                         R5 R6 R7
        9 GETTABLEKS                       R5 R5 K0 ["Enabled"]
       11 NOT                              R4 R5
       12 SETTABLEKS                       R4 R3 K0 ["Enabled"]
       14 SETTABLE                         R3 R1 R2
       15 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["state"]
        3 GETTABLE                         R2 R3 R1
        4 GETTABLEKS                       R2 R2 K1 ["Enabled"]
        6 JUMPIFEQ                         R0 R2 ; [+8]
        8 GETUPVAL                         R2 0
        9 NEWCLOSURE                       R4 P0
       10 CAPTURE                          VAL R1
       11 CAPTURE                          UPVAL U0
       12 NAMECALL                         R2 R2 K2 ["setState"]
       14 CALL                             R2 2 0
       15 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onToggleEnabled"]
        3 GETTABLEKS                       R2 R0 K1 ["Checked"]
        5 LOADK                            R3 K2 ["callstackWindow"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onToggleEnabled"]
        3 GETTABLEKS                       R2 R0 K1 ["Checked"]
        5 LOADK                            R3 K2 ["breakpointsWindow"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onToggleEnabled"]
        3 GETTABLEKS                       R2 R0 K1 ["Checked"]
        5 LOADK                            R3 K2 ["watchWindow"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 GETTABLE                         R2 R3 R4
        4 NAMECALL                         R0 R0 K0 ["ActivateAsync"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["state"]
        3 GETTABLE                         R1 R2 R0
        4 GETTABLEKS                       R1 R1 K1 ["Enabled"]
        6 JUMPIFNOT                        R1 ; [+7]
        7 GETIMPORT                        R1 K4 [task.spawn]
        9 NEWCLOSURE                       R2 P0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          VAL R0
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NEWTABLE                         R4 0 1
        4 GETUPVAL                         R6 2
        5 GETUPVAL                         R7 3
        6 GETTABLE                         R5 R6 R7
        7 SETLIST                          R4 R5 1 [1]
        9 NAMECALL                         R2 R2 K0 ["GetAsync"]
       11 CALL                             R2 2 1
       12 GETTABLEN                        R1 R2 1
       13 GETTABLEKS                       R1 R1 K1 ["Checked"]
       15 JUMPIFEQ                         R0 R1 ; [+8]
       17 GETUPVAL                         R0 1
       18 GETUPVAL                         R3 2
       19 GETUPVAL                         R4 3
       20 GETTABLE                         R2 R3 R4
       21 NAMECALL                         R0 R0 K2 ["ActivateAsync"]
       23 CALL                             R0 2 0
       24 RETURN                           R0 0

PROTO_15:
        0 GETIMPORT                        R2 K2 [task.spawn]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R0
        7 CALL                             R2 1 0
        8 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R2 R1 K0 ["Plugin"]
        2 LOADK                            R4 K1 ["Actions"]
        3 NAMECALL                         R2 R2 K2 ["GetPluginComponent"]
        5 CALL                             R2 2 1
        6 GETTABLEKS                       R3 R1 K0 ["Plugin"]
        8 DUPTABLE                         R4 K6 [{"callstackWindow", "breakpointsWindow", "watchWindow"}]
        9 GETUPVAL                         R5 0
       10 SETTABLEKS                       R5 R4 K3 ["callstackWindow"]
       12 GETUPVAL                         R5 1
       13 SETTABLEKS                       R5 R4 K4 ["breakpointsWindow"]
       15 GETUPVAL                         R5 2
       16 SETTABLEKS                       R5 R4 K5 ["watchWindow"]
       18 NEWTABLE                         R7 0 3
       20 GETUPVAL                         R8 0
       21 GETUPVAL                         R9 1
       22 GETUPVAL                         R10 2
       23 SETLIST                          R7 R8 3 [1]
       25 NAMECALL                         R5 R2 K7 ["GetAsync"]
       27 CALL                             R5 2 1
       28 DUPTABLE                         R6 K10 [{["callstackWindow"], ["breakpointsWindow"], ["watchWindow"], ["uiDmLoaded"] = False}]
       29 DUPTABLE                         R7 K12 [{"Enabled"}]
       30 GETTABLEN                        R8 R5 1
       31 GETTABLEKS                       R8 R8 K13 ["Checked"]
       33 SETTABLEKS                       R8 R7 K11 ["Enabled"]
       35 SETTABLEKS                       R7 R6 K3 ["callstackWindow"]
       37 DUPTABLE                         R7 K12 [{"Enabled"}]
       38 GETTABLEN                        R8 R5 2
       39 GETTABLEKS                       R8 R8 K13 ["Checked"]
       41 SETTABLEKS                       R8 R7 K11 ["Enabled"]
       43 SETTABLEKS                       R7 R6 K4 ["breakpointsWindow"]
       45 DUPTABLE                         R7 K12 [{"Enabled"}]
       46 GETTABLEN                        R8 R5 3
       47 GETTABLEKS                       R8 R8 K13 ["Checked"]
       49 SETTABLEKS                       R8 R7 K11 ["Enabled"]
       51 SETTABLEKS                       R7 R6 K5 ["watchWindow"]
       53 SETTABLEKS                       R6 R0 K14 ["state"]
       55 GETTABLEKS                       R6 R3 K15 ["MultipleDocumentInterfaceInstance"]
       57 GETTABLEKS                       R7 R6 K16 ["DataModelSessionStarted"]
       59 NEWCLOSURE                       R9 P0
       60 CAPTURE                          VAL R0
       61 NAMECALL                         R7 R7 K17 ["Connect"]
       63 CALL                             R7 2 0
       64 GETTABLEKS                       R7 R6 K18 ["DataModelSessionEnded"]
       66 NEWCLOSURE                       R9 P1
       67 CAPTURE                          VAL R0
       68 NAMECALL                         R7 R7 K17 ["Connect"]
       70 CALL                             R7 2 0
       71 GETTABLEKS                       R7 R6 K19 ["FocusedDataModelSession"]
       73 JUMPIFNOT                        R7 ; [+4]
       74 DUPCLOSURE                       R9 K20 [PROTO_4]
       75 NAMECALL                         R7 R0 K21 ["setState"]
       77 CALL                             R7 2 0
       78 NEWCLOSURE                       R7 P3
       79 CAPTURE                          VAL R2
       80 CAPTURE                          VAL R4
       81 SETTABLEKS                       R7 R0 K22 ["toggleWidgetEnabled"]
       83 NEWCLOSURE                       R7 P4
       84 CAPTURE                          VAL R0
       85 SETTABLEKS                       R7 R0 K23 ["onToggleEnabled"]
       87 NEWTABLE                         R7 0 3
       89 GETUPVAL                         R10 0
       90 NAMECALL                         R8 R2 K24 ["BindToChangedAsync"]
       92 CALL                             R8 2 1
       93 NEWCLOSURE                       R10 P5
       94 CAPTURE                          VAL R0
       95 NAMECALL                         R8 R8 K17 ["Connect"]
       97 CALL                             R8 2 1
       98 GETUPVAL                         R11 1
       99 NAMECALL                         R9 R2 K24 ["BindToChangedAsync"]
      101 CALL                             R9 2 1
      102 NEWCLOSURE                       R11 P6
      103 CAPTURE                          VAL R0
      104 NAMECALL                         R9 R9 K17 ["Connect"]
      106 CALL                             R9 2 1
      107 GETUPVAL                         R12 2
      108 NAMECALL                         R10 R2 K24 ["BindToChangedAsync"]
      110 CALL                             R10 2 1
      111 NEWCLOSURE                       R12 P7
      112 CAPTURE                          VAL R0
      113 NAMECALL                         R10 R10 K17 ["Connect"]
      115 CALL                             R10 2 -1
      116 SETLIST                          R7 R8 -1 [1]
      118 SETTABLEKS                       R7 R0 K25 ["onActionActivatedConnections"]
      120 NEWCLOSURE                       R7 P8
      121 CAPTURE                          VAL R0
      122 CAPTURE                          VAL R2
      123 CAPTURE                          VAL R4
      124 SETTABLEKS                       R7 R0 K26 ["onWidgetClose"]
      126 NEWCLOSURE                       R7 P9
      127 CAPTURE                          VAL R2
      128 CAPTURE                          VAL R4
      129 SETTABLEKS                       R7 R0 K27 ["setWidgetEnabledState"]
      131 GETUPVAL                         R7 3
      132 GETTABLEKS                       R7 R7 K28 ["Store"]
      134 GETTABLEKS                       R7 R7 K29 ["new"]
      136 GETUPVAL                         R8 4
      137 LOADNIL                          R9
      138 GETUPVAL                         R10 5
      139 CALL                             R7 3 1
      140 SETTABLEKS                       R7 R0 K30 ["store"]
      142 GETUPVAL                         R7 6
      143 GETTABLEKS                       R7 R7 K29 ["new"]
      145 GETTABLEKS                       R8 R0 K30 ["store"]
      147 CALL                             R7 1 1
      148 SETTABLEKS                       R7 R0 K31 ["debugConnectionListener"]
      150 GETUPVAL                         R7 7
      151 GETTABLEKS                       R7 R7 K29 ["new"]
      153 GETTABLEKS                       R8 R0 K30 ["store"]
      155 CALL                             R7 1 1
      156 SETTABLEKS                       R7 R0 K32 ["metaBreakpointManagerListener"]
      158 GETUPVAL                         R7 8
      159 GETTABLEKS                       R7 R7 K29 ["new"]
      161 GETTABLEKS                       R8 R0 K30 ["store"]
      163 CALL                             R7 1 1
      164 SETTABLEKS                       R7 R0 K33 ["scriptChangeServiceListener"]
      166 GETUPVAL                         R7 9
      167 GETTABLEKS                       R7 R7 K29 ["new"]
      169 GETTABLEKS                       R8 R0 K30 ["store"]
      171 CALL                             R7 1 1
      172 SETTABLEKS                       R7 R0 K34 ["debuggerUIServiceListener"]
      174 GETUPVAL                         R7 10
      175 GETTABLEKS                       R7 R7 K35 ["Localization"]
      177 GETTABLEKS                       R7 R7 K29 ["new"]
      179 DUPTABLE                         R8 K40 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "Debugger"}]
      180 GETUPVAL                         R9 11
      181 SETTABLEKS                       R9 R8 K36 ["stringResourceTable"]
      183 GETUPVAL                         R9 12
      184 SETTABLEKS                       R9 R8 K37 ["translationResourceTable"]
      186 CALL                             R7 1 1
      187 SETTABLEKS                       R7 R0 K41 ["localization"]
      189 GETUPVAL                         R7 13
      190 SETTABLEKS                       R7 R0 K42 ["analytics"]
      192 GETUPVAL                         R7 10
      193 GETTABLEKS                       R7 R7 K43 ["PluginActions"]
      195 GETTABLEKS                       R7 R7 K29 ["new"]
      197 GETTABLEKS                       R8 R1 K0 ["Plugin"]
      199 GETUPVAL                         R9 14
      200 GETTABLEKS                       R9 R9 K44 ["getActionsWithShortcuts"]
      202 GETTABLEKS                       R10 R0 K41 ["localization"]
      204 CALL                             R9 1 -1
      205 CALL                             R7 -1 1
      206 SETTABLEKS                       R7 R0 K45 ["pluginActions"]
      208 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["toggleWidgetEnabled"]
        3 LOADK                            R1 K1 ["callstackWindow"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["toggleWidgetEnabled"]
        3 LOADK                            R1 K1 ["breakpointsWindow"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["toggleWidgetEnabled"]
        3 LOADK                            R1 K1 ["watchWindow"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_20:
        0 GETTABLEKS                       R2 R0 K0 ["state"]
        2 GETTABLEKS                       R3 R2 K1 ["callstackWindow"]
        4 GETTABLEKS                       R3 R3 K2 ["Enabled"]
        6 GETTABLEKS                       R4 R2 K3 ["watchWindow"]
        8 GETTABLEKS                       R4 R4 K2 ["Enabled"]
       10 GETTABLEKS                       R5 R2 K4 ["breakpointsWindow"]
       12 GETTABLEKS                       R5 R5 K2 ["Enabled"]
       14 DUPTABLE                         R6 K8 [{"ToggleCallstack", "ToggleBreakpointsWindow", "ToggleWatchWindow"}]
       15 GETUPVAL                         R7 0
       16 GETTABLEKS                       R7 R7 K9 ["createElement"]
       18 GETUPVAL                         R8 1
       19 DUPTABLE                         R9 K21 [{["Name"] = "callStackDockWidgetActionV2", ["Toolbar"], ["Active"], ["Title"] = "Callstack", ["Tooltip"] = "", ["OnClick"], ["ClickableWhenViewportHidden"] = True}]
       20 SETTABLEKS                       R1 R9 K12 ["Toolbar"]
       22 SETTABLEKS                       R3 R9 K13 ["Active"]
       24 NEWCLOSURE                       R10 P0
       25 CAPTURE                          VAL R0
       26 SETTABLEKS                       R10 R9 K18 ["OnClick"]
       28 CALL                             R7 2 1
       29 SETTABLEKS                       R7 R6 K5 ["ToggleCallstack"]
       31 GETUPVAL                         R7 0
       32 GETTABLEKS                       R7 R7 K9 ["createElement"]
       34 GETUPVAL                         R8 1
       35 DUPTABLE                         R9 K24 [{["Name"] = "breakpointsDockWidgetActionV2", ["Toolbar"], ["Active"], ["Title"] = "Breakpoints", ["Tooltip"] = "", ["OnClick"], ["ClickableWhenViewportHidden"] = True}]
       36 SETTABLEKS                       R1 R9 K12 ["Toolbar"]
       38 SETTABLEKS                       R5 R9 K13 ["Active"]
       40 NEWCLOSURE                       R10 P1
       41 CAPTURE                          VAL R0
       42 SETTABLEKS                       R10 R9 K18 ["OnClick"]
       44 CALL                             R7 2 1
       45 SETTABLEKS                       R7 R6 K6 ["ToggleBreakpointsWindow"]
       47 GETUPVAL                         R7 0
       48 GETTABLEKS                       R7 R7 K9 ["createElement"]
       50 GETUPVAL                         R8 1
       51 DUPTABLE                         R9 K27 [{["Name"] = "watchDockWidgetActionV2", ["Toolbar"], ["Active"], ["Title"] = "Watch", ["Tooltip"] = "", ["OnClick"], ["ClickableWhenViewportHidden"] = True}]
       52 SETTABLEKS                       R1 R9 K12 ["Toolbar"]
       54 SETTABLEKS                       R4 R9 K13 ["Active"]
       56 NEWCLOSURE                       R10 P2
       57 CAPTURE                          VAL R0
       58 SETTABLEKS                       R10 R9 K18 ["OnClick"]
       60 CALL                             R7 2 1
       61 SETTABLEKS                       R7 R6 K7 ["ToggleWatchWindow"]
       63 RETURN                           R6 1

PROTO_21:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onWidgetClose"]
        3 LOADK                            R1 K1 ["callstackWindow"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setWidgetEnabledState"]
        3 LOADK                            R2 K1 ["callstackWindow"]
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setWidgetEnabledState"]
        3 LOADK                            R2 K1 ["callstackWindow"]
        4 GETTABLEKS                       R3 R0 K2 ["Enabled"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onWidgetClose"]
        3 LOADK                            R1 K1 ["breakpointsWindow"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setWidgetEnabledState"]
        3 LOADK                            R2 K1 ["breakpointsWindow"]
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setWidgetEnabledState"]
        3 LOADK                            R2 K1 ["breakpointsWindow"]
        4 GETTABLEKS                       R3 R0 K2 ["Enabled"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onWidgetClose"]
        3 LOADK                            R1 K1 ["watchWindow"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setWidgetEnabledState"]
        3 LOADK                            R2 K1 ["watchWindow"]
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setWidgetEnabledState"]
        3 LOADK                            R2 K1 ["watchWindow"]
        4 GETTABLEKS                       R3 R0 K2 ["Enabled"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_30:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Plugin"]
        6 GETTABLEKS                       R4 R2 K3 ["uiDmLoaded"]
        8 JUMPIFNOT                        R4 ; [+7]
        9 GETTABLEKS                       R4 R2 K4 ["callstackWindow"]
       11 JUMPIFNOT                        R4 ; [+4]
       12 GETTABLEKS                       R4 R2 K4 ["callstackWindow"]
       14 GETTABLEKS                       R4 R4 K5 ["Enabled"]
       16 GETTABLEKS                       R5 R2 K3 ["uiDmLoaded"]
       18 JUMPIFNOT                        R5 ; [+7]
       19 GETTABLEKS                       R5 R2 K6 ["watchWindow"]
       21 JUMPIFNOT                        R5 ; [+4]
       22 GETTABLEKS                       R5 R2 K6 ["watchWindow"]
       24 GETTABLEKS                       R5 R5 K5 ["Enabled"]
       26 GETTABLEKS                       R6 R2 K3 ["uiDmLoaded"]
       28 JUMPIFNOT                        R6 ; [+7]
       29 GETTABLEKS                       R6 R2 K7 ["breakpointsWindow"]
       31 JUMPIFNOT                        R6 ; [+4]
       32 GETTABLEKS                       R6 R2 K7 ["breakpointsWindow"]
       34 GETTABLEKS                       R6 R6 K5 ["Enabled"]
       36 GETUPVAL                         R7 0
       37 GETTABLEKS                       R7 R7 K8 ["provide"]
       39 NEWTABLE                         R8 0 7
       41 GETUPVAL                         R9 1
       42 GETTABLEKS                       R9 R9 K9 ["new"]
       44 MOVE                             R10 R3
       45 CALL                             R9 1 1
       46 GETUPVAL                         R10 2
       47 GETTABLEKS                       R10 R10 K9 ["new"]
       49 GETTABLEKS                       R11 R0 K10 ["store"]
       51 CALL                             R10 1 1
       52 GETUPVAL                         R11 3
       53 GETTABLEKS                       R11 R11 K9 ["new"]
       55 NAMECALL                         R12 R3 K11 ["getMouse"]
       57 CALL                             R12 1 -1
       58 CALL                             R11 -1 1
       59 GETUPVAL                         R12 4
       60 CALL                             R12 0 1
       61 GETTABLEKS                       R13 R0 K12 ["localization"]
       63 GETTABLEKS                       R14 R0 K13 ["analytics"]
       65 GETTABLEKS                       R15 R0 K14 ["pluginActions"]
       67 SETLIST                          R8 R9 7 [1]
       69 DUPTABLE                         R9 K19 [{"ToolbarWithRoduxConnection", "CallstackWindow", "BreakpointsWindow", "WatchWindow"}]
       70 GETUPVAL                         R10 5
       71 GETTABLEKS                       R10 R10 K20 ["createElement"]
       73 GETUPVAL                         R11 6
       74 CALL                             R10 1 1
       75 SETTABLEKS                       R10 R9 K15 ["ToolbarWithRoduxConnection"]
       77 GETUPVAL                         R10 5
       78 GETTABLEKS                       R10 R10 K20 ["createElement"]
       80 GETUPVAL                         R11 7
       81 DUPTABLE                         R12 K24 [{"Enabled", "OnClose", "OnRestore", "OnWidgetEnabledChanged"}]
       82 SETTABLEKS                       R4 R12 K5 ["Enabled"]
       84 NEWCLOSURE                       R13 P0
       85 CAPTURE                          VAL R0
       86 SETTABLEKS                       R13 R12 K21 ["OnClose"]
       88 NEWCLOSURE                       R13 P1
       89 CAPTURE                          VAL R0
       90 SETTABLEKS                       R13 R12 K22 ["OnRestore"]
       92 NEWCLOSURE                       R13 P2
       93 CAPTURE                          VAL R0
       94 SETTABLEKS                       R13 R12 K23 ["OnWidgetEnabledChanged"]
       96 CALL                             R10 2 1
       97 SETTABLEKS                       R10 R9 K16 ["CallstackWindow"]
       99 GETUPVAL                         R10 5
      100 GETTABLEKS                       R10 R10 K20 ["createElement"]
      102 GETUPVAL                         R11 8
      103 DUPTABLE                         R12 K24 [{"Enabled", "OnClose", "OnRestore", "OnWidgetEnabledChanged"}]
      104 SETTABLEKS                       R6 R12 K5 ["Enabled"]
      106 NEWCLOSURE                       R13 P3
      107 CAPTURE                          VAL R0
      108 SETTABLEKS                       R13 R12 K21 ["OnClose"]
      110 NEWCLOSURE                       R13 P4
      111 CAPTURE                          VAL R0
      112 SETTABLEKS                       R13 R12 K22 ["OnRestore"]
      114 NEWCLOSURE                       R13 P5
      115 CAPTURE                          VAL R0
      116 SETTABLEKS                       R13 R12 K23 ["OnWidgetEnabledChanged"]
      118 CALL                             R10 2 1
      119 SETTABLEKS                       R10 R9 K17 ["BreakpointsWindow"]
      121 GETUPVAL                         R10 5
      122 GETTABLEKS                       R10 R10 K20 ["createElement"]
      124 GETUPVAL                         R11 9
      125 DUPTABLE                         R12 K24 [{"Enabled", "OnClose", "OnRestore", "OnWidgetEnabledChanged"}]
      126 SETTABLEKS                       R5 R12 K5 ["Enabled"]
      128 NEWCLOSURE                       R13 P6
      129 CAPTURE                          VAL R0
      130 SETTABLEKS                       R13 R12 K21 ["OnClose"]
      132 NEWCLOSURE                       R13 P7
      133 CAPTURE                          VAL R0
      134 SETTABLEKS                       R13 R12 K22 ["OnRestore"]
      136 NEWCLOSURE                       R13 P8
      137 CAPTURE                          VAL R0
      138 SETTABLEKS                       R13 R12 K23 ["OnWidgetEnabledChanged"]
      140 DUPTABLE                         R13 K26 [{"Watch"}]
      141 GETUPVAL                         R14 5
      142 GETTABLEKS                       R14 R14 K20 ["createElement"]
      144 GETUPVAL                         R15 10
      145 CALL                             R14 1 1
      146 SETTABLEKS                       R14 R13 K25 ["Watch"]
      148 CALL                             R10 3 1
      149 SETTABLEKS                       R10 R9 K18 ["WatchWindow"]
      151 CALL                             R7 2 -1
      152 RETURN                           R7 -1

PROTO_31:
        0 GETTABLEKS                       R1 R0 K0 ["debugConnectionListener"]
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETTABLEKS                       R1 R0 K0 ["debugConnectionListener"]
        5 NAMECALL                         R1 R1 K1 ["destroy"]
        7 CALL                             R1 1 0
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K0 ["debugConnectionListener"]
       11 GETTABLEKS                       R1 R0 K2 ["metaBreakpointManagerListener"]
       13 JUMPIFNOT                        R1 ; [+8]
       14 GETTABLEKS                       R1 R0 K2 ["metaBreakpointManagerListener"]
       16 NAMECALL                         R1 R1 K1 ["destroy"]
       18 CALL                             R1 1 0
       19 LOADNIL                          R1
       20 SETTABLEKS                       R1 R0 K2 ["metaBreakpointManagerListener"]
       22 GETTABLEKS                       R1 R0 K3 ["scriptChangeServiceListener"]
       24 JUMPIFNOT                        R1 ; [+8]
       25 GETTABLEKS                       R1 R0 K3 ["scriptChangeServiceListener"]
       27 NAMECALL                         R1 R1 K1 ["destroy"]
       29 CALL                             R1 1 0
       30 LOADNIL                          R1
       31 SETTABLEKS                       R1 R0 K3 ["scriptChangeServiceListener"]
       33 GETTABLEKS                       R1 R0 K4 ["debuggerUIServiceListener"]
       35 JUMPIFNOT                        R1 ; [+8]
       36 GETTABLEKS                       R1 R0 K4 ["debuggerUIServiceListener"]
       38 NAMECALL                         R1 R1 K1 ["destroy"]
       40 CALL                             R1 1 0
       41 LOADNIL                          R1
       42 SETTABLEKS                       R1 R0 K4 ["debuggerUIServiceListener"]
       44 GETTABLEKS                       R2 R0 K5 ["onActionActivatedConnections"]
       46 GETTABLEN                        R1 R2 1
       47 NAMECALL                         R1 R1 K6 ["Disconnect"]
       49 CALL                             R1 1 0
       50 GETTABLEKS                       R2 R0 K5 ["onActionActivatedConnections"]
       52 GETTABLEN                        R1 R2 2
       53 NAMECALL                         R1 R1 K6 ["Disconnect"]
       55 CALL                             R1 1 0
       56 GETTABLEKS                       R2 R0 K5 ["onActionActivatedConnections"]
       58 GETTABLEN                        R1 R2 3
       59 NAMECALL                         R1 R1 K6 ["Disconnect"]
       61 CALL                             R1 1 0
       62 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K3 ["Src"]
        9 GETIMPORT                        R2 K5 [require]
       11 GETTABLEKS                       R3 R0 K6 ["Packages"]
       13 GETTABLEKS                       R3 R3 K7 ["Roact"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R0 K6 ["Packages"]
       20 GETTABLEKS                       R4 R4 K8 ["Rodux"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R5 R0 K6 ["Packages"]
       27 GETTABLEKS                       R5 R5 K9 ["Framework"]
       29 CALL                             R4 1 1
       30 GETTABLEKS                       R5 R4 K10 ["UI"]
       32 GETTABLEKS                       R6 R5 K11 ["PluginButton"]
       34 GETTABLEKS                       R7 R4 K12 ["ContextServices"]
       36 GETTABLEKS                       R8 R7 K13 ["Plugin"]
       38 GETTABLEKS                       R9 R7 K14 ["Mouse"]
       40 GETTABLEKS                       R10 R7 K15 ["Store"]
       42 GETIMPORT                        R11 K5 [require]
       44 GETTABLEKS                       R12 R1 K16 ["Reducers"]
       46 GETTABLEKS                       R12 R12 K17 ["MainReducer"]
       48 CALL                             R11 1 1
       49 GETIMPORT                        R12 K5 [require]
       51 GETTABLEKS                       R13 R1 K18 ["Resources"]
       53 GETTABLEKS                       R13 R13 K19 ["MakeTheme"]
       55 CALL                             R12 1 1
       56 GETIMPORT                        R13 K5 [require]
       58 GETTABLEKS                       R14 R1 K18 ["Resources"]
       60 GETTABLEKS                       R14 R14 K20 ["AnalyticsHolder"]
       62 CALL                             R13 1 1
       63 GETTABLEKS                       R14 R1 K18 ["Resources"]
       65 GETTABLEKS                       R14 R14 K21 ["Localization"]
       67 GETTABLEKS                       R14 R14 K22 ["SourceStrings"]
       69 GETTABLEKS                       R15 R1 K18 ["Resources"]
       71 GETTABLEKS                       R15 R15 K21 ["Localization"]
       73 GETTABLEKS                       R15 R15 K23 ["LocalizedStrings"]
       75 GETTABLEKS                       R16 R1 K24 ["Components"]
       77 GETIMPORT                        R17 K5 [require]
       79 GETTABLEKS                       R18 R16 K25 ["Callstack"]
       81 GETTABLEKS                       R18 R18 K26 ["CallstackWindow"]
       83 CALL                             R17 1 1
       84 GETIMPORT                        R18 K5 [require]
       86 GETTABLEKS                       R19 R16 K27 ["Watch"]
       88 GETTABLEKS                       R19 R19 K28 ["WatchWindow"]
       90 CALL                             R18 1 1
       91 GETIMPORT                        R19 K5 [require]
       93 GETTABLEKS                       R20 R16 K29 ["Breakpoints"]
       95 GETTABLEKS                       R20 R20 K30 ["BreakpointsWindow"]
       97 CALL                             R19 1 1
       98 GETIMPORT                        R20 K5 [require]
      100 GETTABLEKS                       R21 R16 K27 ["Watch"]
      102 GETTABLEKS                       R21 R21 K31 ["WatchComponent"]
      104 CALL                             R20 1 1
      105 GETIMPORT                        R21 K5 [require]
      107 GETTABLEKS                       R22 R16 K32 ["Common"]
      109 GETTABLEKS                       R22 R22 K33 ["DebuggerToolbarButtons"]
      111 CALL                             R21 1 1
      112 GETIMPORT                        R22 K5 [require]
      114 GETTABLEKS                       R23 R1 K34 ["Middleware"]
      116 GETTABLEKS                       R23 R23 K35 ["MainMiddleware"]
      118 CALL                             R22 1 1
      119 GETIMPORT                        R23 K5 [require]
      121 GETTABLEKS                       R24 R1 K36 ["Util"]
      123 GETTABLEKS                       R24 R24 K37 ["DebugConnectionListener"]
      125 GETTABLEKS                       R24 R24 K37 ["DebugConnectionListener"]
      127 CALL                             R23 1 1
      128 GETIMPORT                        R24 K5 [require]
      130 GETTABLEKS                       R25 R1 K36 ["Util"]
      132 GETTABLEKS                       R25 R25 K38 ["MetaBreakpointManagerListener"]
      134 GETTABLEKS                       R25 R25 K38 ["MetaBreakpointManagerListener"]
      136 CALL                             R24 1 1
      137 GETIMPORT                        R25 K5 [require]
      139 GETTABLEKS                       R26 R1 K36 ["Util"]
      141 GETTABLEKS                       R26 R26 K39 ["CrossDMScriptChangeListener"]
      143 GETTABLEKS                       R26 R26 K39 ["CrossDMScriptChangeListener"]
      145 CALL                             R25 1 1
      146 GETIMPORT                        R26 K5 [require]
      148 GETTABLEKS                       R27 R1 K36 ["Util"]
      150 GETTABLEKS                       R27 R27 K40 ["DebuggerUIServiceListener"]
      152 GETTABLEKS                       R27 R27 K40 ["DebuggerUIServiceListener"]
      154 CALL                             R26 1 1
      155 GETIMPORT                        R27 K5 [require]
      157 GETTABLEKS                       R28 R1 K36 ["Util"]
      159 GETTABLEKS                       R28 R28 K41 ["MakePluginActions"]
      161 CALL                             R27 1 1
      162 GETTABLEKS                       R28 R2 K42 ["PureComponent"]
      164 LOADK                            R30 K43 ["MainPlugin"]
      165 NAMECALL                         R28 R28 K44 ["extend"]
      167 CALL                             R28 2 1
      168 DUPTABLE                         R29 K55 [{["DataModel"] = "Standalone", ["PluginType"] = "Unknown", ["PluginId"] = "CallStack", ["Category"] = "Actions", ["ItemId"] = "Toggle"}]
      169 DUPTABLE                         R30 K56 [{["DataModel"] = "Standalone", ["PluginType"] = "Unknown", ["PluginId"] = "Breakpoints", ["Category"] = "Actions", ["ItemId"] = "Toggle"}]
      170 DUPTABLE                         R31 K57 [{["DataModel"] = "Standalone", ["PluginType"] = "Unknown", ["PluginId"] = "Watch", ["Category"] = "Actions", ["ItemId"] = "Toggle"}]
      171 DUPCLOSURE                       R32 K58 [PROTO_16]
      172 CAPTURE                          VAL R29
      173 CAPTURE                          VAL R30
      174 CAPTURE                          VAL R31
      175 CAPTURE                          VAL R3
      176 CAPTURE                          VAL R11
      177 CAPTURE                          VAL R22
      178 CAPTURE                          VAL R23
      179 CAPTURE                          VAL R24
      180 CAPTURE                          VAL R25
      181 CAPTURE                          VAL R26
      182 CAPTURE                          VAL R7
      183 CAPTURE                          VAL R14
      184 CAPTURE                          VAL R15
      185 CAPTURE                          VAL R13
      186 CAPTURE                          VAL R27
      187 SETTABLEKS                       R32 R28 K59 ["init"]
      189 DUPCLOSURE                       R32 K60 [PROTO_20]
      190 CAPTURE                          VAL R2
      191 CAPTURE                          VAL R6
      192 SETTABLEKS                       R32 R28 K61 ["renderButtons"]
      194 DUPCLOSURE                       R32 K62 [PROTO_30]
      195 CAPTURE                          VAL R7
      196 CAPTURE                          VAL R8
      197 CAPTURE                          VAL R10
      198 CAPTURE                          VAL R9
      199 CAPTURE                          VAL R12
      200 CAPTURE                          VAL R2
      201 CAPTURE                          VAL R21
      202 CAPTURE                          VAL R17
      203 CAPTURE                          VAL R19
      204 CAPTURE                          VAL R18
      205 CAPTURE                          VAL R20
      206 SETTABLEKS                       R32 R28 K63 ["render"]
      208 DUPCLOSURE                       R32 K64 [PROTO_31]
      209 SETTABLEKS                       R32 R28 K65 ["willUnmount"]
      211 RETURN                           R28 1
