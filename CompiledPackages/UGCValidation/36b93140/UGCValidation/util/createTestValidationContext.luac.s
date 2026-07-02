PROTO_0:
        0 DUPTABLE                         R2 K5 [{[1] = True, ["assetTypeEnum"], ["validateMeshPartAccessories"] = False}]
        1 SETTABLEKS                       R0 R2 K2 ["assetTypeEnum"]
        3 NEWTABLE                         R3 0 0
        5 NEWTABLE                         R4 0 0
        7 MOVE                             R5 R1
        8 LOADNIL                          R6
        9 LOADNIL                          R7
       10 FORGPREP                         R5
       11 NAMECALL                         R10 R9 K6 ["GetDescendants"]
       13 CALL                             R10 1 3
       14 FORGPREP                         R10
       15 LOADK                            R17 K7 ["BinaryStringValue"]
       16 NAMECALL                         R15 R14 K8 ["IsA"]
       18 CALL                             R15 2 1
       19 JUMPIFNOT                        R15 ; [+59]
       20 GETTABLEKS                       R15 R14 K9 ["Name"]
       22 JUMPIFEQKS                       R15 K10 ["MeshId"] ; [+9]
       24 GETTABLEKS                       R15 R14 K9 ["Name"]
       26 JUMPIFEQKS                       R15 K11 ["CageMeshId"] ; [+5]
       28 GETTABLEKS                       R15 R14 K9 ["Name"]
       30 JUMPIFNOTEQKS                    R15 K12 ["ReferenceMeshId"] ; [+25]
       32 GETTABLEKS                       R16 R14 K13 ["Parent"]
       34 GETTABLE                         R15 R3 R16
       35 JUMPIF                           R15 ; [+5]
       36 GETTABLEKS                       R15 R14 K13 ["Parent"]
       38 NEWTABLE                         R16 0 0
       40 SETTABLE                         R16 R3 R15
       41 GETTABLEKS                       R16 R14 K13 ["Parent"]
       43 GETTABLE                         R15 R3 R16
       44 GETTABLEKS                       R16 R14 K9 ["Name"]
       46 DUPTABLE                         R17 K16 [{["created"] = True, ["instance"]}]
       47 GETUPVAL                         R18 0
       48 MOVE                             R20 R14
       49 NAMECALL                         R18 R18 K17 ["CreateEditableMeshFromBinaryStringRobloxOnly"]
       51 CALL                             R18 2 1
       52 SETTABLEKS                       R18 R17 K15 ["instance"]
       54 SETTABLE                         R17 R15 R16
       55 JUMP                             ; [+23]
       56 GETTABLEKS                       R16 R14 K13 ["Parent"]
       58 GETTABLE                         R15 R4 R16
       59 JUMPIF                           R15 ; [+5]
       60 GETTABLEKS                       R15 R14 K13 ["Parent"]
       62 NEWTABLE                         R16 0 0
       64 SETTABLE                         R16 R4 R15
       65 GETTABLEKS                       R16 R14 K13 ["Parent"]
       67 GETTABLE                         R15 R4 R16
       68 GETTABLEKS                       R16 R14 K9 ["Name"]
       70 DUPTABLE                         R17 K16 [{["created"] = True, ["instance"]}]
       71 GETUPVAL                         R18 0
       72 MOVE                             R20 R14
       73 NAMECALL                         R18 R18 K18 ["CreateEditableImageFromBinaryStringRobloxOnly"]
       75 CALL                             R18 2 1
       76 SETTABLEKS                       R18 R17 K15 ["instance"]
       78 SETTABLE                         R17 R15 R16
       79 FORGLOOP                         R10 2 ; [-65]
       81 FORGLOOP                         R5 2 ; [-71]
       83 SETTABLEKS                       R3 R2 K19 ["editableMeshes"]
       85 SETTABLEKS                       R4 R2 K20 ["editableImages"]
       87 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [game]
        9 LOADK                            R3 K5 ["UGCValidationService"]
       10 NAMECALL                         R1 R1 K6 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K8 [require]
       15 GETTABLEKS                       R3 R0 K9 ["util"]
       17 GETTABLEKS                       R3 R3 K10 ["Types"]
       19 CALL                             R2 1 1
       20 DUPCLOSURE                       R3 K11 [PROTO_0]
       21 CAPTURE                          VAL R1
       22 RETURN                           R3 1
