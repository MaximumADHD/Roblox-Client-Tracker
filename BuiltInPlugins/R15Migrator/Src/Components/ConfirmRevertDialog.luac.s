PROTO_0:
  JUMPIFNOTEQKS R0 K0 ["Confirm"] [+5]
  GETUPVAL R1 0
  JUMPIFNOT R1 [+2]
  GETUPVAL R1 0
  CALL R1 0 0
  GETUPVAL R1 1
  JUMPIFNOT R1 [+2]
  GETUPVAL R1 1
  CALL R1 0 0
  RETURN R0 0

PROTO_1:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Localization"]
  GETTABLEKS R3 R1 K2 ["Stylizer"]
  GETTABLEKS R4 R1 K3 ["OnConfirm"]
  GETTABLEKS R5 R1 K4 ["OnClose"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K5 ["createElement"]
  GETUPVAL R7 1
  DUPTABLE R8 K12 [{"Style", "Modal", "Title", "MinContentSize", "Buttons", "OnButtonPressed", "OnClose"}]
  LOADK R9 K13 ["AcceptCancel"]
  SETTABLEKS R9 R8 K6 ["Style"]
  LOADB R9 1
  SETTABLEKS R9 R8 K7 ["Modal"]
  LOADK R11 K14 ["ScriptConversion"]
  LOADK R12 K15 ["RevertingScripts"]
  NAMECALL R9 R2 K16 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K8 ["Title"]
  GETTABLEKS R9 R3 K9 ["MinContentSize"]
  SETTABLEKS R9 R8 K9 ["MinContentSize"]
  NEWTABLE R9 0 2
  DUPTABLE R10 K19 [{"Key", "Text"}]
  LOADK R11 K20 ["Confirm"]
  SETTABLEKS R11 R10 K17 ["Key"]
  LOADK R13 K14 ["ScriptConversion"]
  LOADK R14 K20 ["Confirm"]
  NAMECALL R11 R2 K16 ["getText"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K18 ["Text"]
  DUPTABLE R11 K19 [{"Key", "Text"}]
  LOADK R12 K21 ["Cancel"]
  SETTABLEKS R12 R11 K17 ["Key"]
  LOADK R14 K14 ["ScriptConversion"]
  LOADK R15 K21 ["Cancel"]
  NAMECALL R12 R2 K16 ["getText"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K18 ["Text"]
  SETLIST R9 R10 2 [1]
  SETTABLEKS R9 R8 K10 ["Buttons"]
  NEWCLOSURE R9 P0
  CAPTURE VAL R4
  CAPTURE VAL R5
  SETTABLEKS R9 R8 K11 ["OnButtonPressed"]
  SETTABLEKS R5 R8 K4 ["OnClose"]
  DUPTABLE R9 K23 [{"Contents"}]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K5 ["createElement"]
  GETUPVAL R11 2
  DUPTABLE R12 K25 [{"Text", "TextWrapped"}]
  LOADK R15 K14 ["ScriptConversion"]
  LOADK R16 K26 ["RevertWarning"]
  NAMECALL R13 R2 K16 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K18 ["Text"]
  LOADB R13 1
  SETTABLEKS R13 R12 K24 ["TextWrapped"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K22 ["Contents"]
  CALL R6 3 -1
  RETURN R6 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["R15Migrator"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K9 ["ContextServices"]
  GETTABLEKS R4 R2 K10 ["UI"]
  GETTABLEKS R5 R4 K11 ["TextLabel"]
  GETTABLEKS R6 R4 K12 ["StyledDialog"]
  GETTABLEKS R7 R1 K13 ["PureComponent"]
  LOADK R9 K14 ["ConfirmRevertDialog"]
  NAMECALL R7 R7 K15 ["extend"]
  CALL R7 2 1
  DUPCLOSURE R8 K16 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R6
  CAPTURE VAL R5
  SETTABLEKS R8 R7 K17 ["render"]
  GETTABLEKS R8 R3 K18 ["withContext"]
  DUPTABLE R9 K21 [{"Localization", "Stylizer"}]
  GETTABLEKS R10 R3 K19 ["Localization"]
  SETTABLEKS R10 R9 K19 ["Localization"]
  GETTABLEKS R10 R3 K20 ["Stylizer"]
  SETTABLEKS R10 R9 K20 ["Stylizer"]
  CALL R8 1 1
  MOVE R9 R7
  CALL R8 1 1
  MOVE R7 R8
  RETURN R7 1
