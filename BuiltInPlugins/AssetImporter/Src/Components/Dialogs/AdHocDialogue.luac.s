PROTO_0:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"enabled"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["enabled"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["props"]
  GETTABLEKS R0 R1 K4 ["OnClose"]
  CALL R0 0 0
  RETURN R0 0

PROTO_1:
  DUPTABLE R1 K1 [{"enabled"}]
  LOADB R2 1
  SETTABLEKS R2 R1 K0 ["enabled"]
  SETTABLEKS R1 R0 K2 ["state"]
  GETIMPORT R1 K4 [script]
  LOADK R3 K5 ["Plugin"]
  NAMECALL R1 R1 K6 ["FindFirstAncestorOfClass"]
  CALL R1 2 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K7 ["new"]
  MOVE R3 R1
  LOADNIL R4
  CALL R2 2 1
  SETTABLEKS R2 R0 K8 ["environment"]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K9 ["close"]
  RETURN R0 0

PROTO_2:
  GETTABLEKS R1 R0 K0 ["props"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["provide"]
  GETTABLEKS R4 R0 K2 ["environment"]
  GETTABLEKS R3 R4 K3 ["contextItems"]
  DUPTABLE R4 K5 [{"Dialogue"}]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K6 ["createElement"]
  GETUPVAL R6 2
  DUPTABLE R7 K15 [{"Enabled", "Modal", "Resizable", "Title", "Buttons", "OnClose", "OnButtonPressed", "MinContentSize"}]
  GETTABLEKS R9 R0 K16 ["state"]
  GETTABLEKS R8 R9 K17 ["enabled"]
  SETTABLEKS R8 R7 K7 ["Enabled"]
  LOADB R8 0
  SETTABLEKS R8 R7 K8 ["Modal"]
  LOADB R8 1
  SETTABLEKS R8 R7 K9 ["Resizable"]
  GETTABLEKS R8 R1 K10 ["Title"]
  SETTABLEKS R8 R7 K10 ["Title"]
  GETTABLEKS R8 R1 K11 ["Buttons"]
  SETTABLEKS R8 R7 K11 ["Buttons"]
  GETTABLEKS R8 R0 K18 ["close"]
  SETTABLEKS R8 R7 K12 ["OnClose"]
  GETTABLEKS R8 R1 K13 ["OnButtonPressed"]
  SETTABLEKS R8 R7 K13 ["OnButtonPressed"]
  GETTABLEKS R8 R1 K14 ["MinContentSize"]
  SETTABLEKS R8 R7 K14 ["MinContentSize"]
  GETTABLEKS R8 R1 K19 ["children"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K4 ["Dialogue"]
  CALL R2 2 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetImporter"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K9 ["Src"]
  GETTABLEKS R5 R6 K10 ["Controllers"]
  GETTABLEKS R4 R5 K11 ["Initialization"]
  CALL R3 1 1
  GETTABLEKS R4 R1 K12 ["ContextServices"]
  GETTABLEKS R6 R1 K13 ["UI"]
  GETTABLEKS R5 R6 K14 ["StyledDialog"]
  GETTABLEKS R6 R2 K15 ["PureComponent"]
  LOADK R8 K16 ["AdHocDialogue"]
  NAMECALL R6 R6 K17 ["extend"]
  CALL R6 2 1
  DUPCLOSURE R7 K18 [PROTO_1]
  CAPTURE VAL R3
  SETTABLEKS R7 R6 K19 ["init"]
  DUPCLOSURE R7 K20 [PROTO_2]
  CAPTURE VAL R4
  CAPTURE VAL R2
  CAPTURE VAL R5
  SETTABLEKS R7 R6 K21 ["render"]
  RETURN R6 1
