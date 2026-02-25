PROTO_0:
        0 DUPTABLE                         R0 K1 [{"uiDmLoaded"}]
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["uiDmLoaded"]
        4 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 DUPCLOSURE                       R3 K0 [PROTO_0]
        2 NAMECALL                         R1 R1 K1 ["setState"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R0 K1 [{"uiDmLoaded"}]
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["uiDmLoaded"]
        4 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 DUPCLOSURE                       R3 K0 [PROTO_2]
        2 NAMECALL                         R1 R1 K1 ["setState"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R0 K1 [{"uiDmLoaded"}]
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["uiDmLoaded"]
        4 RETURN                           R0 1

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
        4 GETUPVAL                         R8 1
        5 GETTABLEKS                       R7 R8 K2 ["state"]
        7 GETUPVAL                         R8 0
        8 GETTABLE                         R6 R7 R8
        9 GETTABLEKS                       R5 R6 K0 ["Enabled"]
       11 NOT                              R4 R5
       12 SETTABLEKS                       R4 R3 K0 ["Enabled"]
       14 SETTABLE                         R3 R1 R2
       15 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["state"]
        3 GETTABLE                         R3 R4 R1
        4 GETTABLEKS                       R2 R3 K1 ["Enabled"]
        6 JUMPIFEQ                         R0 R2 ; [+8]
        8 GETUPVAL                         R2 0
        9 NEWCLOSURE                       R4 P0
       10 CAPTURE                          VAL R1
       11 CAPTURE                          UPVAL U0
       12 NAMECALL                         R2 R2 K2 ["setState"]
       14 CALL                             R2 2 0
       15 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["onToggleEnabled"]
        3 GETTABLEKS                       R2 R0 K1 ["Checked"]
        5 LOADK                            R3 K2 ["callstackWindow"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["onToggleEnabled"]
        3 GETTABLEKS                       R2 R0 K1 ["Checked"]
        5 LOADK                            R3 K2 ["breakpointsWindow"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["onToggleEnabled"]
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
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["state"]
        3 GETTABLE                         R2 R3 R0
        4 GETTABLEKS                       R1 R2 K1 ["Enabled"]
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
        1 GETUPVAL                         R3 1
        2 NEWTABLE                         R5 0 1
        4 GETUPVAL                         R7 2
        5 GETUPVAL                         R8 3
        6 GETTABLE                         R6 R7 R8
        7 SETLIST                          R5 R6 1 [1]
        9 NAMECALL                         R3 R3 K0 ["GetAsync"]
       11 CALL                             R3 2 1
       12 GETTABLEN                        R2 R3 1
       13 GETTABLEKS                       R1 R2 K1 ["Checked"]
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
       28 DUPTABLE                         R6 K9 [{"callstackWindow", "breakpointsWindow", "watchWindow", "uiDmLoaded"}]
       29 DUPTABLE                         R7 K11 [{"Enabled"}]
       30 GETTABLEN                        R9 R5 1
       31 GETTABLEKS                       R8 R9 K12 ["Checked"]
       33 SETTABLEKS                       R8 R7 K10 ["Enabled"]
       35 SETTABLEKS                       R7 R6 K3 ["callstackWindow"]
       37 DUPTABLE                         R7 K11 [{"Enabled"}]
       38 GETTABLEN                        R9 R5 2
       39 GETTABLEKS                       R8 R9 K12 ["Checked"]
       41 SETTABLEKS                       R8 R7 K10 ["Enabled"]
       43 SETTABLEKS                       R7 R6 K4 ["breakpointsWindow"]
       45 DUPTABLE                         R7 K11 [{"Enabled"}]
       46 GETTABLEN                        R9 R5 3
       47 GETTABLEKS                       R8 R9 K12 ["Checked"]
       49 SETTABLEKS                       R8 R7 K10 ["Enabled"]
       51 SETTABLEKS                       R7 R6 K5 ["watchWindow"]
       53 LOADB                            R7 0
       54 SETTABLEKS                       R7 R6 K8 ["uiDmLoaded"]
       56 SETTABLEKS                       R6 R0 K13 ["state"]
       58 GETTABLEKS                       R6 R3 K14 ["MultipleDocumentInterfaceInstance"]
       60 GETTABLEKS                       R7 R6 K15 ["DataModelSessionStarted"]
       62 NEWCLOSURE                       R9 P0
       63 CAPTURE                          VAL R0
       64 NAMECALL                         R7 R7 K16 ["Connect"]
       66 CALL                             R7 2 0
       67 GETTABLEKS                       R7 R6 K17 ["DataModelSessionEnded"]
       69 NEWCLOSURE                       R9 P1
       70 CAPTURE                          VAL R0
       71 NAMECALL                         R7 R7 K16 ["Connect"]
       73 CALL                             R7 2 0
       74 GETTABLEKS                       R7 R6 K18 ["FocusedDataModelSession"]
       76 JUMPIFNOT                        R7 ; [+4]
       77 DUPCLOSURE                       R9 K19 [PROTO_4]
       78 NAMECALL                         R7 R0 K20 ["setState"]
       80 CALL                             R7 2 0
       81 NEWCLOSURE                       R7 P3
       82 CAPTURE                          VAL R2
       83 CAPTURE                          VAL R4
       84 SETTABLEKS                       R7 R0 K21 ["toggleWidgetEnabled"]
       86 NEWCLOSURE                       R7 P4
       87 CAPTURE                          VAL R0
       88 SETTABLEKS                       R7 R0 K22 ["onToggleEnabled"]
       90 NEWTABLE                         R7 0 3
       92 GETUPVAL                         R10 0
       93 NAMECALL                         R8 R2 K23 ["BindToChangedAsync"]
       95 CALL                             R8 2 1
       96 NEWCLOSURE                       R10 P5
       97 CAPTURE                          VAL R0
       98 NAMECALL                         R8 R8 K16 ["Connect"]
      100 CALL                             R8 2 1
      101 GETUPVAL                         R11 1
      102 NAMECALL                         R9 R2 K23 ["BindToChangedAsync"]
      104 CALL                             R9 2 1
      105 NEWCLOSURE                       R11 P6
      106 CAPTURE                          VAL R0
      107 NAMECALL                         R9 R9 K16 ["Connect"]
      109 CALL                             R9 2 1
      110 GETUPVAL                         R12 2
      111 NAMECALL                         R10 R2 K23 ["BindToChangedAsync"]
      113 CALL                             R10 2 1
      114 NEWCLOSURE                       R12 P7
      115 CAPTURE                          VAL R0
      116 NAMECALL                         R10 R10 K16 ["Connect"]
      118 CALL                             R10 2 -1
      119 SETLIST                          R7 R8 -1 [1]
      121 SETTABLEKS                       R7 R0 K24 ["onActionActivatedConnections"]
      123 NEWCLOSURE                       R7 P8
      124 CAPTURE                          VAL R0
      125 CAPTURE                          VAL R2
      126 CAPTURE                          VAL R4
      127 SETTABLEKS                       R7 R0 K25 ["onWidgetClose"]
      129 NEWCLOSURE                       R7 P9
      130 CAPTURE                          VAL R2
      131 CAPTURE                          VAL R4
      132 SETTABLEKS                       R7 R0 K26 ["setWidgetEnabledState"]
      134 GETUPVAL                         R9 3
      135 GETTABLEKS                       R8 R9 K27 ["Store"]
      137 GETTABLEKS                       R7 R8 K28 ["new"]
      139 GETUPVAL                         R8 4
      140 LOADNIL                          R9
      141 GETUPVAL                         R10 5
      142 CALL                             R7 3 1
      143 SETTABLEKS                       R7 R0 K29 ["store"]
      145 GETUPVAL                         R8 6
      146 GETTABLEKS                       R7 R8 K28 ["new"]
      148 GETTABLEKS                       R8 R0 K29 ["store"]
      150 CALL                             R7 1 1
      151 SETTABLEKS                       R7 R0 K30 ["debugConnectionListener"]
      153 GETUPVAL                         R8 7
      154 GETTABLEKS                       R7 R8 K28 ["new"]
      156 GETTABLEKS                       R8 R0 K29 ["store"]
      158 CALL                             R7 1 1
      159 SETTABLEKS                       R7 R0 K31 ["metaBreakpointManagerListener"]
      161 GETUPVAL                         R8 8
      162 GETTABLEKS                       R7 R8 K28 ["new"]
      164 GETTABLEKS                       R8 R0 K29 ["store"]
      166 CALL                             R7 1 1
      167 SETTABLEKS                       R7 R0 K32 ["scriptChangeServiceListener"]
      169 GETUPVAL                         R8 9
      170 GETTABLEKS                       R7 R8 K28 ["new"]
      172 GETTABLEKS                       R8 R0 K29 ["store"]
      174 CALL                             R7 1 1
      175 SETTABLEKS                       R7 R0 K33 ["debuggerUIServiceListener"]
      177 GETUPVAL                         R9 10
      178 GETTABLEKS                       R8 R9 K34 ["Localization"]
      180 GETTABLEKS                       R7 R8 K28 ["new"]
      182 DUPTABLE                         R8 K38 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
      183 GETUPVAL                         R9 11
      184 SETTABLEKS                       R9 R8 K35 ["stringResourceTable"]
      186 GETUPVAL                         R9 12
      187 SETTABLEKS                       R9 R8 K36 ["translationResourceTable"]
      189 LOADK                            R9 K39 ["Debugger"]
      190 SETTABLEKS                       R9 R8 K37 ["pluginName"]
      192 CALL                             R7 1 1
      193 SETTABLEKS                       R7 R0 K40 ["localization"]
      195 GETUPVAL                         R7 13
      196 SETTABLEKS                       R7 R0 K41 ["analytics"]
      198 GETUPVAL                         R9 10
      199 GETTABLEKS                       R8 R9 K42 ["PluginActions"]
      201 GETTABLEKS                       R7 R8 K28 ["new"]
      203 GETTABLEKS                       R8 R1 K0 ["Plugin"]
      205 GETUPVAL                         R10 14
      206 GETTABLEKS                       R9 R10 K43 ["getActionsWithShortcuts"]
      208 GETTABLEKS                       R10 R0 K40 ["localization"]
      210 CALL                             R9 1 -1
      211 CALL                             R7 -1 1
      212 SETTABLEKS                       R7 R0 K44 ["pluginActions"]
      214 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["toggleWidgetEnabled"]
        3 LOADK                            R1 K1 ["callstackWindow"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["toggleWidgetEnabled"]
        3 LOADK                            R1 K1 ["breakpointsWindow"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["toggleWidgetEnabled"]
        3 LOADK                            R1 K1 ["watchWindow"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_20:
        0 GETTABLEKS                       R2 R0 K0 ["state"]
        2 GETTABLEKS                       R4 R2 K1 ["callstackWindow"]
        4 GETTABLEKS                       R3 R4 K2 ["Enabled"]
        6 GETTABLEKS                       R5 R2 K3 ["watchWindow"]
        8 GETTABLEKS                       R4 R5 K2 ["Enabled"]
       10 GETTABLEKS                       R6 R2 K4 ["breakpointsWindow"]
       12 GETTABLEKS                       R5 R6 K2 ["Enabled"]
       14 DUPTABLE                         R6 K8 [{"ToggleCallstack", "ToggleBreakpointsWindow", "ToggleWatchWindow"}]
       15 GETUPVAL                         R8 0
       16 GETTABLEKS                       R7 R8 K9 ["createElement"]
       18 GETUPVAL                         R8 1
       19 DUPTABLE                         R9 K17 [{"Name", "Toolbar", "Active", "Title", "Tooltip", "OnClick", "ClickableWhenViewportHidden"}]
       20 LOADK                            R10 K18 ["callStackDockWidgetActionV2"]
       21 SETTABLEKS                       R10 R9 K10 ["Name"]
       23 SETTABLEKS                       R1 R9 K11 ["Toolbar"]
       25 SETTABLEKS                       R3 R9 K12 ["Active"]
       27 LOADK                            R10 K19 ["Callstack"]
       28 SETTABLEKS                       R10 R9 K13 ["Title"]
       30 LOADK                            R10 K20 [""]
       31 SETTABLEKS                       R10 R9 K14 ["Tooltip"]
       33 NEWCLOSURE                       R10 P0
       34 CAPTURE                          VAL R0
       35 SETTABLEKS                       R10 R9 K15 ["OnClick"]
       37 LOADB                            R10 1
       38 SETTABLEKS                       R10 R9 K16 ["ClickableWhenViewportHidden"]
       40 CALL                             R7 2 1
       41 SETTABLEKS                       R7 R6 K5 ["ToggleCallstack"]
       43 GETUPVAL                         R8 0
       44 GETTABLEKS                       R7 R8 K9 ["createElement"]
       46 GETUPVAL                         R8 1
       47 DUPTABLE                         R9 K17 [{"Name", "Toolbar", "Active", "Title", "Tooltip", "OnClick", "ClickableWhenViewportHidden"}]
       48 LOADK                            R10 K21 ["breakpointsDockWidgetActionV2"]
       49 SETTABLEKS                       R10 R9 K10 ["Name"]
       51 SETTABLEKS                       R1 R9 K11 ["Toolbar"]
       53 SETTABLEKS                       R5 R9 K12 ["Active"]
       55 LOADK                            R10 K22 ["Breakpoints"]
       56 SETTABLEKS                       R10 R9 K13 ["Title"]
       58 LOADK                            R10 K20 [""]
       59 SETTABLEKS                       R10 R9 K14 ["Tooltip"]
       61 NEWCLOSURE                       R10 P1
       62 CAPTURE                          VAL R0
       63 SETTABLEKS                       R10 R9 K15 ["OnClick"]
       65 LOADB                            R10 1
       66 SETTABLEKS                       R10 R9 K16 ["ClickableWhenViewportHidden"]
       68 CALL                             R7 2 1
       69 SETTABLEKS                       R7 R6 K6 ["ToggleBreakpointsWindow"]
       71 GETUPVAL                         R8 0
       72 GETTABLEKS                       R7 R8 K9 ["createElement"]
       74 GETUPVAL                         R8 1
       75 DUPTABLE                         R9 K17 [{"Name", "Toolbar", "Active", "Title", "Tooltip", "OnClick", "ClickableWhenViewportHidden"}]
       76 LOADK                            R10 K23 ["watchDockWidgetActionV2"]
       77 SETTABLEKS                       R10 R9 K10 ["Name"]
       79 SETTABLEKS                       R1 R9 K11 ["Toolbar"]
       81 SETTABLEKS                       R4 R9 K12 ["Active"]
       83 LOADK                            R10 K24 ["Watch"]
       84 SETTABLEKS                       R10 R9 K13 ["Title"]
       86 LOADK                            R10 K20 [""]
       87 SETTABLEKS                       R10 R9 K14 ["Tooltip"]
       89 NEWCLOSURE                       R10 P2
       90 CAPTURE                          VAL R0
       91 SETTABLEKS                       R10 R9 K15 ["OnClick"]
       93 LOADB                            R10 1
       94 SETTABLEKS                       R10 R9 K16 ["ClickableWhenViewportHidden"]
       96 CALL                             R7 2 1
       97 SETTABLEKS                       R7 R6 K7 ["ToggleWatchWindow"]
       99 RETURN                           R6 1

PROTO_21:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["onWidgetClose"]
        3 LOADK                            R1 K1 ["callstackWindow"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["setWidgetEnabledState"]
        3 LOADK                            R2 K1 ["callstackWindow"]
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["setWidgetEnabledState"]
        3 LOADK                            R2 K1 ["callstackWindow"]
        4 GETTABLEKS                       R3 R0 K2 ["Enabled"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["onWidgetClose"]
        3 LOADK                            R1 K1 ["breakpointsWindow"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["setWidgetEnabledState"]
        3 LOADK                            R2 K1 ["breakpointsWindow"]
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["setWidgetEnabledState"]
        3 LOADK                            R2 K1 ["breakpointsWindow"]
        4 GETTABLEKS                       R3 R0 K2 ["Enabled"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["onWidgetClose"]
        3 LOADK                            R1 K1 ["watchWindow"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["setWidgetEnabledState"]
        3 LOADK                            R2 K1 ["watchWindow"]
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["setWidgetEnabledState"]
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
       12 GETTABLEKS                       R5 R2 K4 ["callstackWindow"]
       14 GETTABLEKS                       R4 R5 K5 ["Enabled"]
       16 GETTABLEKS                       R5 R2 K3 ["uiDmLoaded"]
       18 JUMPIFNOT                        R5 ; [+7]
       19 GETTABLEKS                       R5 R2 K6 ["watchWindow"]
       21 JUMPIFNOT                        R5 ; [+4]
       22 GETTABLEKS                       R6 R2 K6 ["watchWindow"]
       24 GETTABLEKS                       R5 R6 K5 ["Enabled"]
       26 GETTABLEKS                       R6 R2 K3 ["uiDmLoaded"]
       28 JUMPIFNOT                        R6 ; [+7]
       29 GETTABLEKS                       R6 R2 K7 ["breakpointsWindow"]
       31 JUMPIFNOT                        R6 ; [+4]
       32 GETTABLEKS                       R7 R2 K7 ["breakpointsWindow"]
       34 GETTABLEKS                       R6 R7 K5 ["Enabled"]
       36 GETUPVAL                         R8 0
       37 GETTABLEKS                       R7 R8 K8 ["provide"]
       39 NEWTABLE                         R8 0 7
       41 GETUPVAL                         R10 1
       42 GETTABLEKS                       R9 R10 K9 ["new"]
       44 MOVE                             R10 R3
       45 CALL                             R9 1 1
       46 GETUPVAL                         R11 2
       47 GETTABLEKS                       R10 R11 K9 ["new"]
       49 GETTABLEKS                       R11 R0 K10 ["store"]
       51 CALL                             R10 1 1
       52 GETUPVAL                         R12 3
       53 GETTABLEKS                       R11 R12 K9 ["new"]
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
       70 GETUPVAL                         R11 5
       71 GETTABLEKS                       R10 R11 K20 ["createElement"]
       73 GETUPVAL                         R11 6
       74 CALL                             R10 1 1
       75 SETTABLEKS                       R10 R9 K15 ["ToolbarWithRoduxConnection"]
       77 GETUPVAL                         R11 5
       78 GETTABLEKS                       R10 R11 K20 ["createElement"]
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
       99 GETUPVAL                         R11 5
      100 GETTABLEKS                       R10 R11 K20 ["createElement"]
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
      121 GETUPVAL                         R11 5
      122 GETTABLEKS                       R10 R11 K20 ["createElement"]
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
      141 GETUPVAL                         R15 5
      142 GETTABLEKS                       R14 R15 K20 ["createElement"]
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
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K3 ["Src"]
        9 GETIMPORT                        R2 K5 [require]
       11 GETTABLEKS                       R4 R0 K6 ["Packages"]
       13 GETTABLEKS                       R3 R4 K7 ["Roact"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R5 R0 K6 ["Packages"]
       20 GETTABLEKS                       R4 R5 K8 ["Rodux"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R6 R0 K6 ["Packages"]
       27 GETTABLEKS                       R5 R6 K9 ["Framework"]
       29 CALL                             R4 1 1
       30 GETTABLEKS                       R5 R4 K10 ["UI"]
       32 GETTABLEKS                       R6 R5 K11 ["PluginButton"]
       34 GETTABLEKS                       R7 R4 K12 ["ContextServices"]
       36 GETTABLEKS                       R8 R7 K13 ["Plugin"]
       38 GETTABLEKS                       R9 R7 K14 ["Mouse"]
       40 GETTABLEKS                       R10 R7 K15 ["Store"]
       42 GETIMPORT                        R11 K5 [require]
       44 GETTABLEKS                       R13 R1 K16 ["Reducers"]
       46 GETTABLEKS                       R12 R13 K17 ["MainReducer"]
       48 CALL                             R11 1 1
       49 GETIMPORT                        R12 K5 [require]
       51 GETTABLEKS                       R14 R1 K18 ["Resources"]
       53 GETTABLEKS                       R13 R14 K19 ["MakeTheme"]
       55 CALL                             R12 1 1
       56 GETIMPORT                        R13 K5 [require]
       58 GETTABLEKS                       R15 R1 K18 ["Resources"]
       60 GETTABLEKS                       R14 R15 K20 ["AnalyticsHolder"]
       62 CALL                             R13 1 1
       63 GETTABLEKS                       R16 R1 K18 ["Resources"]
       65 GETTABLEKS                       R15 R16 K21 ["Localization"]
       67 GETTABLEKS                       R14 R15 K22 ["SourceStrings"]
       69 GETTABLEKS                       R17 R1 K18 ["Resources"]
       71 GETTABLEKS                       R16 R17 K21 ["Localization"]
       73 GETTABLEKS                       R15 R16 K23 ["LocalizedStrings"]
       75 GETTABLEKS                       R16 R1 K24 ["Components"]
       77 GETIMPORT                        R17 K5 [require]
       79 GETTABLEKS                       R19 R16 K25 ["Callstack"]
       81 GETTABLEKS                       R18 R19 K26 ["CallstackWindow"]
       83 CALL                             R17 1 1
       84 GETIMPORT                        R18 K5 [require]
       86 GETTABLEKS                       R20 R16 K27 ["Watch"]
       88 GETTABLEKS                       R19 R20 K28 ["WatchWindow"]
       90 CALL                             R18 1 1
       91 GETIMPORT                        R19 K5 [require]
       93 GETTABLEKS                       R21 R16 K29 ["Breakpoints"]
       95 GETTABLEKS                       R20 R21 K30 ["BreakpointsWindow"]
       97 CALL                             R19 1 1
       98 GETIMPORT                        R20 K5 [require]
      100 GETTABLEKS                       R22 R16 K27 ["Watch"]
      102 GETTABLEKS                       R21 R22 K31 ["WatchComponent"]
      104 CALL                             R20 1 1
      105 GETIMPORT                        R21 K5 [require]
      107 GETTABLEKS                       R23 R16 K32 ["Common"]
      109 GETTABLEKS                       R22 R23 K33 ["DebuggerToolbarButtons"]
      111 CALL                             R21 1 1
      112 GETIMPORT                        R22 K5 [require]
      114 GETTABLEKS                       R24 R1 K34 ["Middleware"]
      116 GETTABLEKS                       R23 R24 K35 ["MainMiddleware"]
      118 CALL                             R22 1 1
      119 GETIMPORT                        R23 K5 [require]
      121 GETTABLEKS                       R26 R1 K36 ["Util"]
      123 GETTABLEKS                       R25 R26 K37 ["DebugConnectionListener"]
      125 GETTABLEKS                       R24 R25 K37 ["DebugConnectionListener"]
      127 CALL                             R23 1 1
      128 GETIMPORT                        R24 K5 [require]
      130 GETTABLEKS                       R27 R1 K36 ["Util"]
      132 GETTABLEKS                       R26 R27 K38 ["MetaBreakpointManagerListener"]
      134 GETTABLEKS                       R25 R26 K38 ["MetaBreakpointManagerListener"]
      136 CALL                             R24 1 1
      137 GETIMPORT                        R25 K5 [require]
      139 GETTABLEKS                       R28 R1 K36 ["Util"]
      141 GETTABLEKS                       R27 R28 K39 ["CrossDMScriptChangeListener"]
      143 GETTABLEKS                       R26 R27 K39 ["CrossDMScriptChangeListener"]
      145 CALL                             R25 1 1
      146 GETIMPORT                        R26 K5 [require]
      148 GETTABLEKS                       R29 R1 K36 ["Util"]
      150 GETTABLEKS                       R28 R29 K40 ["DebuggerUIServiceListener"]
      152 GETTABLEKS                       R27 R28 K40 ["DebuggerUIServiceListener"]
      154 CALL                             R26 1 1
      155 GETIMPORT                        R27 K5 [require]
      157 GETTABLEKS                       R29 R1 K36 ["Util"]
      159 GETTABLEKS                       R28 R29 K41 ["MakePluginActions"]
      161 CALL                             R27 1 1
      162 GETTABLEKS                       R28 R2 K42 ["PureComponent"]
      164 LOADK                            R30 K43 ["MainPlugin"]
      165 NAMECALL                         R28 R28 K44 ["extend"]
      167 CALL                             R28 2 1
      168 DUPTABLE                         R29 K50 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
      169 LOADK                            R30 K51 ["Standalone"]
      170 SETTABLEKS                       R30 R29 K45 ["DataModel"]
      172 LOADK                            R30 K52 ["Unknown"]
      173 SETTABLEKS                       R30 R29 K46 ["PluginType"]
      175 LOADK                            R30 K53 ["CallStack"]
      176 SETTABLEKS                       R30 R29 K47 ["PluginId"]
      178 LOADK                            R30 K54 ["Actions"]
      179 SETTABLEKS                       R30 R29 K48 ["Category"]
      181 LOADK                            R30 K55 ["Toggle"]
      182 SETTABLEKS                       R30 R29 K49 ["ItemId"]
      184 DUPTABLE                         R30 K50 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
      185 LOADK                            R31 K51 ["Standalone"]
      186 SETTABLEKS                       R31 R30 K45 ["DataModel"]
      188 LOADK                            R31 K52 ["Unknown"]
      189 SETTABLEKS                       R31 R30 K46 ["PluginType"]
      191 LOADK                            R31 K29 ["Breakpoints"]
      192 SETTABLEKS                       R31 R30 K47 ["PluginId"]
      194 LOADK                            R31 K54 ["Actions"]
      195 SETTABLEKS                       R31 R30 K48 ["Category"]
      197 LOADK                            R31 K55 ["Toggle"]
      198 SETTABLEKS                       R31 R30 K49 ["ItemId"]
      200 DUPTABLE                         R31 K50 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
      201 LOADK                            R32 K51 ["Standalone"]
      202 SETTABLEKS                       R32 R31 K45 ["DataModel"]
      204 LOADK                            R32 K52 ["Unknown"]
      205 SETTABLEKS                       R32 R31 K46 ["PluginType"]
      207 LOADK                            R32 K27 ["Watch"]
      208 SETTABLEKS                       R32 R31 K47 ["PluginId"]
      210 LOADK                            R32 K54 ["Actions"]
      211 SETTABLEKS                       R32 R31 K48 ["Category"]
      213 LOADK                            R32 K55 ["Toggle"]
      214 SETTABLEKS                       R32 R31 K49 ["ItemId"]
      216 DUPCLOSURE                       R32 K56 [PROTO_16]
      217 CAPTURE                          VAL R29
      218 CAPTURE                          VAL R30
      219 CAPTURE                          VAL R31
      220 CAPTURE                          VAL R3
      221 CAPTURE                          VAL R11
      222 CAPTURE                          VAL R22
      223 CAPTURE                          VAL R23
      224 CAPTURE                          VAL R24
      225 CAPTURE                          VAL R25
      226 CAPTURE                          VAL R26
      227 CAPTURE                          VAL R7
      228 CAPTURE                          VAL R14
      229 CAPTURE                          VAL R15
      230 CAPTURE                          VAL R13
      231 CAPTURE                          VAL R27
      232 SETTABLEKS                       R32 R28 K57 ["init"]
      234 DUPCLOSURE                       R32 K58 [PROTO_20]
      235 CAPTURE                          VAL R2
      236 CAPTURE                          VAL R6
      237 SETTABLEKS                       R32 R28 K59 ["renderButtons"]
      239 DUPCLOSURE                       R32 K60 [PROTO_30]
      240 CAPTURE                          VAL R7
      241 CAPTURE                          VAL R8
      242 CAPTURE                          VAL R10
      243 CAPTURE                          VAL R9
      244 CAPTURE                          VAL R12
      245 CAPTURE                          VAL R2
      246 CAPTURE                          VAL R21
      247 CAPTURE                          VAL R17
      248 CAPTURE                          VAL R19
      249 CAPTURE                          VAL R18
      250 CAPTURE                          VAL R20
      251 SETTABLEKS                       R32 R28 K61 ["render"]
      253 DUPCLOSURE                       R32 K62 [PROTO_31]
      254 SETTABLEKS                       R32 R28 K63 ["willUnmount"]
      256 RETURN                           R28 1
