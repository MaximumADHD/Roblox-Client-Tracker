PROTO_0:
  DUPTABLE R1 K6 [{"currentValue", "defaultValue", "position", "rotation", "customWidth", "customHeight"}]
  GETTABLEKS R2 R0 K0 ["currentValue"]
  SETTABLEKS R2 R1 K0 ["currentValue"]
  GETTABLEKS R2 R0 K1 ["defaultValue"]
  SETTABLEKS R2 R1 K1 ["defaultValue"]
  GETIMPORT R2 K9 [UDim2.fromScale]
  GETTABLEKS R6 R0 K2 ["position"]
  GETTABLEKS R5 R6 K10 ["X"]
  GETTABLEKS R4 R5 K11 ["Offset"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K12 ["ASPECT_RATIO_SCALE_WIDTH"]
  DIV R3 R4 R5
  GETTABLEKS R7 R0 K2 ["position"]
  GETTABLEKS R6 R7 K13 ["Y"]
  GETTABLEKS R5 R6 K11 ["Offset"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K14 ["ASPECT_RATIO_SCALE_HEIGHT"]
  DIV R4 R5 R6
  CALL R2 2 1
  SETTABLEKS R2 R1 K2 ["position"]
  GETTABLEKS R2 R0 K3 ["rotation"]
  SETTABLEKS R2 R1 K3 ["rotation"]
  GETTABLEKS R2 R0 K4 ["customWidth"]
  JUMPIF R2 [+3]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K15 ["SLIDER_DEFAULT_WIDTH"]
  SETTABLEKS R2 R1 K4 ["customWidth"]
  GETTABLEKS R2 R0 K5 ["customHeight"]
  SETTABLEKS R2 R1 K5 ["customHeight"]
  RETURN R1 1

PROTO_1:
  DUPTABLE R1 K8 [{"currentValue", "defaultValue", "position", "length", "minX", "maxX", "minY", "maxY"}]
  GETTABLEKS R2 R0 K0 ["currentValue"]
  SETTABLEKS R2 R1 K0 ["currentValue"]
  GETTABLEKS R2 R0 K1 ["defaultValue"]
  SETTABLEKS R2 R1 K1 ["defaultValue"]
  GETIMPORT R2 K11 [UDim2.fromScale]
  GETTABLEKS R6 R0 K2 ["position"]
  GETTABLEKS R5 R6 K12 ["X"]
  GETTABLEKS R4 R5 K13 ["Offset"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K14 ["ASPECT_RATIO_SCALE_WIDTH"]
  DIV R3 R4 R5
  GETTABLEKS R7 R0 K2 ["position"]
  GETTABLEKS R6 R7 K15 ["Y"]
  GETTABLEKS R5 R6 K13 ["Offset"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K16 ["ASPECT_RATIO_SCALE_HEIGHT"]
  DIV R4 R5 R6
  CALL R2 2 1
  SETTABLEKS R2 R1 K2 ["position"]
  GETTABLEKS R3 R0 K3 ["length"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K14 ["ASPECT_RATIO_SCALE_WIDTH"]
  DIV R2 R3 R4
  SETTABLEKS R2 R1 K3 ["length"]
  GETTABLEKS R2 R0 K4 ["minX"]
  SETTABLEKS R2 R1 K4 ["minX"]
  GETTABLEKS R2 R0 K5 ["maxX"]
  SETTABLEKS R2 R1 K5 ["maxX"]
  GETTABLEKS R2 R0 K6 ["minY"]
  SETTABLEKS R2 R1 K6 ["minY"]
  GETTABLEKS R2 R0 K7 ["maxY"]
  SETTABLEKS R2 R1 K7 ["maxY"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  NEWTABLE R0 32 0
  NEWTABLE R1 64 0
  LOADK R2 K0 ["LeftBrowLowerer"]
  SETTABLEKS R2 R1 K1 ["LEFT_BROW_LOWERER"]
  LOADK R2 K2 ["RightBrowLowerer"]
  SETTABLEKS R2 R1 K3 ["RIGHT_BROW_LOWERER"]
  LOADK R2 K4 ["LeftOuterBrowRaiser"]
  SETTABLEKS R2 R1 K5 ["LEFT_OUTER_BROW_RAISER"]
  LOADK R2 K6 ["RightOuterBrowRaiser"]
  SETTABLEKS R2 R1 K7 ["RIGHT_OUTER_BROW_RAISER"]
  LOADK R2 K8 ["LeftInnerBrowRaiser"]
  SETTABLEKS R2 R1 K9 ["LEFT_INNER_BROW_RAISER"]
  LOADK R2 K10 ["RightInnerBrowRaiser"]
  SETTABLEKS R2 R1 K11 ["RIGHT_INNER_BROW_RAISER"]
  LOADK R2 K12 ["LeftEyeLid"]
  SETTABLEKS R2 R1 K13 ["LEFT_EYE_LID"]
  LOADK R2 K14 ["RightEyeLid"]
  SETTABLEKS R2 R1 K15 ["RIGHT_EYE_LID"]
  LOADK R2 K16 ["LeftNoseWrinkler"]
  SETTABLEKS R2 R1 K17 ["LEFT_NOSE_WRINKLER"]
  LOADK R2 K18 ["RightNoseWrinkler"]
  SETTABLEKS R2 R1 K19 ["RIGHT_NOSE_WRINKLER"]
  LOADK R2 K20 ["LeftLipCornerPuller"]
  SETTABLEKS R2 R1 K21 ["LEFT_LIP_CORNER_PULLER"]
  LOADK R2 K22 ["RightLipCornerPuller"]
  SETTABLEKS R2 R1 K23 ["RIGHT_LIP_CORNER_PULLER"]
  LOADK R2 K24 ["LeftLipCornerDown"]
  SETTABLEKS R2 R1 K25 ["LEFT_LIP_CORNER_DOWN"]
  LOADK R2 K26 ["RightLipCornerDown"]
  SETTABLEKS R2 R1 K27 ["RIGHT_LIP_CORNER_DOWN"]
  LOADK R2 K28 ["LeftLowerLipDepressor"]
  SETTABLEKS R2 R1 K29 ["LEFT_LOWER_LIP_DEPRESSOR"]
  LOADK R2 K30 ["RightLowerLipDepressor"]
  SETTABLEKS R2 R1 K31 ["RIGHT_LOWER_LIP_DEPRESSOR"]
  LOADK R2 K32 ["LeftUpperLipRaiser"]
  SETTABLEKS R2 R1 K33 ["LEFT_UPPER_LIP_RAISER"]
  LOADK R2 K34 ["RightUpperLipRaiser"]
  SETTABLEKS R2 R1 K35 ["RIGHT_UPPER_LIP_RAISER"]
  LOADK R2 K36 ["LeftCheekPuff"]
  SETTABLEKS R2 R1 K37 ["LEFT_CHEEK_PUFF"]
  LOADK R2 K38 ["RightCheekPuff"]
  SETTABLEKS R2 R1 K39 ["RIGHT_CHEEK_PUFF"]
  LOADK R2 K40 ["LeftCheekRaiser"]
  SETTABLEKS R2 R1 K41 ["LEFT_CHEEK_RAISER"]
  LOADK R2 K42 ["RightCheekRaiser"]
  SETTABLEKS R2 R1 K43 ["RIGHT_CHEEK_RAISER"]
  LOADK R2 K44 ["LeftDimpler"]
  SETTABLEKS R2 R1 K45 ["LEFT_DIMPLER"]
  LOADK R2 K46 ["RightDimpler"]
  SETTABLEKS R2 R1 K47 ["RIGHT_DIMPLER"]
  LOADK R2 K48 ["LeftLipStretcher"]
  SETTABLEKS R2 R1 K49 ["LEFT_LIP_STRETCHER"]
  LOADK R2 K50 ["RightLipStretcher"]
  SETTABLEKS R2 R1 K51 ["RIGHT_LIP_STRETCHER"]
  LOADK R2 K52 ["Mouth"]
  SETTABLEKS R2 R1 K53 ["MOUTH"]
  LOADK R2 K54 ["LipsTogether"]
  SETTABLEKS R2 R1 K55 ["LIPS_TOGETHER"]
  LOADK R2 K56 ["ChinRaiser"]
  SETTABLEKS R2 R1 K57 ["CHIN_RAISER"]
  LOADK R2 K58 ["ChinRaiserUpperLip"]
  SETTABLEKS R2 R1 K59 ["CHIN_RAISER_UPPER_LIP"]
  LOADK R2 K60 ["Corrugator"]
  SETTABLEKS R2 R1 K61 ["CORRUGATOR"]
  LOADK R2 K62 ["Jaw"]
  SETTABLEKS R2 R1 K63 ["JAW"]
  LOADK R2 K64 ["JawDrop"]
  SETTABLEKS R2 R1 K65 ["JAW_DROP"]
  LOADK R2 K66 ["Tongue"]
  SETTABLEKS R2 R1 K67 ["TONGUE"]
  LOADK R2 K68 ["TongueOut"]
  SETTABLEKS R2 R1 K69 ["TONGUE_OUT"]
  LOADK R2 K70 ["Pucker"]
  SETTABLEKS R2 R1 K71 ["PUCKER"]
  LOADK R2 K72 ["LipPresser"]
  SETTABLEKS R2 R1 K73 ["LIP_PRESSER"]
  LOADK R2 K74 ["UpperLipSuck"]
  SETTABLEKS R2 R1 K75 ["UPPER_LIP_SUCK"]
  LOADK R2 K76 ["LowerLipSuck"]
  SETTABLEKS R2 R1 K77 ["LOWER_LIP_SUCK"]
  LOADK R2 K78 ["Funneler"]
  SETTABLEKS R2 R1 K79 ["FUNNELER"]
  LOADK R2 K80 ["FlatPucker"]
  SETTABLEKS R2 R1 K81 ["FLAT_PUCKER"]
  SETTABLEKS R1 R0 K82 ["NAMES"]
  LOADN R1 94
  SETTABLEKS R1 R0 K83 ["FACE_CONTROLS_EDITOR_FACE_FRONT_DIAGRAM_ORIGINAL_WIDTH"]
  LOADN R1 94
  SETTABLEKS R1 R0 K84 ["FACE_CONTROLS_EDITOR_FACE_FRONT_DIAGRAM_ORIGINAL_HEIGHT"]
  LOADN R1 200
  SETTABLEKS R1 R0 K85 ["FACE_CONTROLS_EDITOR_FACE_SIDE_DIAGRAM_ORIGINAL_HEIGHT"]
  LOADN R1 200
  SETTABLEKS R1 R0 K86 ["FACE_CONTROLS_EDITOR_ORIGINAL_WIDTH"]
  LOADN R1 40
  SETTABLEKS R1 R0 K87 ["FACE_CONTROLS_EDITOR_TOGGLES_CONTAINER_HEIGHT"]
  LOADN R1 20
  SETTABLEKS R1 R0 K88 ["FACE_CONTROLS_EDITOR_SPACING_BETWEEN_DIAGRAMS"]
  LOADN R1 10
  SETTABLEKS R1 R0 K89 ["SLIDER_DEFAULT_HEIGHT"]
  LOADN R1 35
  SETTABLEKS R1 R0 K90 ["SLIDER_DEFAULT_WIDTH"]
  LOADN R1 94
  SETTABLEKS R1 R0 K91 ["ASPECT_RATIO_SCALE_HEIGHT"]
  LOADN R1 94
  SETTABLEKS R1 R0 K92 ["ASPECT_RATIO_SCALE_WIDTH"]
  DUPCLOSURE R1 K93 [PROTO_0]
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K94 ["scaleFaceControlMapping"]
  DUPCLOSURE R1 K95 [PROTO_1]
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K96 ["scaleDragboxMapping"]
  DUPTABLE R1 K97 [{"ChinRaiserUpperLip", "ChinRaiser", "LipsTogether", "Mouth", "LeftCheekPuff", "LeftDimpler", "LeftLipCornerDown", "LeftLowerLipDepressor", "LeftLipCornerPuller", "LeftLipStretcher", "LeftUpperLipRaiser", "RightCheekPuff", "RightDimpler", "RightLipCornerDown", "RightLowerLipDepressor", "RightLipCornerPuller", "RightLipStretcher", "RightUpperLipRaiser", "Corrugator", "LeftBrowLowerer", "LeftOuterBrowRaiser", "LeftNoseWrinkler", "LeftInnerBrowRaiser", "RightBrowLowerer", "RightOuterBrowRaiser", "RightInnerBrowRaiser", "RightNoseWrinkler", "LeftCheekRaiser", "LeftEyeLid", "RightCheekRaiser", "RightEyeLid"}]
  GETTABLEKS R2 R0 K94 ["scaleFaceControlMapping"]
  DUPTABLE R3 K102 [{"currentValue", "defaultValue", "position", "rotation"}]
  LOADN R4 0
  SETTABLEKS R4 R3 K98 ["currentValue"]
  LOADN R4 0
  SETTABLEKS R4 R3 K99 ["defaultValue"]
  GETIMPORT R4 K105 [UDim2.fromOffset]
  LOADN R5 170
  LOADN R6 49
  CALL R4 2 1
  SETTABLEKS R4 R3 K100 ["position"]
  LOADN R4 166
  SETTABLEKS R4 R3 K101 ["rotation"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K58 ["ChinRaiserUpperLip"]
  GETTABLEKS R2 R0 K94 ["scaleFaceControlMapping"]
  DUPTABLE R3 K102 [{"currentValue", "defaultValue", "position", "rotation"}]
  LOADN R4 0
  SETTABLEKS R4 R3 K98 ["currentValue"]
  LOADN R4 0
  SETTABLEKS R4 R3 K99 ["defaultValue"]
  GETIMPORT R4 K105 [UDim2.fromOffset]
  LOADN R5 150
  LOADN R6 55
  CALL R4 2 1
  SETTABLEKS R4 R3 K100 ["position"]
  LOADN R4 166
  SETTABLEKS R4 R3 K101 ["rotation"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K56 ["ChinRaiser"]
  GETTABLEKS R2 R0 K94 ["scaleFaceControlMapping"]
  DUPTABLE R3 K107 [{"currentValue", "defaultValue", "position", "rotation", "customWidth"}]
  LOADN R4 0
  SETTABLEKS R4 R3 K98 ["currentValue"]
  LOADN R4 0
  SETTABLEKS R4 R3 K99 ["defaultValue"]
  GETIMPORT R4 K105 [UDim2.fromOffset]
  LOADN R5 165
  LOADN R6 240
  CALL R4 2 1
  SETTABLEKS R4 R3 K100 ["position"]
  LOADN R4 90
  SETTABLEKS R4 R3 K101 ["rotation"]
  LOADN R4 20
  SETTABLEKS R4 R3 K106 ["customWidth"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K54 ["LipsTogether"]
  GETTABLEKS R2 R0 K94 ["scaleFaceControlMapping"]
  DUPTABLE R3 K107 [{"currentValue", "defaultValue", "position", "rotation", "customWidth"}]
  LOADK R4 K108 [0.5]
  SETTABLEKS R4 R3 K98 ["currentValue"]
  LOADK R4 K108 [0.5]
  SETTABLEKS R4 R3 K99 ["defaultValue"]
  GETIMPORT R4 K105 [UDim2.fromOffset]
  LOADN R5 120
  LOADN R6 2
  CALL R4 2 1
  SETTABLEKS R4 R3 K100 ["position"]
  LOADN R4 0
  SETTABLEKS R4 R3 K101 ["rotation"]
  LOADN R4 120
  SETTABLEKS R4 R3 K106 ["customWidth"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K52 ["Mouth"]
  GETTABLEKS R2 R0 K94 ["scaleFaceControlMapping"]
  DUPTABLE R3 K102 [{"currentValue", "defaultValue", "position", "rotation"}]
  LOADN R4 0
  SETTABLEKS R4 R3 K98 ["currentValue"]
  LOADN R4 0
  SETTABLEKS R4 R3 K99 ["defaultValue"]
  GETIMPORT R4 K105 [UDim2.fromOffset]
  LOADN R5 4
  LOADN R6 229
  CALL R4 2 1
  SETTABLEKS R4 R3 K100 ["position"]
  LOADN R4 0
  SETTABLEKS R4 R3 K101 ["rotation"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K36 ["LeftCheekPuff"]
  GETTABLEKS R2 R0 K94 ["scaleFaceControlMapping"]
  DUPTABLE R3 K102 [{"currentValue", "defaultValue", "position", "rotation"}]
  LOADN R4 0
  SETTABLEKS R4 R3 K98 ["currentValue"]
  LOADN R4 0
  SETTABLEKS R4 R3 K99 ["defaultValue"]
  GETIMPORT R4 K105 [UDim2.fromOffset]
  LOADN R5 255
  LOADN R6 250
  CALL R4 2 1
  SETTABLEKS R4 R3 K100 ["position"]
  LOADN R4 0
  SETTABLEKS R4 R3 K101 ["rotation"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K44 ["LeftDimpler"]
  GETTABLEKS R2 R0 K94 ["scaleFaceControlMapping"]
  DUPTABLE R3 K102 [{"currentValue", "defaultValue", "position", "rotation"}]
  LOADN R4 0
  SETTABLEKS R4 R3 K98 ["currentValue"]
  LOADN R4 0
  SETTABLEKS R4 R3 K99 ["defaultValue"]
  GETIMPORT R4 K105 [UDim2.fromOffset]
  LOADN R5 226
  LOADN R6 45
  CALL R4 2 1
  SETTABLEKS R4 R3 K100 ["position"]
  LOADN R4 55
  SETTABLEKS R4 R3 K101 ["rotation"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K24 ["LeftLipCornerDown"]
  GETTABLEKS R2 R0 K94 ["scaleFaceControlMapping"]
  DUPTABLE R3 K102 [{"currentValue", "defaultValue", "position", "rotation"}]
  LOADN R4 0
  SETTABLEKS R4 R3 K98 ["currentValue"]
  LOADN R4 0
  SETTABLEKS R4 R3 K99 ["defaultValue"]
  GETIMPORT R4 K105 [UDim2.fromOffset]
  LOADN R5 195
  LOADN R6 39
  CALL R4 2 1
  SETTABLEKS R4 R3 K100 ["position"]
  LOADN R4 65
  SETTABLEKS R4 R3 K101 ["rotation"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K28 ["LeftLowerLipDepressor"]
  GETTABLEKS R2 R0 K94 ["scaleFaceControlMapping"]
  DUPTABLE R3 K102 [{"currentValue", "defaultValue", "position", "rotation"}]
  LOADN R4 0
  SETTABLEKS R4 R3 K98 ["currentValue"]
  LOADN R4 0
  SETTABLEKS R4 R3 K99 ["defaultValue"]
  GETIMPORT R4 K105 [UDim2.fromOffset]
  LOADN R5 220
  LOADN R6 232
  CALL R4 2 1
  SETTABLEKS R4 R3 K100 ["position"]
  LOADN R4 206
  SETTABLEKS R4 R3 K101 ["rotation"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K20 ["LeftLipCornerPuller"]
  GETTABLEKS R2 R0 K94 ["scaleFaceControlMapping"]
  DUPTABLE R3 K102 [{"currentValue", "defaultValue", "position", "rotation"}]
  LOADN R4 0
  SETTABLEKS R4 R3 K98 ["currentValue"]
  LOADN R4 0
  SETTABLEKS R4 R3 K99 ["defaultValue"]
  GETIMPORT R4 K105 [UDim2.fromOffset]
  LOADN R5 240
  LOADN R6 14
  CALL R4 2 1
  SETTABLEKS R4 R3 K100 ["position"]
  LOADN R4 0
  SETTABLEKS R4 R3 K101 ["rotation"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K48 ["LeftLipStretcher"]
  GETTABLEKS R2 R0 K94 ["scaleFaceControlMapping"]
  DUPTABLE R3 K102 [{"currentValue", "defaultValue", "position", "rotation"}]
  LOADN R4 0
  SETTABLEKS R4 R3 K98 ["currentValue"]
  LOADN R4 0
  SETTABLEKS R4 R3 K99 ["defaultValue"]
  GETIMPORT R4 K105 [UDim2.fromOffset]
  LOADN R5 200
  LOADN R6 220
  CALL R4 2 1
  SETTABLEKS R4 R3 K100 ["position"]
  LOADN R4 191
  SETTABLEKS R4 R3 K101 ["rotation"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K32 ["LeftUpperLipRaiser"]
  GETTABLEKS R2 R0 K94 ["scaleFaceControlMapping"]
  DUPTABLE R3 K102 [{"currentValue", "defaultValue", "position", "rotation"}]
  LOADN R4 0
  SETTABLEKS R4 R3 K98 ["currentValue"]
  LOADN R4 0
  SETTABLEKS R4 R3 K99 ["defaultValue"]
  GETIMPORT R4 K105 [UDim2.fromOffset]
  LOADN R5 60
  LOADN R6 229
  CALL R4 2 1
  SETTABLEKS R4 R3 K100 ["position"]
  LOADN R4 180
  SETTABLEKS R4 R3 K101 ["rotation"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K38 ["RightCheekPuff"]
  GETTABLEKS R2 R0 K94 ["scaleFaceControlMapping"]
  DUPTABLE R3 K102 [{"currentValue", "defaultValue", "position", "rotation"}]
  LOADN R4 0
  SETTABLEKS R4 R3 K98 ["currentValue"]
  LOADN R4 0
  SETTABLEKS R4 R3 K99 ["defaultValue"]
  GETIMPORT R4 K105 [UDim2.fromOffset]
  LOADN R5 65
  LOADN R6 250
  CALL R4 2 1
  SETTABLEKS R4 R3 K100 ["position"]
  LOADN R4 180
  SETTABLEKS R4 R3 K101 ["rotation"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K46 ["RightDimpler"]
  GETTABLEKS R2 R0 K94 ["scaleFaceControlMapping"]
  DUPTABLE R3 K102 [{"currentValue", "defaultValue", "position", "rotation"}]
  LOADN R4 0
  SETTABLEKS R4 R3 K98 ["currentValue"]
  LOADN R4 0
  SETTABLEKS R4 R3 K99 ["defaultValue"]
  GETIMPORT R4 K105 [UDim2.fromOffset]
  LOADN R5 95
  LOADN R6 45
  CALL R4 2 1
  SETTABLEKS R4 R3 K100 ["position"]
  LOADN R4 125
  SETTABLEKS R4 R3 K101 ["rotation"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K26 ["RightLipCornerDown"]
  GETTABLEKS R2 R0 K94 ["scaleFaceControlMapping"]
  DUPTABLE R3 K102 [{"currentValue", "defaultValue", "position", "rotation"}]
  LOADN R4 0
  SETTABLEKS R4 R3 K98 ["currentValue"]
  LOADN R4 0
  SETTABLEKS R4 R3 K99 ["defaultValue"]
  GETIMPORT R4 K105 [UDim2.fromOffset]
  LOADN R5 125
  LOADN R6 39
  CALL R4 2 1
  SETTABLEKS R4 R3 K100 ["position"]
  LOADN R4 114
  SETTABLEKS R4 R3 K101 ["rotation"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K30 ["RightLowerLipDepressor"]
  GETTABLEKS R2 R0 K94 ["scaleFaceControlMapping"]
  DUPTABLE R3 K102 [{"currentValue", "defaultValue", "position", "rotation"}]
  LOADN R4 0
  SETTABLEKS R4 R3 K98 ["currentValue"]
  LOADN R4 0
  SETTABLEKS R4 R3 K99 ["defaultValue"]
  GETIMPORT R4 K105 [UDim2.fromOffset]
  LOADN R5 100
  LOADN R6 232
  CALL R4 2 1
  SETTABLEKS R4 R3 K100 ["position"]
  LOADN R4 126
  SETTABLEKS R4 R3 K101 ["rotation"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K22 ["RightLipCornerPuller"]
  GETTABLEKS R2 R0 K94 ["scaleFaceControlMapping"]
  DUPTABLE R3 K102 [{"currentValue", "defaultValue", "position", "rotation"}]
  LOADN R4 0
  SETTABLEKS R4 R3 K98 ["currentValue"]
  LOADN R4 0
  SETTABLEKS R4 R3 K99 ["defaultValue"]
  GETIMPORT R4 K105 [UDim2.fromOffset]
  LOADN R5 85
  LOADN R6 14
  CALL R4 2 1
  SETTABLEKS R4 R3 K100 ["position"]
  LOADN R4 180
  SETTABLEKS R4 R3 K101 ["rotation"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K50 ["RightLipStretcher"]
  GETTABLEKS R2 R0 K94 ["scaleFaceControlMapping"]
  DUPTABLE R3 K102 [{"currentValue", "defaultValue", "position", "rotation"}]
  LOADN R4 0
  SETTABLEKS R4 R3 K98 ["currentValue"]
  LOADN R4 0
  SETTABLEKS R4 R3 K99 ["defaultValue"]
  GETIMPORT R4 K105 [UDim2.fromOffset]
  LOADN R5 120
  LOADN R6 220
  CALL R4 2 1
  SETTABLEKS R4 R3 K100 ["position"]
  LOADN R4 146
  SETTABLEKS R4 R3 K101 ["rotation"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K34 ["RightUpperLipRaiser"]
  GETTABLEKS R2 R0 K94 ["scaleFaceControlMapping"]
  DUPTABLE R3 K107 [{"currentValue", "defaultValue", "position", "rotation", "customWidth"}]
  LOADN R4 0
  SETTABLEKS R4 R3 K98 ["currentValue"]
  LOADN R4 0
  SETTABLEKS R4 R3 K99 ["defaultValue"]
  GETIMPORT R4 K105 [UDim2.fromOffset]
  LOADN R5 168
  LOADN R6 100
  CALL R4 2 1
  SETTABLEKS R4 R3 K100 ["position"]
  LOADN R4 0
  SETTABLEKS R4 R3 K101 ["rotation"]
  LOADN R4 20
  SETTABLEKS R4 R3 K106 ["customWidth"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K60 ["Corrugator"]
  GETTABLEKS R2 R0 K94 ["scaleFaceControlMapping"]
  DUPTABLE R3 K107 [{"currentValue", "defaultValue", "position", "rotation", "customWidth"}]
  LOADN R4 0
  SETTABLEKS R4 R3 K98 ["currentValue"]
  LOADN R4 0
  SETTABLEKS R4 R3 K99 ["defaultValue"]
  GETIMPORT R4 K105 [UDim2.fromOffset]
  LOADN R5 195
  LOADN R6 97
  CALL R4 2 1
  SETTABLEKS R4 R3 K100 ["position"]
  LOADN R4 100
  SETTABLEKS R4 R3 K101 ["rotation"]
  LOADN R4 20
  SETTABLEKS R4 R3 K106 ["customWidth"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K0 ["LeftBrowLowerer"]
  GETTABLEKS R2 R0 K94 ["scaleFaceControlMapping"]
  DUPTABLE R3 K102 [{"currentValue", "defaultValue", "position", "rotation"}]
  LOADN R4 0
  SETTABLEKS R4 R3 K98 ["currentValue"]
  LOADN R4 0
  SETTABLEKS R4 R3 K99 ["defaultValue"]
  GETIMPORT R4 K105 [UDim2.fromOffset]
  LOADN R5 225
  LOADN R6 55
  CALL R4 2 1
  SETTABLEKS R4 R3 K100 ["position"]
  LOADN R4 186
  SETTABLEKS R4 R3 K101 ["rotation"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K4 ["LeftOuterBrowRaiser"]
  GETTABLEKS R2 R0 K94 ["scaleFaceControlMapping"]
  DUPTABLE R3 K102 [{"currentValue", "defaultValue", "position", "rotation"}]
  LOADN R4 0
  SETTABLEKS R4 R3 K98 ["currentValue"]
  LOADN R4 0
  SETTABLEKS R4 R3 K99 ["defaultValue"]
  GETIMPORT R4 K105 [UDim2.fromOffset]
  LOADN R5 175
  LOADN R6 185
  CALL R4 2 1
  SETTABLEKS R4 R3 K100 ["position"]
  LOADN R4 166
  SETTABLEKS R4 R3 K101 ["rotation"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K16 ["LeftNoseWrinkler"]
  GETTABLEKS R2 R0 K94 ["scaleFaceControlMapping"]
  DUPTABLE R3 K102 [{"currentValue", "defaultValue", "position", "rotation"}]
  LOADN R4 0
  SETTABLEKS R4 R3 K98 ["currentValue"]
  LOADN R4 0
  SETTABLEKS R4 R3 K99 ["defaultValue"]
  GETIMPORT R4 K105 [UDim2.fromOffset]
  LOADN R5 180
  LOADN R6 55
  CALL R4 2 1
  SETTABLEKS R4 R3 K100 ["position"]
  LOADN R4 166
  SETTABLEKS R4 R3 K101 ["rotation"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K8 ["LeftInnerBrowRaiser"]
  GETTABLEKS R2 R0 K94 ["scaleFaceControlMapping"]
  DUPTABLE R3 K107 [{"currentValue", "defaultValue", "position", "rotation", "customWidth"}]
  LOADN R4 0
  SETTABLEKS R4 R3 K98 ["currentValue"]
  LOADN R4 0
  SETTABLEKS R4 R3 K99 ["defaultValue"]
  GETIMPORT R4 K105 [UDim2.fromOffset]
  LOADN R5 137
  LOADN R6 97
  CALL R4 2 1
  SETTABLEKS R4 R3 K100 ["position"]
  LOADN R4 80
  SETTABLEKS R4 R3 K101 ["rotation"]
  LOADN R4 20
  SETTABLEKS R4 R3 K106 ["customWidth"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K2 ["RightBrowLowerer"]
  GETTABLEKS R2 R0 K94 ["scaleFaceControlMapping"]
  DUPTABLE R3 K102 [{"currentValue", "defaultValue", "position", "rotation"}]
  LOADN R4 0
  SETTABLEKS R4 R3 K98 ["currentValue"]
  LOADN R4 0
  SETTABLEKS R4 R3 K99 ["defaultValue"]
  GETIMPORT R4 K105 [UDim2.fromOffset]
  LOADN R5 95
  LOADN R6 55
  CALL R4 2 1
  SETTABLEKS R4 R3 K100 ["position"]
  LOADN R4 146
  SETTABLEKS R4 R3 K101 ["rotation"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K6 ["RightOuterBrowRaiser"]
  GETTABLEKS R2 R0 K94 ["scaleFaceControlMapping"]
  DUPTABLE R3 K102 [{"currentValue", "defaultValue", "position", "rotation"}]
  LOADN R4 0
  SETTABLEKS R4 R3 K98 ["currentValue"]
  LOADN R4 0
  SETTABLEKS R4 R3 K99 ["defaultValue"]
  GETIMPORT R4 K105 [UDim2.fromOffset]
  LOADN R5 142
  LOADN R6 55
  CALL R4 2 1
  SETTABLEKS R4 R3 K100 ["position"]
  LOADN R4 166
  SETTABLEKS R4 R3 K101 ["rotation"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K10 ["RightInnerBrowRaiser"]
  GETTABLEKS R2 R0 K94 ["scaleFaceControlMapping"]
  DUPTABLE R3 K102 [{"currentValue", "defaultValue", "position", "rotation"}]
  LOADN R4 0
  SETTABLEKS R4 R3 K98 ["currentValue"]
  LOADN R4 0
  SETTABLEKS R4 R3 K99 ["defaultValue"]
  GETIMPORT R4 K105 [UDim2.fromOffset]
  LOADN R5 147
  LOADN R6 185
  CALL R4 2 1
  SETTABLEKS R4 R3 K100 ["position"]
  LOADN R4 166
  SETTABLEKS R4 R3 K101 ["rotation"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K18 ["RightNoseWrinkler"]
  GETTABLEKS R2 R0 K94 ["scaleFaceControlMapping"]
  DUPTABLE R3 K102 [{"currentValue", "defaultValue", "position", "rotation"}]
  LOADN R4 0
  SETTABLEKS R4 R3 K98 ["currentValue"]
  LOADN R4 0
  SETTABLEKS R4 R3 K99 ["defaultValue"]
  GETIMPORT R4 K105 [UDim2.fromOffset]
  LOADN R5 255
  LOADN R6 175
  CALL R4 2 1
  SETTABLEKS R4 R3 K100 ["position"]
  LOADN R4 141
  SETTABLEKS R4 R3 K101 ["rotation"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K40 ["LeftCheekRaiser"]
  GETTABLEKS R2 R0 K94 ["scaleFaceControlMapping"]
  DUPTABLE R3 K107 [{"currentValue", "defaultValue", "position", "rotation", "customWidth"}]
  LOADK R4 K108 [0.5]
  SETTABLEKS R4 R3 K98 ["currentValue"]
  LOADK R4 K108 [0.5]
  SETTABLEKS R4 R3 K99 ["defaultValue"]
  GETIMPORT R4 K105 [UDim2.fromOffset]
  LOADN R5 185
  LOADN R6 145
  CALL R4 2 1
  SETTABLEKS R4 R3 K100 ["position"]
  LOADN R4 90
  SETTABLEKS R4 R3 K101 ["rotation"]
  LOADN R4 30
  SETTABLEKS R4 R3 K106 ["customWidth"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K12 ["LeftEyeLid"]
  GETTABLEKS R2 R0 K94 ["scaleFaceControlMapping"]
  DUPTABLE R3 K102 [{"currentValue", "defaultValue", "position", "rotation"}]
  LOADN R4 0
  SETTABLEKS R4 R3 K98 ["currentValue"]
  LOADN R4 0
  SETTABLEKS R4 R3 K99 ["defaultValue"]
  GETIMPORT R4 K105 [UDim2.fromOffset]
  LOADN R5 65
  LOADN R6 175
  CALL R4 2 1
  SETTABLEKS R4 R3 K100 ["position"]
  LOADN R4 194
  SETTABLEKS R4 R3 K101 ["rotation"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K42 ["RightCheekRaiser"]
  GETTABLEKS R2 R0 K94 ["scaleFaceControlMapping"]
  DUPTABLE R3 K107 [{"currentValue", "defaultValue", "position", "rotation", "customWidth"}]
  LOADK R4 K108 [0.5]
  SETTABLEKS R4 R3 K98 ["currentValue"]
  LOADK R4 K108 [0.5]
  SETTABLEKS R4 R3 K99 ["defaultValue"]
  GETIMPORT R4 K105 [UDim2.fromOffset]
  LOADN R5 135
  LOADN R6 145
  CALL R4 2 1
  SETTABLEKS R4 R3 K100 ["position"]
  LOADN R4 90
  SETTABLEKS R4 R3 K101 ["rotation"]
  LOADN R4 30
  SETTABLEKS R4 R3 K106 ["customWidth"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K14 ["RightEyeLid"]
  SETTABLEKS R1 R0 K109 ["frontViewControls"]
  DUPTABLE R1 K110 [{"FlatPucker", "Funneler", "LowerLipSuck", "LipPresser", "Pucker", "UpperLipSuck", "JawDrop", "Jaw", "Tongue", "TongueOut"}]
  GETTABLEKS R2 R0 K94 ["scaleFaceControlMapping"]
  DUPTABLE R3 K107 [{"currentValue", "defaultValue", "position", "rotation", "customWidth"}]
  LOADN R4 0
  SETTABLEKS R4 R3 K98 ["currentValue"]
  LOADN R4 0
  SETTABLEKS R4 R3 K99 ["defaultValue"]
  GETIMPORT R4 K105 [UDim2.fromOffset]
  LOADN R5 70
  LOADN R6 4
  CALL R4 2 1
  SETTABLEKS R4 R3 K100 ["position"]
  LOADN R4 0
  SETTABLEKS R4 R3 K101 ["rotation"]
  LOADN R4 50
  SETTABLEKS R4 R3 K106 ["customWidth"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K80 ["FlatPucker"]
  GETTABLEKS R2 R0 K94 ["scaleFaceControlMapping"]
  DUPTABLE R3 K107 [{"currentValue", "defaultValue", "position", "rotation", "customWidth"}]
  LOADN R4 0
  SETTABLEKS R4 R3 K98 ["currentValue"]
  LOADN R4 0
  SETTABLEKS R4 R3 K99 ["defaultValue"]
  GETIMPORT R4 K105 [UDim2.fromOffset]
  LOADN R5 70
  LOADN R6 200
  CALL R4 2 1
  SETTABLEKS R4 R3 K100 ["position"]
  LOADN R4 0
  SETTABLEKS R4 R3 K101 ["rotation"]
  LOADN R4 50
  SETTABLEKS R4 R3 K106 ["customWidth"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K78 ["Funneler"]
  GETTABLEKS R2 R0 K94 ["scaleFaceControlMapping"]
  DUPTABLE R3 K102 [{"currentValue", "defaultValue", "position", "rotation"}]
  LOADN R4 0
  SETTABLEKS R4 R3 K98 ["currentValue"]
  LOADN R4 0
  SETTABLEKS R4 R3 K99 ["defaultValue"]
  GETIMPORT R4 K105 [UDim2.fromOffset]
  LOADN R5 140
  LOADN R6 24
  CALL R4 2 1
  SETTABLEKS R4 R3 K100 ["position"]
  LOADN R4 231
  SETTABLEKS R4 R3 K101 ["rotation"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K76 ["LowerLipSuck"]
  GETTABLEKS R2 R0 K94 ["scaleFaceControlMapping"]
  DUPTABLE R3 K107 [{"currentValue", "defaultValue", "position", "rotation", "customWidth"}]
  LOADN R4 0
  SETTABLEKS R4 R3 K98 ["currentValue"]
  LOADN R4 0
  SETTABLEKS R4 R3 K99 ["defaultValue"]
  GETIMPORT R4 K105 [UDim2.fromOffset]
  LOADN R5 140
  LOADN R6 230
  CALL R4 2 1
  SETTABLEKS R4 R3 K100 ["position"]
  LOADN R4 166
  SETTABLEKS R4 R3 K101 ["rotation"]
  LOADN R4 20
  SETTABLEKS R4 R3 K106 ["customWidth"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K72 ["LipPresser"]
  GETTABLEKS R2 R0 K94 ["scaleFaceControlMapping"]
  DUPTABLE R3 K107 [{"currentValue", "defaultValue", "position", "rotation", "customWidth"}]
  LOADN R4 0
  SETTABLEKS R4 R3 K98 ["currentValue"]
  LOADN R4 0
  SETTABLEKS R4 R3 K99 ["defaultValue"]
  GETIMPORT R4 K105 [UDim2.fromOffset]
  LOADN R5 70
  LOADN R6 230
  CALL R4 2 1
  SETTABLEKS R4 R3 K100 ["position"]
  LOADN R4 0
  SETTABLEKS R4 R3 K101 ["rotation"]
  LOADN R4 50
  SETTABLEKS R4 R3 K106 ["customWidth"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K70 ["Pucker"]
  GETTABLEKS R2 R0 K94 ["scaleFaceControlMapping"]
  DUPTABLE R3 K102 [{"currentValue", "defaultValue", "position", "rotation"}]
  LOADN R4 0
  SETTABLEKS R4 R3 K98 ["currentValue"]
  LOADN R4 0
  SETTABLEKS R4 R3 K99 ["defaultValue"]
  GETIMPORT R4 K105 [UDim2.fromOffset]
  LOADN R5 140
  LOADN R6 185
  CALL R4 2 1
  SETTABLEKS R4 R3 K100 ["position"]
  LOADN R4 36
  SETTABLEKS R4 R3 K101 ["rotation"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K74 ["UpperLipSuck"]
  GETTABLEKS R2 R0 K94 ["scaleFaceControlMapping"]
  DUPTABLE R3 K107 [{"currentValue", "defaultValue", "position", "rotation", "customWidth"}]
  LOADN R4 0
  SETTABLEKS R4 R3 K98 ["currentValue"]
  LOADN R4 0
  SETTABLEKS R4 R3 K99 ["defaultValue"]
  GETIMPORT R4 K105 [UDim2.fromOffset]
  LOADN R5 203
  LOADN R6 84
  CALL R4 2 1
  SETTABLEKS R4 R3 K100 ["position"]
  LOADN R4 90
  SETTABLEKS R4 R3 K101 ["rotation"]
  LOADN R4 40
  SETTABLEKS R4 R3 K106 ["customWidth"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K64 ["JawDrop"]
  GETTABLEKS R2 R0 K94 ["scaleFaceControlMapping"]
  DUPTABLE R3 K107 [{"currentValue", "defaultValue", "position", "rotation", "customWidth"}]
  LOADK R4 K108 [0.5]
  SETTABLEKS R4 R3 K98 ["currentValue"]
  LOADK R4 K108 [0.5]
  SETTABLEKS R4 R3 K99 ["defaultValue"]
  GETIMPORT R4 K105 [UDim2.fromOffset]
  LOADN R5 170
  LOADN R6 10
  CALL R4 2 1
  SETTABLEKS R4 R3 K100 ["position"]
  LOADN R4 0
  SETTABLEKS R4 R3 K101 ["rotation"]
  LOADN R4 60
  SETTABLEKS R4 R3 K106 ["customWidth"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K62 ["Jaw"]
  GETTABLEKS R2 R0 K94 ["scaleFaceControlMapping"]
  DUPTABLE R3 K107 [{"currentValue", "defaultValue", "position", "rotation", "customWidth"}]
  LOADK R4 K108 [0.5]
  SETTABLEKS R4 R3 K98 ["currentValue"]
  LOADK R4 K108 [0.5]
  SETTABLEKS R4 R3 K99 ["defaultValue"]
  GETIMPORT R4 K105 [UDim2.fromOffset]
  LOADN R5 24
  LOADN R6 240
  CALL R4 2 1
  SETTABLEKS R4 R3 K100 ["position"]
  LOADN R4 166
  SETTABLEKS R4 R3 K101 ["rotation"]
  LOADN R4 50
  SETTABLEKS R4 R3 K106 ["customWidth"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K66 ["Tongue"]
  GETTABLEKS R2 R0 K94 ["scaleFaceControlMapping"]
  DUPTABLE R3 K111 [{"currentValue", "defaultValue", "position", "customWidth", "rotation"}]
  LOADN R4 0
  SETTABLEKS R4 R3 K98 ["currentValue"]
  LOADN R4 0
  SETTABLEKS R4 R3 K99 ["defaultValue"]
  GETIMPORT R4 K105 [UDim2.fromOffset]
  LOADN R5 220
  LOADN R6 240
  CALL R4 2 1
  SETTABLEKS R4 R3 K100 ["position"]
  LOADN R4 50
  SETTABLEKS R4 R3 K106 ["customWidth"]
  LOADN R4 180
  SETTABLEKS R4 R3 K101 ["rotation"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K68 ["TongueOut"]
  SETTABLEKS R1 R0 K112 ["sideViewControls"]
  DUPTABLE R1 K114 [{"EyesDragBox"}]
  GETTABLEKS R2 R0 K96 ["scaleDragboxMapping"]
  DUPTABLE R3 K120 [{"currentValue", "defaultValue", "position", "rotation", "length", "minX", "maxX", "minY", "maxY"}]
  GETIMPORT R4 K123 [Vector2.new]
  LOADN R5 0
  LOADN R6 0
  CALL R4 2 1
  SETTABLEKS R4 R3 K98 ["currentValue"]
  GETIMPORT R4 K123 [Vector2.new]
  LOADN R5 0
  LOADN R6 0
  CALL R4 2 1
  SETTABLEKS R4 R3 K99 ["defaultValue"]
  GETIMPORT R4 K105 [UDim2.fromOffset]
  LOADN R5 157
  LOADN R6 130
  CALL R4 2 1
  SETTABLEKS R4 R3 K100 ["position"]
  LOADN R4 0
  SETTABLEKS R4 R3 K101 ["rotation"]
  LOADN R4 35
  SETTABLEKS R4 R3 K115 ["length"]
  LOADN R4 255
  SETTABLEKS R4 R3 K116 ["minX"]
  LOADN R4 1
  SETTABLEKS R4 R3 K117 ["maxX"]
  LOADN R4 255
  SETTABLEKS R4 R3 K118 ["minY"]
  LOADN R4 1
  SETTABLEKS R4 R3 K119 ["maxY"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K113 ["EyesDragBox"]
  SETTABLEKS R1 R0 K124 ["dragBoxControls"]
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K125 ["FacsPropertiesToFaceControlInfoMap"]
  GETTABLEKS R1 R0 K109 ["frontViewControls"]
  LOADNIL R2
  LOADNIL R3
  FORGPREP R1
  GETTABLEKS R6 R0 K125 ["FacsPropertiesToFaceControlInfoMap"]
  SETTABLE R5 R6 R4
  FORGLOOP R1 2 [-4]
  GETTABLEKS R1 R0 K112 ["sideViewControls"]
  LOADNIL R2
  LOADNIL R3
  FORGPREP R1
  GETTABLEKS R6 R0 K125 ["FacsPropertiesToFaceControlInfoMap"]
  SETTABLE R5 R6 R4
  FORGLOOP R1 2 [-4]
  GETTABLEKS R1 R0 K124 ["dragBoxControls"]
  LOADNIL R2
  LOADNIL R3
  FORGPREP R1
  GETTABLEKS R6 R0 K125 ["FacsPropertiesToFaceControlInfoMap"]
  SETTABLE R5 R6 R4
  FORGLOOP R1 2 [-4]
  RETURN R0 1
