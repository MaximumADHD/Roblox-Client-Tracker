PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["ASSET_TYPE_INFO"]
        3 GETTABLE                         R1 R2 R0
        4 JUMPIFNOTEQKNIL                  R1 ; [+3]
        6 LOADB                            R2 0
        7 RETURN                           R2 1
        8 GETTABLEKS                       R3 R1 K1 ["rigidAllowed"]
       10 JUMPIFEQKB                       R3 TRUE ; [+2]
       12 LOADB                            R2 0 +1
       13 LOADB                            R2 1
       14 RETURN                           R2 1

PROTO_1:
        0 GETIMPORT                        R2 K2 [table.find]
        2 GETIMPORT                        R3 K5 [string.split]
        4 GETUPVAL                         R4 0
        5 CALL                             R4 0 1
        6 LOADK                            R5 K6 [","]
        7 CALL                             R3 2 1
        8 GETTABLEKS                       R5 R0 K7 ["Value"]
       10 FASTCALL1                        TOSTRING R5 ; [+2]
       11 GETIMPORT                        R4 K9 [tostring]
       13 CALL                             R4 1 1
       14 CALL                             R2 2 1
       15 JUMPIFNOTEQKNIL                  R2 ; [+2]
       17 LOADB                            R1 0 +1
       18 LOADB                            R1 1
       19 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Constants"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R4 R0 K6 ["flags"]
       16 GETTABLEKS                       R3 R4 K7 ["getFStringUGCLCAllowedAssetTypeIds"]
       18 CALL                             R2 1 1
       19 NEWTABLE                         R3 2 0
       21 DUPCLOSURE                       R4 K8 [PROTO_0]
       22 CAPTURE                          VAL R1
       23 SETTABLEKS                       R4 R3 K9 ["isRigidAccessoryAllowed"]
       25 DUPCLOSURE                       R4 K10 [PROTO_1]
       26 CAPTURE                          VAL R2
       27 SETTABLEKS                       R4 R3 K11 ["isLayeredClothingAllowed"]
       29 RETURN                           R3 1
