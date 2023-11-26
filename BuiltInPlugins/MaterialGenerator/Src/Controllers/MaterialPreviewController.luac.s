PROTO_0:
  GETUPVAL R4 0
  CALL R4 0 1
  NOT R3 R4
  FASTCALL2K ASSERT R3 K0 [+4]
  LOADK R4 K0 ["Expected FFlagMaterialGeneratorNewUI to be false"]
  GETIMPORT R2 K2 [assert]
  CALL R2 2 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K3 ["new"]
  LOADK R3 K4 ["MaterialService"]
  MOVE R4 R1
  CALL R2 2 1
  NAMECALL R2 R2 K5 ["asInstance"]
  CALL R2 1 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K3 ["new"]
  LOADK R4 K6 ["Selection"]
  MOVE R5 R1
  CALL R3 2 1
  NAMECALL R3 R3 K7 ["asService"]
  CALL R3 1 1
  DUPTABLE R5 K14 [{"_store", "_mock", "_materialService", "_selectionService", "_partMaterialsToRestore", "_previousSelection"}]
  SETTABLEKS R0 R5 K8 ["_store"]
  SETTABLEKS R1 R5 K9 ["_mock"]
  SETTABLEKS R2 R5 K10 ["_materialService"]
  SETTABLEKS R3 R5 K11 ["_selectionService"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K12 ["_partMaterialsToRestore"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K13 ["_previousSelection"]
  GETUPVAL R6 2
  FASTCALL2 SETMETATABLE R5 R6 [+3]
  GETIMPORT R4 K16 [setmetatable]
  CALL R4 2 1
  RETURN R4 1

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["new"]
  MOVE R2 R0
  LOADB R3 1
  CALL R1 2 -1
  RETURN R1 -1

PROTO_2:
  GETTABLEKS R1 R0 K0 ["_material"]
  JUMPIF R1 [+1]
  RETURN R0 0
  NAMECALL R1 R0 K1 ["restoreOriginalPartMaterials"]
  CALL R1 1 0
  GETTABLEKS R1 R0 K2 ["_selectionChangedConnection"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K2 ["_selectionChangedConnection"]
  NAMECALL R1 R1 K3 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K2 ["_selectionChangedConnection"]
  GETTABLEKS R1 R0 K4 ["_materialVariantChangedConnection"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K4 ["_materialVariantChangedConnection"]
  NAMECALL R1 R1 K3 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K4 ["_materialVariantChangedConnection"]
  GETTABLEKS R2 R0 K0 ["_material"]
  GETTABLEKS R1 R2 K5 ["IsTemporary"]
  JUMPIFNOT R1 [+7]
  GETTABLEKS R2 R0 K0 ["_material"]
  GETTABLEKS R1 R2 K6 ["MaterialVariant"]
  LOADNIL R2
  SETTABLEKS R2 R1 K7 ["Parent"]
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["_material"]
  RETURN R0 0

PROTO_3:
  JUMPIFEQKS R0 K0 ["Name"] [+3]
  JUMPIFNOTEQKS R0 K1 ["BaseMaterial"] [+5]
  GETUPVAL R1 0
  NAMECALL R1 R1 K2 ["update"]
  CALL R1 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["restoreOriginalPartMaterials"]
  CALL R0 1 0
  GETUPVAL R0 0
  NAMECALL R0 R0 K1 ["savePartMaterialsAndUpdate"]
  CALL R0 1 0
  RETURN R0 0

PROTO_5:
  GETTABLEKS R2 R0 K0 ["_material"]
  JUMPIFNOTEQ R2 R1 [+2]
  RETURN R0 0
  GETTABLEKS R2 R0 K1 ["_materialVariantChangedConnection"]
  JUMPIFNOT R2 [+5]
  GETTABLEKS R2 R0 K1 ["_materialVariantChangedConnection"]
  NAMECALL R2 R2 K2 ["Disconnect"]
  CALL R2 1 0
  SETTABLEKS R1 R0 K0 ["_material"]
  GETTABLEKS R3 R0 K0 ["_material"]
  GETTABLEKS R2 R3 K3 ["MaterialVariant"]
  GETTABLEKS R3 R2 K4 ["Changed"]
  NEWCLOSURE R5 P0
  CAPTURE VAL R0
  NAMECALL R3 R3 K5 ["Connect"]
  CALL R3 2 1
  SETTABLEKS R3 R0 K1 ["_materialVariantChangedConnection"]
  GETTABLEKS R3 R0 K6 ["_selectionChangedConnection"]
  JUMPIF R3 [+11]
  GETTABLEKS R4 R0 K7 ["_selectionService"]
  GETTABLEKS R3 R4 K8 ["SelectionChanged"]
  NEWCLOSURE R5 P1
  CAPTURE VAL R0
  NAMECALL R3 R3 K5 ["Connect"]
  CALL R3 2 1
  SETTABLEKS R3 R0 K6 ["_selectionChangedConnection"]
  GETTABLEKS R3 R2 K9 ["Parent"]
  JUMPIF R3 [+4]
  GETTABLEKS R3 R0 K10 ["_materialService"]
  SETTABLEKS R3 R2 K9 ["Parent"]
  NAMECALL R3 R0 K11 ["savePartMaterialsAndUpdate"]
  CALL R3 1 0
  RETURN R0 0

PROTO_6:
  GETTABLEKS R1 R0 K0 ["_partMaterialsToRestore"]
  LOADNIL R2
  LOADNIL R3
  FORGPREP R1
  GETTABLEKS R6 R5 K1 ["OriginalMaterial"]
  SETTABLEKS R6 R4 K2 ["Material"]
  GETTABLEKS R6 R5 K3 ["OriginalMaterialVariant"]
  SETTABLEKS R6 R4 K4 ["MaterialVariant"]
  FORGLOOP R1 2 [-9]
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K0 ["_partMaterialsToRestore"]
  RETURN R0 0

PROTO_7:
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K0 ["_partMaterialsToRestore"]
  GETTABLEKS R2 R0 K1 ["_material"]
  GETTABLEKS R1 R2 K2 ["MaterialVariant"]
  GETTABLEKS R2 R0 K3 ["_selectionService"]
  NAMECALL R2 R2 K4 ["Get"]
  CALL R2 1 3
  FORGPREP R2
  LOADK R9 K5 ["BasePart"]
  NAMECALL R7 R6 K6 ["IsA"]
  CALL R7 2 1
  JUMPIFNOT R7 [+20]
  GETTABLEKS R7 R0 K0 ["_partMaterialsToRestore"]
  DUPTABLE R8 K9 [{"OriginalMaterial", "OriginalMaterialVariant"}]
  GETTABLEKS R9 R6 K10 ["Material"]
  SETTABLEKS R9 R8 K7 ["OriginalMaterial"]
  GETTABLEKS R9 R6 K2 ["MaterialVariant"]
  SETTABLEKS R9 R8 K8 ["OriginalMaterialVariant"]
  SETTABLE R8 R7 R6
  GETTABLEKS R7 R1 K11 ["BaseMaterial"]
  SETTABLEKS R7 R6 K10 ["Material"]
  GETTABLEKS R7 R1 K12 ["Name"]
  SETTABLEKS R7 R6 K2 ["MaterialVariant"]
  FORGLOOP R2 2 [-26]
  RETURN R0 0

PROTO_8:
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K0 ["_partMaterialsToRestore"]
  RETURN R0 0

PROTO_9:
  NAMECALL R1 R0 K0 ["restoreOriginalPartMaterials"]
  CALL R1 1 0
  GETUPVAL R1 0
  LOADK R3 K1 ["Original materials before application"]
  NAMECALL R1 R1 K2 ["SetWaypoint"]
  CALL R1 2 0
  NAMECALL R1 R0 K3 ["savePartMaterialsAndUpdate"]
  CALL R1 1 0
  RETURN R0 0

PROTO_10:
  GETTABLEKS R2 R0 K0 ["_material"]
  GETTABLEKS R1 R2 K1 ["MaterialVariant"]
  GETTABLEKS R2 R0 K2 ["_selectionService"]
  NAMECALL R2 R2 K3 ["Get"]
  CALL R2 1 3
  FORGPREP R2
  LOADK R9 K4 ["BasePart"]
  NAMECALL R7 R6 K5 ["IsA"]
  CALL R7 2 1
  JUMPIFNOT R7 [+8]
  GETTABLEKS R7 R1 K6 ["BaseMaterial"]
  SETTABLEKS R7 R6 K7 ["Material"]
  GETTABLEKS R7 R1 K8 ["Name"]
  SETTABLEKS R7 R6 K1 ["MaterialVariant"]
  FORGLOOP R2 2 [-14]
  RETURN R0 0

PROTO_11:
  NAMECALL R1 R0 K0 ["clear"]
  CALL R1 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["ChangeHistoryService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R4 K5 [script]
  GETTABLEKS R3 R4 K6 ["Parent"]
  GETTABLEKS R2 R3 K6 ["Parent"]
  GETTABLEKS R1 R2 K6 ["Parent"]
  GETIMPORT R2 K8 [require]
  GETTABLEKS R4 R1 K9 ["Src"]
  GETTABLEKS R3 R4 K10 ["Types"]
  CALL R2 1 1
  GETIMPORT R3 K8 [require]
  GETTABLEKS R5 R1 K11 ["Packages"]
  GETTABLEKS R4 R5 K12 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R5 R3 K13 ["ContextServices"]
  GETTABLEKS R4 R5 K14 ["ContextItem"]
  GETTABLEKS R6 R3 K15 ["TestHelpers"]
  GETTABLEKS R5 R6 K16 ["ServiceWrapper"]
  GETIMPORT R6 K8 [require]
  GETTABLEKS R9 R1 K9 ["Src"]
  GETTABLEKS R8 R9 K17 ["Flags"]
  GETTABLEKS R7 R8 K18 ["getFFlagMaterialGeneratorNewUI"]
  CALL R6 1 1
  LOADK R9 K19 ["MaterialPreviewController"]
  NAMECALL R7 R4 K20 ["extend"]
  CALL R7 2 1
  DUPCLOSURE R8 K21 [PROTO_0]
  CAPTURE VAL R6
  CAPTURE VAL R5
  CAPTURE VAL R7
  SETTABLEKS R8 R7 K22 ["new"]
  DUPCLOSURE R8 K23 [PROTO_1]
  CAPTURE VAL R7
  SETTABLEKS R8 R7 K24 ["mock"]
  DUPCLOSURE R8 K25 [PROTO_2]
  SETTABLEKS R8 R7 K26 ["clear"]
  DUPCLOSURE R8 K27 [PROTO_5]
  SETTABLEKS R8 R7 K28 ["setMaterial"]
  DUPCLOSURE R8 K29 [PROTO_6]
  SETTABLEKS R8 R7 K30 ["restoreOriginalPartMaterials"]
  DUPCLOSURE R8 K31 [PROTO_7]
  SETTABLEKS R8 R7 K32 ["savePartMaterialsAndUpdate"]
  DUPCLOSURE R8 K33 [PROTO_8]
  SETTABLEKS R8 R7 K34 ["preserveCurrentSelection"]
  DUPCLOSURE R8 K35 [PROTO_9]
  CAPTURE VAL R0
  SETTABLEKS R8 R7 K36 ["plotWaypoint"]
  DUPCLOSURE R8 K37 [PROTO_10]
  SETTABLEKS R8 R7 K38 ["update"]
  DUPCLOSURE R8 K39 [PROTO_11]
  SETTABLEKS R8 R7 K40 ["destroy"]
  RETURN R7 1
