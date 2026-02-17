PROTO_0:
  MOVE R1 R0
  JUMPIF R1 [+2]
  NEWTABLE R1 0 0
  GETIMPORT R2 K2 [Instance.new]
  LOADK R3 K3 ["FloatCurve"]
  CALL R2 1 1
  GETTABLEKS R4 R1 K5 ["Name"]
  ORK R3 R4 K4 ["TestFloatCurve"]
  SETTABLEKS R3 R2 K5 ["Name"]
  NEWTABLE R3 0 3
  GETIMPORT R6 K7 [FloatCurveKey.new]
  LOADN R7 0
  LOADN R8 0
  GETIMPORT R9 K11 [Enum.KeyInterpolationMode.Cubic]
  CALL R6 3 1
  GETIMPORT R7 K7 [FloatCurveKey.new]
  LOADN R8 1
  LOADN R9 1
  GETIMPORT R10 K11 [Enum.KeyInterpolationMode.Cubic]
  CALL R7 3 1
  GETIMPORT R8 K7 [FloatCurveKey.new]
  LOADN R9 2
  LOADN R10 0
  GETIMPORT R11 K11 [Enum.KeyInterpolationMode.Cubic]
  CALL R8 3 -1
  SETLIST R3 R6 -1 [1]
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  MOVE R10 R7
  NAMECALL R8 R2 K12 ["InsertKey"]
  CALL R8 2 0
  FORGLOOP R3 2 [-5]
  GETTABLEKS R3 R1 K13 ["Parent"]
  SETTABLEKS R3 R2 K13 ["Parent"]
  RETURN R2 1

