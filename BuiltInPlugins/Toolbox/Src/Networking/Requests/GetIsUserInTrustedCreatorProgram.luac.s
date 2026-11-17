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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["ITEM_CONFIGURATION_URL"]
        3 LOADK                            R2 K1 ["v1/permissions/action-allowed-for-item-type?trustedCreatorCheck=true&action=1&assetType=61"]
        4 CONCAT                           R0 R1 R2
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          VAL R0
        8 FASTPCALL                        pcall 1 ; [+2]
        9 GETIMPORT                        R1 K3 [pcall]
       11 CALL                             R1 1 2
       12 JUMPIF                           R1 ; [+2]
       13 LOADB                            R3 0
       14 RETURN                           R3 1
       15 GETUPVAL                         R4 2
       16 GETTABLEKS                       R4 R4 K4 ["JSONDecode"]
       18 GETUPVAL                         R5 2
       19 MOVE                             R6 R2
       20 FASTPCALL                        pcall 3 ; [+2]
       21 GETIMPORT                        R3 K3 [pcall]
       23 CALL                             R3 3 2
       24 MOVE                             R5 R3
       25 JUMPIFNOT                        R5 ; [+14]
       26 LOADB                            R5 0
       27 FASTCALL1                        TYPEOF R4 ; [+3]
       28 MOVE                             R7 R4
       29 GETIMPORT                        R6 K6 [typeof]
       31 CALL                             R6 1 1
       32 JUMPIFNOTEQKS                    R6 K7 ["table"] ; [+7]
       34 GETTABLEKS                       R6 R4 K8 ["isActionAllowed"]
       36 JUMPIFEQKB                       R6 TRUE ; [+2]
       38 LOADB                            R5 0 +1
       39 LOADB                            R5 1
       40 RETURN                           R5 1

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
