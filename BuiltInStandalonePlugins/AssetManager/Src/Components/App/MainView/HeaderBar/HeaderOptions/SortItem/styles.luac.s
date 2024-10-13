MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetManager"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K8 ["Styling"]
  GETTABLEKS R2 R3 K9 ["createStyleRule"]
  MOVE R3 R2
  LOADK R4 K10 [".SortItem"]
  NEWTABLE R5 0 0
  NEWTABLE R6 0 2
  MOVE R7 R2
  LOADK R8 K11 ["> ImageLabel .ArrowUp"]
  DUPTABLE R9 K13 [{"Image"}]
  LOADK R10 K14 ["$ArrowUpIcon"]
  SETTABLEKS R10 R9 K12 ["Image"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K15 ["> ImageLabel .ArrowDown"]
  DUPTABLE R10 K13 [{"Image"}]
  LOADK R11 K16 ["$ArrowDownIcon"]
  SETTABLEKS R11 R10 K12 ["Image"]
  CALL R8 2 -1
  SETLIST R6 R7 -1 [1]
  DUPTABLE R7 K18 [{"SortItemSize"}]
  GETIMPORT R8 K21 [UDim2.new]
  LOADN R9 0
  LOADN R10 150
  LOADN R11 0
  LOADN R12 24
  CALL R8 4 1
  SETTABLEKS R8 R7 K17 ["SortItemSize"]
  CALL R3 4 -1
  RETURN R3 -1
