PROTO_0:
        0 JUMPIFNOT                        R2 ; [+26]
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R4 R4 K0 ["isUGCBundleType"]
        4 MOVE                             R5 R1
        5 CALL                             R4 1 1
        6 JUMPIF                           R4 ; [+6]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K1 ["isCatalogAsset"]
       10 MOVE                             R5 R1
       11 CALL                             R4 1 1
       12 JUMPIFNOT                        R4 ; [+14]
       13 JUMPIFNOT                        R3 ; [+10]
       14 NEWTABLE                         R4 0 1
       16 GETUPVAL                         R5 1
       17 GETTABLEKS                       R5 R5 K2 ["DataSharingLicenseTypes"]
       19 GETTABLEKS                       R5 R5 K3 ["RobloxGlobal"]
       21 SETLIST                          R4 R5 1 [1]
       23 RETURN                           R4 1
       24 NEWTABLE                         R4 0 0
       26 RETURN                           R4 1
       27 LOADNIL                          R4
       28 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Src"]
       15 GETTABLEKS                       R2 R2 K6 ["Util"]
       17 GETTABLEKS                       R2 R2 K7 ["Constants"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K4 [require]
       22 GETTABLEKS                       R3 R0 K5 ["Src"]
       24 GETTABLEKS                       R3 R3 K6 ["Util"]
       26 GETTABLEKS                       R3 R3 K8 ["AssetConfigUtil"]
       28 CALL                             R2 1 1
       29 NEWTABLE                         R3 1 0
       31 DUPCLOSURE                       R4 K9 [PROTO_0]
       32 CAPTURE                          VAL R2
       33 CAPTURE                          VAL R1
       34 SETTABLEKS                       R4 R3 K10 ["getDataSharingLicenseTypes"]
       36 RETURN                           R3 1
