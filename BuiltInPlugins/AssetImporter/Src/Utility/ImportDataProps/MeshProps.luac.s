PROTO_0:
        0 NAMECALL                         R3 R1 K0 ["GetImportTree"]
        2 CALL                             R3 1 1
        3 GETTABLEKS                       R2 R3 K1 ["UsesCages"]
        5 JUMPIF                           R2 ; [+2]
        6 LOADB                            R2 1
        7 RETURN                           R2 1
        8 GETTABLEKS                       R2 R0 K2 ["ImportName"]
       10 LOADK                            R4 K3 ["_OuterCage"]
       11 NAMECALL                         R2 R2 K4 ["match"]
       13 CALL                             R2 2 1
       14 JUMPIF                           R2 ; [+7]
       15 GETTABLEKS                       R2 R0 K2 ["ImportName"]
       17 LOADK                            R4 K5 ["_InnerCage"]
       18 NAMECALL                         R2 R2 K4 ["match"]
       20 CALL                             R2 2 1
       21 JUMPIFNOT                        R2 ; [+3]
       22 GETTABLEKS                       R2 R0 K6 ["CageManifold"]
       24 RETURN                           R2 1
       25 LOADB                            R2 1
       26 RETURN                           R2 1

PROTO_1:
        0 NAMECALL                         R3 R1 K0 ["GetImportTree"]
        2 CALL                             R3 1 1
        3 GETTABLEKS                       R2 R3 K1 ["UsesCages"]
        5 JUMPIF                           R2 ; [+2]
        6 LOADB                            R2 1
        7 RETURN                           R2 1
        8 GETTABLEKS                       R2 R0 K2 ["ImportName"]
       10 LOADK                            R4 K3 ["_OuterCage"]
       11 NAMECALL                         R2 R2 K4 ["match"]
       13 CALL                             R2 2 1
       14 JUMPIF                           R2 ; [+7]
       15 GETTABLEKS                       R2 R0 K2 ["ImportName"]
       17 LOADK                            R4 K5 ["_InnerCage"]
       18 NAMECALL                         R2 R2 K4 ["match"]
       20 CALL                             R2 2 1
       21 JUMPIFNOT                        R2 ; [+3]
       22 GETTABLEKS                       R2 R0 K6 ["CageNoOverlappingVertices"]
       24 RETURN                           R2 1
       25 LOADB                            R2 1
       26 RETURN                           R2 1

PROTO_2:
        0 NAMECALL                         R3 R1 K0 ["GetImportTree"]
        2 CALL                             R3 1 1
        3 GETTABLEKS                       R2 R3 K1 ["UsesCages"]
        5 JUMPIF                           R2 ; [+2]
        6 LOADB                            R2 1
        7 RETURN                           R2 1
        8 GETTABLEKS                       R2 R0 K2 ["ImportName"]
       10 LOADK                            R4 K3 ["_OuterCage"]
       11 NAMECALL                         R2 R2 K4 ["match"]
       13 CALL                             R2 2 1
       14 JUMPIF                           R2 ; [+7]
       15 GETTABLEKS                       R2 R0 K2 ["ImportName"]
       17 LOADK                            R4 K5 ["_InnerCage"]
       18 NAMECALL                         R2 R2 K4 ["match"]
       20 CALL                             R2 2 1
       21 JUMPIFNOT                        R2 ; [+3]
       22 GETTABLEKS                       R2 R0 K6 ["CageUVMatched"]
       24 RETURN                           R2 1
       25 LOADB                            R2 1
       26 RETURN                           R2 1

