PROTO_0:
  GETUPVAL R2 0
  CALL R2 0 1
  JUMPIFNOT R2 [+25]
  NAMECALL R3 R1 K0 ["GetImportTree"]
  CALL R3 1 1
  GETTABLEKS R2 R3 K1 ["UsesCages"]
  JUMPIF R2 [+2]
  LOADB R2 1
  RETURN R2 1
  GETTABLEKS R2 R0 K2 ["ImportName"]
  LOADK R4 K3 ["_OuterCage"]
  NAMECALL R2 R2 K4 ["match"]
  CALL R2 2 1
  JUMPIF R2 [+7]
  GETTABLEKS R2 R0 K2 ["ImportName"]
  LOADK R4 K5 ["_InnerCage"]
  NAMECALL R2 R2 K4 ["match"]
  CALL R2 2 1
  JUMPIFNOT R2 [+3]
  GETTABLEKS R2 R0 K6 ["CageManifold"]
  RETURN R2 1
  LOADB R2 1
  RETURN R2 1

PROTO_1:
  GETUPVAL R2 0
  CALL R2 0 1
  JUMPIFNOT R2 [+25]
  NAMECALL R3 R1 K0 ["GetImportTree"]
  CALL R3 1 1
  GETTABLEKS R2 R3 K1 ["UsesCages"]
  JUMPIF R2 [+2]
  LOADB R2 1
  RETURN R2 1
  GETTABLEKS R2 R0 K2 ["ImportName"]
  LOADK R4 K3 ["_OuterCage"]
  NAMECALL R2 R2 K4 ["match"]
  CALL R2 2 1
  JUMPIF R2 [+7]
  GETTABLEKS R2 R0 K2 ["ImportName"]
  LOADK R4 K5 ["_InnerCage"]
  NAMECALL R2 R2 K4 ["match"]
  CALL R2 2 1
  JUMPIFNOT R2 [+3]
  GETTABLEKS R2 R0 K6 ["CageNoOverlappingVertices"]
  RETURN R2 1
  LOADB R2 1
  RETURN R2 1

PROTO_2:
  GETUPVAL R2 0
  CALL R2 0 1
  JUMPIFNOT R2 [+25]
  NAMECALL R3 R1 K0 ["GetImportTree"]
  CALL R3 1 1
  GETTABLEKS R2 R3 K1 ["UsesCages"]
  JUMPIF R2 [+2]
  LOADB R2 1
  RETURN R2 1
  GETTABLEKS R2 R0 K2 ["ImportName"]
  LOADK R4 K3 ["_OuterCage"]
  NAMECALL R2 R2 K4 ["match"]
  CALL R2 2 1
  JUMPIF R2 [+7]
  GETTABLEKS R2 R0 K2 ["ImportName"]
  LOADK R4 K5 ["_InnerCage"]
  NAMECALL R2 R2 K4 ["match"]
  CALL R2 2 1
  JUMPIFNOT R2 [+3]
  GETTABLEKS R2 R0 K6 ["CageUVMatched"]
  RETURN R2 1
  LOADB R2 1
  RETURN R2 1

PROTO_3:
  GETUPVAL R2 0
  CALL R2 0 1
  JUMPIFNOT R2 [+25]
  NAMECALL R3 R1 K0 ["GetImportTree"]
  CALL R3 1 1
  GETTABLEKS R2 R3 K1 ["UsesCages"]
  JUMPIF R2 [+2]
  LOADB R2 1
  RETURN R2 1
  GETTABLEKS R2 R0 K2 ["ImportName"]
  LOADK R4 K3 ["_OuterCage"]
  NAMECALL R2 R2 K4 ["match"]
  CALL R2 2 1
  JUMPIF R2 [+7]
  GETTABLEKS R2 R0 K2 ["ImportName"]
  LOADK R4 K5 ["_InnerCage"]
  NAMECALL R2 R2 K4 ["match"]
  CALL R2 2 1
  JUMPIFNOT R2 [+3]
  GETTABLEKS R2 R0 K6 ["CageMeshNotIntersected"]
  RETURN R2 1
  LOADB R2 1
  RETURN R2 1

PROTO_4:
  GETUPVAL R2 0
  CALL R2 0 1
  JUMPIFNOT R2 [+18]
  NAMECALL R3 R1 K0 ["GetImportTree"]
  CALL R3 1 1
  GETTABLEKS R2 R3 K1 ["UsesCages"]
  JUMPIF R2 [+2]
  LOADB R2 1
  RETURN R2 1
  GETTABLEKS R2 R0 K2 ["ImportName"]
  LOADK R4 K3 ["_Att"]
  NAMECALL R2 R2 K4 ["match"]
  CALL R2 2 1
  JUMPIF R2 [+3]
  GETTABLEKS R2 R0 K5 ["MeshNoHoleDetected"]
  RETURN R2 1
  LOADB R2 1
  RETURN R2 1

