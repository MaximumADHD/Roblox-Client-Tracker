MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K7 ["Util"]
  GETTABLEKS R2 R3 K8 ["enumerate"]
  MOVE R3 R2
  LOADK R4 K9 ["NotificationTargetType"]
  DUPTABLE R5 K14 [{"Invalid", "Universe", "User", "Static"}]
  LOADN R6 0
  SETTABLEKS R6 R5 K10 ["Invalid"]
  LOADN R6 1
  SETTABLEKS R6 R5 K11 ["Universe"]
  LOADN R6 2
  SETTABLEKS R6 R5 K12 ["User"]
  LOADN R6 3
  SETTABLEKS R6 R5 K13 ["Static"]
  CALL R3 2 -1
  RETURN R3 -1