PROTO_3:
        0 NAMECALL                         R3 R1 K0 ["GetImportTree"]
        2 CALL                             R3 1 1
        3 GETTABLEKS                       R2 R3 K1 ["UsesCages"]
        5 JUMPIF                           R2 ; [+2]
        6 LOADB                            R2 1
        7 RETURN                           R2 1
        8 GETTABLEKS                       R2 R0 K2 ["ImportName"]
       10 LOADK                            R4 K3 ["_OuterCage"]
       11 NAMECALL                         R2 R2 K4 ["match"]
       13 CALL                             R2 2 1
       14 JUMPIF                           R2 ; [+7]
       15 GETTABLEKS                       R2 R0 K2 ["ImportName"]
       17 LOADK                            R4 K5 ["_InnerCage"]
       18 NAMECALL                         R2 R2 K4 ["match"]
       20 CALL                             R2 2 1
       21 JUMPIFNOT                        R2 ; [+3]
       22 GETTABLEKS                       R2 R0 K6 ["CageMeshNotIntersected"]
       24 RETURN                           R2 1
       25 LOADB                            R2 1
       26 RETURN                           R2 1

PROTO_4:
        0 NAMECALL                         R3 R1 K0 ["GetImportTree"]
        2 CALL                             R3 1 1
        3 GETTABLEKS                       R2 R3 K1 ["UsesCages"]
        5 JUMPIF                           R2 ; [+2]
        6 LOADB                            R2 1
        7 RETURN                           R2 1
        8 GETTABLEKS                       R2 R0 K2 ["ImportName"]
       10 LOADK                            R4 K3 ["_Att"]
       11 NAMECALL                         R2 R2 K4 ["match"]
       13 CALL                             R2 2 1
       14 JUMPIF                           R2 ; [+3]
       15 GETTABLEKS                       R2 R0 K5 ["MeshNoHoleDetected"]
       17 RETURN                           R2 1
       18 LOADB                            R2 1
       19 RETURN                           R2 1

PROTO_5:
        0 NAMECALL                         R3 R1 K0 ["GetImportTree"]
        2 CALL                             R3 1 1
        3 GETTABLEKS                       R2 R3 K1 ["UsesCages"]
        5 JUMPIF                           R2 ; [+2]
        6 LOADB                            R2 1
        7 RETURN                           R2 1
        8 GETTABLEKS                       R2 R0 K2 ["ImportName"]
       10 LOADK                            R4 K3 ["_OuterCage"]
       11 NAMECALL                         R2 R2 K4 ["match"]
       13 CALL                             R2 2 1
       14 JUMPIF                           R2 ; [+7]
       15 GETTABLEKS                       R2 R0 K2 ["ImportName"]
       17 LOADK                            R4 K5 ["_InnerCage"]
       18 NAMECALL                         R2 R2 K4 ["match"]
       20 CALL                             R2 2 1
       21 JUMPIFNOT                        R2 ; [+3]
       22 GETTABLEKS                       R2 R0 K6 ["NoIrrelevantCageModified"]
       24 RETURN                           R2 1
       25 LOADB                            R2 1
       26 RETURN                           R2 1

