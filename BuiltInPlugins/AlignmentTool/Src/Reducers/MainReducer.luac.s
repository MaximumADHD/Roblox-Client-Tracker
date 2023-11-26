PROTO_0:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"toolEnabled"}]
  GETTABLEKS R5 R1 K0 ["toolEnabled"]
  SETTABLEKS R5 R4 K0 ["toolEnabled"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_1:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K2 [{"alignEnabled", "disabledReason"}]
  GETTABLEKS R5 R1 K0 ["alignEnabled"]
  SETTABLEKS R5 R4 K0 ["alignEnabled"]
  GETTABLEKS R5 R1 K1 ["disabledReason"]
  SETTABLEKS R5 R4 K1 ["disabledReason"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_2:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"alignableObjects"}]
  GETTABLEKS R5 R1 K0 ["alignableObjects"]
  SETTABLEKS R5 R4 K0 ["alignableObjects"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_3:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"alignmentMode"}]
  GETTABLEKS R5 R1 K0 ["alignmentMode"]
  SETTABLEKS R5 R4 K0 ["alignmentMode"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_4:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"alignmentSpace"}]
  GETTABLEKS R5 R1 K0 ["alignmentSpace"]
  SETTABLEKS R5 R4 K0 ["alignmentSpace"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_5:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"enabledAxes"}]
  GETTABLEKS R5 R1 K0 ["enabledAxes"]
  SETTABLEKS R5 R4 K0 ["enabledAxes"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_6:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"relativeTo"}]
  GETTABLEKS R5 R1 K0 ["relativeTo"]
  SETTABLEKS R5 R4 K0 ["relativeTo"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_7:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"previewVisible"}]
  GETTABLEKS R5 R1 K2 ["visible"]
  SETTABLEKS R5 R4 K0 ["previewVisible"]
  CALL R2 2 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Dash"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Rodux"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R6 R0 K8 ["Src"]
  GETTABLEKS R5 R6 K9 ["Utility"]
  GETTABLEKS R4 R5 K10 ["AlignmentMode"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R7 R0 K8 ["Src"]
  GETTABLEKS R6 R7 K9 ["Utility"]
  GETTABLEKS R5 R6 K11 ["AlignmentSpace"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETTABLEKS R8 R0 K8 ["Src"]
  GETTABLEKS R7 R8 K9 ["Utility"]
  GETTABLEKS R6 R7 K12 ["RelativeTo"]
  CALL R5 1 1
  GETTABLEKS R6 R1 K13 ["join"]
  DUPTABLE R7 K23 [{"toolEnabled", "alignEnabled", "disabledReason", "alignableObjects", "alignmentMode", "alignmentSpace", "enabledAxes", "relativeTo", "previewVisible"}]
  LOADB R8 0
  SETTABLEKS R8 R7 K14 ["toolEnabled"]
  LOADB R8 0
  SETTABLEKS R8 R7 K15 ["alignEnabled"]
  NEWTABLE R8 0 0
  SETTABLEKS R8 R7 K16 ["disabledReason"]
  NEWTABLE R8 0 0
  SETTABLEKS R8 R7 K17 ["alignableObjects"]
  GETTABLEKS R8 R3 K24 ["Center"]
  SETTABLEKS R8 R7 K18 ["alignmentMode"]
  GETTABLEKS R8 R4 K25 ["World"]
  SETTABLEKS R8 R7 K19 ["alignmentSpace"]
  DUPTABLE R8 K29 [{"X", "Y", "Z"}]
  LOADB R9 0
  SETTABLEKS R9 R8 K26 ["X"]
  LOADB R9 0
  SETTABLEKS R9 R8 K27 ["Y"]
  LOADB R9 0
  SETTABLEKS R9 R8 K28 ["Z"]
  SETTABLEKS R8 R7 K20 ["enabledAxes"]
  GETTABLEKS R8 R5 K30 ["Selection"]
  SETTABLEKS R8 R7 K21 ["relativeTo"]
  LOADB R8 0
  SETTABLEKS R8 R7 K22 ["previewVisible"]
  GETTABLEKS R8 R2 K31 ["createReducer"]
  MOVE R9 R7
  DUPTABLE R10 K40 [{"SetToolEnabled", "SetAlignEnabled", "SetAlignableObjects", "SetAlignmentMode", "SetAlignmentSpace", "SetEnabledAxes", "SetRelativeTo", "SetPreviewVisible"}]
  DUPCLOSURE R11 K41 [PROTO_0]
  CAPTURE VAL R6
  SETTABLEKS R11 R10 K32 ["SetToolEnabled"]
  DUPCLOSURE R11 K42 [PROTO_1]
  CAPTURE VAL R6
  SETTABLEKS R11 R10 K33 ["SetAlignEnabled"]
  DUPCLOSURE R11 K43 [PROTO_2]
  CAPTURE VAL R6
  SETTABLEKS R11 R10 K34 ["SetAlignableObjects"]
  DUPCLOSURE R11 K44 [PROTO_3]
  CAPTURE VAL R6
  SETTABLEKS R11 R10 K35 ["SetAlignmentMode"]
  DUPCLOSURE R11 K45 [PROTO_4]
  CAPTURE VAL R6
  SETTABLEKS R11 R10 K36 ["SetAlignmentSpace"]
  DUPCLOSURE R11 K46 [PROTO_5]
  CAPTURE VAL R6
  SETTABLEKS R11 R10 K37 ["SetEnabledAxes"]
  DUPCLOSURE R11 K47 [PROTO_6]
  CAPTURE VAL R6
  SETTABLEKS R11 R10 K38 ["SetRelativeTo"]
  DUPCLOSURE R11 K48 [PROTO_7]
  CAPTURE VAL R6
  SETTABLEKS R11 R10 K39 ["SetPreviewVisible"]
  CALL R8 2 1
  RETURN R8 1
