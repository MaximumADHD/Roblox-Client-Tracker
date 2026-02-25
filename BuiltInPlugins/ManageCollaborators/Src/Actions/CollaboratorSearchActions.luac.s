PROTO_0:
        0 DUPTABLE                         R1 K1 [{"searchTerm"}]
        1 SETTABLEKS                       R0 R1 K0 ["searchTerm"]
        3 RETURN                           R1 1

PROTO_1:
        0 DUPTABLE                         R3 K3 [{"success", "key", "results"}]
        1 SETTABLEKS                       R0 R3 K0 ["success"]
        3 SETTABLEKS                       R1 R3 K1 ["key"]
        5 SETTABLEKS                       R2 R3 K2 ["results"]
        7 RETURN                           R3 1

PROTO_2:
        0 DUPTABLE                         R1 K1 [{"text"}]
        1 SETTABLEKS                       R0 R1 K0 ["text"]
        3 RETURN                           R1 1

PROTO_3:
        0 DUPTABLE                         R1 K1 [{"likelyCollaborators"}]
        1 SETTABLEKS                       R0 R1 K0 ["likelyCollaborators"]
        3 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Framework"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R3 R1 K7 ["Util"]
       18 GETTABLEKS                       R2 R3 K8 ["Action"]
       20 GETIMPORT                        R3 K4 [require]
       22 GETTABLEKS                       R6 R0 K9 ["Src"]
       24 GETTABLEKS                       R5 R6 K7 ["Util"]
       26 GETTABLEKS                       R4 R5 K10 ["IsLikelyCollaboratorPrefetchEnabled"]
       28 CALL                             R3 1 1
       29 DUPTABLE                         R4 K15 [{"LoadWebResults", "LoadedWebResults", "SearchTextChanged", "PrefetchLikelyCollaborators"}]
       30 MOVE                             R5 R2
       31 LOADK                            R6 K11 ["LoadWebResults"]
       32 DUPCLOSURE                       R7 K16 [PROTO_0]
       33 CALL                             R5 2 1
       34 SETTABLEKS                       R5 R4 K11 ["LoadWebResults"]
       36 MOVE                             R5 R2
       37 LOADK                            R6 K12 ["LoadedWebResults"]
       38 DUPCLOSURE                       R7 K17 [PROTO_1]
       39 CALL                             R5 2 1
       40 SETTABLEKS                       R5 R4 K12 ["LoadedWebResults"]
       42 MOVE                             R5 R2
       43 LOADK                            R6 K13 ["SearchTextChanged"]
       44 DUPCLOSURE                       R7 K18 [PROTO_2]
       45 CALL                             R5 2 1
       46 SETTABLEKS                       R5 R4 K13 ["SearchTextChanged"]
       48 MOVE                             R6 R3
       49 CALL                             R6 0 1
       50 JUMPIFNOT                        R6 ; [+5]
       51 MOVE                             R5 R2
       52 LOADK                            R6 K14 ["PrefetchLikelyCollaborators"]
       53 DUPCLOSURE                       R7 K19 [PROTO_3]
       54 CALL                             R5 2 1
       55 JUMP                             ; [+1]
       56 LOADNIL                          R5
       57 SETTABLEKS                       R5 R4 K14 ["PrefetchLikelyCollaborators"]
       59 RETURN                           R4 1