PROTO_6:
        0 NAMECALL                         R3 R1 K0 ["GetImportTree"]
        2 CALL                             R3 1 1
        3 GETTABLEKS                       R2 R3 K1 ["UsesCages"]
        5 JUMPIF                           R2 ; [+2]
        6 LOADB                            R2 1
        7 RETURN                           R2 1
        8 GETTABLEKS                       R2 R0 K2 ["ImportName"]
       10 LOADK                            R4 K3 ["_OuterCage"]
       11 NAMECALL                         R2 R2 K4 ["match"]
       13 CALL                             R2 2 1
       14 JUMPIFNOT                        R2 ; [+3]
       15 GETTABLEKS                       R2 R0 K5 ["NoOuterCageFarExtendedFromMesh"]
       17 RETURN                           R2 1
       18 LOADB                            R2 1
       19 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R6 R0 K6 ["Src"]
       11 GETTABLEKS                       R5 R6 K7 ["Components"]
       13 GETTABLEKS                       R4 R5 K8 ["Properties"]
       15 GETTABLEKS                       R3 R4 K9 ["Types"]
       17 GETTABLEKS                       R2 R3 K10 ["VisibilityProperty"]
       19 CALL                             R1 1 1
       20 DUPCLOSURE                       R2 K11 [PROTO_0]
       21 DUPCLOSURE                       R3 K12 [PROTO_1]
       22 DUPCLOSURE                       R4 K13 [PROTO_2]
       23 DUPCLOSURE                       R5 K14 [PROTO_3]
       24 DUPCLOSURE                       R6 K15 [PROTO_4]
       25 DUPCLOSURE                       R7 K16 [PROTO_5]
       26 DUPCLOSURE                       R8 K17 [PROTO_6]
       27 NEWTABLE                         R9 0 2
       29 DUPTABLE                         R10 K19 [{"Section", "Properties"}]
       30 LOADK                            R11 K20 ["ObjectGeneral"]
       31 SETTABLEKS                       R11 R10 K18 ["Section"]
       33 NEWTABLE                         R11 0 3
       35 DUPTABLE                         R12 K23 [{"Name", "Editable"}]
       36 LOADK                            R13 K24 ["ImportName"]
       37 SETTABLEKS                       R13 R12 K21 ["Name"]
       39 LOADB                            R13 1
       40 SETTABLEKS                       R13 R12 K22 ["Editable"]
       42 DUPTABLE                         R13 K23 [{"Name", "Editable"}]
       43 LOADK                            R14 K25 ["Anchored"]
       44 SETTABLEKS                       R14 R13 K21 ["Name"]
       46 LOADB                            R14 1
       47 SETTABLEKS                       R14 R13 K22 ["Editable"]
       49 DUPTABLE                         R14 K23 [{"Name", "Editable"}]
       50 LOADK                            R15 K26 ["UseImportedPivot"]
       51 SETTABLEKS                       R15 R14 K21 ["Name"]
       53 LOADB                            R15 1
       54 SETTABLEKS                       R15 R14 K22 ["Editable"]
       56 SETLIST                          R11 R12 3 [1]
       58 SETTABLEKS                       R11 R10 K8 ["Properties"]
       60 DUPTABLE                         R11 K19 [{"Section", "Properties"}]
       61 LOADK                            R12 K27 ["ObjectGeometry"]
       62 SETTABLEKS                       R12 R11 K18 ["Section"]
       64 NEWTABLE                         R12 0 11
       66 DUPTABLE                         R13 K23 [{"Name", "Editable"}]
       67 LOADK                            R14 K28 ["Dimensions"]
       68 SETTABLEKS                       R14 R13 K21 ["Name"]
       70 LOADB                            R14 0
       71 SETTABLEKS                       R14 R13 K22 ["Editable"]
       73 DUPTABLE                         R14 K23 [{"Name", "Editable"}]
       74 LOADK                            R15 K29 ["PolygonCount"]
       75 SETTABLEKS                       R15 R14 K21 ["Name"]
       77 LOADB                            R15 0
       78 SETTABLEKS                       R15 R14 K22 ["Editable"]
       80 DUPTABLE                         R15 K23 [{"Name", "Editable"}]
       81 LOADK                            R16 K30 ["DoubleSided"]
       82 SETTABLEKS                       R16 R15 K21 ["Name"]
       84 LOADB                            R16 1
       85 SETTABLEKS                       R16 R15 K22 ["Editable"]
       87 DUPTABLE                         R16 K23 [{"Name", "Editable"}]
       88 LOADK                            R17 K31 ["IgnoreVertexColors"]
       89 SETTABLEKS                       R17 R16 K21 ["Name"]
       91 LOADB                            R17 1
       92 SETTABLEKS                       R17 R16 K22 ["Editable"]
       94 DUPTABLE                         R17 K34 [{"Name", "Editable", "ComponentFactory", "ShouldHide"}]
       95 LOADK                            R18 K35 ["CageNonManifoldPreview"]
       96 SETTABLEKS                       R18 R17 K21 ["Name"]
       98 LOADB                            R18 1
       99 SETTABLEKS                       R18 R17 K22 ["Editable"]
      101 SETTABLEKS                       R1 R17 K32 ["ComponentFactory"]
      103 SETTABLEKS                       R2 R17 K33 ["ShouldHide"]
      105 DUPTABLE                         R18 K34 [{"Name", "Editable", "ComponentFactory", "ShouldHide"}]
      106 LOADK                            R19 K36 ["CageOverlappingVerticesPreview"]
      107 SETTABLEKS                       R19 R18 K21 ["Name"]
      109 LOADB                            R19 1
      110 SETTABLEKS                       R19 R18 K22 ["Editable"]
      112 SETTABLEKS                       R1 R18 K32 ["ComponentFactory"]
      114 SETTABLEKS                       R3 R18 K33 ["ShouldHide"]
      116 DUPTABLE                         R19 K34 [{"Name", "Editable", "ComponentFactory", "ShouldHide"}]
      117 LOADK                            R20 K37 ["CageUVMisMatchedPreview"]
      118 SETTABLEKS                       R20 R19 K21 ["Name"]
      120 LOADB                            R20 1
      121 SETTABLEKS                       R20 R19 K22 ["Editable"]
      123 SETTABLEKS                       R1 R19 K32 ["ComponentFactory"]
      125 SETTABLEKS                       R4 R19 K33 ["ShouldHide"]
      127 DUPTABLE                         R20 K34 [{"Name", "Editable", "ComponentFactory", "ShouldHide"}]
      128 LOADK                            R21 K38 ["CageMeshIntersectedPreview"]
      129 SETTABLEKS                       R21 R20 K21 ["Name"]
      131 LOADB                            R21 1
      132 SETTABLEKS                       R21 R20 K22 ["Editable"]
      134 SETTABLEKS                       R1 R20 K32 ["ComponentFactory"]
      136 SETTABLEKS                       R5 R20 K33 ["ShouldHide"]
      138 DUPTABLE                         R21 K34 [{"Name", "Editable", "ComponentFactory", "ShouldHide"}]
      139 LOADK                            R22 K39 ["MeshHoleDetectedPreview"]
      140 SETTABLEKS                       R22 R21 K21 ["Name"]
      142 LOADB                            R22 1
      143 SETTABLEKS                       R22 R21 K22 ["Editable"]
      145 SETTABLEKS                       R1 R21 K32 ["ComponentFactory"]
      147 SETTABLEKS                       R6 R21 K33 ["ShouldHide"]
      149 DUPTABLE                         R22 K34 [{"Name", "Editable", "ComponentFactory", "ShouldHide"}]
      150 LOADK                            R23 K40 ["IrrelevantCageModifiedPreview"]
      151 SETTABLEKS                       R23 R22 K21 ["Name"]
      153 LOADB                            R23 1
      154 SETTABLEKS                       R23 R22 K22 ["Editable"]
      156 SETTABLEKS                       R1 R22 K32 ["ComponentFactory"]
      158 SETTABLEKS                       R7 R22 K33 ["ShouldHide"]
      160 DUPTABLE                         R23 K34 [{"Name", "Editable", "ComponentFactory", "ShouldHide"}]
      161 LOADK                            R24 K41 ["OuterCageFarExtendedFromMeshPreview"]
      162 SETTABLEKS                       R24 R23 K21 ["Name"]
      164 LOADB                            R24 1
      165 SETTABLEKS                       R24 R23 K22 ["Editable"]
      167 SETTABLEKS                       R1 R23 K32 ["ComponentFactory"]
      169 SETTABLEKS                       R8 R23 K33 ["ShouldHide"]
      171 SETLIST                          R12 R13 11 [1]
      173 SETTABLEKS                       R12 R11 K8 ["Properties"]
      175 SETLIST                          R9 R10 2 [1]
      177 RETURN                           R9 1
