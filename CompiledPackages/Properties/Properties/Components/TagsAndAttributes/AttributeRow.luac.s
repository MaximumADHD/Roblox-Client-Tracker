PROTO_0:
  GETIMPORT R0 K1 [print]
  LOADK R2 K2 ["attribute %* right click!"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K3 ["attributeRecord"]
  GETTABLEKS R5 R6 K4 ["id"]
  GETTABLEKS R4 R5 K5 ["name"]
  NAMECALL R2 R2 K6 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useCallback"]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  NEWTABLE R3 0 0
  CALL R1 2 1
  GETUPVAL R2 1
  GETUPVAL R3 2
  DUPTABLE R4 K6 [{"LayoutOrder", "session", "property", "labelWidthBinding", "onSecondaryActivated"}]
  GETTABLEKS R5 R0 K1 ["LayoutOrder"]
  SETTABLEKS R5 R4 K1 ["LayoutOrder"]
  GETTABLEKS R5 R0 K2 ["session"]
  SETTABLEKS R5 R4 K2 ["session"]
  GETTABLEKS R5 R0 K7 ["attributeRecord"]
  SETTABLEKS R5 R4 K3 ["property"]
  GETTABLEKS R5 R0 K4 ["labelWidthBinding"]
  SETTABLEKS R5 R4 K4 ["labelWidthBinding"]
  SETTABLEKS R1 R4 K5 ["onSecondaryActivated"]
  NEWTABLE R5 0 0
  CALL R2 3 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Properties"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R1 R0 K4 ["Parent"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R5 R0 K7 ["Components"]
  GETTABLEKS R4 R5 K8 ["PropertyEntries"]
  GETTABLEKS R3 R4 K9 ["PropertyRow"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R4 R0 K10 ["PropertyTypes"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R5 R1 K11 ["React"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETTABLEKS R6 R0 K12 ["RpcTypes"]
  CALL R5 1 1
  GETTABLEKS R6 R4 K13 ["createElement"]
  DUPCLOSURE R7 K14 [PROTO_1]
  CAPTURE VAL R4
  CAPTURE VAL R6
  CAPTURE VAL R2
  RETURN R7 1
