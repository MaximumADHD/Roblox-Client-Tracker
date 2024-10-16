PROTO_0:
  GETTABLEKS R5 R2 K0 ["Origin"]
  GETTABLEKS R4 R5 K1 ["Position"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K2 ["BrushSettings"]
  GETTABLE R6 R0 R7
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K3 ["PlaneTransform"]
  GETTABLE R5 R6 R7
  GETTABLEKS R7 R2 K4 ["UnitRay"]
  GETTABLEKS R6 R7 K5 ["Direction"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K6 ["Flatten"]
  JUMPIFNOTEQ R3 R7 [+3]
  LOADNIL R7
  RETURN R7 1
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K2 ["BrushSettings"]
  GETTABLE R8 R0 R9
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K7 ["PlaneLock"]
  GETTABLE R7 R8 R9
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K8 ["Auto"]
  JUMPIFNOTEQ R7 R8 [+21]
  GETTABLEKS R7 R1 K9 ["LookVector"]
  GETUPVAL R8 4
  MOVE R9 R4
  MOVE R10 R6
  GETTABLEKS R11 R1 K1 ["Position"]
  MOVE R12 R7
  CALL R8 4 1
  DUPTABLE R9 K12 [{"Distance", "Normal", "Position"}]
  SUB R11 R8 R4
  GETTABLEKS R10 R11 K13 ["Magnitude"]
  SETTABLEKS R10 R9 K10 ["Distance"]
  SETTABLEKS R7 R9 K11 ["Normal"]
  SETTABLEKS R8 R9 K1 ["Position"]
  RETURN R9 1
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K2 ["BrushSettings"]
  GETTABLE R8 R0 R9
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K7 ["PlaneLock"]
  GETTABLE R7 R8 R9
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K14 ["Manual"]
  JUMPIFNOTEQ R7 R8 [+22]
  GETUPVAL R7 4
  MOVE R8 R4
  MOVE R9 R6
  GETTABLEKS R10 R5 K1 ["Position"]
  GETTABLEKS R11 R5 K9 ["LookVector"]
  CALL R7 4 1
  DUPTABLE R8 K12 [{"Distance", "Normal", "Position"}]
  SUB R10 R7 R4
  GETTABLEKS R9 R10 K13 ["Magnitude"]
  SETTABLEKS R9 R8 K10 ["Distance"]
  GETTABLEKS R9 R5 K9 ["LookVector"]
  SETTABLEKS R9 R8 K11 ["Normal"]
  SETTABLEKS R7 R8 K1 ["Position"]
  RETURN R8 1
  LOADNIL R7
  RETURN R7 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["TerrainEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Util"]
  GETTABLEKS R2 R3 K8 ["getPlaneIntersection"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K9 ["Types"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K10 ["BrushSettings"]
  GETTABLEKS R4 R2 K11 ["Category"]
  GETTABLEKS R5 R2 K12 ["PlaneLock"]
  GETTABLEKS R6 R2 K13 ["Tool"]
  DUPCLOSURE R7 K14 [PROTO_0]
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R6
  CAPTURE VAL R5
  CAPTURE VAL R1
  RETURN R7 1
