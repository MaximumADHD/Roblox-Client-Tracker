PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["Point"]
  DUPTABLE R3 K9 [{"Position", "ZIndex", "Color3", "OutlineColor3", "OutlineThickness", "Size", "positionerRef"}]
  GETTABLEKS R4 R0 K2 ["Position"]
  SETTABLEKS R4 R3 K2 ["Position"]
  GETTABLEKS R4 R0 K3 ["ZIndex"]
  SETTABLEKS R4 R3 K3 ["ZIndex"]
  GETTABLEKS R4 R0 K4 ["Color3"]
  SETTABLEKS R4 R3 K4 ["Color3"]
  GETTABLEKS R4 R0 K5 ["OutlineColor3"]
  SETTABLEKS R4 R3 K5 ["OutlineColor3"]
  GETTABLEKS R4 R0 K6 ["OutlineThickness"]
  SETTABLEKS R4 R3 K6 ["OutlineThickness"]
  LOADN R4 9
  SETTABLEKS R4 R3 K7 ["Size"]
  GETTABLEKS R4 R0 K8 ["positionerRef"]
  SETTABLEKS R4 R3 K8 ["positionerRef"]
  DUPTABLE R4 K12 [{"UIScale", "InputDetector"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  LOADK R6 K10 ["UIScale"]
  DUPTABLE R7 K14 [{"Scale"}]
  GETTABLEKS R9 R0 K13 ["Scale"]
  ORK R8 R9 K15 [1]
  SETTABLEKS R8 R7 K13 ["Scale"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K10 ["UIScale"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K11 ["InputDetector"]
  DUPTABLE R7 K19 [{"OnDragStart", "OnDragMoved", "OnDragEnded"}]
  GETTABLEKS R8 R0 K16 ["OnDragStart"]
  SETTABLEKS R8 R7 K16 ["OnDragStart"]
  GETTABLEKS R8 R0 K17 ["OnDragMoved"]
  SETTABLEKS R8 R7 K17 ["OnDragMoved"]
  GETTABLEKS R8 R0 K18 ["OnDragEnded"]
  SETTABLEKS R8 R7 K18 ["OnDragEnded"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K11 ["InputDetector"]
  GETTABLEKS R5 R0 K20 ["children"]
  CALL R1 4 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AnimationEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Parent"]
  GETTABLEKS R2 R3 K7 ["Graphing"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Parent"]
  GETTABLEKS R3 R4 K8 ["React"]
  CALL R2 1 1
  DUPCLOSURE R3 K9 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R1
  RETURN R3 1
