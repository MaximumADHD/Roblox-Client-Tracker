PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["responseBody"]
        3 RETURN                           R1 2

PROTO_1:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["Failed to get item parents: %*"]
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R4 R4 K1 ["pretty"]
        5 MOVE                             R5 R0
        6 CALL                             R4 1 1
        7 NAMECALL                         R2 R2 K2 ["format"]
        9 CALL                             R2 2 1
       10 CALL                             R1 1 0
       11 GETUPVAL                         R1 2
       12 GETTABLEKS                       R1 R1 K3 ["reject"]
       14 MOVE                             R2 R0
       15 CALL                             R1 1 -1
       16 RETURN                           R1 -1

PROTO_2:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R1
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 DUPTABLE                         R10 K1 [{"path"}]
        7 SETTABLEKS                       R7 R10 K0 ["path"]
        9 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
       11 MOVE                             R9 R2
       12 GETIMPORT                        R8 K4 [table.insert]
       14 CALL                             R8 2 0
       15 FORGLOOP                         R3 2 ; [-10]
       17 DUPTABLE                         R3 K6 [{"items"}]
       18 SETTABLEKS                       R2 R3 K5 ["items"]
       20 GETUPVAL                         R4 0
       21 GETTABLEKS                       R4 R4 K7 ["CreateGetItemParentsRequest"]
       23 GETTABLEKS                       R5 R0 K8 ["Id"]
       25 GETUPVAL                         R6 1
       26 GETTABLEKS                       R6 R6 K9 ["convertScopeTypeToAccountType"]
       28 GETTABLEKS                       R7 R0 K10 ["Type"]
       30 CALL                             R6 1 1
       31 MOVE                             R7 R3
       32 CALL                             R4 3 1
       33 NAMECALL                         R4 R4 K11 ["makeRequest"]
       35 CALL                             R4 1 1
       36 NEWCLOSURE                       R6 P0
       37 CAPTURE                          VAL R2
       38 DUPCLOSURE                       R7 K12 [PROTO_1]
       39 CAPTURE                          UPVAL U2
       40 CAPTURE                          UPVAL U3
       41 CAPTURE                          UPVAL U1
       42 NAMECALL                         R4 R4 K13 ["andThen"]
       44 CALL                             R4 3 -1
       45 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManagement"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 LOADK                            R3 K4 ["Packages"]
        8 NAMECALL                         R1 R0 K3 ["FindFirstAncestor"]
       10 CALL                             R1 2 1
       11 GETIMPORT                        R2 K6 [require]
       13 GETTABLEKS                       R3 R1 K7 ["Dash"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETTABLEKS                       R4 R0 K8 ["Networking"]
       20 GETTABLEKS                       R4 R4 K9 ["Types"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R5 R0 K8 ["Networking"]
       27 GETTABLEKS                       R5 R5 K10 ["Shared"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R6 R0 K9 ["Types"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K8 ["Networking"]
       39 GETTABLEKS                       R7 R7 K11 ["Urls"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R8 R0 K12 ["Utils"]
       46 GETTABLEKS                       R8 R8 K13 ["logIfDebug"]
       48 CALL                             R7 1 1
       49 DUPCLOSURE                       R8 K14 [PROTO_2]
       50 CAPTURE                          VAL R6
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R7
       53 CAPTURE                          VAL R2
       54 RETURN                           R8 1
