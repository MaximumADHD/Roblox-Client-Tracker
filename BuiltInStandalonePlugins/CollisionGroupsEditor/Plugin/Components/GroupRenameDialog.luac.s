PROTO_0:
  GETTABLEKS R2 R0 K0 ["userRequestedDialogNeverShow"]
  NOT R1 R2
  DUPTABLE R2 K2 [{"neverShowCheckboxToggled"}]
  SETTABLEKS R1 R2 K1 ["neverShowCheckboxToggled"]
  RETURN R2 1

PROTO_1:
  GETUPVAL R0 0
  DUPCLOSURE R2 K0 [PROTO_0]
  NAMECALL R0 R0 K1 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_2:
  DUPTABLE R3 K2 [{"neverShowCheckboxToggled", "userRequestedDialogNeverShow"}]
  LOADB R4 0
  SETTABLEKS R4 R3 K0 ["neverShowCheckboxToggled"]
  LOADB R4 0
  SETTABLEKS R4 R3 K1 ["userRequestedDialogNeverShow"]
  NAMECALL R1 R0 K3 ["setState"]
  CALL R1 2 0
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K4 ["toggleDialogNeverShow"]
  RETURN R0 0

PROTO_3:
  DUPTABLE R1 K1 [{"userRequestedDialogNeverShow"}]
  GETTABLEKS R2 R0 K2 ["neverShowCheckboxToggled"]
  SETTABLEKS R2 R1 K0 ["userRequestedDialogNeverShow"]
  RETURN R1 1

