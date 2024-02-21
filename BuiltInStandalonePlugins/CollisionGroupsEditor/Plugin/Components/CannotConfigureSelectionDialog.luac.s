PROTO_0:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R3 R1 K1 ["Stylizer"]
  GETTABLEKS R2 R3 K2 ["CannotConfigureSelectionDialog"]
  GETTABLEKS R3 R1 K3 ["Localization"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["createElement"]
  GETUPVAL R5 1
  DUPTABLE R6 K12 [{"Style", "Enabled", "Title", "MinContentSize", "Buttons", "OnButtonPressed", "OnClose"}]
  LOADK R7 K13 ["Alert"]
  SETTABLEKS R7 R6 K5 ["Style"]
  GETTABLEKS R9 R0 K14 ["state"]
  GETTABLEKS R8 R9 K15 ["userRequestedDialogNeverShow"]
  NOT R7 R8
  JUMPIFNOT R7 [+2]
  GETTABLEKS R7 R1 K6 ["Enabled"]
  SETTABLEKS R7 R6 K6 ["Enabled"]
  LOADK R9 K2 ["CannotConfigureSelectionDialog"]
  LOADK R10 K16 ["DialogWindowTitle"]
  NEWTABLE R11 0 1
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K17 ["CursorGroupName"]
  SETLIST R11 R12 1 [1]
  NAMECALL R7 R3 K18 ["getText"]
  CALL R7 4 1
  SETTABLEKS R7 R6 K7 ["Title"]
  GETTABLEKS R7 R2 K19 ["DialogMinimumSize"]
  SETTABLEKS R7 R6 K8 ["MinContentSize"]
  NEWTABLE R7 0 1
  DUPTABLE R8 K22 [{"Key", "Text"}]
  LOADK R9 K23 ["ok"]
  SETTABLEKS R9 R8 K20 ["Key"]
  LOADK R11 K24 ["RenameWarningDialog"]
  LOADK R12 K25 ["Ok"]
  NAMECALL R9 R3 K18 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K21 ["Text"]
  SETLIST R7 R8 1 [1]
  SETTABLEKS R7 R6 K9 ["Buttons"]
  GETTABLEKS R7 R1 K11 ["OnClose"]
  SETTABLEKS R7 R6 K10 ["OnButtonPressed"]
  GETTABLEKS R7 R1 K11 ["OnClose"]
  SETTABLEKS R7 R6 K11 ["OnClose"]
  DUPTABLE R7 K27 [{"Contents"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K4 ["createElement"]
  GETUPVAL R9 3
  DUPTABLE R10 K29 [{"Style", "Layout"}]
  LOADK R11 K30 ["Box"]
  SETTABLEKS R11 R10 K5 ["Style"]
  GETIMPORT R11 K34 [Enum.FillDirection.Vertical]
  SETTABLEKS R11 R10 K28 ["Layout"]
  DUPTABLE R11 K36 [{"TextLabel"}]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K4 ["createElement"]
  GETUPVAL R13 4
  DUPTABLE R14 K43 [{"LayoutOrder", "TextWrapped", "RichText", "TextXAlignment", "TextYAlignment", "AutomaticSize", "Text"}]
  LOADN R15 1
  SETTABLEKS R15 R14 K37 ["LayoutOrder"]
  LOADB R15 1
  SETTABLEKS R15 R14 K38 ["TextWrapped"]
  LOADB R15 1
  SETTABLEKS R15 R14 K39 ["RichText"]
  GETIMPORT R15 K45 [Enum.TextXAlignment.Left]
  SETTABLEKS R15 R14 K40 ["TextXAlignment"]
  GETIMPORT R15 K47 [Enum.TextYAlignment.Top]
  SETTABLEKS R15 R14 K41 ["TextYAlignment"]
  GETIMPORT R15 K49 [Enum.AutomaticSize.XY]
  SETTABLEKS R15 R14 K42 ["AutomaticSize"]
  LOADK R17 K2 ["CannotConfigureSelectionDialog"]
  LOADK R18 K50 ["WarningMessage"]
  NEWTABLE R19 0 1
  LOADK R21 K51 ["<b>%*</b>"]
  GETUPVAL R24 2
  GETTABLEKS R23 R24 K17 ["CursorGroupName"]
  NAMECALL R21 R21 K52 ["format"]
  CALL R21 2 1
  MOVE R20 R21
  SETLIST R19 R20 1 [1]
  NAMECALL R15 R3 K18 ["getText"]
  CALL R15 4 1
  SETTABLEKS R15 R14 K21 ["Text"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K35 ["TextLabel"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K26 ["Contents"]
  CALL R4 3 -1
  RETURN R4 -1

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
  GETIMPORT R4 K4 [require]
  GETIMPORT R8 K1 [script]
  GETTABLEKS R7 R8 K2 ["Parent"]
  GETTABLEKS R6 R7 K2 ["Parent"]
  GETTABLEKS R5 R6 K9 ["Constants"]
  CALL R4 1 1
  GETTABLEKS R5 R2 K10 ["UI"]
  GETTABLEKS R6 R5 K11 ["Pane"]
  GETTABLEKS R7 R5 K12 ["StyledDialog"]
  GETTABLEKS R8 R5 K13 ["TextLabel"]
  GETTABLEKS R9 R1 K14 ["Component"]
  LOADK R11 K15 ["CannotConfigureSelectionDialog"]
  NAMECALL R9 R9 K16 ["extend"]
  CALL R9 2 1
  DUPCLOSURE R10 K17 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R7
  CAPTURE VAL R4
  CAPTURE VAL R6
  CAPTURE VAL R8
  SETTABLEKS R10 R9 K18 ["render"]
  GETTABLEKS R10 R3 K19 ["withContext"]
  DUPTABLE R11 K22 [{"Stylizer", "Localization"}]
  GETTABLEKS R12 R3 K20 ["Stylizer"]
  SETTABLEKS R12 R11 K20 ["Stylizer"]
  GETTABLEKS R12 R3 K21 ["Localization"]
  SETTABLEKS R12 R11 K21 ["Localization"]
  CALL R10 1 1
  MOVE R11 R9
  CALL R10 1 1
  MOVE R9 R10
  RETURN R9 1
