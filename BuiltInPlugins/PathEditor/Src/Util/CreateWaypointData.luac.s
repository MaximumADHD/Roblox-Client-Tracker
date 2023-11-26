PROTO_0:
  NEWTABLE R1 0 1
  DUPTABLE R2 K4 [{"SelectedObject", "SelectedControlPointIndex", "ControlPoints", "Position"}]
  GETTABLEKS R3 R0 K0 ["SelectedObject"]
  SETTABLEKS R3 R2 K0 ["SelectedObject"]
  GETTABLEKS R3 R0 K1 ["SelectedControlPointIndex"]
  SETTABLEKS R3 R2 K1 ["SelectedControlPointIndex"]
  GETTABLEKS R3 R0 K0 ["SelectedObject"]
  NAMECALL R3 R3 K5 ["GetControlPoints"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K2 ["ControlPoints"]
  GETTABLEKS R4 R0 K0 ["SelectedObject"]
  GETTABLEKS R3 R4 K3 ["Position"]
  SETTABLEKS R3 R2 K3 ["Position"]
  SETLIST R1 R2 1 [1]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Dash"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K7 ["Src"]
  GETTABLEKS R3 R4 K8 ["Types"]
  CALL R2 1 1
  DUPCLOSURE R3 K9 [PROTO_0]
  RETURN R3 1