PROTO_4:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["OnClose"]
  CALL R1 0 0
  GETUPVAL R1 1
  LOADK R3 K1 ["userRequestedRenameDialogNeverShow"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K2 ["state"]
  GETTABLEKS R4 R5 K3 ["neverShowCheckboxToggled"]
  NAMECALL R1 R1 K4 ["SetSetting"]
  CALL R1 3 0
  GETUPVAL R1 2
  DUPCLOSURE R3 K5 [PROTO_3]
  NAMECALL R1 R1 K6 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["OnClose"]
  CALL R0 0 0
  RETURN R0 0

PROTO_6:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R3 R1 K1 ["Stylizer"]
  GETTABLEKS R2 R3 K2 ["GroupRenameDialog"]
  GETTABLEKS R3 R1 K3 ["Localization"]
  GETTABLEKS R4 R1 K4 ["Plugin"]
  NAMECALL R4 R4 K5 ["get"]
  CALL R4 1 1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K6 ["createElement"]
  GETUPVAL R6 1
  DUPTABLE R7 K14 [{"Style", "Enabled", "Title", "MinContentSize", "Buttons", "OnButtonPressed", "OnClose"}]
  LOADK R8 K15 ["Alert"]
  SETTABLEKS R8 R7 K7 ["Style"]
  GETTABLEKS R10 R0 K16 ["state"]
  GETTABLEKS R9 R10 K17 ["userRequestedDialogNeverShow"]
  NOT R8 R9
  JUMPIFNOT R8 [+2]
  GETTABLEKS R8 R1 K8 ["Enabled"]
  SETTABLEKS R8 R7 K8 ["Enabled"]
  LOADK R10 K18 ["RenameWarningDialog"]
  LOADK R11 K19 ["DialogWindowTitle"]
  NAMECALL R8 R3 K20 ["getText"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K9 ["Title"]
  GETTABLEKS R8 R2 K21 ["DialogMinimumSize"]
  SETTABLEKS R8 R7 K10 ["MinContentSize"]
  NEWTABLE R8 0 1
  DUPTABLE R9 K24 [{"Key", "Text"}]
  LOADK R10 K25 ["ok"]
  SETTABLEKS R10 R9 K22 ["Key"]
  LOADK R12 K18 ["RenameWarningDialog"]
  LOADK R13 K26 ["Ok"]
  NAMECALL R10 R3 K20 ["getText"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K23 ["Text"]
  SETLIST R8 R9 1 [1]
  SETTABLEKS R8 R7 K11 ["Buttons"]
  NEWCLOSURE R8 P0
  CAPTURE VAL R1
  CAPTURE VAL R4
  CAPTURE VAL R0
  SETTABLEKS R8 R7 K12 ["OnButtonPressed"]
  NEWCLOSURE R8 P1
  CAPTURE VAL R1
  SETTABLEKS R8 R7 K13 ["OnClose"]
  DUPTABLE R8 K28 [{"Contents"}]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K6 ["createElement"]
  GETUPVAL R10 2
  DUPTABLE R11 K32 [{"Style", "Layout", "Padding", "Spacing"}]
  LOADK R12 K33 ["Box"]
  SETTABLEKS R12 R11 K7 ["Style"]
  GETIMPORT R12 K37 [Enum.FillDirection.Vertical]
  SETTABLEKS R12 R11 K29 ["Layout"]
  GETTABLEKS R12 R2 K30 ["Padding"]
  SETTABLEKS R12 R11 K30 ["Padding"]
  GETTABLEKS R12 R2 K31 ["Spacing"]
  SETTABLEKS R12 R11 K31 ["Spacing"]
  DUPTABLE R12 K40 [{"TextLabel", "Checkbox"}]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K6 ["createElement"]
  GETUPVAL R14 3
  DUPTABLE R15 K44 [{"LayoutOrder", "TextWrapped", "Size", "Text"}]
  LOADN R16 1
  SETTABLEKS R16 R15 K41 ["LayoutOrder"]
  LOADB R16 1
  SETTABLEKS R16 R15 K42 ["TextWrapped"]
  GETTABLEKS R16 R2 K45 ["WarningTextSize"]
  SETTABLEKS R16 R15 K43 ["Size"]
  LOADK R18 K18 ["RenameWarningDialog"]
  LOADK R19 K46 ["WarningMessage"]
  NAMECALL R16 R3 K20 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K23 ["Text"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K38 ["TextLabel"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K6 ["createElement"]
  GETUPVAL R14 4
  DUPTABLE R15 K49 [{"LayoutOrder", "Text", "Checked", "OnClick"}]
  LOADN R16 2
  SETTABLEKS R16 R15 K41 ["LayoutOrder"]
  LOADK R18 K18 ["RenameWarningDialog"]
  LOADK R19 K50 ["DontShowThisWarningAgain"]
  NAMECALL R16 R3 K20 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K23 ["Text"]
  GETTABLEKS R17 R0 K16 ["state"]
  GETTABLEKS R16 R17 K51 ["neverShowCheckboxToggled"]
  SETTABLEKS R16 R15 K47 ["Checked"]
  GETTABLEKS R16 R0 K52 ["toggleDialogNeverShow"]
  SETTABLEKS R16 R15 K48 ["OnClick"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K39 ["Checkbox"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K27 ["Contents"]
  CALL R5 3 -1
  RETURN R5 -1

PROTO_7:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["Plugin"]
  NAMECALL R1 R1 K2 ["get"]
  CALL R1 1 1
  LOADK R4 K3 ["userRequestedRenameDialogNeverShow"]
  NAMECALL R2 R1 K4 ["GetSetting"]
  CALL R2 2 1
  DUPTABLE R5 K6 [{"userRequestedDialogNeverShow"}]
  SETTABLEKS R2 R5 K5 ["userRequestedDialogNeverShow"]
  NAMECALL R3 R0 K7 ["setState"]
  CALL R3 2 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K8 ["ContextServices"]
  GETTABLEKS R4 R2 K9 ["UI"]
  GETTABLEKS R5 R4 K10 ["Button"]
  GETTABLEKS R6 R4 K11 ["Checkbox"]
  GETTABLEKS R7 R4 K12 ["Pane"]
  GETTABLEKS R8 R4 K13 ["TextLabel"]
  GETTABLEKS R9 R4 K14 ["StyledDialog"]
  GETTABLEKS R10 R1 K15 ["Component"]
  LOADK R12 K16 ["GroupRenameDialog"]
  NAMECALL R10 R10 K17 ["extend"]
  CALL R10 2 1
  DUPCLOSURE R11 K18 [PROTO_2]
  SETTABLEKS R11 R10 K19 ["init"]
  DUPCLOSURE R11 K20 [PROTO_6]
  CAPTURE VAL R1
  CAPTURE VAL R9
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R6
  SETTABLEKS R11 R10 K21 ["render"]
  DUPCLOSURE R11 K22 [PROTO_7]
  SETTABLEKS R11 R10 K23 ["didMount"]
  GETTABLEKS R11 R3 K24 ["withContext"]
  DUPTABLE R12 K28 [{"Plugin", "Stylizer", "Localization"}]
  GETTABLEKS R13 R3 K25 ["Plugin"]
  SETTABLEKS R13 R12 K25 ["Plugin"]
  GETTABLEKS R13 R3 K26 ["Stylizer"]
  SETTABLEKS R13 R12 K26 ["Stylizer"]
  GETTABLEKS R13 R3 K27 ["Localization"]
  SETTABLEKS R13 R12 K27 ["Localization"]
  CALL R11 1 1
  MOVE R12 R10
  CALL R11 1 1
  MOVE R10 R11
  RETURN R10 1
