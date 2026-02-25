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
       26 GETUPVAL                         R9 1
       27 CALL                             R9 0 1
       28 JUMPIFNOT                        R9 ; [+38]
       29 GETUPVAL                         R13 2
       30 GETTABLEKS                       R12 R13 K5 ["UGC_BODY_PART_NAMES_TO_ASSET_TYPE"]
       32 GETTABLEKS                       R13 R8 K6 ["Name"]
       34 GETTABLE                         R11 R12 R13
       35 GETTABLE                         R10 R3 R11
       36 JUMPIFEQKNIL                     R10 ; [+2]
       38 LOADB                            R9 0 +1
       39 LOADB                            R9 1
       40 GETUPVAL                         R14 2
       41 GETTABLEKS                       R13 R14 K7 ["UGC_BUNDLE_PART_NAMES_TO_ASSET_TYPE"]
       43 GETTABLEKS                       R14 R8 K6 ["Name"]
       45 GETTABLE                         R12 R13 R14
       46 GETTABLE                         R11 R3 R12
       47 JUMPIFEQKNIL                     R11 ; [+2]
       49 LOADB                            R10 0 +1
       50 LOADB                            R10 1
       51 LOADK                            R13 K8 ["MeshPart"]
       52 NAMECALL                         R11 R8 K9 ["IsA"]
       54 CALL                             R11 2 1
       55 JUMPIF                           R11 ; [+4]
       56 LOADK                            R13 K10 ["Accessory"]
       57 NAMECALL                         R11 R8 K9 ["IsA"]
       59 CALL                             R11 2 1
       60 JUMPIFNOT                        R9 ; [+23]
       61 JUMPIFNOT                        R10 ; [+22]
       62 JUMPIFNOT                        R11 ; [+21]
       63 NAMECALL                         R12 R8 K11 ["Destroy"]
       65 CALL                             R12 1 0
       66 JUMP                             ; [+17]
       67 GETUPVAL                         R12 2
       68 GETTABLEKS                       R11 R12 K5 ["UGC_BODY_PART_NAMES_TO_ASSET_TYPE"]
       70 GETTABLEKS                       R12 R8 K6 ["Name"]
       72 GETTABLE                         R10 R11 R12
       73 GETTABLE                         R9 R3 R10
       74 JUMPIFNOTEQKNIL                  R9 ; [+9]
       76 LOADK                            R11 K8 ["MeshPart"]
       77 NAMECALL                         R9 R8 K9 ["IsA"]
       79 CALL                             R9 2 1
       80 JUMPIFNOT                        R9 ; [+3]
       81 NAMECALL                         R9 R8 K11 ["Destroy"]
       83 CALL                             R9 1 0
       84 FORGLOOP                         R4 2 ; [-59]
       86 GETUPVAL                         R5 0
       87 GETTABLEKS                       R4 R5 K12 ["sanitizeForValidation"]
       89 MOVE                             R5 R0
       90 CALL                             R4 1 0
       91 RETURN                           R0 0

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
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R6 R0 K6 ["Src"]
       29 GETTABLEKS                       R5 R6 K10 ["Flags"]
       31 GETTABLEKS                       R4 R5 K11 ["getFFlagEnableUploadingShoes"]
       33 CALL                             R3 1 1
       34 NEWTABLE                         R4 1 0
       36 DUPCLOSURE                       R5 K12 [PROTO_0]
       37 CAPTURE                          VAL R2
       38 CAPTURE                          VAL R3
       39 CAPTURE                          VAL R1
       40 SETTABLEKS                       R5 R4 K13 ["removeAllUGCBUndleUnknownMeshParts"]
       42 RETURN                           R4 1
