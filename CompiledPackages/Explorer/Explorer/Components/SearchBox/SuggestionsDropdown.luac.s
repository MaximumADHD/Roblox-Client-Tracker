PROTO_0:
  LOADNIL R1
  GETIMPORT R2 K2 [string.find]
  MOVE R3 R0
  LOADK R4 K3 ["="]
  CALL R2 2 1
  JUMPIFEQKNIL R2 [+6]
  ADDK R5 R2 K4 [1]
  NAMECALL R3 R0 K5 ["sub"]
  CALL R3 2 1
  MOVE R1 R3
  GETIMPORT R3 K2 [string.find]
  MOVE R4 R0
  LOADK R5 K6 [":"]
  CALL R3 2 1
  JUMPIFEQKNIL R3 [+6]
  ADDK R6 R3 K4 [1]
  NAMECALL R4 R0 K5 ["sub"]
  CALL R4 2 1
  MOVE R1 R4
  DUPTABLE R4 K9 [{"displayText", "text"}]
  SETTABLEKS R1 R4 K7 ["displayText"]
  SETTABLEKS R0 R4 K8 ["text"]
  RETURN R4 1

PROTO_1:
  GETUPVAL R1 0
  GETUPVAL R2 1
  DUPTABLE R3 K7 [{"dropdownRef", "enterPressedSignalRef", "itemData", "onItemClicked", "selectedItemIndex", "setSelectedItemIndex", "session"}]
  GETTABLEKS R4 R0 K0 ["dropdownRef"]
  SETTABLEKS R4 R3 K0 ["dropdownRef"]
  GETTABLEKS R4 R0 K1 ["enterPressedSignalRef"]
  SETTABLEKS R4 R3 K1 ["enterPressedSignalRef"]
  GETUPVAL R4 2
  GETTABLEKS R5 R0 K8 ["suggestions"]
  DUPCLOSURE R6 K9 [PROTO_0]
  CALL R4 2 1
  SETTABLEKS R4 R3 K2 ["itemData"]
  GETTABLEKS R4 R0 K3 ["onItemClicked"]
  SETTABLEKS R4 R3 K3 ["onItemClicked"]
  GETTABLEKS R4 R0 K4 ["selectedItemIndex"]
  SETTABLEKS R4 R3 K4 ["selectedItemIndex"]
  GETTABLEKS R4 R0 K5 ["setSelectedItemIndex"]
  SETTABLEKS R4 R3 K5 ["setSelectedItemIndex"]
  GETTABLEKS R4 R0 K6 ["session"]
  SETTABLEKS R4 R3 K6 ["session"]
  CALL R1 2 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Explorer"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Components"]
  GETTABLEKS R3 R4 K7 ["SearchBox"]
  GETTABLEKS R2 R3 K8 ["Dropdown"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K9 ["Parent"]
  GETTABLEKS R3 R4 K10 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R4 R0 K11 ["RpcTypes"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K9 ["Parent"]
  GETTABLEKS R5 R6 K12 ["Signal"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K13 ["Util"]
  GETTABLEKS R6 R7 K14 ["mapValues"]
  CALL R5 1 1
  GETTABLEKS R6 R2 K15 ["createElement"]
  DUPCLOSURE R7 K16 [PROTO_1]
  CAPTURE VAL R6
  CAPTURE VAL R1
  CAPTURE VAL R5
  RETURN R7 1
