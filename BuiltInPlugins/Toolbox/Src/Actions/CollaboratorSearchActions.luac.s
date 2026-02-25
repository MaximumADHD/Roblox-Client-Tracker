PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

PROTO_1:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

PROTO_2:
        0 DUPTABLE                         R2 K2 [{"success", "friends"}]
        1 SETTABLEKS                       R0 R2 K0 ["success"]
        3 SETTABLEKS                       R1 R2 K1 ["friends"]
        5 RETURN                           R2 1

PROTO_3:
        0 DUPTABLE                         R2 K2 [{"success", "groups"}]
        1 SETTABLEKS                       R0 R2 K0 ["success"]
        3 SETTABLEKS                       R1 R2 K1 ["groups"]
        5 RETURN                           R2 1

PROTO_4:
        0 DUPTABLE                         R1 K1 [{"text"}]
        1 SETTABLEKS                       R0 R1 K0 ["text"]
        3 RETURN                           R1 1

PROTO_5:
        0 DUPTABLE                         R3 K3 [{"collaboratorType", "collaboratorId", "action"}]
        1 SETTABLEKS                       R0 R3 K0 ["collaboratorType"]
        3 SETTABLEKS                       R1 R3 K1 ["collaboratorId"]
        5 SETTABLEKS                       R2 R3 K2 ["action"]
        7 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K3 ["Packages"]
       11 GETIMPORT                        R3 K5 [require]
       13 GETTABLEKS                       R4 R1 K6 ["Framework"]
       15 CALL                             R3 1 1
       16 GETTABLEKS                       R2 R3 K7 ["Util"]
       18 GETTABLEKS                       R3 R2 K8 ["Action"]
       20 DUPTABLE                         R4 K15 [{"LoadingLocalUserFriends", "LoadingLocalUserGroups", "LoadedLocalUserFriends", "LoadedLocalUserGroups", "SearchTextChanged", "CollaboratorAdded"}]
       21 MOVE                             R5 R3
       22 LOADK                            R6 K9 ["LoadingLocalUserFriends"]
       23 DUPCLOSURE                       R7 K16 [PROTO_0]
       24 CALL                             R5 2 1
       25 SETTABLEKS                       R5 R4 K9 ["LoadingLocalUserFriends"]
       27 MOVE                             R5 R3
       28 LOADK                            R6 K10 ["LoadingLocalUserGroups"]
       29 DUPCLOSURE                       R7 K17 [PROTO_1]
       30 CALL                             R5 2 1
       31 SETTABLEKS                       R5 R4 K10 ["LoadingLocalUserGroups"]
       33 MOVE                             R5 R3
       34 LOADK                            R6 K11 ["LoadedLocalUserFriends"]
       35 DUPCLOSURE                       R7 K18 [PROTO_2]
       36 CALL                             R5 2 1
       37 SETTABLEKS                       R5 R4 K11 ["LoadedLocalUserFriends"]
       39 MOVE                             R5 R3
       40 LOADK                            R6 K12 ["LoadedLocalUserGroups"]
       41 DUPCLOSURE                       R7 K19 [PROTO_3]
       42 CALL                             R5 2 1
       43 SETTABLEKS                       R5 R4 K12 ["LoadedLocalUserGroups"]
       45 MOVE                             R5 R3
       46 LOADK                            R6 K13 ["SearchTextChanged"]
       47 DUPCLOSURE                       R7 K20 [PROTO_4]
       48 CALL                             R5 2 1
       49 SETTABLEKS                       R5 R4 K13 ["SearchTextChanged"]
       51 MOVE                             R5 R3
       52 LOADK                            R6 K14 ["CollaboratorAdded"]
       53 DUPCLOSURE                       R7 K21 [PROTO_5]
       54 CALL                             R5 2 1
       55 SETTABLEKS                       R5 R4 K14 ["CollaboratorAdded"]
       57 RETURN                           R4 1
