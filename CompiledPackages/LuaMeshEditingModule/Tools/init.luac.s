MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K3 [{"BrushTool", "PointTool", "VertexToolBase"}]
  GETIMPORT R1 K5 [require]
  GETIMPORT R3 K7 [script]
  GETTABLEKS R2 R3 K0 ["BrushTool"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K0 ["BrushTool"]
  GETIMPORT R1 K5 [require]
  GETIMPORT R3 K7 [script]
  GETTABLEKS R2 R3 K1 ["PointTool"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K1 ["PointTool"]
  GETIMPORT R1 K5 [require]
  GETIMPORT R3 K7 [script]
  GETTABLEKS R2 R3 K2 ["VertexToolBase"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K2 ["VertexToolBase"]
  RETURN R0 1
