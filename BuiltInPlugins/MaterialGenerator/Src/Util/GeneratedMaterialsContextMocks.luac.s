PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 RETURN                           R0 0

PROTO_3:
        0 LOADB                            R1 0
        1 RETURN                           R1 1

PROTO_4:
        0 RETURN                           R0 0

PROTO_5:
        0 LOADK                            R1 K0 ["None"]
        1 RETURN                           R1 1

PROTO_6:
        0 RETURN                           R0 0

PROTO_7:
        0 LOADK                            R1 K0 [""]
        1 LOADN                            R2 0
        2 RETURN                           R1 2

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 GETTABLEKS                       R2 R0 K1 ["promptGroups"]
        5 CALL                             R1 1 2
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K0 ["useState"]
        9 GETTABLEKS                       R4 R0 K2 ["materialStates"]
       11 CALL                             R3 1 2
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R5 R6 K0 ["useState"]
       15 LOADNIL                          R6
       16 CALL                             R5 1 2
       17 DUPTABLE                         R7 K13 [{"promptGroups", "materialStates", "addMaterials", "removeMaterial", "removeAllMaterials", "hasBaseMaterial", "markHasBaseMaterial", "getMaterialStatus", "setMaterialStatus", "getMaterialIdentifiers", "previewMaterial", "setPreviewMaterial"}]
       18 SETTABLEKS                       R1 R7 K1 ["promptGroups"]
       20 SETTABLEKS                       R3 R7 K2 ["materialStates"]
       22 DUPCLOSURE                       R8 K14 [PROTO_0]
       23 SETTABLEKS                       R8 R7 K3 ["addMaterials"]
       25 DUPCLOSURE                       R8 K15 [PROTO_1]
       26 SETTABLEKS                       R8 R7 K4 ["removeMaterial"]
       28 DUPCLOSURE                       R8 K16 [PROTO_2]
       29 SETTABLEKS                       R8 R7 K5 ["removeAllMaterials"]
       31 DUPCLOSURE                       R8 K17 [PROTO_3]
       32 SETTABLEKS                       R8 R7 K6 ["hasBaseMaterial"]
       34 DUPCLOSURE                       R8 K18 [PROTO_4]
       35 SETTABLEKS                       R8 R7 K7 ["markHasBaseMaterial"]
       37 DUPCLOSURE                       R8 K19 [PROTO_5]
       38 SETTABLEKS                       R8 R7 K8 ["getMaterialStatus"]
       40 DUPCLOSURE                       R8 K20 [PROTO_6]
       41 SETTABLEKS                       R8 R7 K9 ["setMaterialStatus"]
       43 DUPCLOSURE                       R8 K21 [PROTO_7]
       44 SETTABLEKS                       R8 R7 K10 ["getMaterialIdentifiers"]
       46 SETTABLEKS                       R5 R7 K11 ["previewMaterial"]
       48 SETTABLEKS                       R6 R7 K12 ["setPreviewMaterial"]
       50 GETUPVAL                         R9 0
       51 GETTABLEKS                       R8 R9 K22 ["createElement"]
       53 GETUPVAL                         R10 1
       54 GETTABLEKS                       R9 R10 K23 ["Provider"]
       56 DUPTABLE                         R10 K25 [{"value"}]
       57 SETTABLEKS                       R7 R10 K24 ["value"]
       59 GETTABLEKS                       R11 R0 K26 ["children"]
       61 CALL                             R8 3 -1
       62 RETURN                           R8 -1

PROTO_9:
        0 NEWTABLE                         R0 0 1
        2 DUPTABLE                         R1 K3 [{"materialVariants", "promptText", "filteredPromptText"}]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R2 R3 K4 ["instances"]
        6 SETTABLEKS                       R2 R1 K0 ["materialVariants"]
        8 LOADK                            R2 K5 ["test prompt"]
        9 SETTABLEKS                       R2 R1 K1 ["promptText"]
       11 LOADK                            R2 K5 ["test prompt"]
       12 SETTABLEKS                       R2 R1 K2 ["filteredPromptText"]
       14 SETLIST                          R0 R1 1 [1]
       16 RETURN                           R0 1

PROTO_10:
        0 NEWTABLE                         R2 2 1
        2 LOADK                            R4 K0 ["1"]
        3 SETTABLEKS                       R4 R2 K1 ["generationId"]
        5 LOADB                            R4 0
        6 SETTABLEKS                       R4 R2 K2 ["hasBaseMaterial"]
        8 LOADK                            R3 K3 ["None"]
        9 SETLIST                          R2 R3 1 [1]
       11 RETURN                           R1 2

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["collect"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["instances"]
        6 DUPCLOSURE                       R2 K2 [PROTO_10]
        7 CALL                             R0 2 -1
        8 RETURN                           R0 -1

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useMemo"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 NEWTABLE                         R3 0 1
        7 GETTABLEKS                       R4 R0 K1 ["instances"]
        9 SETLIST                          R3 R4 1 [1]
       11 CALL                             R1 2 1
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R2 R3 K0 ["useMemo"]
       15 NEWCLOSURE                       R3 P1
       16 CAPTURE                          UPVAL U1
       17 CAPTURE                          VAL R0
       18 NEWTABLE                         R4 0 1
       20 GETTABLEKS                       R5 R0 K1 ["instances"]
       22 SETLIST                          R4 R5 1 [1]
       24 CALL                             R2 2 1
       25 GETUPVAL                         R4 0
       26 GETTABLEKS                       R3 R4 K2 ["createElement"]
       28 GETUPVAL                         R4 2
       29 DUPTABLE                         R5 K5 [{"promptGroups", "materialStates"}]
       30 SETTABLEKS                       R1 R5 K3 ["promptGroups"]
       32 SETTABLEKS                       R2 R5 K4 ["materialStates"]
       34 GETTABLEKS                       R6 R0 K6 ["children"]
       36 CALL                             R3 3 -1
       37 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["MaterialGenerator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R6 R0 K9 ["Src"]
       25 GETTABLEKS                       R5 R6 K10 ["Util"]
       27 GETTABLEKS                       R4 R5 K11 ["GeneratedMaterialsContext"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R6 R0 K9 ["Src"]
       34 GETTABLEKS                       R5 R6 K12 ["Types"]
       36 CALL                             R4 1 1
       37 NEWTABLE                         R5 1 0
       39 DUPCLOSURE                       R6 K13 [PROTO_8]
       40 CAPTURE                          VAL R2
       41 CAPTURE                          VAL R3
       42 DUPCLOSURE                       R7 K14 [PROTO_12]
       43 CAPTURE                          VAL R2
       44 CAPTURE                          VAL R1
       45 CAPTURE                          VAL R6
       46 SETTABLEKS                       R7 R5 K15 ["BasicProvider"]
       48 RETURN                           R5 1
