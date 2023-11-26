PROTO_0:
  DUPTABLE R0 K1 [{"uiDmLoaded"}]
  LOADB R1 1
  SETTABLEKS R1 R0 K0 ["uiDmLoaded"]
  RETURN R0 1

PROTO_1:
  GETUPVAL R1 0
  DUPCLOSURE R3 K0 [PROTO_0]
  NAMECALL R1 R1 K1 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_2:
  DUPTABLE R0 K1 [{"uiDmLoaded"}]
  LOADB R1 0
  SETTABLEKS R1 R0 K0 ["uiDmLoaded"]
  RETURN R0 1

PROTO_3:
  GETUPVAL R1 0
  DUPCLOSURE R3 K0 [PROTO_2]
  NAMECALL R1 R1 K1 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_4:
  DUPTABLE R0 K1 [{"uiDmLoaded"}]
  LOADB R1 1
  SETTABLEKS R1 R0 K0 ["uiDmLoaded"]
  RETURN R0 1

PROTO_5:
  NEWTABLE R1 1 0
  GETUPVAL R2 0
  DUPTABLE R3 K1 [{"Enabled"}]
  GETUPVAL R4 1
  SETTABLEKS R4 R3 K0 ["Enabled"]
  SETTABLE R3 R1 R2
  RETURN R1 1

PROTO_6:
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["state"]
  GETTABLE R3 R4 R0
  GETTABLEKS R2 R3 K1 ["Enabled"]
  NOT R1 R2
  GETUPVAL R2 0
  NEWCLOSURE R4 P0
  CAPTURE VAL R0
  CAPTURE VAL R1
  NAMECALL R2 R2 K2 ["setState"]
  CALL R2 2 0
  RETURN R0 0

PROTO_7:
  NEWTABLE R1 1 0
  GETUPVAL R2 0
  DUPTABLE R3 K1 [{"Enabled"}]
  LOADB R4 0
  SETTABLEKS R4 R3 K0 ["Enabled"]
  SETTABLE R3 R1 R2
  RETURN R1 1

PROTO_8:
  GETUPVAL R1 0
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  NAMECALL R1 R1 K0 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_9:
  NEWTABLE R1 1 0
  GETUPVAL R2 0
  DUPTABLE R3 K1 [{"Enabled"}]
  GETUPVAL R4 1
  SETTABLEKS R4 R3 K0 ["Enabled"]
  SETTABLE R3 R1 R2
  RETURN R1 1

PROTO_10:
  GETUPVAL R2 0
  NEWCLOSURE R4 P0
  CAPTURE VAL R0
  CAPTURE VAL R1
  NAMECALL R2 R2 K0 ["setState"]
  CALL R2 2 0
  RETURN R0 0

