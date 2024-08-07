PROTO_0:
  RETURN R0 0

PROTO_1:
  RETURN R0 0

PROTO_2:
  RETURN R0 0

PROTO_3:
  LOADB R1 0
  RETURN R1 1

PROTO_4:
  RETURN R0 0

PROTO_5:
  LOADK R1 K0 ["None"]
  RETURN R1 1

PROTO_6:
  RETURN R0 0

PROTO_7:
  LOADK R1 K0 [""]
  LOADN R2 0
  RETURN R1 2

PROTO_8:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useState"]
  GETTABLEKS R2 R0 K1 ["promptGroups"]
  CALL R1 1 2
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["useState"]
  GETTABLEKS R4 R0 K2 ["materialStates"]
  CALL R3 1 2
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["useState"]
  LOADNIL R6
  CALL R5 1 2
  DUPTABLE R7 K13 [{"promptGroups", "materialStates", "addMaterials", "removeMaterial", "removeAllMaterials", "hasBaseMaterial", "markHasBaseMaterial", "getMaterialStatus", "setMaterialStatus", "getMaterialIdentifiers", "previewMaterial", "setPreviewMaterial"}]
  SETTABLEKS R1 R7 K1 ["promptGroups"]
  SETTABLEKS R3 R7 K2 ["materialStates"]
  DUPCLOSURE R8 K14 [PROTO_0]
  SETTABLEKS R8 R7 K3 ["addMaterials"]
  DUPCLOSURE R8 K15 [PROTO_1]
  SETTABLEKS R8 R7 K4 ["removeMaterial"]
  DUPCLOSURE R8 K16 [PROTO_2]
  SETTABLEKS R8 R7 K5 ["removeAllMaterials"]
  DUPCLOSURE R8 K17 [PROTO_3]
  SETTABLEKS R8 R7 K6 ["hasBaseMaterial"]
  DUPCLOSURE R8 K18 [PROTO_4]
  SETTABLEKS R8 R7 K7 ["markHasBaseMaterial"]
  DUPCLOSURE R8 K19 [PROTO_5]
  SETTABLEKS R8 R7 K8 ["getMaterialStatus"]
  DUPCLOSURE R8 K20 [PROTO_6]
  SETTABLEKS R8 R7 K9 ["setMaterialStatus"]
  DUPCLOSURE R8 K21 [PROTO_7]
  SETTABLEKS R8 R7 K10 ["getMaterialIdentifiers"]
  SETTABLEKS R5 R7 K11 ["previewMaterial"]
  SETTABLEKS R6 R7 K12 ["setPreviewMaterial"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K22 ["createElement"]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K23 ["Provider"]
  DUPTABLE R10 K25 [{"value"}]
  SETTABLEKS R7 R10 K24 ["value"]
  GETTABLEKS R11 R0 K26 ["children"]
  CALL R8 3 -1
  RETURN R8 -1

PROTO_9:
  NEWTABLE R0 0 1
  DUPTABLE R1 K3 [{"materialVariants", "promptText", "filteredPromptText"}]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K4 ["instances"]
  SETTABLEKS R2 R1 K0 ["materialVariants"]
  LOADK R2 K5 ["test prompt"]
  SETTABLEKS R2 R1 K1 ["promptText"]
  LOADK R2 K5 ["test prompt"]
  SETTABLEKS R2 R1 K2 ["filteredPromptText"]
  SETLIST R0 R1 1 [1]
  RETURN R0 1

PROTO_10:
  NEWTABLE R2 2 1
  LOADK R4 K0 ["1"]
  SETTABLEKS R4 R2 K1 ["generationId"]
  LOADB R4 0
  SETTABLEKS R4 R2 K2 ["hasBaseMaterial"]
  LOADK R3 K3 ["None"]
  SETLIST R2 R3 1 [1]
  RETURN R1 2

PROTO_11:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["collect"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["instances"]
  DUPCLOSURE R2 K2 [PROTO_10]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_12:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useMemo"]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  NEWTABLE R3 0 1
  GETTABLEKS R4 R0 K1 ["instances"]
  SETLIST R3 R4 1 [1]
  CALL R1 2 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["useMemo"]
  NEWCLOSURE R3 P1
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  NEWTABLE R4 0 1
  GETTABLEKS R5 R0 K1 ["instances"]
  SETLIST R4 R5 1 [1]
  CALL R2 2 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["createElement"]
  GETUPVAL R4 2
  DUPTABLE R5 K5 [{"promptGroups", "materialStates"}]
  SETTABLEKS R1 R5 K3 ["promptGroups"]
  SETTABLEKS R2 R5 K4 ["materialStates"]
  GETTABLEKS R6 R0 K6 ["children"]
  CALL R3 3 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["MaterialGenerator"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Dash"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K9 ["Src"]
  GETTABLEKS R5 R6 K10 ["Util"]
  GETTABLEKS R4 R5 K11 ["GeneratedMaterialsContext"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K9 ["Src"]
  GETTABLEKS R5 R6 K12 ["Types"]
  CALL R4 1 1
  NEWTABLE R5 1 0
  DUPCLOSURE R6 K13 [PROTO_8]
  CAPTURE VAL R2
  CAPTURE VAL R3
  DUPCLOSURE R7 K14 [PROTO_12]
  CAPTURE VAL R2
  CAPTURE VAL R1
  CAPTURE VAL R6
  SETTABLEKS R7 R5 K15 ["BasicProvider"]
  RETURN R5 1
