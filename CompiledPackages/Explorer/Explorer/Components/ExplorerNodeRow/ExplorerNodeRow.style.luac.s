MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Explorer"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Parent"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K8 ["Util"]
  GETTABLEKS R3 R4 K9 ["ImageUrl"]
  CALL R2 1 1
  GETTABLEKS R4 R1 K10 ["Styling"]
  GETTABLEKS R3 R4 K11 ["createStyleRule"]
  MOVE R4 R3
  LOADK R5 K12 [".Explorer-ExplorerNodeRow"]
  NEWTABLE R6 0 0
  NEWTABLE R7 0 3
  MOVE R8 R3
  LOADK R9 K13 [">> .Explorer-Expanded > .Explorer-ArrowImage"]
  DUPTABLE R10 K15 [{"Image"}]
  GETTABLEKS R11 R2 K16 ["standard"]
  LOADK R12 K17 ["expanded"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K14 ["Image"]
  CALL R8 2 1
  MOVE R9 R3
  LOADK R10 K18 [">> .Explorer-Collapsed > .Explorer-ArrowImage"]
  DUPTABLE R11 K15 [{"Image"}]
  GETTABLEKS R12 R2 K16 ["standard"]
  LOADK R13 K19 ["collapsed"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K14 ["Image"]
  CALL R9 2 1
  MOVE R10 R3
  LOADK R11 K20 [">> .Explorer-NoChildren"]
  DUPTABLE R12 K22 [{"Interactable"}]
  LOADB R13 0
  SETTABLEKS R13 R12 K21 ["Interactable"]
  NEWTABLE R13 0 1
  MOVE R14 R3
  LOADK R15 K23 ["> .Explorer-ArrowImage"]
  DUPTABLE R16 K15 [{"Image"}]
  LOADK R17 K24 [""]
  SETTABLEKS R17 R16 K14 ["Image"]
  CALL R14 2 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 -1
  SETLIST R7 R8 -1 [1]
  CALL R4 3 -1
  RETURN R4 -1
