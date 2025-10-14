PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useRef"]
  LOADNIL R2
  CALL R1 1 1
  GETUPVAL R2 1
  DUPTABLE R3 K8 [{"listRef", "onSelectedIndexChanged", "initialIndex", "cellRendererKey", "viewOffset", "animated", "data"}]
  GETTABLEKS R5 R0 K1 ["listRef"]
  OR R4 R5 R1
  SETTABLEKS R4 R3 K1 ["listRef"]
  GETTABLEKS R4 R0 K2 ["onSelectedIndexChanged"]
  SETTABLEKS R4 R3 K2 ["onSelectedIndexChanged"]
  GETTABLEKS R4 R0 K9 ["initialScrollIndex"]
  SETTABLEKS R4 R3 K3 ["initialIndex"]
  GETTABLEKS R4 R0 K4 ["cellRendererKey"]
  SETTABLEKS R4 R3 K4 ["cellRendererKey"]
  GETTABLEKS R4 R0 K5 ["viewOffset"]
  SETTABLEKS R4 R3 K5 ["viewOffset"]
  GETTABLEKS R4 R0 K6 ["animated"]
  SETTABLEKS R4 R3 K6 ["animated"]
  GETTABLEKS R4 R0 K7 ["data"]
  SETTABLEKS R4 R3 K7 ["data"]
  CALL R2 1 2
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K10 ["assign"]
  GETIMPORT R5 K13 [table.clone]
  MOVE R6 R0
  CALL R5 1 1
  DUPTABLE R6 K17 [{"viewOffset", "animated", "onSelectedIndexChanged", "ref", "onScrollToIndexFailed", "onSelectionChanged"}]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K18 ["None"]
  SETTABLEKS R7 R6 K5 ["viewOffset"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K18 ["None"]
  SETTABLEKS R7 R6 K6 ["animated"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K18 ["None"]
  SETTABLEKS R7 R6 K2 ["onSelectedIndexChanged"]
  GETTABLEKS R8 R0 K1 ["listRef"]
  OR R7 R8 R1
  SETTABLEKS R7 R6 K14 ["ref"]
  GETTABLEKS R8 R0 K19 ["getItemLayout"]
  JUMPIFNOT R8 [+2]
  LOADNIL R7
  JUMP [+1]
  MOVE R7 R3
  SETTABLEKS R7 R6 K15 ["onScrollToIndexFailed"]
  SETTABLEKS R2 R6 K16 ["onSelectionChanged"]
  CALL R4 2 1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K20 ["createElement"]
  GETUPVAL R6 3
  MOVE R7 R4
  CALL R5 2 -1
  RETURN R5 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R1 R0 K2 ["Parent"]
  GETIMPORT R2 K4 [require]
  GETTABLEKS R3 R1 K5 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R4 R1 K6 ["LuauPolyfill"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K7 ["Object"]
  GETIMPORT R5 K4 [require]
  GETIMPORT R8 K1 [script]
  GETTABLEKS R7 R8 K2 ["Parent"]
  GETTABLEKS R6 R7 K8 ["FlatList"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETIMPORT R9 K1 [script]
  GETTABLEKS R8 R9 K2 ["Parent"]
  GETTABLEKS R7 R8 K9 ["Hooks"]
  CALL R6 1 1
  GETTABLEKS R7 R6 K10 ["useFocusNavigationScrolling"]
  DUPCLOSURE R8 K11 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R7
  CAPTURE VAL R4
  CAPTURE VAL R5
  RETURN R8 1