PROTO_1:
  GETIMPORT R0 K2 [Instance.new]
  LOADK R1 K3 ["RotationCurve"]
  CALL R0 1 1
  LOADK R1 K4 ["Rotation"]
  SETTABLEKS R1 R0 K5 ["Name"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K6 ["makeFloatCurve"]
  DUPTABLE R2 K8 [{"Name", "Parent"}]
  LOADK R3 K9 ["X"]
  SETTABLEKS R3 R2 K5 ["Name"]
  SETTABLEKS R0 R2 K7 ["Parent"]
  CALL R1 1 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K6 ["makeFloatCurve"]
  DUPTABLE R2 K8 [{"Name", "Parent"}]
  LOADK R3 K10 ["Y"]
  SETTABLEKS R3 R2 K5 ["Name"]
  SETTABLEKS R0 R2 K7 ["Parent"]
  CALL R1 1 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K6 ["makeFloatCurve"]
  DUPTABLE R2 K8 [{"Name", "Parent"}]
  LOADK R3 K11 ["Z"]
  SETTABLEKS R3 R2 K5 ["Name"]
  SETTABLEKS R0 R2 K7 ["Parent"]
  CALL R1 1 0
  RETURN R0 1

PROTO_2:
  GETIMPORT R0 K2 [Instance.new]
  LOADK R1 K3 ["Vector3Curve"]
  CALL R0 1 1
  LOADK R1 K4 ["Position"]
  SETTABLEKS R1 R0 K5 ["Name"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K6 ["makeFloatCurve"]
  DUPTABLE R2 K8 [{"Name", "Parent"}]
  LOADK R3 K9 ["X"]
  SETTABLEKS R3 R2 K5 ["Name"]
  SETTABLEKS R0 R2 K7 ["Parent"]
  CALL R1 1 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K6 ["makeFloatCurve"]
  DUPTABLE R2 K8 [{"Name", "Parent"}]
  LOADK R3 K10 ["Y"]
  SETTABLEKS R3 R2 K5 ["Name"]
  SETTABLEKS R0 R2 K7 ["Parent"]
  CALL R1 1 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K6 ["makeFloatCurve"]
  DUPTABLE R2 K8 [{"Name", "Parent"}]
  LOADK R3 K11 ["Z"]
  SETTABLEKS R3 R2 K5 ["Name"]
  SETTABLEKS R0 R2 K7 ["Parent"]
  CALL R1 1 0
  RETURN R0 1

PROTO_3:
  GETIMPORT R0 K2 [Instance.new]
  LOADK R1 K3 ["CurveAnimation"]
  CALL R0 1 1
  LOADK R1 K4 ["TestCurveAnimation"]
  SETTABLEKS R1 R0 K5 ["Name"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K6 ["makeRotationCurve"]
  CALL R1 0 1
  SETTABLEKS R0 R1 K7 ["Parent"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K8 ["makePositionCurve"]
  CALL R2 0 1
  SETTABLEKS R0 R2 K7 ["Parent"]
  RETURN R0 1

PROTO_4:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["TestAssets"]
  GETTABLEKS R0 R1 K1 ["AttackAnimationCurve"]
  NAMECALL R0 R0 K2 ["Clone"]
  CALL R0 1 1
  RETURN R0 1

PROTO_5:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["Destroy"]
  CALL R1 1 0
  GETUPVAL R1 1
  NAMECALL R1 R1 K0 ["Destroy"]
  CALL R1 1 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["TestAssets"]
  GETTABLEKS R0 R1 K1 ["TestRig"]
  NAMECALL R0 R0 K2 ["Clone"]
  CALL R0 1 1
  GETTABLEKS R1 R0 K3 ["HumanoidRootPart"]
  LOADB R2 1
  SETTABLEKS R2 R1 K4 ["Anchored"]
  GETTABLEKS R1 R0 K5 ["Humanoid"]
  GETIMPORT R2 K8 [Instance.new]
  LOADK R3 K9 ["ObjectValue"]
  CALL R2 1 1
  LOADK R3 K10 ["AnimSaves"]
  SETTABLEKS R3 R2 K11 ["Name"]
  SETTABLEKS R0 R2 K12 ["Value"]
  GETIMPORT R3 K8 [Instance.new]
  LOADK R4 K9 ["ObjectValue"]
  CALL R3 1 1
  LOADK R4 K10 ["AnimSaves"]
  SETTABLEKS R4 R3 K11 ["Name"]
  SETTABLEKS R2 R3 K12 ["Value"]
  SETTABLEKS R0 R3 K13 ["Parent"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K14 ["mockAttackCurveAnimation"]
  CALL R4 0 1
  SETTABLEKS R2 R4 K13 ["Parent"]
  GETUPVAL R5 0
  SETTABLEKS R5 R2 K13 ["Parent"]
  GETUPVAL R5 2
  SETTABLEKS R5 R0 K13 ["Parent"]
  DUPTABLE R5 K19 [{"character", "humanoid", "curveAnimation", "destroy"}]
  SETTABLEKS R0 R5 K15 ["character"]
  SETTABLEKS R1 R5 K16 ["humanoid"]
  SETTABLEKS R4 R5 K17 ["curveAnimation"]
  NEWCLOSURE R6 P0
  CAPTURE VAL R0
  CAPTURE VAL R2
  SETTABLEKS R6 R5 K18 ["destroy"]
  RETURN R5 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["ServerStorage"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["Workspace"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  NEWTABLE R2 8 0
  DUPCLOSURE R3 K5 [PROTO_0]
  SETTABLEKS R3 R2 K6 ["makeFloatCurve"]
  DUPCLOSURE R3 K7 [PROTO_1]
  CAPTURE VAL R2
  SETTABLEKS R3 R2 K8 ["makeRotationCurve"]
  DUPCLOSURE R3 K9 [PROTO_2]
  CAPTURE VAL R2
  SETTABLEKS R3 R2 K10 ["makePositionCurve"]
  DUPCLOSURE R3 K11 [PROTO_3]
  CAPTURE VAL R2
  SETTABLEKS R3 R2 K12 ["makeCurveAnimationWithRotationAndPositionCurve"]
  DUPCLOSURE R3 K13 [PROTO_4]
  CAPTURE VAL R0
  SETTABLEKS R3 R2 K14 ["mockAttackCurveAnimation"]
  DUPCLOSURE R3 K15 [PROTO_6]
  CAPTURE VAL R0
  CAPTURE VAL R2
  CAPTURE VAL R1
  SETTABLEKS R3 R2 K16 ["mockAnimSavesCharacter"]
  RETURN R2 1
