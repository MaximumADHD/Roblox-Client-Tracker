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

PROTO_4:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"LikelyCollaborators"}]
        7 GETTABLEKS                       R5 R1 K4 ["likelyCollaborators"]
        9 SETTABLEKS                       R5 R4 K2 ["LikelyCollaborators"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Rodux"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["Cryo"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R6 R0 K8 ["Src"]
       27 GETTABLEKS                       R5 R6 K9 ["Keys"]
       29 GETTABLEKS                       R4 R5 K10 ["loadingInProgress"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K4 [require]
       34 GETTABLEKS                       R7 R0 K8 ["Src"]
       36 GETTABLEKS                       R6 R7 K11 ["Util"]
       38 GETTABLEKS                       R5 R6 K12 ["IsLikelyCollaboratorPrefetchEnabled"]
       40 CALL                             R4 1 1
       41 MOVE                             R5 R4
       42 CALL                             R5 0 1
       43 DUPTABLE                         R6 K16 [{"CachedSearchResults", "SearchText", "LikelyCollaborators"}]
       44 NEWTABLE                         R7 0 0
       46 SETTABLEKS                       R7 R6 K13 ["CachedSearchResults"]
       48 LOADK                            R7 K17 [""]
       49 SETTABLEKS                       R7 R6 K14 ["SearchText"]
       51 JUMPIFNOT                        R5 ; [+3]
       52 NEWTABLE                         R7 0 0
       54 JUMP                             ; [+1]
       55 LOADNIL                          R7
       56 SETTABLEKS                       R7 R6 K15 ["LikelyCollaborators"]
       58 GETTABLEKS                       R7 R1 K18 ["createReducer"]
       60 MOVE                             R8 R6
       61 DUPTABLE                         R9 K24 [{"ResetStore", "LoadedWebResults", "LoadWebResults", "SearchTextChanged", "PrefetchLikelyCollaborators"}]
       62 DUPCLOSURE                       R10 K25 [PROTO_0]
       63 CAPTURE                          VAL R6
       64 SETTABLEKS                       R10 R9 K19 ["ResetStore"]
       66 DUPCLOSURE                       R10 K26 [PROTO_1]
       67 CAPTURE                          VAL R2
       68 SETTABLEKS                       R10 R9 K20 ["LoadedWebResults"]
       70 DUPCLOSURE                       R10 K27 [PROTO_2]
       71 CAPTURE                          VAL R2
       72 CAPTURE                          VAL R3
       73 SETTABLEKS                       R10 R9 K21 ["LoadWebResults"]
       75 DUPCLOSURE                       R10 K28 [PROTO_3]
       76 CAPTURE                          VAL R2
       77 SETTABLEKS                       R10 R9 K22 ["SearchTextChanged"]
       79 JUMPIFNOT                        R5 ; [+3]
       80 DUPCLOSURE                       R10 K29 [PROTO_4]
       81 CAPTURE                          VAL R2
       82 JUMP                             ; [+1]
       83 LOADNIL                          R10
       84 SETTABLEKS                       R10 R9 K23 ["PrefetchLikelyCollaborators"]
       86 CALL                             R7 2 -1
       87 RETURN                           R7 -1
