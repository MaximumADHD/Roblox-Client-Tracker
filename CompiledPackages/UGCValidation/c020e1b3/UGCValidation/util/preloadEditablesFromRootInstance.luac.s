PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 NEWTABLE                         R2 0 0
        4 NAMECALL                         R3 R0 K0 ["GetDescendants"]
        6 CALL                             R3 1 1
        7 FASTCALL2                        TABLE_INSERT R3 R0 ; [+5]
        9 MOVE                             R5 R3
       10 MOVE                             R6 R0
       11 GETIMPORT                        R4 K3 [table.insert]
       13 CALL                             R4 2 0
       14 MOVE                             R4 R3
       15 LOADNIL                          R5
       16 LOADNIL                          R6
       17 FORGPREP                         R4
       18 LOADK                            R11 K4 ["BinaryStringValue"]
       19 NAMECALL                         R9 R8 K5 ["IsA"]
       21 CALL                             R9 2 1
       22 JUMPIFNOT                        R9 ; [+17]
       23 GETUPVAL                         R10 0
       24 GETTABLEKS                       R11 R8 K6 ["Name"]
       26 GETTABLE                         R9 R10 R11
       27 JUMPIFNOT                        R9 ; [+12]
       28 GETTABLEKS                       R10 R8 K7 ["Parent"]
       30 GETTABLEKS                       R11 R8 K6 ["Name"]
       32 GETTABLE                         R9 R10 R11
       33 GETUPVAL                         R10 1
       34 MOVE                             R12 R8
       35 NAMECALL                         R10 R10 K8 ["CreateEditableMeshFromBinaryStringRobloxOnly"]
       37 CALL                             R10 2 1
       38 SETTABLE                         R10 R1 R9
       39 JUMP                             ; [+21]
       40 LOADK                            R11 K4 ["BinaryStringValue"]
       41 NAMECALL                         R9 R8 K5 ["IsA"]
       43 CALL                             R9 2 1
       44 JUMPIFNOT                        R9 ; [+16]
       45 GETUPVAL                         R10 2
       46 GETTABLEKS                       R11 R8 K6 ["Name"]
       48 GETTABLE                         R9 R10 R11
       49 JUMPIFNOT                        R9 ; [+11]
       50 GETTABLEKS                       R10 R8 K7 ["Parent"]
       52 GETTABLEKS                       R11 R8 K6 ["Name"]
       54 GETTABLE                         R9 R10 R11
       55 GETUPVAL                         R10 1
       56 MOVE                             R12 R8
       57 NAMECALL                         R10 R10 K9 ["CreateEditableImageFromBinaryStringRobloxOnly"]
       59 CALL                             R10 2 1
       60 SETTABLE                         R10 R2 R9
       61 FORGLOOP                         R4 2 ; [-44]
       63 RETURN                           R1 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["UGCValidationService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 DUPTABLE                         R1 K7 [{"MeshId", "CageMeshId", "ReferenceMeshId"}]
        8 LOADB                            R2 1
        9 SETTABLEKS                       R2 R1 K4 ["MeshId"]
       11 LOADB                            R2 1
       12 SETTABLEKS                       R2 R1 K5 ["CageMeshId"]
       14 LOADB                            R2 1
       15 SETTABLEKS                       R2 R1 K6 ["ReferenceMeshId"]
       17 DUPTABLE                         R2 K12 [{"TextureId", "MetalnessMap", "NormalMap", "RoughnessMap"}]
       18 LOADB                            R3 1
       19 SETTABLEKS                       R3 R2 K8 ["TextureId"]
       21 LOADB                            R3 1
       22 SETTABLEKS                       R3 R2 K9 ["MetalnessMap"]
       24 LOADB                            R3 1
       25 SETTABLEKS                       R3 R2 K10 ["NormalMap"]
       27 LOADB                            R3 1
       28 SETTABLEKS                       R3 R2 K11 ["RoughnessMap"]
       30 DUPCLOSURE                       R3 K13 [PROTO_0]
       31 CAPTURE                          VAL R1
       32 CAPTURE                          VAL R0
       33 CAPTURE                          VAL R2
       34 RETURN                           R3 1
