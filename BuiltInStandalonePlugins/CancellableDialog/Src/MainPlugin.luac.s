PROTO_0:
  NEWTABLE R0 0 0
  RETURN R0 1

PROTO_1:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"title"}]
  SETTABLEKS R0 R3 K0 ["title"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"subtitle"}]
  SETTABLEKS R0 R3 K0 ["subtitle"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["state"]
  GETTABLEKS R1 R2 K1 ["cancelRequested"]
  JUMPIFNOT R1 [+1]
  RETURN R0 0
  GETUPVAL R1 0
  DUPTABLE R3 K3 [{"status"}]
  SETTABLEKS R0 R3 K2 ["status"]
  NAMECALL R1 R1 K4 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  DUPTABLE R3 K6 [{"enabled", "cancelButtonEnabled", "title", "subtitle", "status", "cancelRequested"}]
  LOADB R4 1
  SETTABLEKS R4 R3 K0 ["enabled"]
  LOADB R4 1
  SETTABLEKS R4 R3 K1 ["cancelButtonEnabled"]
  GETTABLEKS R4 R0 K7 ["Title"]
  SETTABLEKS R4 R3 K2 ["title"]
  GETTABLEKS R4 R0 K8 ["Subtitle"]
  SETTABLEKS R4 R3 K3 ["subtitle"]
  GETTABLEKS R4 R0 K9 ["Status"]
  SETTABLEKS R4 R3 K4 ["status"]
  LOADB R4 0
  SETTABLEKS R4 R3 K5 ["cancelRequested"]
  NAMECALL R1 R1 K10 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R0 0
  DUPTABLE R2 K4 [{"enabled", "title", "subtitle", "status"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["enabled"]
  LOADK R3 K5 [""]
  SETTABLEKS R3 R2 K1 ["title"]
  LOADK R3 K5 [""]
  SETTABLEKS R3 R2 K2 ["subtitle"]
  LOADK R3 K5 [""]
  SETTABLEKS R3 R2 K3 ["status"]
  NAMECALL R0 R0 K6 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"cancelButtonEnabled"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["cancelButtonEnabled"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["cancellableDialogManager"]
  NAMECALL R0 R0 K1 ["OnPluginInitializedAsync"]
  CALL R0 1 0
  RETURN R0 0

PROTO_8:
  DUPTABLE R2 K6 [{"title", "subtitle", "status", "enabled", "cancelButtonEnabled", "cancelRequested"}]
  LOADK R3 K7 [""]
  SETTABLEKS R3 R2 K0 ["title"]
  LOADK R3 K7 [""]
  SETTABLEKS R3 R2 K1 ["subtitle"]
  LOADK R3 K7 [""]
  SETTABLEKS R3 R2 K2 ["status"]
  LOADB R3 0
  SETTABLEKS R3 R2 K3 ["enabled"]
  LOADB R3 1
  SETTABLEKS R3 R2 K4 ["cancelButtonEnabled"]
  LOADB R3 0
  SETTABLEKS R3 R2 K5 ["cancelRequested"]
  SETTABLEKS R2 R0 K8 ["state"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K9 ["Localization"]
  GETTABLEKS R2 R3 K10 ["new"]
  DUPTABLE R3 K14 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
  GETUPVAL R4 1
  SETTABLEKS R4 R3 K11 ["stringResourceTable"]
  GETUPVAL R4 2
  SETTABLEKS R4 R3 K12 ["translationResourceTable"]
  LOADK R4 K15 ["CancellableDialog"]
  SETTABLEKS R4 R3 K13 ["pluginName"]
  CALL R2 1 1
  SETTABLEKS R2 R0 K16 ["localization"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K17 ["Analytics"]
  GETTABLEKS R2 R3 K10 ["new"]
  DUPCLOSURE R3 K18 [PROTO_0]
  NEWTABLE R4 0 0
  CALL R2 2 1
  SETTABLEKS R2 R0 K19 ["analytics"]
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K10 ["new"]
  CALL R2 0 1
  SETTABLEKS R2 R0 K20 ["DEPRECATED_stylizer"]
  GETUPVAL R2 4
  GETTABLEKS R3 R1 K21 ["Plugin"]
  CALL R2 1 1
  SETTABLEKS R2 R0 K22 ["design"]
  GETTABLEKS R2 R1 K21 ["Plugin"]
  LOADK R4 K23 ["CancellableDialogManager"]
  NAMECALL R2 R2 K24 ["GetPluginComponent"]
  CALL R2 2 1
  SETTABLEKS R2 R0 K25 ["cancellableDialogManager"]
  GETTABLEKS R3 R0 K25 ["cancellableDialogManager"]
  GETTABLEKS R2 R3 K26 ["UpdateTitleText"]
  NEWCLOSURE R4 P1
  CAPTURE VAL R0
  NAMECALL R2 R2 K27 ["Connect"]
  CALL R2 2 1
  SETTABLEKS R2 R0 K28 ["updateTitleTextConnection"]
  GETTABLEKS R3 R0 K25 ["cancellableDialogManager"]
  GETTABLEKS R2 R3 K29 ["UpdateSubtitleText"]
  NEWCLOSURE R4 P2
  CAPTURE VAL R0
  NAMECALL R2 R2 K27 ["Connect"]
  CALL R2 2 1
  SETTABLEKS R2 R0 K30 ["updateSubtitleTextConnection"]
  GETTABLEKS R3 R0 K25 ["cancellableDialogManager"]
  GETTABLEKS R2 R3 K31 ["UpdateStatusText"]
  NEWCLOSURE R4 P3
  CAPTURE VAL R0
  NAMECALL R2 R2 K27 ["Connect"]
  CALL R2 2 1
  SETTABLEKS R2 R0 K32 ["updateStatusTextConnection"]
  GETTABLEKS R3 R0 K25 ["cancellableDialogManager"]
  GETTABLEKS R2 R3 K33 ["ShowDialog"]
  NEWCLOSURE R4 P4
  CAPTURE VAL R0
  NAMECALL R2 R2 K27 ["Connect"]
  CALL R2 2 1
  SETTABLEKS R2 R0 K34 ["showDialogConnection"]
  GETTABLEKS R3 R0 K25 ["cancellableDialogManager"]
  GETTABLEKS R2 R3 K35 ["HideDialog"]
  NEWCLOSURE R4 P5
  CAPTURE VAL R0
  NAMECALL R2 R2 K27 ["Connect"]
  CALL R2 2 1
  SETTABLEKS R2 R0 K36 ["hideDialogConnection"]
  GETTABLEKS R3 R0 K25 ["cancellableDialogManager"]
  GETTABLEKS R2 R3 K37 ["DisableCancel"]
  NEWCLOSURE R4 P6
  CAPTURE VAL R0
  NAMECALL R2 R2 K27 ["Connect"]
  CALL R2 2 1
  SETTABLEKS R2 R0 K38 ["disableCancelButtonConnection"]
  GETIMPORT R2 K41 [task.spawn]
  NEWCLOSURE R3 P7
  CAPTURE VAL R0
  CALL R2 1 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["cancellableDialogManager"]
  NAMECALL R0 R0 K1 ["OnDialogShownAsync"]
  CALL R0 1 0
  RETURN R0 0

PROTO_10:
  GETIMPORT R0 K2 [task.spawn]
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CALL R0 1 0
  RETURN R0 0

PROTO_11:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["cancellableDialogManager"]
  NAMECALL R0 R0 K1 ["CancelAsync"]
  CALL R0 1 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R0 0
  DUPTABLE R2 K2 [{"cancelButtonEnabled", "cancelRequested"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["cancelButtonEnabled"]
  LOADB R3 1
  SETTABLEKS R3 R2 K1 ["cancelRequested"]
  NAMECALL R0 R0 K3 ["setState"]
  CALL R0 2 0
  GETIMPORT R0 K6 [task.spawn]
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CALL R0 1 0
  RETURN R0 0

PROTO_13:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETTABLEKS R3 R1 K2 ["Plugin"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["provide"]
  NEWTABLE R5 0 5
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K4 ["new"]
  MOVE R7 R3
  CALL R6 1 1
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K4 ["new"]
  NAMECALL R8 R3 K5 ["getMouse"]
  CALL R8 1 -1
  CALL R7 -1 1
  GETTABLEKS R8 R0 K6 ["localization"]
  GETTABLEKS R9 R0 K7 ["analytics"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K4 ["new"]
  GETTABLEKS R11 R0 K8 ["design"]
  CALL R10 1 -1
  SETLIST R5 R6 -1 [1]
  DUPTABLE R6 K11 [{"Wrapper", "StyleLink"}]
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K12 ["createElement"]
  GETUPVAL R8 5
  DUPTABLE R9 K20 [{"Title", "Subtitle", "Status", "Enabled", "CancelButtonEnabled", "OnDialogShown", "OnCancel"}]
  GETTABLEKS R10 R2 K21 ["title"]
  SETTABLEKS R10 R9 K13 ["Title"]
  GETTABLEKS R10 R2 K22 ["subtitle"]
  SETTABLEKS R10 R9 K14 ["Subtitle"]
  GETTABLEKS R10 R2 K23 ["status"]
  SETTABLEKS R10 R9 K15 ["Status"]
  GETTABLEKS R10 R2 K24 ["enabled"]
  SETTABLEKS R10 R9 K16 ["Enabled"]
  GETTABLEKS R10 R2 K25 ["cancelButtonEnabled"]
  SETTABLEKS R10 R9 K17 ["CancelButtonEnabled"]
  NEWCLOSURE R10 P0
  CAPTURE VAL R0
  SETTABLEKS R10 R9 K18 ["OnDialogShown"]
  NEWCLOSURE R10 P1
  CAPTURE VAL R0
  SETTABLEKS R10 R9 K19 ["OnCancel"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K9 ["Wrapper"]
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K12 ["createElement"]
  LOADK R8 K10 ["StyleLink"]
  DUPTABLE R9 K27 [{"StyleSheet"}]
  GETTABLEKS R10 R0 K8 ["design"]
  SETTABLEKS R10 R9 K26 ["StyleSheet"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K10 ["StyleLink"]
  CALL R4 2 -1
  RETURN R4 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["CancellableDialog"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K9 ["UI"]
  GETTABLEKS R3 R4 K10 ["DockWidget"]
  GETTABLEKS R4 R2 K11 ["ContextServices"]
  GETTABLEKS R5 R4 K12 ["Design"]
  GETTABLEKS R6 R4 K13 ["Plugin"]
  GETTABLEKS R7 R4 K14 ["Mouse"]
  GETTABLEKS R10 R2 K15 ["Style"]
  GETTABLEKS R9 R10 K16 ["Themes"]
  GETTABLEKS R8 R9 K17 ["StudioTheme"]
  GETTABLEKS R10 R2 K18 ["Styling"]
  GETTABLEKS R9 R10 K19 ["registerPluginStyles"]
  GETTABLEKS R13 R0 K20 ["Src"]
  GETTABLEKS R12 R13 K21 ["Resources"]
  GETTABLEKS R11 R12 K22 ["Localization"]
  GETTABLEKS R10 R11 K23 ["SourceStrings"]
  GETTABLEKS R14 R0 K20 ["Src"]
  GETTABLEKS R13 R14 K21 ["Resources"]
  GETTABLEKS R12 R13 K22 ["Localization"]
  GETTABLEKS R11 R12 K24 ["LocalizedStrings"]
  GETTABLEKS R13 R0 K20 ["Src"]
  GETTABLEKS R12 R13 K25 ["Components"]
  GETIMPORT R13 K5 [require]
  GETTABLEKS R14 R12 K26 ["DialogContainer"]
  CALL R13 1 1
  GETTABLEKS R14 R1 K27 ["PureComponent"]
  LOADK R16 K28 ["MainPlugin"]
  NAMECALL R14 R14 K29 ["extend"]
  CALL R14 2 1
  DUPCLOSURE R15 K30 [PROTO_8]
  CAPTURE VAL R4
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE VAL R8
  CAPTURE VAL R9
  SETTABLEKS R15 R14 K31 ["init"]
  DUPCLOSURE R15 K32 [PROTO_13]
  CAPTURE VAL R4
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R5
  CAPTURE VAL R1
  CAPTURE VAL R13
  SETTABLEKS R15 R14 K33 ["render"]
  RETURN R14 1
