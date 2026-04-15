PROTO_0:
        0 JUMPIFEQKNIL                     R1 ; [+3]
        2 JUMPIFNOTEQKNIL                  R2 ; [+2]
        4 RETURN                           R0 0
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K0 ["isUGCBundleType"]
        8 MOVE                             R4 R1
        9 CALL                             R3 1 1
       10 JUMPIFNOTEQKB                    R3 FALSE ; [+2]
       12 RETURN                           R0 0
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R3 R4 K1 ["getAllowedAssetTypesByBundleType"]
       16 MOVE                             R4 R2
       17 MOVE                             R5 R1
       18 CALL                             R3 2 1
       19 GETIMPORT                        R4 K3 [pairs]
       21 NAMECALL                         R5 R0 K4 ["GetChildren"]
       23 CALL                             R5 1 -1
       24 CALL                             R4 -1 3
       25 FORGPREP_NEXT                    R4
       26 GETUPVAL                         R13 1
       27 GETTABLEKS                       R12 R13 K5 ["UGC_BODY_PART_NAMES_TO_ASSET_TYPE"]
       29 GETTABLEKS                       R13 R8 K6 ["Name"]
       31 GETTABLE                         R11 R12 R13
       32 GETTABLE                         R10 R3 R11
       33 JUMPIFEQKNIL                     R10 ; [+2]
       35 LOADB                            R9 0 +1
       36 LOADB                            R9 1
       37 GETUPVAL                         R14 1
       38 GETTABLEKS                       R13 R14 K7 ["UGC_BUNDLE_PART_NAMES_TO_ASSET_TYPE"]
       40 GETTABLEKS                       R14 R8 K6 ["Name"]
       42 GETTABLE                         R12 R13 R14
       43 GETTABLE                         R11 R3 R12
       44 JUMPIFEQKNIL                     R11 ; [+2]
       46 LOADB                            R10 0 +1
       47 LOADB                            R10 1
       48 LOADK                            R13 K8 ["MeshPart"]
       49 NAMECALL                         R11 R8 K9 ["IsA"]
       51 CALL                             R11 2 1
       52 JUMPIF                           R11 ; [+4]
       53 LOADK                            R13 K10 ["Accessory"]
       54 NAMECALL                         R11 R8 K9 ["IsA"]
       56 CALL                             R11 2 1
       57 JUMPIFNOT                        R9 ; [+5]
       58 JUMPIFNOT                        R10 ; [+4]
       59 JUMPIFNOT                        R11 ; [+3]
       60 NAMECALL                         R12 R8 K11 ["Destroy"]
       62 CALL                             R12 1 0
       63 FORGLOOP                         R4 2 ; [-38]
       65 GETUPVAL                         R5 0
       66 GETTABLEKS                       R4 R5 K12 ["sanitizeForValidation"]
       68 MOVE                             R5 R0
       69 CALL                             R4 1 0
       70 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Util"]
       13 GETTABLEKS                       R2 R3 K8 ["AssetConfigConstants"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R5 R0 K6 ["Src"]
       20 GETTABLEKS                       R4 R5 K7 ["Util"]
       22 GETTABLEKS                       R3 R4 K9 ["AssetConfigUtil"]
       24 CALL                             R2 1 1
       25 NEWTABLE                         R3 1 0
       27 DUPCLOSURE                       R4 K10 [PROTO_0]
       28 CAPTURE                          VAL R2
       29 CAPTURE                          VAL R1
       30 SETTABLEKS                       R4 R3 K11 ["removeAllUGCBUndleUnknownMeshParts"]
       32 RETURN                           R3 1
