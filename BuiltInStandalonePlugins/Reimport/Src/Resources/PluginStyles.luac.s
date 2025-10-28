MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["ReimportPlugin"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K8 ["Styling"]
  GETTABLEKS R2 R3 K9 ["createStyleRule"]
  GETTABLEKS R4 R1 K8 ["Styling"]
  GETTABLEKS R3 R4 K10 ["createStyleSheet"]
  NEWTABLE R4 0 1
  MOVE R5 R2
  LOADK R6 K11 [".green-text"]
  DUPTABLE R7 K13 [{"TextColor3"}]
  LOADK R8 K14 ["$FoundationGreen"]
  SETTABLEKS R8 R7 K12 ["TextColor3"]
  CALL R5 2 -1
  SETLIST R4 R5 -1 [1]
  DUPTABLE R5 K16 [{"FoundationGreen"}]
  GETIMPORT R6 K19 [Color3.fromHex]
  LOADK R7 K20 ["#53D253"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K15 ["FoundationGreen"]
  MOVE R6 R3
  LOADK R7 K21 ["Reimport"]
  MOVE R8 R4
  MOVE R9 R5
  CALL R6 3 -1
  RETURN R6 -1