PROTO_11:
  GETTABLEKS R2 R1 K0 ["Plugin"]
  DUPTABLE R3 K5 [{"callstackWindow", "breakpointsWindow", "watchWindow", "uiDmLoaded"}]
  DUPTABLE R4 K7 [{"Enabled"}]
  LOADB R5 0
  SETTABLEKS R5 R4 K6 ["Enabled"]
  SETTABLEKS R4 R3 K1 ["callstackWindow"]
  DUPTABLE R4 K7 [{"Enabled"}]
  LOADB R5 0
  SETTABLEKS R5 R4 K6 ["Enabled"]
  SETTABLEKS R4 R3 K2 ["breakpointsWindow"]
  DUPTABLE R4 K7 [{"Enabled"}]
  LOADB R5 0
  SETTABLEKS R5 R4 K6 ["Enabled"]
  SETTABLEKS R4 R3 K3 ["watchWindow"]
  LOADB R4 0
  SETTABLEKS R4 R3 K4 ["uiDmLoaded"]
  SETTABLEKS R3 R0 K8 ["state"]
  GETTABLEKS R3 R2 K9 ["MultipleDocumentInterfaceInstance"]
  GETTABLEKS R4 R3 K10 ["DataModelSessionStarted"]
  NEWCLOSURE R6 P0
  CAPTURE VAL R0
  NAMECALL R4 R4 K11 ["Connect"]
  CALL R4 2 0
  GETTABLEKS R4 R3 K12 ["DataModelSessionEnded"]
  NEWCLOSURE R6 P1
  CAPTURE VAL R0
  NAMECALL R4 R4 K11 ["Connect"]
  CALL R4 2 0
  GETTABLEKS R4 R3 K13 ["FocusedDataModelSession"]
  JUMPIFNOT R4 [+4]
  DUPCLOSURE R6 K14 [PROTO_4]
  NAMECALL R4 R0 K15 ["setState"]
  CALL R4 2 0
  NEWCLOSURE R4 P3
  CAPTURE VAL R0
  SETTABLEKS R4 R0 K16 ["toggleWidgetEnabled"]
  NEWCLOSURE R4 P4
  CAPTURE VAL R0
  SETTABLEKS R4 R0 K17 ["onWidgetClose"]
  NEWCLOSURE R4 P5
  CAPTURE VAL R0
  SETTABLEKS R4 R0 K18 ["setWidgetEnabledState"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K19 ["Store"]
  GETTABLEKS R4 R5 K20 ["new"]
  GETUPVAL R5 1
  LOADNIL R6
  GETUPVAL R7 2
  CALL R4 3 1
  SETTABLEKS R4 R0 K21 ["store"]
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K20 ["new"]
  GETTABLEKS R5 R0 K21 ["store"]
  CALL R4 1 1
  SETTABLEKS R4 R0 K22 ["debugConnectionListener"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K20 ["new"]
  GETTABLEKS R5 R0 K21 ["store"]
  CALL R4 1 1
  SETTABLEKS R4 R0 K23 ["metaBreakpointManagerListener"]
  GETUPVAL R5 5
  GETTABLEKS R4 R5 K20 ["new"]
  GETTABLEKS R5 R0 K21 ["store"]
  CALL R4 1 1
  SETTABLEKS R4 R0 K24 ["scriptChangeServiceListener"]
  GETUPVAL R5 6
  GETTABLEKS R4 R5 K20 ["new"]
  GETTABLEKS R5 R0 K21 ["store"]
  CALL R4 1 1
  SETTABLEKS R4 R0 K25 ["debuggerUIServiceListener"]
  GETUPVAL R6 7
  GETTABLEKS R5 R6 K26 ["Localization"]
  GETTABLEKS R4 R5 K20 ["new"]
  DUPTABLE R5 K30 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
  GETUPVAL R6 8
  SETTABLEKS R6 R5 K27 ["stringResourceTable"]
  GETUPVAL R6 9
  SETTABLEKS R6 R5 K28 ["translationResourceTable"]
  LOADK R6 K31 ["Debugger"]
  SETTABLEKS R6 R5 K29 ["pluginName"]
  CALL R4 1 1
  SETTABLEKS R4 R0 K32 ["localization"]
  GETUPVAL R4 10
  SETTABLEKS R4 R0 K33 ["analytics"]
  GETUPVAL R6 7
  GETTABLEKS R5 R6 K34 ["PluginActions"]
  GETTABLEKS R4 R5 K20 ["new"]
  GETTABLEKS R5 R1 K0 ["Plugin"]
  GETUPVAL R7 11
  GETTABLEKS R6 R7 K35 ["getActionsWithShortcuts"]
  GETTABLEKS R7 R0 K32 ["localization"]
  CALL R6 1 -1
  CALL R4 -1 1
  SETTABLEKS R4 R0 K36 ["pluginActions"]
  RETURN R0 0

PROTO_12:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["toggleWidgetEnabled"]
  LOADK R1 K1 ["callstackWindow"]
  CALL R0 1 0
  RETURN R0 0

PROTO_13:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["toggleWidgetEnabled"]
  LOADK R1 K1 ["breakpointsWindow"]
  CALL R0 1 0
  RETURN R0 0

PROTO_14:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["toggleWidgetEnabled"]
  LOADK R1 K1 ["watchWindow"]
  CALL R0 1 0
  RETURN R0 0

PROTO_15:
  GETTABLEKS R2 R0 K0 ["state"]
  GETTABLEKS R4 R2 K1 ["callstackWindow"]
  GETTABLEKS R3 R4 K2 ["Enabled"]
  GETTABLEKS R5 R2 K3 ["watchWindow"]
  GETTABLEKS R4 R5 K2 ["Enabled"]
  GETTABLEKS R6 R2 K4 ["breakpointsWindow"]
  GETTABLEKS R5 R6 K2 ["Enabled"]
  DUPTABLE R6 K8 [{"ToggleCallstack", "ToggleBreakpointsWindow", "ToggleWatchWindow"}]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K9 ["createElement"]
  GETUPVAL R8 1
  DUPTABLE R9 K18 [{"Name", "Toolbar", "Active", "Title", "Tooltip", "icon", "OnClick", "ClickableWhenViewportHidden"}]
  LOADK R10 K19 ["callStackDockWidgetActionV2"]
  SETTABLEKS R10 R9 K10 ["Name"]
  SETTABLEKS R1 R9 K11 ["Toolbar"]
  SETTABLEKS R3 R9 K12 ["Active"]
  LOADK R10 K20 ["Callstack"]
  SETTABLEKS R10 R9 K13 ["Title"]
  LOADK R10 K21 [""]
  SETTABLEKS R10 R9 K14 ["Tooltip"]
  LOADK R10 K22 ["rbxlocaltheme://CallStack"]
  SETTABLEKS R10 R9 K15 ["icon"]
  NEWCLOSURE R10 P0
  CAPTURE VAL R0
  SETTABLEKS R10 R9 K16 ["OnClick"]
  LOADB R10 1
  SETTABLEKS R10 R9 K17 ["ClickableWhenViewportHidden"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K5 ["ToggleCallstack"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K9 ["createElement"]
  GETUPVAL R8 1
  DUPTABLE R9 K18 [{"Name", "Toolbar", "Active", "Title", "Tooltip", "icon", "OnClick", "ClickableWhenViewportHidden"}]
  LOADK R10 K23 ["breakpointsDockWidgetActionV2"]
  SETTABLEKS R10 R9 K10 ["Name"]
  SETTABLEKS R1 R9 K11 ["Toolbar"]
  SETTABLEKS R5 R9 K12 ["Active"]
  LOADK R10 K24 ["Breakpoints"]
  SETTABLEKS R10 R9 K13 ["Title"]
  LOADK R10 K21 [""]
  SETTABLEKS R10 R9 K14 ["Tooltip"]
  LOADK R10 K25 ["rbxlocaltheme://Breakpoint"]
  SETTABLEKS R10 R9 K15 ["icon"]
  NEWCLOSURE R10 P1
  CAPTURE VAL R0
  SETTABLEKS R10 R9 K16 ["OnClick"]
  LOADB R10 1
  SETTABLEKS R10 R9 K17 ["ClickableWhenViewportHidden"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K6 ["ToggleBreakpointsWindow"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K9 ["createElement"]
  GETUPVAL R8 1
  DUPTABLE R9 K18 [{"Name", "Toolbar", "Active", "Title", "Tooltip", "icon", "OnClick", "ClickableWhenViewportHidden"}]
  LOADK R10 K26 ["watchDockWidgetActionV2"]
  SETTABLEKS R10 R9 K10 ["Name"]
  SETTABLEKS R1 R9 K11 ["Toolbar"]
  SETTABLEKS R4 R9 K12 ["Active"]
  LOADK R10 K27 ["Watch"]
  SETTABLEKS R10 R9 K13 ["Title"]
  LOADK R10 K21 [""]
  SETTABLEKS R10 R9 K14 ["Tooltip"]
  LOADK R10 K28 ["rbxlocaltheme://Watch"]
  SETTABLEKS R10 R9 K15 ["icon"]
  NEWCLOSURE R10 P2
  CAPTURE VAL R0
  SETTABLEKS R10 R9 K16 ["OnClick"]
  LOADB R10 1
  SETTABLEKS R10 R9 K17 ["ClickableWhenViewportHidden"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K7 ["ToggleWatchWindow"]
  RETURN R6 1

PROTO_16:
  GETUPVAL R1 0
  MOVE R3 R0
  NAMECALL R1 R1 K0 ["renderButtons"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_17:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["onWidgetClose"]
  LOADK R1 K1 ["callstackWindow"]
  CALL R0 1 0
  RETURN R0 0

PROTO_18:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["setWidgetEnabledState"]
  LOADK R2 K1 ["callstackWindow"]
  MOVE R3 R0
  CALL R1 2 0
  RETURN R0 0

PROTO_19:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["setWidgetEnabledState"]
  LOADK R2 K1 ["callstackWindow"]
  GETTABLEKS R3 R0 K2 ["Enabled"]
  CALL R1 2 0
  RETURN R0 0

PROTO_20:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["onWidgetClose"]
  LOADK R1 K1 ["breakpointsWindow"]
  CALL R0 1 0
  RETURN R0 0

PROTO_21:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["setWidgetEnabledState"]
  LOADK R2 K1 ["breakpointsWindow"]
  MOVE R3 R0
  CALL R1 2 0
  RETURN R0 0

PROTO_22:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["setWidgetEnabledState"]
  LOADK R2 K1 ["breakpointsWindow"]
  GETTABLEKS R3 R0 K2 ["Enabled"]
  CALL R1 2 0
  RETURN R0 0

PROTO_23:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["onWidgetClose"]
  LOADK R1 K1 ["watchWindow"]
  CALL R0 1 0
  RETURN R0 0

PROTO_24:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["setWidgetEnabledState"]
  LOADK R2 K1 ["watchWindow"]
  MOVE R3 R0
  CALL R1 2 0
  RETURN R0 0

PROTO_25:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["setWidgetEnabledState"]
  LOADK R2 K1 ["watchWindow"]
  GETTABLEKS R3 R0 K2 ["Enabled"]
  CALL R1 2 0
  RETURN R0 0

PROTO_26:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETTABLEKS R3 R1 K2 ["Plugin"]
  GETTABLEKS R4 R2 K3 ["uiDmLoaded"]
  JUMPIFNOT R4 [+7]
  GETTABLEKS R4 R2 K4 ["callstackWindow"]
  JUMPIFNOT R4 [+4]
  GETTABLEKS R5 R2 K4 ["callstackWindow"]
  GETTABLEKS R4 R5 K5 ["Enabled"]
  GETTABLEKS R5 R2 K3 ["uiDmLoaded"]
  JUMPIFNOT R5 [+7]
  GETTABLEKS R5 R2 K6 ["watchWindow"]
  JUMPIFNOT R5 [+4]
  GETTABLEKS R6 R2 K6 ["watchWindow"]
  GETTABLEKS R5 R6 K5 ["Enabled"]
  GETTABLEKS R6 R2 K3 ["uiDmLoaded"]
  JUMPIFNOT R6 [+7]
  GETTABLEKS R6 R2 K7 ["breakpointsWindow"]
  JUMPIFNOT R6 [+4]
  GETTABLEKS R7 R2 K7 ["breakpointsWindow"]
  GETTABLEKS R6 R7 K5 ["Enabled"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K8 ["provide"]
  NEWTABLE R8 0 7
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K9 ["new"]
  MOVE R10 R3
  CALL R9 1 1
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K9 ["new"]
  GETTABLEKS R11 R0 K10 ["store"]
  CALL R10 1 1
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K9 ["new"]
  NAMECALL R12 R3 K11 ["getMouse"]
  CALL R12 1 -1
  CALL R11 -1 1
  GETUPVAL R12 4
  CALL R12 0 1
  GETTABLEKS R13 R0 K12 ["localization"]
  GETTABLEKS R14 R0 K13 ["analytics"]
  GETTABLEKS R15 R0 K14 ["pluginActions"]
  SETLIST R8 R9 7 [1]
  DUPTABLE R9 K20 [{"Toolbar", "ToolbarWithRoduxConnection", "CallstackWindow", "BreakpointsWindow", "WatchWindow"}]
  GETUPVAL R11 5
  GETTABLEKS R10 R11 K21 ["createElement"]
  GETUPVAL R11 6
  DUPTABLE R12 K24 [{"Title", "RenderButtons"}]
  LOADK R13 K25 ["Debugger"]
  SETTABLEKS R13 R12 K22 ["Title"]
  NEWCLOSURE R13 P0
  CAPTURE VAL R0
  SETTABLEKS R13 R12 K23 ["RenderButtons"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K15 ["Toolbar"]
  GETUPVAL R11 5
  GETTABLEKS R10 R11 K21 ["createElement"]
  GETUPVAL R11 7
  CALL R10 1 1
  SETTABLEKS R10 R9 K16 ["ToolbarWithRoduxConnection"]
  GETUPVAL R11 5
  GETTABLEKS R10 R11 K21 ["createElement"]
  GETUPVAL R11 8
  DUPTABLE R12 K29 [{"Enabled", "OnClose", "OnRestore", "OnWidgetEnabledChanged"}]
  SETTABLEKS R4 R12 K5 ["Enabled"]
  NEWCLOSURE R13 P1
  CAPTURE VAL R0
  SETTABLEKS R13 R12 K26 ["OnClose"]
  NEWCLOSURE R13 P2
  CAPTURE VAL R0
  SETTABLEKS R13 R12 K27 ["OnRestore"]
  NEWCLOSURE R13 P3
  CAPTURE VAL R0
  SETTABLEKS R13 R12 K28 ["OnWidgetEnabledChanged"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K17 ["CallstackWindow"]
  GETUPVAL R11 5
  GETTABLEKS R10 R11 K21 ["createElement"]
  GETUPVAL R11 9
  DUPTABLE R12 K29 [{"Enabled", "OnClose", "OnRestore", "OnWidgetEnabledChanged"}]
  SETTABLEKS R6 R12 K5 ["Enabled"]
  NEWCLOSURE R13 P4
  CAPTURE VAL R0
  SETTABLEKS R13 R12 K26 ["OnClose"]
  NEWCLOSURE R13 P5
  CAPTURE VAL R0
  SETTABLEKS R13 R12 K27 ["OnRestore"]
  NEWCLOSURE R13 P6
  CAPTURE VAL R0
  SETTABLEKS R13 R12 K28 ["OnWidgetEnabledChanged"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K18 ["BreakpointsWindow"]
  GETUPVAL R11 5
  GETTABLEKS R10 R11 K21 ["createElement"]
  GETUPVAL R11 10
  DUPTABLE R12 K29 [{"Enabled", "OnClose", "OnRestore", "OnWidgetEnabledChanged"}]
  SETTABLEKS R5 R12 K5 ["Enabled"]
  NEWCLOSURE R13 P7
  CAPTURE VAL R0
  SETTABLEKS R13 R12 K26 ["OnClose"]
  NEWCLOSURE R13 P8
  CAPTURE VAL R0
  SETTABLEKS R13 R12 K27 ["OnRestore"]
  NEWCLOSURE R13 P9
  CAPTURE VAL R0
  SETTABLEKS R13 R12 K28 ["OnWidgetEnabledChanged"]
  DUPTABLE R13 K31 [{"Watch"}]
  GETUPVAL R15 5
  GETTABLEKS R14 R15 K21 ["createElement"]
  GETUPVAL R15 11
  CALL R14 1 1
  SETTABLEKS R14 R13 K30 ["Watch"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K19 ["WatchWindow"]
  CALL R7 2 -1
  RETURN R7 -1

PROTO_27:
  GETTABLEKS R1 R0 K0 ["debugConnectionListener"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K0 ["debugConnectionListener"]
  NAMECALL R1 R1 K1 ["destroy"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["debugConnectionListener"]
  GETTABLEKS R1 R0 K2 ["metaBreakpointManagerListener"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K2 ["metaBreakpointManagerListener"]
  NAMECALL R1 R1 K1 ["destroy"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K2 ["metaBreakpointManagerListener"]
  GETTABLEKS R1 R0 K3 ["scriptChangeServiceListener"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K3 ["scriptChangeServiceListener"]
  NAMECALL R1 R1 K1 ["destroy"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K3 ["scriptChangeServiceListener"]
  GETTABLEKS R1 R0 K4 ["debuggerUIServiceListener"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K4 ["debuggerUIServiceListener"]
  NAMECALL R1 R1 K1 ["destroy"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K4 ["debuggerUIServiceListener"]
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R1 R0 K3 ["Src"]
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K8 ["Rodux"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K6 ["Packages"]
  GETTABLEKS R5 R6 K9 ["Framework"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K10 ["UI"]
  GETTABLEKS R6 R5 K11 ["PluginButton"]
  GETTABLEKS R7 R5 K12 ["PluginToolbar"]
  GETTABLEKS R8 R4 K13 ["ContextServices"]
  GETTABLEKS R9 R8 K14 ["Plugin"]
  GETTABLEKS R10 R8 K15 ["Mouse"]
  GETTABLEKS R11 R8 K16 ["Store"]
  GETIMPORT R12 K5 [require]
  GETTABLEKS R14 R1 K17 ["Reducers"]
  GETTABLEKS R13 R14 K18 ["MainReducer"]
  CALL R12 1 1
  GETIMPORT R13 K5 [require]
  GETTABLEKS R15 R1 K19 ["Resources"]
  GETTABLEKS R14 R15 K20 ["MakeTheme"]
  CALL R13 1 1
  GETIMPORT R14 K5 [require]
  GETTABLEKS R16 R1 K19 ["Resources"]
  GETTABLEKS R15 R16 K21 ["AnalyticsHolder"]
  CALL R14 1 1
  GETTABLEKS R17 R1 K19 ["Resources"]
  GETTABLEKS R16 R17 K22 ["Localization"]
  GETTABLEKS R15 R16 K23 ["SourceStrings"]
  GETTABLEKS R18 R1 K19 ["Resources"]
  GETTABLEKS R17 R18 K22 ["Localization"]
  GETTABLEKS R16 R17 K24 ["LocalizedStrings"]
  GETTABLEKS R17 R1 K25 ["Components"]
  GETIMPORT R18 K5 [require]
  GETTABLEKS R20 R17 K26 ["Callstack"]
  GETTABLEKS R19 R20 K27 ["CallstackWindow"]
  CALL R18 1 1
  GETIMPORT R19 K5 [require]
  GETTABLEKS R21 R17 K28 ["Watch"]
  GETTABLEKS R20 R21 K29 ["WatchWindow"]
  CALL R19 1 1
  GETIMPORT R20 K5 [require]
  GETTABLEKS R22 R17 K30 ["Breakpoints"]
  GETTABLEKS R21 R22 K31 ["BreakpointsWindow"]
  CALL R20 1 1
  GETIMPORT R21 K5 [require]
  GETTABLEKS R23 R17 K28 ["Watch"]
  GETTABLEKS R22 R23 K32 ["WatchComponent"]
  CALL R21 1 1
  GETIMPORT R22 K5 [require]
  GETTABLEKS R24 R17 K33 ["Common"]
  GETTABLEKS R23 R24 K34 ["DebuggerToolbarButtons"]
  CALL R22 1 1
  GETIMPORT R23 K5 [require]
  GETTABLEKS R25 R1 K35 ["Middleware"]
  GETTABLEKS R24 R25 K36 ["MainMiddleware"]
  CALL R23 1 1
  GETIMPORT R24 K5 [require]
  GETTABLEKS R27 R1 K37 ["Util"]
  GETTABLEKS R26 R27 K38 ["DebugConnectionListener"]
  GETTABLEKS R25 R26 K38 ["DebugConnectionListener"]
  CALL R24 1 1
  GETIMPORT R25 K5 [require]
  GETTABLEKS R28 R1 K37 ["Util"]
  GETTABLEKS R27 R28 K39 ["MetaBreakpointManagerListener"]
  GETTABLEKS R26 R27 K39 ["MetaBreakpointManagerListener"]
  CALL R25 1 1
  GETIMPORT R26 K5 [require]
  GETTABLEKS R29 R1 K37 ["Util"]
  GETTABLEKS R28 R29 K40 ["CrossDMScriptChangeListener"]
  GETTABLEKS R27 R28 K40 ["CrossDMScriptChangeListener"]
  CALL R26 1 1
  GETIMPORT R27 K5 [require]
  GETTABLEKS R30 R1 K37 ["Util"]
  GETTABLEKS R29 R30 K41 ["DebuggerUIServiceListener"]
  GETTABLEKS R28 R29 K41 ["DebuggerUIServiceListener"]
  CALL R27 1 1
  GETIMPORT R28 K5 [require]
  GETTABLEKS R30 R1 K37 ["Util"]
  GETTABLEKS R29 R30 K42 ["MakePluginActions"]
  CALL R28 1 1
  GETTABLEKS R29 R2 K43 ["PureComponent"]
  LOADK R31 K44 ["MainPlugin"]
  NAMECALL R29 R29 K45 ["extend"]
  CALL R29 2 1
  DUPCLOSURE R30 K46 [PROTO_11]
  CAPTURE VAL R3
  CAPTURE VAL R12
  CAPTURE VAL R23
  CAPTURE VAL R24
  CAPTURE VAL R25
  CAPTURE VAL R26
  CAPTURE VAL R27
  CAPTURE VAL R8
  CAPTURE VAL R15
  CAPTURE VAL R16
  CAPTURE VAL R14
  CAPTURE VAL R28
  SETTABLEKS R30 R29 K47 ["init"]
  DUPCLOSURE R30 K48 [PROTO_15]
  CAPTURE VAL R2
  CAPTURE VAL R6
  SETTABLEKS R30 R29 K49 ["renderButtons"]
  DUPCLOSURE R30 K50 [PROTO_26]
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R11
  CAPTURE VAL R10
  CAPTURE VAL R13
  CAPTURE VAL R2
  CAPTURE VAL R7
  CAPTURE VAL R22
  CAPTURE VAL R18
  CAPTURE VAL R20
  CAPTURE VAL R19
  CAPTURE VAL R21
  SETTABLEKS R30 R29 K51 ["render"]
  DUPCLOSURE R30 K52 [PROTO_27]
  SETTABLEKS R30 R29 K53 ["willUnmount"]
  RETURN R29 1
