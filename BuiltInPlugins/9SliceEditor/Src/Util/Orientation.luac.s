MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["enumerate"]
  CALL R1 1 1
  MOVE R2 R1
  LOADK R3 K7 ["Orientation"]
  DUPTABLE R4 K13 [{"Undefined", "Left", "Right", "Top", "Bottom"}]
  LOADN R5 0
  SETTABLEKS R5 R4 K8 ["Undefined"]
  LOADN R5 1
  SETTABLEKS R5 R4 K9 ["Left"]
  LOADN R5 2
  SETTABLEKS R5 R4 K10 ["Right"]
  LOADN R5 3
  SETTABLEKS R5 R4 K11 ["Top"]
  LOADN R5 4
  SETTABLEKS R5 R4 K12 ["Bottom"]
  CALL R2 2 1
  RETURN R2 1
