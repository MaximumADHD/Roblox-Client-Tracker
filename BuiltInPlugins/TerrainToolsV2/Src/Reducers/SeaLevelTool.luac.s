PROTO_0:
  GETTABLEKS R2 R1 K0 ["selectionTransform"]
  GETTABLEKS R3 R1 K1 ["selectionSize"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K2 ["Dictionary"]
  GETTABLEKS R4 R5 K3 ["join"]
  MOVE R5 R0
  DUPTABLE R6 K6 [{"SelectionTransform", "SelectionSize"}]
  SETTABLEKS R2 R6 K4 ["SelectionTransform"]
  SETTABLEKS R3 R6 K5 ["SelectionSize"]
  CALL R4 2 -1
  RETURN R4 -1

PROTO_1:
  GETTABLEKS R2 R1 K0 ["position"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["Dictionary"]
  GETTABLEKS R3 R4 K2 ["join"]
  MOVE R4 R0
  DUPTABLE R5 K3 [{"position"}]
  SETTABLEKS R2 R5 K0 ["position"]
  CALL R3 2 -1
  RETURN R3 -1

PROTO_2:
  GETTABLEKS R2 R1 K0 ["size"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["Dictionary"]
  GETTABLEKS R3 R4 K2 ["join"]
  MOVE R4 R0
  DUPTABLE R5 K3 [{"size"}]
  SETTABLEKS R2 R5 K0 ["size"]
  CALL R3 2 -1
  RETURN R3 -1

PROTO_3:
  GETTABLEKS R2 R1 K0 ["planePositionY"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["Dictionary"]
  GETTABLEKS R3 R4 K2 ["join"]
  MOVE R4 R0
  DUPTABLE R5 K3 [{"planePositionY"}]
  SETTABLEKS R2 R5 K0 ["planePositionY"]
  CALL R3 2 -1
  RETURN R3 -1

PROTO_4:
  GETTABLEKS R2 R1 K0 ["heightPicker"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["Dictionary"]
  GETTABLEKS R3 R4 K2 ["join"]
  MOVE R4 R0
  DUPTABLE R5 K3 [{"heightPicker"}]
  SETTABLEKS R2 R5 K0 ["heightPicker"]
  CALL R3 2 -1
  RETURN R3 -1

PROTO_5:
  GETTABLEKS R2 R1 K0 ["snapToVoxels"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["Dictionary"]
  GETTABLEKS R3 R4 K2 ["join"]
  MOVE R4 R0
  DUPTABLE R5 K4 [{"SnapToVoxels"}]
  SETTABLEKS R2 R5 K3 ["SnapToVoxels"]
  CALL R3 2 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Rodux"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Cryo"]
  CALL R2 1 1
  GETTABLEKS R3 R1 K8 ["createReducer"]
  DUPTABLE R4 K16 [{"position", "size", "planePositionY", "heightPicker", "SelectionTransform", "SelectionSize", "SnapToVoxels"}]
  DUPTABLE R5 K20 [{"X", "Y", "Z"}]
  LOADN R6 0
  SETTABLEKS R6 R5 K17 ["X"]
  LOADN R6 0
  SETTABLEKS R6 R5 K18 ["Y"]
  LOADN R6 0
  SETTABLEKS R6 R5 K19 ["Z"]
  SETTABLEKS R5 R4 K9 ["position"]
  DUPTABLE R5 K20 [{"X", "Y", "Z"}]
  LOADN R6 0
  SETTABLEKS R6 R5 K17 ["X"]
  LOADN R6 0
  SETTABLEKS R6 R5 K18 ["Y"]
  LOADN R6 0
  SETTABLEKS R6 R5 K19 ["Z"]
  SETTABLEKS R5 R4 K10 ["size"]
  LOADN R5 0
  SETTABLEKS R5 R4 K11 ["planePositionY"]
  LOADB R5 0
  SETTABLEKS R5 R4 K12 ["heightPicker"]
  GETIMPORT R5 K23 [CFrame.new]
  CALL R5 0 1
  SETTABLEKS R5 R4 K13 ["SelectionTransform"]
  LOADN R6 64
  LOADN R7 32
  LOADN R8 64
  FASTCALL VECTOR [+2]
  GETIMPORT R5 K25 [Vector3.new]
  CALL R5 3 1
  SETTABLEKS R5 R4 K14 ["SelectionSize"]
  LOADB R5 1
  SETTABLEKS R5 R4 K15 ["SnapToVoxels"]
  DUPTABLE R5 K32 [{"ChangeSelection", "ChangePosition", "ChangeSize", "ChangePlanePositionY", "SetHeightPicker", "SetSnapToVoxels"}]
  DUPCLOSURE R6 K33 [PROTO_0]
  CAPTURE VAL R2
  SETTABLEKS R6 R5 K26 ["ChangeSelection"]
  DUPCLOSURE R6 K34 [PROTO_1]
  CAPTURE VAL R2
  SETTABLEKS R6 R5 K27 ["ChangePosition"]
  DUPCLOSURE R6 K35 [PROTO_2]
  CAPTURE VAL R2
  SETTABLEKS R6 R5 K28 ["ChangeSize"]
  DUPCLOSURE R6 K36 [PROTO_3]
  CAPTURE VAL R2
  SETTABLEKS R6 R5 K29 ["ChangePlanePositionY"]
  DUPCLOSURE R6 K37 [PROTO_4]
  CAPTURE VAL R2
  SETTABLEKS R6 R5 K30 ["SetHeightPicker"]
  DUPCLOSURE R6 K38 [PROTO_5]
  CAPTURE VAL R2
  SETTABLEKS R6 R5 K31 ["SetSnapToVoxels"]
  CALL R3 2 1
  RETURN R3 1
