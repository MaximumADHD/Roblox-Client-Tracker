PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["responseBody"]
        4 GETTABLEKS                       R2 R2 K1 ["groups"]
        6 LOADNIL                          R3
        7 LOADNIL                          R4
        8 FORGPREP                         R2
        9 DUPTABLE                         R7 K6 [{"Name", "Id", "Type", "Uid"}]
       10 GETTABLEKS                       R8 R6 K7 ["name"]
       12 SETTABLEKS                       R8 R7 K2 ["Name"]
       14 GETTABLEKS                       R8 R6 K8 ["id"]
       16 SETTABLEKS                       R8 R7 K3 ["Id"]
       18 GETUPVAL                         R8 0
       19 GETTABLEKS                       R8 R8 K9 ["ScopeType"]
       21 GETTABLEKS                       R8 R8 K10 ["Group"]
       23 SETTABLEKS                       R8 R7 K4 ["Type"]
       25 GETUPVAL                         R8 1
       26 GETUPVAL                         R9 0
       27 GETTABLEKS                       R9 R9 K9 ["ScopeType"]
       29 GETTABLEKS                       R9 R9 K10 ["Group"]
       31 GETTABLEKS                       R10 R6 K8 ["id"]
       33 CALL                             R8 2 1
       34 SETTABLEKS                       R8 R7 K5 ["Uid"]
       36 GETTABLEKS                       R8 R6 K8 ["id"]
       38 SETTABLE                         R7 R1 R8
       39 FORGLOOP                         R2 2 ; [-31]
       41 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["CreateFetchGroupsRequest"]
        3 LOADK                            R1 K1 ["StudioAssetManager"]
        4 CALL                             R0 1 1
        5 NAMECALL                         R0 R0 K2 ["makeRequest"]
        7 CALL                             R0 1 1
        8 DUPCLOSURE                       R2 K3 [PROTO_0]
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          UPVAL U2
       11 GETUPVAL                         R3 3
       12 GETTABLEKS                       R3 R3 K4 ["reject"]
       14 NAMECALL                         R0 R0 K5 ["andThen"]
       16 CALL                             R0 3 -1
       17 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManagement"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Enums"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Networking"]
       16 GETTABLEKS                       R3 R3 K8 ["Types"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K7 ["Networking"]
       23 GETTABLEKS                       R4 R4 K9 ["Shared"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K8 ["Types"]
       30 CALL                             R4 1 1
       31 GETIMPORT                        R5 K5 [require]
       33 GETTABLEKS                       R6 R0 K7 ["Networking"]
       35 GETTABLEKS                       R6 R6 K10 ["Urls"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K5 [require]
       40 GETTABLEKS                       R7 R0 K11 ["Utils"]
       42 GETTABLEKS                       R7 R7 K12 ["createScopeUid"]
       44 CALL                             R6 1 1
       45 DUPCLOSURE                       R7 K13 [PROTO_1]
       46 CAPTURE                          VAL R5
       47 CAPTURE                          VAL R1
       48 CAPTURE                          VAL R6
       49 CAPTURE                          VAL R3
       50 RETURN                           R7 1
