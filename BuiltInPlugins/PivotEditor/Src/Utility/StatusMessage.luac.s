MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R1 R0 K2 ["Parent"]
  GETTABLEKS R2 R1 K3 ["Packages"]
  GETTABLEKS R3 R2 K4 ["Framework"]
  GETIMPORT R6 K6 [require]
  MOVE R7 R3
  CALL R6 1 1
  GETTABLEKS R5 R6 K7 ["Util"]
  GETTABLEKS R4 R5 K8 ["strict"]
  MOVE R5 R4
  DUPTABLE R6 K13 [{"None", "NoSelection", "MultipleSelection", "InvalidTarget"}]
  LOADK R7 K14 [""]
  SETTABLEKS R7 R6 K9 ["None"]
  LOADK R7 K10 ["NoSelection"]
  SETTABLEKS R7 R6 K10 ["NoSelection"]
  LOADK R7 K11 ["MultipleSelection"]
  SETTABLEKS R7 R6 K11 ["MultipleSelection"]
  LOADK R7 K12 ["InvalidTarget"]
  SETTABLEKS R7 R6 K12 ["InvalidTarget"]
  LOADK R7 K15 ["StatusMessage"]
  CALL R5 2 1
  RETURN R5 1
