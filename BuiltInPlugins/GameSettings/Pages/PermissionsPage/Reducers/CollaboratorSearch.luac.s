PROTO_0:
        0 GETUPVAL                         R2 0
        1 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"CachedSearchResults"}]
        7 GETUPVAL                         R7 0
        8 GETTABLEKS                       R6 R7 K0 ["Dictionary"]
       10 GETTABLEKS                       R5 R6 K1 ["join"]
       12 GETTABLEKS                       R6 R0 K2 ["CachedSearchResults"]
       14 NEWTABLE                         R7 1 0
       16 GETTABLEKS                       R8 R1 K4 ["key"]
       18 GETTABLEKS                       R10 R1 K5 ["success"]
       20 JUMPIFNOT                        R10 ; [+3]
       21 GETTABLEKS                       R9 R1 K6 ["results"]
       23 JUMPIF                           R9 ; [+1]
       24 LOADNIL                          R9
       25 SETTABLE                         R9 R7 R8
       26 CALL                             R5 2 1
       27 SETTABLEKS                       R5 R4 K2 ["CachedSearchResults"]
       29 CALL                             R2 2 -1
       30 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"CachedSearchResults"}]
        7 GETUPVAL                         R7 0
        8 GETTABLEKS                       R6 R7 K0 ["Dictionary"]
       10 GETTABLEKS                       R5 R6 K1 ["join"]
       12 GETTABLEKS                       R6 R0 K2 ["CachedSearchResults"]
       14 NEWTABLE                         R7 1 0
       16 GETTABLEKS                       R8 R1 K4 ["searchTerm"]
       18 GETUPVAL                         R9 1
       19 SETTABLE                         R9 R7 R8
       20 CALL                             R5 2 1
       21 SETTABLEKS                       R5 R4 K2 ["CachedSearchResults"]
       23 CALL                             R2 2 -1
       24 RETURN                           R2 -1

PROTO_3:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"SearchText"}]
        7 GETTABLEKS                       R5 R1 K4 ["text"]
        9 SETTABLEKS                       R5 R4 K2 ["SearchText"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R5 K1 [script]
        9 GETTABLEKS                       R4 R5 K2 ["Parent"]
       11 GETTABLEKS                       R3 R4 K2 ["Parent"]
       13 GETTABLEKS                       R2 R3 K2 ["Parent"]
       15 GETTABLEKS                       R1 R2 K2 ["Parent"]
       17 GETIMPORT                        R2 K4 [require]
       19 GETTABLEKS                       R4 R1 K5 ["Packages"]
       21 GETTABLEKS                       R3 R4 K6 ["Cryo"]
       23 CALL                             R2 1 1
       24 GETIMPORT                        R3 K4 [require]
       26 GETTABLEKS                       R5 R1 K5 ["Packages"]
       28 GETTABLEKS                       R4 R5 K7 ["Rodux"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K4 [require]
       33 GETTABLEKS                       R6 R0 K8 ["Keys"]
       35 GETTABLEKS                       R5 R6 K9 ["loadingInProgress"]
       37 CALL                             R4 1 1
       38 DUPTABLE                         R5 K12 [{"CachedSearchResults", "SearchText"}]
       39 NEWTABLE                         R6 0 0
       41 SETTABLEKS                       R6 R5 K10 ["CachedSearchResults"]
       43 LOADK                            R6 K13 [""]
       44 SETTABLEKS                       R6 R5 K11 ["SearchText"]
       46 GETTABLEKS                       R6 R3 K14 ["createReducer"]
       48 MOVE                             R7 R5
       49 DUPTABLE                         R8 K19 [{"ResetStore", "LoadedWebResults", "LoadingWebResults", "SearchTextChanged"}]
       50 DUPCLOSURE                       R9 K20 [PROTO_0]
       51 CAPTURE                          VAL R5
       52 SETTABLEKS                       R9 R8 K15 ["ResetStore"]
       54 DUPCLOSURE                       R9 K21 [PROTO_1]
       55 CAPTURE                          VAL R2
       56 SETTABLEKS                       R9 R8 K16 ["LoadedWebResults"]
       58 DUPCLOSURE                       R9 K22 [PROTO_2]
       59 CAPTURE                          VAL R2
       60 CAPTURE                          VAL R4
       61 SETTABLEKS                       R9 R8 K17 ["LoadingWebResults"]
       63 DUPCLOSURE                       R9 K23 [PROTO_3]
       64 CAPTURE                          VAL R2
       65 SETTABLEKS                       R9 R8 K18 ["SearchTextChanged"]
       67 CALL                             R6 2 -1
       68 RETURN                           R6 -1
