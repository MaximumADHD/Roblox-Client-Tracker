PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["GetService"]
        3 LOADK                            R1 K1 ["HttpRbxApiService"]
        4 CALL                             R0 1 1
        5 GETUPVAL                         R3 1
        6 NAMECALL                         R1 R0 K2 ["GetAsyncFullUrl"]
        8 CALL                             R1 2 -1
        9 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["constructAllowedGroupsForActionUrl"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["MARKETPLACE_ACTION_TYPE_UPLOAD"]
        6 CALL                             R0 1 1
        7 NEWCLOSURE                       R2 P0
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          VAL R0
       10 FASTPCALL                        pcall 1 ; [+2]
       11 GETIMPORT                        R1 K3 [pcall]
       13 CALL                             R1 1 2
       14 JUMPIF                           R1 ; [+3]
       15 NEWTABLE                         R3 0 0
       17 RETURN                           R3 1
       18 GETUPVAL                         R4 3
       19 GETTABLEKS                       R4 R4 K4 ["JSONDecode"]
       21 GETUPVAL                         R5 3
       22 MOVE                             R6 R2
       23 FASTPCALL                        pcall 3 ; [+2]
       24 GETIMPORT                        R3 K3 [pcall]
       26 CALL                             R3 3 2
       27 JUMPIFNOT                        R3 ; [+15]
       28 FASTCALL1                        TYPEOF R4 ; [+3]
       29 MOVE                             R6 R4
       30 GETIMPORT                        R5 K6 [typeof]
       32 CALL                             R5 1 1
       33 JUMPIFNOTEQKS                    R5 K7 ["table"] ; [+9]
       35 GETTABLEKS                       R6 R4 K8 ["allowedGroups"]
       37 FASTCALL1                        TYPEOF R6 ; [+2]
       38 GETIMPORT                        R5 K6 [typeof]
       40 CALL                             R5 1 1
       41 JUMPIFEQKS                       R5 K7 ["table"] ; [+4]
       43 NEWTABLE                         R5 0 0
       45 RETURN                           R5 1
       46 GETTABLEKS                       R5 R4 K8 ["allowedGroups"]
       48 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 GETTABLEKS                       R2 R2 K8 ["MarketplaceActionTypes"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K9 ["Util"]
       22 GETTABLEKS                       R3 R3 K10 ["Services"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K6 ["Src"]
       29 GETTABLEKS                       R4 R4 K9 ["Util"]
       31 GETTABLEKS                       R4 R4 K11 ["Urls"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K13 [game]
       36 LOADK                            R6 K14 ["HttpService"]
       37 NAMECALL                         R4 R4 K15 ["GetService"]
       39 CALL                             R4 2 1
       40 DUPCLOSURE                       R5 K16 [PROTO_1]
       41 CAPTURE                          VAL R3
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R2
       44 CAPTURE                          VAL R4
       45 RETURN                           R5 1
