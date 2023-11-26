PROTO_0:
  GETTABLEKS R2 R1 K0 ["selectionTransform"]
  GETTABLEKS R3 R1 K1 ["selectionSize"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K2 ["Dictionary"]
  GETTABLEKS R4 R5 K3 ["join"]
  MOVE R5 R0
  DUPTABLE R6 K8 [{"SelectionTransform", "SelectionSize", "SourceTransform", "SourceSize"}]
  SETTABLEKS R2 R6 K4 ["SelectionTransform"]
  SETTABLEKS R3 R6 K5 ["SelectionSize"]
  SETTABLEKS R2 R6 K6 ["SourceTransform"]
  SETTABLEKS R3 R6 K7 ["SourceSize"]
  CALL R4 2 -1
  RETURN R4 -1

PROTO_1:
  GETTABLEKS R2 R1 K0 ["sourceTransform"]
  GETTABLEKS R3 R1 K1 ["sourceSize"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K2 ["Dictionary"]
  GETTABLEKS R4 R5 K3 ["join"]
  MOVE R5 R0
  DUPTABLE R6 K8 [{"SourceTransform", "SourceSize", "TargetTransform", "TargetSize"}]
  SETTABLEKS R2 R6 K4 ["SourceTransform"]
  SETTABLEKS R3 R6 K5 ["SourceSize"]
  SETTABLEKS R2 R6 K6 ["TargetTransform"]
  SETTABLEKS R3 R6 K7 ["TargetSize"]
  CALL R4 2 -1
  RETURN R4 -1

PROTO_2:
  GETTABLEKS R2 R1 K0 ["targetTransform"]
  GETTABLEKS R3 R1 K1 ["targetSize"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K2 ["Dictionary"]
  GETTABLEKS R4 R5 K3 ["join"]
  MOVE R5 R0
  DUPTABLE R6 K6 [{"TargetTransform", "TargetSize"}]
  SETTABLEKS R2 R6 K4 ["TargetTransform"]
  SETTABLEKS R3 R6 K5 ["TargetSize"]
  CALL R4 2 -1
  RETURN R4 -1

PROTO_3:
  GETTABLEKS R2 R1 K0 ["liveEdit"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["Dictionary"]
  GETTABLEKS R3 R4 K2 ["join"]
  MOVE R4 R0
  DUPTABLE R5 K4 [{"LiveEdit"}]
  SETTABLEKS R2 R5 K3 ["LiveEdit"]
  CALL R3 2 -1
  RETURN R3 -1

PROTO_4:
  GETTABLEKS R2 R1 K0 ["mergeEmpty"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["Dictionary"]
  GETTABLEKS R3 R4 K2 ["join"]
  MOVE R4 R0
  DUPTABLE R5 K3 [{"mergeEmpty"}]
  SETTABLEKS R2 R5 K0 ["mergeEmpty"]
  CALL R3 2 -1
  RETURN R3 -1

PROTO_5:
  GETTABLEKS R2 R1 K0 ["TransformMode"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["Dictionary"]
  GETTABLEKS R3 R4 K2 ["join"]
  MOVE R4 R0
  DUPTABLE R5 K3 [{"TransformMode"}]
  SETTABLEKS R2 R5 K0 ["TransformMode"]
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
  GETIMPORT R3 K4 [require]
  GETTABLEKS R6 R0 K8 ["Src"]
  GETTABLEKS R5 R6 K9 ["Util"]
  GETTABLEKS R4 R5 K10 ["Constants"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R7 R0 K8 ["Src"]
  GETTABLEKS R6 R7 K9 ["Util"]
  GETTABLEKS R5 R6 K11 ["TerrainEnums"]
  CALL R4 1 1
  GETTABLEKS R5 R1 K12 ["createReducer"]
  DUPTABLE R6 K22 [{"LiveEdit", "mergeEmpty", "SelectionTransform", "SelectionSize", "SourceTransform", "SourceSize", "TargetTransform", "TargetSize", "TransformMode"}]
  LOADB R7 1
  SETTABLEKS R7 R6 K13 ["LiveEdit"]
  LOADB R7 0
  SETTABLEKS R7 R6 K14 ["mergeEmpty"]
  GETIMPORT R7 K25 [CFrame.new]
  CALL R7 0 1
  SETTABLEKS R7 R6 K15 ["SelectionTransform"]
  GETIMPORT R8 K28 [Vector3.one]
  GETTABLEKS R9 R3 K29 ["VOXEL_RESOLUTION"]
  MUL R7 R8 R9
  SETTABLEKS R7 R6 K16 ["SelectionSize"]
  GETIMPORT R7 K25 [CFrame.new]
  CALL R7 0 1
  SETTABLEKS R7 R6 K17 ["SourceTransform"]
  GETIMPORT R8 K28 [Vector3.one]
  GETTABLEKS R9 R3 K29 ["VOXEL_RESOLUTION"]
  MUL R7 R8 R9
  SETTABLEKS R7 R6 K18 ["SourceSize"]
  GETIMPORT R7 K25 [CFrame.new]
  CALL R7 0 1
  SETTABLEKS R7 R6 K19 ["TargetTransform"]
  GETIMPORT R8 K28 [Vector3.one]
  GETTABLEKS R9 R3 K29 ["VOXEL_RESOLUTION"]
  MUL R7 R8 R9
  SETTABLEKS R7 R6 K20 ["TargetSize"]
  GETTABLEKS R8 R4 K21 ["TransformMode"]
  GETTABLEKS R7 R8 K30 ["Select"]
  SETTABLEKS R7 R6 K21 ["TransformMode"]
  DUPTABLE R7 K37 [{"ChangeSelection", "ChangeSource", "ChangeTarget", "SetLiveEdit", "SetMergeEmpty", "SetTransformMode"}]
  DUPCLOSURE R8 K38 [PROTO_0]
  CAPTURE VAL R2
  SETTABLEKS R8 R7 K31 ["ChangeSelection"]
  DUPCLOSURE R8 K39 [PROTO_1]
  CAPTURE VAL R2
  SETTABLEKS R8 R7 K32 ["ChangeSource"]
  DUPCLOSURE R8 K40 [PROTO_2]
  CAPTURE VAL R2
  SETTABLEKS R8 R7 K33 ["ChangeTarget"]
  DUPCLOSURE R8 K41 [PROTO_3]
  CAPTURE VAL R2
  SETTABLEKS R8 R7 K34 ["SetLiveEdit"]
  DUPCLOSURE R8 K42 [PROTO_4]
  CAPTURE VAL R2
  SETTABLEKS R8 R7 K35 ["SetMergeEmpty"]
  DUPCLOSURE R8 K43 [PROTO_5]
  CAPTURE VAL R2
  SETTABLEKS R8 R7 K36 ["SetTransformMode"]
  CALL R5 2 1
  RETURN R5 1
