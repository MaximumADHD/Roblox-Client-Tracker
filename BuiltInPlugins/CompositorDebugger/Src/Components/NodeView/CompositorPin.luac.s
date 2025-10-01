PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["Point"]
  DUPTABLE R3 K5 [{"Position", "ZIndex", "Color3"}]
  GETTABLEKS R4 R0 K2 ["Position"]
  SETTABLEKS R4 R3 K2 ["Position"]
  GETTABLEKS R4 R0 K3 ["ZIndex"]
  SETTABLEKS R4 R3 K3 ["ZIndex"]
  GETTABLEKS R4 R0 K4 ["Color3"]
  SETTABLEKS R4 R3 K4 ["Color3"]
  DUPTABLE R4 K8 [{"UIScale", "InputDetector"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  LOADK R6 K6 ["UIScale"]
  DUPTABLE R7 K10 [{"Scale"}]
  GETTABLEKS R9 R0 K9 ["Scale"]
  ORK R8 R9 K11 [1]
  SETTABLEKS R8 R7 K9 ["Scale"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K6 ["UIScale"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K7 ["InputDetector"]
  DUPTABLE R7 K15 [{"OnDragStart", "OnDragMoved", "OnDragEnded"}]
  GETTABLEKS R8 R0 K12 ["OnDragStart"]
  SETTABLEKS R8 R7 K12 ["OnDragStart"]
  GETTABLEKS R8 R0 K13 ["OnDragMoved"]
  SETTABLEKS R8 R7 K13 ["OnDragMoved"]
  GETTABLEKS R8 R0 K14 ["OnDragEnded"]
  SETTABLEKS R8 R7 K14 ["OnDragEnded"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K7 ["InputDetector"]
  CALL R1 3 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["CompositorDebugger"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Graphing"]
  CALL R2 1 1
  DUPCLOSURE R3 K9 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R2
  RETURN R3 1
