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
  LOADK R4 K10 [".ContentGrid"]
  NEWTABLE R5 0 0
  NEWTABLE R6 0 1
  MOVE R7 R2
  LOADK R8 K11 [">> .ItemCell"]
  NEWTABLE R9 0 0
  NEWTABLE R10 0 2
  MOVE R11 R2
  LOADK R12 K12 ["> .ThumbnailContainer"]
  DUPTABLE R13 K14 [{"Size"}]
  GETIMPORT R14 K17 [UDim2.new]
  LOADN R15 1
  LOADN R16 0
  LOADN R17 1
  LOADN R18 226
  CALL R14 4 1
  SETTABLEKS R14 R13 K13 ["Size"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K18 ["> .TagContainer"]
  DUPTABLE R14 K14 [{"Size"}]
  GETIMPORT R15 K17 [UDim2.new]
  LOADN R16 1
  LOADN R17 0
  LOADN R18 0
  LOADN R19 30
  CALL R15 4 1
  SETTABLEKS R15 R14 K13 ["Size"]
  CALL R12 2 -1
  SETLIST R10 R11 -1 [1]
  CALL R7 3 -1
  SETLIST R6 R7 -1 [1]
  DUPTABLE R7 K21 [{"CellHeightDiff", "CellPadding"}]
  LOADN R8 30
  SETTABLEKS R8 R7 K19 ["CellHeightDiff"]
  GETIMPORT R8 K23 [UDim2.fromOffset]
  LOADN R9 10
  LOADN R10 10
  CALL R8 2 1
  SETTABLEKS R8 R7 K20 ["CellPadding"]
  CALL R3 4 -1
  RETURN R3 -1
