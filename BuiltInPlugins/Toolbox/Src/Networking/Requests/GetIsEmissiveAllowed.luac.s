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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["ITEM_CONFIGURATION_URL"]
        3 LOADK                            R3 K1 ["v1/permissions/action-allowed-for-item-type?action=1&assetType=%d"]
        4 GETTABLEKS                       R5 R0 K2 ["Value"]
        6 NAMECALL                         R3 R3 K3 ["format"]
        8 CALL                             R3 2 1
        9 CONCAT                           R1 R2 R3
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          VAL R1
       13 FASTPCALL                        pcall 1 ; [+2]
       14 GETIMPORT                        R2 K5 [pcall]
       16 CALL                             R2 1 2
       17 JUMPIF                           R2 ; [+2]
       18 LOADB                            R4 0
       19 RETURN                           R4 1
       20 GETUPVAL                         R5 2
       21 GETTABLEKS                       R5 R5 K6 ["JSONDecode"]
       23 GETUPVAL                         R6 2
       24 MOVE                             R7 R3
       25 FASTPCALL                        pcall 3 ; [+2]
       26 GETIMPORT                        R4 K5 [pcall]
       28 CALL                             R4 3 2
       29 JUMPIFNOT                        R4 ; [+7]
       30 FASTCALL1                        TYPEOF R5 ; [+3]
       31 MOVE                             R7 R5
       32 GETIMPORT                        R6 K8 [typeof]
       34 CALL                             R6 1 1
       35 JUMPIFEQKS                       R6 K9 ["table"] ; [+3]
       37 LOADB                            R6 0
       38 RETURN                           R6 1
       39 GETTABLEKS                       R6 R5 K10 ["metadataPermissions"]
       41 LOADB                            R7 0
       42 FASTCALL1                        TYPEOF R6 ; [+3]
       43 MOVE                             R9 R6
       44 GETIMPORT                        R8 K8 [typeof]
       46 CALL                             R8 1 1
       47 JUMPIFNOTEQKS                    R8 K9 ["table"] ; [+7]
       49 GETTABLEKS                       R8 R6 K11 ["EmissiveResult"]
       51 JUMPIFEQKB                       R8 TRUE ; [+2]
       53 LOADB                            R7 0 +1
       54 LOADB                            R7 1
       55 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Libs"]
       11 GETTABLEKS                       R2 R2 K7 ["Http"]
       13 GETTABLEKS                       R2 R2 K8 ["Url"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Src"]
       20 GETTABLEKS                       R3 R3 K10 ["Util"]
       22 GETTABLEKS                       R3 R3 K11 ["Services"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K13 [game]
       27 LOADK                            R5 K14 ["HttpService"]
       28 NAMECALL                         R3 R3 K15 ["GetService"]
       30 CALL                             R3 2 1
       31 DUPCLOSURE                       R4 K16 [PROTO_1]
       32 CAPTURE                          VAL R1
       33 CAPTURE                          VAL R2
       34 CAPTURE                          VAL R3
       35 RETURN                           R4 1
