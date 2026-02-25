PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["assetData"]
        2 GETTABLEKS                       R3 R1 K1 ["status"]
        4 GETUPVAL                         R6 0
        5 GETTABLEKS                       R5 R6 K2 ["List"]
        7 GETTABLEKS                       R4 R5 K3 ["join"]
        9 GETTABLEKS                       R5 R0 K4 ["subsequentDialogQueue"]
       11 NEWTABLE                         R6 0 1
       13 DUPTABLE                         R7 K5 [{"assetData", "status"}]
       14 SETTABLEKS                       R2 R7 K0 ["assetData"]
       16 SETTABLEKS                       R3 R7 K1 ["status"]
       18 SETLIST                          R6 R7 1 [1]
       20 CALL                             R4 2 1
       21 GETUPVAL                         R7 0
       22 GETTABLEKS                       R6 R7 K6 ["Dictionary"]
       24 GETTABLEKS                       R5 R6 K3 ["join"]
       26 MOVE                             R6 R0
       27 DUPTABLE                         R7 K7 [{"subsequentDialogQueue"}]
       28 SETTABLEKS                       R4 R7 K4 ["subsequentDialogQueue"]
       30 CALL                             R5 2 -1
       31 RETURN                           R5 -1

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["List"]
        3 GETTABLEKS                       R2 R3 K1 ["removeValue"]
        5 GETTABLEKS                       R3 R0 K2 ["subsequentDialogQueue"]
        7 GETTABLEKS                       R5 R0 K2 ["subsequentDialogQueue"]
        9 GETTABLEN                        R4 R5 1
       10 CALL                             R2 2 1
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R4 R5 K3 ["Dictionary"]
       14 GETTABLEKS                       R3 R4 K4 ["join"]
       16 MOVE                             R4 R0
       17 DUPTABLE                         R5 K5 [{"subsequentDialogQueue"}]
       18 SETTABLEKS                       R2 R5 K2 ["subsequentDialogQueue"]
       20 CALL                             R3 2 -1
       21 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Packages"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Cryo"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Rodux"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R5 R0 K9 ["Src"]
       21 GETTABLEKS                       R4 R5 K10 ["Actions"]
       23 GETIMPORT                        R5 K6 [require]
       25 GETTABLEKS                       R6 R4 K11 ["DequeueSubsequentDialog"]
       27 CALL                             R5 1 1
       28 GETIMPORT                        R6 K6 [require]
       30 GETTABLEKS                       R7 R4 K12 ["EnqueueSubsequentDialog"]
       32 CALL                             R6 1 1
       33 GETTABLEKS                       R7 R3 K13 ["createReducer"]
       35 DUPTABLE                         R8 K15 [{"subsequentDialogQueue"}]
       36 NEWTABLE                         R9 0 0
       38 SETTABLEKS                       R9 R8 K14 ["subsequentDialogQueue"]
       40 NEWTABLE                         R9 2 0
       42 GETTABLEKS                       R10 R6 K16 ["name"]
       44 DUPCLOSURE                       R11 K17 [PROTO_0]
       45 CAPTURE                          VAL R2
       46 SETTABLE                         R11 R9 R10
       47 GETTABLEKS                       R10 R5 K16 ["name"]
       49 DUPCLOSURE                       R11 K18 [PROTO_1]
       50 CAPTURE                          VAL R2
       51 SETTABLE                         R11 R9 R10
       52 CALL                             R7 2 -1
       53 RETURN                           R7 -1
