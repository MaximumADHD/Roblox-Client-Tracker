PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

PROTO_1:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

PROTO_2:
        0 DUPTABLE                         R1 K1 [{"searchTerm"}]
        1 SETTABLEKS                       R0 R1 K0 ["searchTerm"]
        3 RETURN                           R1 1

PROTO_3:
        0 DUPTABLE                         R2 K2 [{"success", "friends"}]
        1 SETTABLEKS                       R0 R2 K0 ["success"]
        3 SETTABLEKS                       R1 R2 K1 ["friends"]
        5 RETURN                           R2 1

PROTO_4:
        0 DUPTABLE                         R2 K2 [{"success", "groups"}]
        1 SETTABLEKS                       R0 R2 K0 ["success"]
        3 SETTABLEKS                       R1 R2 K1 ["groups"]
        5 RETURN                           R2 1

PROTO_5:
        0 DUPTABLE                         R3 K3 [{"success", "key", "results"}]
        1 SETTABLEKS                       R0 R3 K0 ["success"]
        3 SETTABLEKS                       R1 R3 K1 ["key"]
        5 SETTABLEKS                       R2 R3 K2 ["results"]
        7 RETURN                           R3 1

PROTO_6:
        0 DUPTABLE                         R1 K1 [{"text"}]
        1 SETTABLEKS                       R0 R1 K0 ["text"]
        3 RETURN                           R1 1

PROTO_7:
        0 DUPTABLE                         R3 K3 [{"collaboratorType", "collaboratorId", "action"}]
        1 SETTABLEKS                       R0 R3 K0 ["collaboratorType"]
        3 SETTABLEKS                       R1 R3 K1 ["collaboratorId"]
        5 SETTABLEKS                       R2 R3 K2 ["action"]
        7 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R2 K6 ["Framework"]
       17 CALL                             R1 1 1
       18 GETTABLEKS                       R1 R1 K7 ["Util"]
       20 GETTABLEKS                       R1 R1 K8 ["Action"]
       22 DUPTABLE                         R2 K17 [{"LoadingLocalUserFriends", "LoadingLocalUserGroups", "LoadingWebResults", "LoadedLocalUserFriends", "LoadedLocalUserGroups", "LoadedWebResults", "SearchTextChanged", "CollaboratorAdded"}]
       23 MOVE                             R3 R1
       24 LOADK                            R4 K9 ["LoadingLocalUserFriends"]
       25 DUPCLOSURE                       R5 K18 [PROTO_0]
       26 CALL                             R3 2 1
       27 SETTABLEKS                       R3 R2 K9 ["LoadingLocalUserFriends"]
       29 MOVE                             R3 R1
       30 LOADK                            R4 K10 ["LoadingLocalUserGroups"]
       31 DUPCLOSURE                       R5 K19 [PROTO_1]
       32 CALL                             R3 2 1
       33 SETTABLEKS                       R3 R2 K10 ["LoadingLocalUserGroups"]
       35 MOVE                             R3 R1
       36 LOADK                            R4 K11 ["LoadingWebResults"]
       37 DUPCLOSURE                       R5 K20 [PROTO_2]
       38 CALL                             R3 2 1
       39 SETTABLEKS                       R3 R2 K11 ["LoadingWebResults"]
       41 MOVE                             R3 R1
       42 LOADK                            R4 K12 ["LoadedLocalUserFriends"]
       43 DUPCLOSURE                       R5 K21 [PROTO_3]
       44 CALL                             R3 2 1
       45 SETTABLEKS                       R3 R2 K12 ["LoadedLocalUserFriends"]
       47 MOVE                             R3 R1
       48 LOADK                            R4 K13 ["LoadedLocalUserGroups"]
       49 DUPCLOSURE                       R5 K22 [PROTO_4]
       50 CALL                             R3 2 1
       51 SETTABLEKS                       R3 R2 K13 ["LoadedLocalUserGroups"]
       53 MOVE                             R3 R1
       54 LOADK                            R4 K14 ["LoadedWebResults"]
       55 DUPCLOSURE                       R5 K23 [PROTO_5]
       56 CALL                             R3 2 1
       57 SETTABLEKS                       R3 R2 K14 ["LoadedWebResults"]
       59 MOVE                             R3 R1
       60 LOADK                            R4 K15 ["SearchTextChanged"]
       61 DUPCLOSURE                       R5 K24 [PROTO_6]
       62 CALL                             R3 2 1
       63 SETTABLEKS                       R3 R2 K15 ["SearchTextChanged"]
       65 MOVE                             R3 R1
       66 LOADK                            R4 K16 ["CollaboratorAdded"]
       67 DUPCLOSURE                       R5 K25 [PROTO_7]
       68 CALL                             R3 2 1
       69 SETTABLEKS                       R3 R2 K16 ["CollaboratorAdded"]
       71 RETURN                           R2 1
