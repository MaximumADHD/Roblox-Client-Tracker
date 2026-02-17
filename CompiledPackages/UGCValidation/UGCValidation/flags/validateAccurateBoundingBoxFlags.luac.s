PROTO_0:
  GETIMPORT R1 K1 [game]
  LOADK R3 K2 ["UGCValidationAccurateBoundingBoxTargetPercentage"]
  NAMECALL R1 R1 K3 ["GetFastString"]
  CALL R1 2 -1
  FASTCALL TONUMBER [+2]
  GETIMPORT R0 K5 [tonumber]
  CALL R0 -1 1
  RETURN R0 1

PROTO_1:
  GETIMPORT R1 K1 [game]
  LOADK R3 K2 ["UGCValidationAccurateBoundingBoxPercentageWeight"]
  NAMECALL R1 R1 K3 ["GetFastString"]
  CALL R1 2 -1
  FASTCALL TONUMBER [+2]
  GETIMPORT R0 K5 [tonumber]
  CALL R0 -1 1
  RETURN R0 1

PROTO_2:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["UGCValidationAccurateBoundingBoxMaxIterations"]
  NAMECALL R0 R0 K3 ["GetFastInt"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_3:
  GETIMPORT R1 K1 [game]
  LOADK R3 K2 ["UGCValidationAccurateBoundingBoxConvergedLength"]
  NAMECALL R1 R1 K3 ["GetFastString"]
  CALL R1 2 -1
  FASTCALL TONUMBER [+2]
  GETIMPORT R0 K5 [tonumber]
  CALL R0 -1 1
  RETURN R0 1

PROTO_4:
  GETIMPORT R1 K1 [game]
  LOADK R3 K2 ["UGCValidateAccurateBoundingBoxInflationThreshold"]
  NAMECALL R1 R1 K3 ["GetFastString"]
  CALL R1 2 -1
  FASTCALL TONUMBER [+2]
  GETIMPORT R0 K5 [tonumber]
  CALL R0 -1 1
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["UGCValidationAccurateBoundingBoxTargetPercentage"]
  LOADK R3 K3 ["98.0"]
  NAMECALL R0 R0 K4 ["DefineFastString"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K5 ["UGCValidationAccurateBoundingBoxPercentageWeight"]
  LOADK R3 K6 ["0.05"]
  NAMECALL R0 R0 K4 ["DefineFastString"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K7 ["UGCValidationAccurateBoundingBoxMaxIterations"]
  LOADN R3 244
  NAMECALL R0 R0 K8 ["DefineFastInt"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K9 ["UGCValidationAccurateBoundingBoxConvergedLength"]
  LOADK R3 K10 ["0.001"]
  NAMECALL R0 R0 K4 ["DefineFastString"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K11 ["UGCValidateAccurateBoundingBoxInflationThreshold"]
  LOADK R3 K12 ["0.334"]
  NAMECALL R0 R0 K4 ["DefineFastString"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K13 ["UGCValidateAccurateBoundingBoxRasterMethod"]
  LOADB R3 0
  NAMECALL R0 R0 K14 ["DefineFastFlag"]
  CALL R0 3 0
  NEWTABLE R0 8 0
  DUPCLOSURE R1 K15 [PROTO_0]
  SETTABLEKS R1 R0 K16 ["targetPercentage"]
  DUPCLOSURE R1 K17 [PROTO_1]
  SETTABLEKS R1 R0 K18 ["percentageWeight"]
  DUPCLOSURE R1 K19 [PROTO_2]
  SETTABLEKS R1 R0 K20 ["maxIterations"]
  DUPCLOSURE R1 K21 [PROTO_3]
  SETTABLEKS R1 R0 K22 ["convergedLength"]
  DUPCLOSURE R1 K23 [PROTO_4]
  SETTABLEKS R1 R0 K24 ["inflationThreshold"]
  GETIMPORT R1 K1 [game]
  LOADK R3 K25 ["UGCValidationInflationThresholdDynamicHeadX"]
  LOADK R4 K12 ["0.334"]
  NAMECALL R1 R1 K4 ["DefineFastString"]
  CALL R1 3 0
  GETIMPORT R1 K1 [game]
  LOADK R3 K26 ["UGCValidationInflationThresholdDynamicHeadY"]
  LOADK R4 K12 ["0.334"]
  NAMECALL R1 R1 K4 ["DefineFastString"]
  CALL R1 3 0
  GETIMPORT R1 K1 [game]
  LOADK R3 K27 ["UGCValidationInflationThresholdDynamicHeadZ"]
  LOADK R4 K12 ["0.334"]
  NAMECALL R1 R1 K4 ["DefineFastString"]
  CALL R1 3 0
  GETIMPORT R1 K1 [game]
  LOADK R3 K28 ["UGCValidationInflationThresholdTorsoX"]
  LOADK R4 K12 ["0.334"]
  NAMECALL R1 R1 K4 ["DefineFastString"]
  CALL R1 3 0
  GETIMPORT R1 K1 [game]
  LOADK R3 K29 ["UGCValidationInflationThresholdTorsoY"]
  LOADK R4 K12 ["0.334"]
  NAMECALL R1 R1 K4 ["DefineFastString"]
  CALL R1 3 0
  GETIMPORT R1 K1 [game]
  LOADK R3 K30 ["UGCValidationInflationThresholdTorsoZ"]
  LOADK R4 K12 ["0.334"]
  NAMECALL R1 R1 K4 ["DefineFastString"]
  CALL R1 3 0
  GETIMPORT R1 K1 [game]
  LOADK R3 K31 ["UGCValidationInflationThresholdArmsX"]
  LOADK R4 K32 ["1.0"]
  NAMECALL R1 R1 K4 ["DefineFastString"]
  CALL R1 3 0
  GETIMPORT R1 K1 [game]
  LOADK R3 K33 ["UGCValidationInflationThresholdArmsY"]
  LOADK R4 K12 ["0.334"]
  NAMECALL R1 R1 K4 ["DefineFastString"]
  CALL R1 3 0
  GETIMPORT R1 K1 [game]
  LOADK R3 K34 ["UGCValidationInflationThresholdArmsZ"]
  LOADK R4 K32 ["1.0"]
  NAMECALL R1 R1 K4 ["DefineFastString"]
  CALL R1 3 0
  GETIMPORT R1 K1 [game]
  LOADK R3 K35 ["UGCValidationInflationThresholdLegsX"]
  LOADK R4 K36 ["0.7"]
  NAMECALL R1 R1 K4 ["DefineFastString"]
  CALL R1 3 0
  GETIMPORT R1 K1 [game]
  LOADK R3 K37 ["UGCValidationInflationThresholdLegsY"]
  LOADK R4 K12 ["0.334"]
  NAMECALL R1 R1 K4 ["DefineFastString"]
  CALL R1 3 0
  GETIMPORT R1 K1 [game]
  LOADK R3 K38 ["UGCValidationInflationThresholdLegsZ"]
  LOADK R4 K36 ["0.7"]
  NAMECALL R1 R1 K4 ["DefineFastString"]
  CALL R1 3 0
  DUPTABLE R1 K42 [{"X", "Y", "Z"}]
  GETIMPORT R3 K1 [game]
  LOADK R5 K25 ["UGCValidationInflationThresholdDynamicHeadX"]
  NAMECALL R3 R3 K43 ["GetFastString"]
  CALL R3 2 -1
  FASTCALL TONUMBER [+2]
  GETIMPORT R2 K45 [tonumber]
  CALL R2 -1 1
  SETTABLEKS R2 R1 K39 ["X"]
  GETIMPORT R3 K1 [game]
  LOADK R5 K26 ["UGCValidationInflationThresholdDynamicHeadY"]
  NAMECALL R3 R3 K43 ["GetFastString"]
  CALL R3 2 -1
  FASTCALL TONUMBER [+2]
  GETIMPORT R2 K45 [tonumber]
  CALL R2 -1 1
  SETTABLEKS R2 R1 K40 ["Y"]
  GETIMPORT R3 K1 [game]
  LOADK R5 K27 ["UGCValidationInflationThresholdDynamicHeadZ"]
  NAMECALL R3 R3 K43 ["GetFastString"]
  CALL R3 2 -1
  FASTCALL TONUMBER [+2]
  GETIMPORT R2 K45 [tonumber]
  CALL R2 -1 1
  SETTABLEKS R2 R1 K41 ["Z"]
  DUPTABLE R2 K42 [{"X", "Y", "Z"}]
  GETIMPORT R4 K1 [game]
  LOADK R6 K28 ["UGCValidationInflationThresholdTorsoX"]
  NAMECALL R4 R4 K43 ["GetFastString"]
  CALL R4 2 -1
  FASTCALL TONUMBER [+2]
  GETIMPORT R3 K45 [tonumber]
  CALL R3 -1 1
  SETTABLEKS R3 R2 K39 ["X"]
  GETIMPORT R4 K1 [game]
  LOADK R6 K29 ["UGCValidationInflationThresholdTorsoY"]
  NAMECALL R4 R4 K43 ["GetFastString"]
  CALL R4 2 -1
  FASTCALL TONUMBER [+2]
  GETIMPORT R3 K45 [tonumber]
  CALL R3 -1 1
  SETTABLEKS R3 R2 K40 ["Y"]
  GETIMPORT R4 K1 [game]
  LOADK R6 K30 ["UGCValidationInflationThresholdTorsoZ"]
  NAMECALL R4 R4 K43 ["GetFastString"]
  CALL R4 2 -1
  FASTCALL TONUMBER [+2]
  GETIMPORT R3 K45 [tonumber]
  CALL R3 -1 1
  SETTABLEKS R3 R2 K41 ["Z"]
  DUPTABLE R3 K42 [{"X", "Y", "Z"}]
  GETIMPORT R5 K1 [game]
  LOADK R7 K31 ["UGCValidationInflationThresholdArmsX"]
  NAMECALL R5 R5 K43 ["GetFastString"]
  CALL R5 2 -1
  FASTCALL TONUMBER [+2]
  GETIMPORT R4 K45 [tonumber]
  CALL R4 -1 1
  SETTABLEKS R4 R3 K39 ["X"]
  GETIMPORT R5 K1 [game]
  LOADK R7 K33 ["UGCValidationInflationThresholdArmsY"]
  NAMECALL R5 R5 K43 ["GetFastString"]
  CALL R5 2 -1
  FASTCALL TONUMBER [+2]
  GETIMPORT R4 K45 [tonumber]
  CALL R4 -1 1
  SETTABLEKS R4 R3 K40 ["Y"]
  GETIMPORT R5 K1 [game]
  LOADK R7 K34 ["UGCValidationInflationThresholdArmsZ"]
  NAMECALL R5 R5 K43 ["GetFastString"]
  CALL R5 2 -1
  FASTCALL TONUMBER [+2]
  GETIMPORT R4 K45 [tonumber]
  CALL R4 -1 1
  SETTABLEKS R4 R3 K41 ["Z"]
  DUPTABLE R4 K42 [{"X", "Y", "Z"}]
  GETIMPORT R6 K1 [game]
  LOADK R8 K35 ["UGCValidationInflationThresholdLegsX"]
  NAMECALL R6 R6 K43 ["GetFastString"]
  CALL R6 2 -1
  FASTCALL TONUMBER [+2]
  GETIMPORT R5 K45 [tonumber]
  CALL R5 -1 1
  SETTABLEKS R5 R4 K39 ["X"]
  GETIMPORT R6 K1 [game]
  LOADK R8 K37 ["UGCValidationInflationThresholdLegsY"]
  NAMECALL R6 R6 K43 ["GetFastString"]
  CALL R6 2 -1
  FASTCALL TONUMBER [+2]
  GETIMPORT R5 K45 [tonumber]
  CALL R5 -1 1
  SETTABLEKS R5 R4 K40 ["Y"]
  GETIMPORT R6 K1 [game]
  LOADK R8 K38 ["UGCValidationInflationThresholdLegsZ"]
  NAMECALL R6 R6 K43 ["GetFastString"]
  CALL R6 2 -1
  FASTCALL TONUMBER [+2]
  GETIMPORT R5 K45 [tonumber]
  CALL R5 -1 1
  SETTABLEKS R5 R4 K41 ["Z"]
  NEWTABLE R5 8 0
  GETIMPORT R6 K49 [Enum.AssetType.DynamicHead]
  SETTABLE R1 R5 R6
  GETIMPORT R6 K51 [Enum.AssetType.Torso]
  SETTABLE R2 R5 R6
  GETIMPORT R6 K53 [Enum.AssetType.LeftArm]
  SETTABLE R3 R5 R6
  GETIMPORT R6 K55 [Enum.AssetType.RightArm]
  SETTABLE R3 R5 R6
  GETIMPORT R6 K57 [Enum.AssetType.LeftLeg]
  SETTABLE R4 R5 R6
  GETIMPORT R6 K59 [Enum.AssetType.RightLeg]
  SETTABLE R4 R5 R6
  SETTABLEKS R5 R0 K60 ["AssetTypeToAxisThresholds"]
  RETURN R0 1
