PROTO_0:
        0 DUPTABLE                         R2 K2 [{"assetId", "status"}]
        1 SETTABLEKS                       R0 R2 K0 ["assetId"]
        3 SETTABLEKS                       R1 R2 K1 ["status"]
        5 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Rodux"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K7 ["Src"]
       20 GETTABLEKS                       R3 R3 K8 ["Util"]
       22 GETTABLEKS                       R3 R3 K9 ["Types"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R4 R0 K7 ["Src"]
       29 GETTABLEKS                       R4 R4 K8 ["Util"]
       31 GETTABLEKS                       R4 R4 K10 ["UpdateStatus"]
       33 CALL                             R3 1 1
       34 GETTABLEKS                       R4 R1 K11 ["makeActionCreator"]
       36 GETIMPORT                        R5 K1 [script]
       38 GETTABLEKS                       R5 R5 K12 ["Name"]
       40 DUPCLOSURE                       R6 K13 [PROTO_0]
       41 CALL                             R4 2 -1
       42 RETURN                           R4 -1
