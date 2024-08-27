MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["CompositorDebugger"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K8 ["Style"]
  GETTABLEKS R3 R2 K9 ["StyleKey"]
  DUPTABLE R4 K17 [{"BorderColor", "BorderWidth", "BackgroundColor", "GraphColors", "Grid", "Padding", "ScaleWidth"}]
  GETTABLEKS R5 R3 K18 ["MainText"]
  SETTABLEKS R5 R4 K10 ["BorderColor"]
  LOADN R5 1
  SETTABLEKS R5 R4 K11 ["BorderWidth"]
  GETTABLEKS R5 R3 K19 ["SubBackground2"]
  SETTABLEKS R5 R4 K12 ["BackgroundColor"]
  DUPTABLE R5 K23 [{"number", "Vector2", "Vector3"}]
  NEWTABLE R6 0 1
  GETTABLEKS R7 R3 K24 ["DialogMainButton"]
  SETLIST R6 R7 1 [1]
  SETTABLEKS R6 R5 K20 ["number"]
  NEWTABLE R6 0 2
  GETIMPORT R7 K27 [Color3.new]
  LOADK R8 K28 [0.75]
  LOADN R9 0
  LOADN R10 0
  CALL R7 3 1
  GETIMPORT R8 K27 [Color3.new]
  LOADN R9 0
  LOADK R10 K28 [0.75]
  LOADN R11 0
  CALL R8 3 -1
  SETLIST R6 R7 -1 [1]
  SETTABLEKS R6 R5 K21 ["Vector2"]
  NEWTABLE R6 0 3
  GETIMPORT R7 K27 [Color3.new]
  LOADK R8 K28 [0.75]
  LOADN R9 0
  LOADN R10 0
  CALL R7 3 1
  GETIMPORT R8 K27 [Color3.new]
  LOADN R9 0
  LOADK R10 K28 [0.75]
  LOADN R11 0
  CALL R8 3 1
  GETIMPORT R9 K27 [Color3.new]
  LOADN R10 0
  LOADN R11 0
  LOADK R12 K28 [0.75]
  CALL R9 3 -1
  SETLIST R6 R7 -1 [1]
  SETTABLEKS R6 R5 K22 ["Vector3"]
  SETTABLEKS R5 R4 K13 ["GraphColors"]
  DUPTABLE R5 K32 [{"AxisColor", "GridColor", "Margin"}]
  GETTABLEKS R6 R3 K18 ["MainText"]
  SETTABLEKS R6 R5 K29 ["AxisColor"]
  GETTABLEKS R6 R3 K33 ["MainTextDisabled"]
  SETTABLEKS R6 R5 K30 ["GridColor"]
  LOADK R6 K34 [0.05]
  SETTABLEKS R6 R5 K31 ["Margin"]
  SETTABLEKS R5 R4 K14 ["Grid"]
  LOADN R5 15
  SETTABLEKS R5 R4 K15 ["Padding"]
  LOADN R5 50
  SETTABLEKS R5 R4 K16 ["ScaleWidth"]
  RETURN R4 1