PROTO_5:
  GETUPVAL R2 0
  CALL R2 0 1
  JUMPIFNOT R2 [+25]
  NAMECALL R3 R1 K0 ["GetImportTree"]
  CALL R3 1 1
  GETTABLEKS R2 R3 K1 ["UsesCages"]
  JUMPIF R2 [+2]
  LOADB R2 1
  RETURN R2 1
  GETTABLEKS R2 R0 K2 ["ImportName"]
  LOADK R4 K3 ["_OuterCage"]
  NAMECALL R2 R2 K4 ["match"]
  CALL R2 2 1
  JUMPIF R2 [+7]
  GETTABLEKS R2 R0 K2 ["ImportName"]
  LOADK R4 K5 ["_InnerCage"]
  NAMECALL R2 R2 K4 ["match"]
  CALL R2 2 1
  JUMPIFNOT R2 [+3]
  GETTABLEKS R2 R0 K6 ["NoIrrelevantCageModified"]
  RETURN R2 1
  LOADB R2 1
  RETURN R2 1

PROTO_6:
  GETUPVAL R2 0
  CALL R2 0 1
  JUMPIFNOT R2 [+18]
  NAMECALL R3 R1 K0 ["GetImportTree"]
  CALL R3 1 1
  GETTABLEKS R2 R3 K1 ["UsesCages"]
  JUMPIF R2 [+2]
  LOADB R2 1
  RETURN R2 1
  GETTABLEKS R2 R0 K2 ["ImportName"]
  LOADK R4 K3 ["_OuterCage"]
  NAMECALL R2 R2 K4 ["match"]
  CALL R2 2 1
  JUMPIFNOT R2 [+3]
  GETTABLEKS R2 R0 K5 ["NoOuterCageFarExtendedFromMesh"]
  RETURN R2 1
  LOADB R2 1
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R6 R0 K5 ["Src"]
  GETTABLEKS R5 R6 K6 ["Components"]
  GETTABLEKS R4 R5 K7 ["Properties"]
  GETTABLEKS R3 R4 K8 ["Types"]
  GETTABLEKS R2 R3 K9 ["VisibilityProperty"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R5 R0 K5 ["Src"]
  GETTABLEKS R4 R5 K10 ["Flags"]
  GETTABLEKS R3 R4 K11 ["getFFlagLCQualityCheckDisplay"]
  CALL R2 1 1
  DUPCLOSURE R3 K12 [PROTO_0]
  CAPTURE VAL R2
  DUPCLOSURE R4 K13 [PROTO_1]
  CAPTURE VAL R2
  DUPCLOSURE R5 K14 [PROTO_2]
  CAPTURE VAL R2
  DUPCLOSURE R6 K15 [PROTO_3]
  CAPTURE VAL R2
  DUPCLOSURE R7 K16 [PROTO_4]
  CAPTURE VAL R2
  DUPCLOSURE R8 K17 [PROTO_5]
  CAPTURE VAL R2
  DUPCLOSURE R9 K18 [PROTO_6]
  CAPTURE VAL R2
  NEWTABLE R10 0 2
  DUPTABLE R11 K20 [{"Section", "Properties"}]
  LOADK R12 K21 ["ObjectGeneral"]
  SETTABLEKS R12 R11 K19 ["Section"]
  NEWTABLE R12 0 3
  DUPTABLE R13 K24 [{"Name", "Editable"}]
  LOADK R14 K25 ["ImportName"]
  SETTABLEKS R14 R13 K22 ["Name"]
  LOADB R14 1
  SETTABLEKS R14 R13 K23 ["Editable"]
  DUPTABLE R14 K24 [{"Name", "Editable"}]
  LOADK R15 K26 ["Anchored"]
  SETTABLEKS R15 R14 K22 ["Name"]
  LOADB R15 1
  SETTABLEKS R15 R14 K23 ["Editable"]
  DUPTABLE R15 K24 [{"Name", "Editable"}]
  LOADK R16 K27 ["UseImportedPivot"]
  SETTABLEKS R16 R15 K22 ["Name"]
  LOADB R16 1
  SETTABLEKS R16 R15 K23 ["Editable"]
  SETLIST R12 R13 3 [1]
  SETTABLEKS R12 R11 K7 ["Properties"]
  DUPTABLE R12 K20 [{"Section", "Properties"}]
  LOADK R13 K28 ["ObjectGeometry"]
  SETTABLEKS R13 R12 K19 ["Section"]
  NEWTABLE R13 0 11
  DUPTABLE R14 K24 [{"Name", "Editable"}]
  LOADK R15 K29 ["Dimensions"]
  SETTABLEKS R15 R14 K22 ["Name"]
  LOADB R15 0
  SETTABLEKS R15 R14 K23 ["Editable"]
  DUPTABLE R15 K24 [{"Name", "Editable"}]
  LOADK R16 K30 ["PolygonCount"]
  SETTABLEKS R16 R15 K22 ["Name"]
  LOADB R16 0
  SETTABLEKS R16 R15 K23 ["Editable"]
  DUPTABLE R16 K24 [{"Name", "Editable"}]
  LOADK R17 K31 ["DoubleSided"]
  SETTABLEKS R17 R16 K22 ["Name"]
  LOADB R17 1
  SETTABLEKS R17 R16 K23 ["Editable"]
  DUPTABLE R17 K24 [{"Name", "Editable"}]
  LOADK R18 K32 ["IgnoreVertexColors"]
  SETTABLEKS R18 R17 K22 ["Name"]
  LOADB R18 1
  SETTABLEKS R18 R17 K23 ["Editable"]
  DUPTABLE R18 K35 [{"Name", "Editable", "ComponentFactory", "ShouldHide"}]
  LOADK R19 K36 ["CageNonManifoldPreview"]
  SETTABLEKS R19 R18 K22 ["Name"]
  LOADB R19 1
  SETTABLEKS R19 R18 K23 ["Editable"]
  SETTABLEKS R1 R18 K33 ["ComponentFactory"]
  SETTABLEKS R3 R18 K34 ["ShouldHide"]
  DUPTABLE R19 K35 [{"Name", "Editable", "ComponentFactory", "ShouldHide"}]
  LOADK R20 K37 ["CageOverlappingVerticesPreview"]
  SETTABLEKS R20 R19 K22 ["Name"]
  LOADB R20 1
  SETTABLEKS R20 R19 K23 ["Editable"]
  SETTABLEKS R1 R19 K33 ["ComponentFactory"]
  SETTABLEKS R4 R19 K34 ["ShouldHide"]
  DUPTABLE R20 K35 [{"Name", "Editable", "ComponentFactory", "ShouldHide"}]
  LOADK R21 K38 ["CageUVMisMatchedPreview"]
  SETTABLEKS R21 R20 K22 ["Name"]
  LOADB R21 1
  SETTABLEKS R21 R20 K23 ["Editable"]
  SETTABLEKS R1 R20 K33 ["ComponentFactory"]
  SETTABLEKS R5 R20 K34 ["ShouldHide"]
  DUPTABLE R21 K35 [{"Name", "Editable", "ComponentFactory", "ShouldHide"}]
  LOADK R22 K39 ["CageMeshIntersectedPreview"]
  SETTABLEKS R22 R21 K22 ["Name"]
  LOADB R22 1
  SETTABLEKS R22 R21 K23 ["Editable"]
  SETTABLEKS R1 R21 K33 ["ComponentFactory"]
  SETTABLEKS R6 R21 K34 ["ShouldHide"]
  DUPTABLE R22 K35 [{"Name", "Editable", "ComponentFactory", "ShouldHide"}]
  LOADK R23 K40 ["MeshHoleDetectedPreview"]
  SETTABLEKS R23 R22 K22 ["Name"]
  LOADB R23 1
  SETTABLEKS R23 R22 K23 ["Editable"]
  SETTABLEKS R1 R22 K33 ["ComponentFactory"]
  SETTABLEKS R7 R22 K34 ["ShouldHide"]
  DUPTABLE R23 K35 [{"Name", "Editable", "ComponentFactory", "ShouldHide"}]
  LOADK R24 K41 ["IrrelevantCageModifiedPreview"]
  SETTABLEKS R24 R23 K22 ["Name"]
  LOADB R24 1
  SETTABLEKS R24 R23 K23 ["Editable"]
  SETTABLEKS R1 R23 K33 ["ComponentFactory"]
  SETTABLEKS R8 R23 K34 ["ShouldHide"]
  DUPTABLE R24 K35 [{"Name", "Editable", "ComponentFactory", "ShouldHide"}]
  LOADK R25 K42 ["OuterCageFarExtendedFromMeshPreview"]
  SETTABLEKS R25 R24 K22 ["Name"]
  LOADB R25 1
  SETTABLEKS R25 R24 K23 ["Editable"]
  SETTABLEKS R1 R24 K33 ["ComponentFactory"]
  SETTABLEKS R9 R24 K34 ["ShouldHide"]
  SETLIST R13 R14 11 [1]
  SETTABLEKS R13 R12 K7 ["Properties"]
  SETLIST R10 R11 2 [1]
  RETURN R10 1
