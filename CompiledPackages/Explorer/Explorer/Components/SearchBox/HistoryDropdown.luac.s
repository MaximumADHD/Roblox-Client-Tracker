PROTO_0:
  DUPTABLE R1 K1 [{"text"}]
  SETTABLEKS R0 R1 K0 ["text"]
  RETURN R1 1

PROTO_1:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["ContextServices"]
  GETTABLEKS R1 R2 K1 ["Localization"]
  NAMECALL R1 R1 K2 ["use"]
  CALL R1 1 1
  GETUPVAL R2 1
  GETUPVAL R3 2
  DUPTABLE R4 K12 [{"dropdownRef", "enterPressedSignalRef", "headerInfo", "itemData", "onItemClicked", "placeholderText", "selectedItemIndex", "setSelectedItemIndex", "session"}]
  GETTABLEKS R5 R0 K3 ["dropdownRef"]
  SETTABLEKS R5 R4 K3 ["dropdownRef"]
  GETTABLEKS R5 R0 K4 ["enterPressedSignalRef"]
  SETTABLEKS R5 R4 K4 ["enterPressedSignalRef"]
  DUPTABLE R5 K14 [{"titleText"}]
  LOADK R8 K15 ["HistoryDropdown"]
  LOADK R9 K16 ["TitleText"]
  NAMECALL R6 R1 K17 ["getText"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K13 ["titleText"]
  SETTABLEKS R5 R4 K5 ["headerInfo"]
  GETUPVAL R5 3
  GETTABLEKS R6 R0 K18 ["searchHistory"]
  DUPCLOSURE R7 K19 [PROTO_0]
  CALL R5 2 1
  SETTABLEKS R5 R4 K6 ["itemData"]
  GETTABLEKS R5 R0 K7 ["onItemClicked"]
  SETTABLEKS R5 R4 K7 ["onItemClicked"]
  LOADK R7 K15 ["HistoryDropdown"]
  LOADK R8 K20 ["PlaceholderText"]
  NAMECALL R5 R1 K17 ["getText"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K8 ["placeholderText"]
  GETTABLEKS R5 R0 K9 ["selectedItemIndex"]
  SETTABLEKS R5 R4 K9 ["selectedItemIndex"]
  GETTABLEKS R5 R0 K10 ["setSelectedItemIndex"]
  SETTABLEKS R5 R4 K10 ["setSelectedItemIndex"]
  GETTABLEKS R5 R0 K11 ["session"]
  SETTABLEKS R5 R4 K11 ["session"]
  CALL R2 2 -1
  RETURN R2 -1

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
  GETTABLEKS R3 R4 K10 ["Framework"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K9 ["Parent"]
  GETTABLEKS R4 R5 K11 ["React"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R5 R0 K12 ["RpcTypes"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K9 ["Parent"]
  GETTABLEKS R6 R7 K13 ["Signal"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R8 R0 K14 ["Util"]
  GETTABLEKS R7 R8 K15 ["mapValues"]
  CALL R6 1 1
  GETTABLEKS R7 R3 K16 ["createElement"]
  DUPCLOSURE R8 K17 [PROTO_1]
  CAPTURE VAL R2
  CAPTURE VAL R7
  CAPTURE VAL R1
  CAPTURE VAL R6
  RETURN R8 1
