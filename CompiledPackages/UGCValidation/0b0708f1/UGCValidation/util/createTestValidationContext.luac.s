PROTO_0:
        0 DUPTABLE                         R2 K3 [{"isServer", "assetTypeEnum", "validateMeshPartAccessories"}]
        1 LOADB                            R3 1
        2 SETTABLEKS                       R3 R2 K0 ["isServer"]
        4 SETTABLEKS                       R0 R2 K1 ["assetTypeEnum"]
        6 LOADB                            R3 0
        7 SETTABLEKS                       R3 R2 K2 ["validateMeshPartAccessories"]
        9 NEWTABLE                         R3 0 0
       11 NEWTABLE                         R4 0 0
       13 MOVE                             R5 R1
       14 LOADNIL                          R6
       15 LOADNIL                          R7
       16 FORGPREP                         R5
       17 NAMECALL                         R10 R9 K4 ["GetDescendants"]
       19 CALL                             R10 1 3
       20 FORGPREP                         R10
       21 LOADK                            R17 K5 ["BinaryStringValue"]
       22 NAMECALL                         R15 R14 K6 ["IsA"]
       24 CALL                             R15 2 1
       25 JUMPIFNOT                        R15 ; [+65]
       26 GETTABLEKS                       R15 R14 K7 ["Name"]
       28 JUMPIFEQKS                       R15 K8 ["MeshId"] ; [+9]
       30 GETTABLEKS                       R15 R14 K7 ["Name"]
       32 JUMPIFEQKS                       R15 K9 ["CageMeshId"] ; [+5]
       34 GETTABLEKS                       R15 R14 K7 ["Name"]
       36 JUMPIFNOTEQKS                    R15 K10 ["ReferenceMeshId"] ; [+28]
       38 GETTABLEKS                       R16 R14 K11 ["Parent"]
       40 GETTABLE                         R15 R3 R16
       41 JUMPIF                           R15 ; [+5]
       42 GETTABLEKS                       R15 R14 K11 ["Parent"]
       44 NEWTABLE                         R16 0 0
       46 SETTABLE                         R16 R3 R15
       47 GETTABLEKS                       R16 R14 K11 ["Parent"]
       49 GETTABLE                         R15 R3 R16
       50 GETTABLEKS                       R16 R14 K7 ["Name"]
       52 DUPTABLE                         R17 K14 [{"created", "instance"}]
       53 LOADB                            R18 1
       54 SETTABLEKS                       R18 R17 K12 ["created"]
       56 GETUPVAL                         R18 0
       57 MOVE                             R20 R14
       58 NAMECALL                         R18 R18 K15 ["CreateEditableMeshFromBinaryStringRobloxOnly"]
       60 CALL                             R18 2 1
       61 SETTABLEKS                       R18 R17 K13 ["instance"]
       63 SETTABLE                         R17 R15 R16
       64 JUMP                             ; [+26]
       65 GETTABLEKS                       R16 R14 K11 ["Parent"]
       67 GETTABLE                         R15 R4 R16
       68 JUMPIF                           R15 ; [+5]
       69 GETTABLEKS                       R15 R14 K11 ["Parent"]
       71 NEWTABLE                         R16 0 0
       73 SETTABLE                         R16 R4 R15
       74 GETTABLEKS                       R16 R14 K11 ["Parent"]
       76 GETTABLE                         R15 R4 R16
       77 GETTABLEKS                       R16 R14 K7 ["Name"]
       79 DUPTABLE                         R17 K14 [{"created", "instance"}]
       80 LOADB                            R18 1
       81 SETTABLEKS                       R18 R17 K12 ["created"]
       83 GETUPVAL                         R18 0
       84 MOVE                             R20 R14
       85 NAMECALL                         R18 R18 K16 ["CreateEditableImageFromBinaryStringRobloxOnly"]
       87 CALL                             R18 2 1
       88 SETTABLEKS                       R18 R17 K13 ["instance"]
       90 SETTABLE                         R17 R15 R16
       91 FORGLOOP                         R10 2 ; [-71]
       93 FORGLOOP                         R5 2 ; [-77]
       95 SETTABLEKS                       R3 R2 K17 ["editableMeshes"]
       97 SETTABLEKS                       R4 R2 K18 ["editableImages"]
       99 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [game]
        9 LOADK                            R3 K5 ["UGCValidationService"]
       10 NAMECALL                         R1 R1 K6 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K8 [require]
       15 GETTABLEKS                       R4 R0 K9 ["util"]
       17 GETTABLEKS                       R3 R4 K10 ["Types"]
       19 CALL                             R2 1 1
       20 DUPCLOSURE                       R3 K11 [PROTO_0]
       21 CAPTURE                          VAL R1
       22 RETURN                           R3 1
