PROTO_0:
  GETTABLEKS R2 R1 K0 ["material"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["Dictionary"]
  GETTABLEKS R3 R4 K2 ["join"]
  MOVE R4 R0
  DUPTABLE R5 K4 [{"Material"}]
  SETTABLEKS R2 R5 K3 ["Material"]
  CALL R3 2 -1
  RETURN R3 -1

PROTO_1:
  GETTABLEKS R2 R1 K0 ["replaceMaterial"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["Dictionary"]
  GETTABLEKS R3 R4 K2 ["join"]
  MOVE R4 R0
  DUPTABLE R5 K4 [{"ReplaceMaterial"}]
  SETTABLEKS R2 R5 K3 ["ReplaceMaterial"]
  CALL R3 2 -1
  RETURN R3 -1

PROTO_2:
  GETTABLEKS R2 R1 K0 ["SourceMaterial"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["Dictionary"]
  GETTABLEKS R3 R4 K2 ["join"]
  MOVE R4 R0
  DUPTABLE R5 K3 [{"SourceMaterial"}]
  SETTABLEKS R2 R5 K0 ["SourceMaterial"]
  CALL R3 2 -1
  RETURN R3 -1

PROTO_3:
  GETTABLEKS R2 R1 K0 ["TargetMaterial"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["Dictionary"]
  GETTABLEKS R3 R4 K2 ["join"]
  MOVE R4 R0
  DUPTABLE R5 K3 [{"TargetMaterial"}]
  SETTABLEKS R2 R5 K0 ["TargetMaterial"]
  CALL R3 2 -1
  RETURN R3 -1

PROTO_4:
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
  GETTABLEKS R4 R1 K11 ["createReducer"]
  DUPTABLE R5 K18 [{"Material", "ReplaceMaterial", "SourceMaterial", "TargetMaterial", "TargetTransform", "TargetSize"}]
  GETIMPORT R6 K21 [Enum.Material.Grass]
  SETTABLEKS R6 R5 K12 ["Material"]
  LOADB R6 0
  SETTABLEKS R6 R5 K13 ["ReplaceMaterial"]
  GETIMPORT R6 K21 [Enum.Material.Grass]
  SETTABLEKS R6 R5 K14 ["SourceMaterial"]
  GETIMPORT R6 K23 [Enum.Material.Brick]
  SETTABLEKS R6 R5 K15 ["TargetMaterial"]
  GETIMPORT R6 K26 [CFrame.new]
  CALL R6 0 1
  SETTABLEKS R6 R5 K16 ["TargetTransform"]
  GETIMPORT R7 K29 [Vector3.one]
  GETTABLEKS R8 R3 K30 ["VOXEL_RESOLUTION"]
  MUL R6 R7 R8
  SETTABLEKS R6 R5 K17 ["TargetSize"]
  DUPTABLE R6 K36 [{"SetMaterial", "SetReplaceMaterial", "SetSourceMaterial", "SetTargetMaterial", "ChangeTarget"}]
  DUPCLOSURE R7 K37 [PROTO_0]
  CAPTURE VAL R2
  SETTABLEKS R7 R6 K31 ["SetMaterial"]
  DUPCLOSURE R7 K38 [PROTO_1]
  CAPTURE VAL R2
  SETTABLEKS R7 R6 K32 ["SetReplaceMaterial"]
  DUPCLOSURE R7 K39 [PROTO_2]
  CAPTURE VAL R2
  SETTABLEKS R7 R6 K33 ["SetSourceMaterial"]
  DUPCLOSURE R7 K40 [PROTO_3]
  CAPTURE VAL R2
  SETTABLEKS R7 R6 K34 ["SetTargetMaterial"]
  DUPCLOSURE R7 K41 [PROTO_4]
  CAPTURE VAL R2
  SETTABLEKS R7 R6 K35 ["ChangeTarget"]
  CALL R4 2 1
  RETURN R4 1
