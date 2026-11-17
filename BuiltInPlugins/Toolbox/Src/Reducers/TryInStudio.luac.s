PROTO_0:
        0 DUPTABLE                         R2 K1 [{"triedInStudio"}]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R3 R3 K2 ["Dictionary"]
        4 GETTABLEKS                       R3 R3 K3 ["join"]
        6 GETTABLEKS                       R4 R0 K0 ["triedInStudio"]
        8 NEWTABLE                         R5 1 0
       10 GETTABLEKS                       R6 R1 K4 ["assetId"]
       12 LOADB                            R7 1
       13 SETTABLE                         R7 R5 R6
       14 CALL                             R3 2 1
       15 SETTABLEKS                       R3 R2 K0 ["triedInStudio"]
       17 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K3 ["Packages"]
       11 GETIMPORT                        R2 K5 [require]
       13 GETTABLEKS                       R3 R1 K6 ["Cryo"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R1 K7 ["Rodux"]
       20 CALL                             R3 1 1
       21 GETTABLEKS                       R4 R0 K8 ["Src"]
       23 GETTABLEKS                       R4 R4 K9 ["Actions"]
       25 GETIMPORT                        R5 K5 [require]
       27 GETTABLEKS                       R6 R4 K10 ["MarkTryInStudioDone"]
       29 CALL                             R5 1 1
       30 GETTABLEKS                       R6 R3 K11 ["createReducer"]
       32 DUPTABLE                         R7 K13 [{"triedInStudio"}]
       33 NEWTABLE                         R8 0 0
       35 SETTABLEKS                       R8 R7 K12 ["triedInStudio"]
       37 NEWTABLE                         R8 1 0
       39 GETTABLEKS                       R9 R5 K14 ["name"]
       41 DUPCLOSURE                       R10 K15 [PROTO_0]
       42 CAPTURE                          VAL R2
       43 SETTABLE                         R10 R8 R9
       44 CALL                             R6 2 -1
       45 RETURN                           R6 -1
