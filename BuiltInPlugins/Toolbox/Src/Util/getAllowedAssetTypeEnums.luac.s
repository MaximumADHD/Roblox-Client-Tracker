PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 JUMPIFNOT                        R0 ; [+27]
        3 GETIMPORT                        R2 K1 [ipairs]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K2 ["ASSET_TYPE_INFO"]
        8 CALL                             R2 1 3
        9 FORGPREP_INEXT                   R2
       10 GETTABLEKS                       R7 R6 K3 ["isCatalog"]
       12 JUMPIFNOT                        R7 ; [+15]
       13 GETTABLEKS                       R7 R6 K4 ["isUploadable"]
       15 JUMPIFNOT                        R7 ; [+12]
       16 GETTABLEKS                       R8 R6 K5 ["type"]
       18 GETTABLEKS                       R8 R8 K6 ["Name"]
       20 GETTABLE                         R7 R0 R8
       21 JUMPIFEQKNIL                     R7 ; [+6]
       23 LENGTH                           R8 R1
       24 ADDK                             R7 R8 K7 [1]
       25 GETTABLEKS                       R8 R6 K5 ["type"]
       27 SETTABLE                         R8 R1 R7
       28 FORGLOOP                         R2 2 [inext] ; [-19]
       30 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Util"]
       15 GETTABLEKS                       R2 R2 K7 ["AssetConfigConstants"]
       17 CALL                             R1 1 1
       18 DUPCLOSURE                       R2 K8 [PROTO_0]
       19 CAPTURE                          VAL R1
       20 RETURN                           R2 1
