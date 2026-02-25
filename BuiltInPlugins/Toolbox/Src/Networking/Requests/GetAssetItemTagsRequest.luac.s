PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        2 NEWTABLE                         R2 1 0
        4 GETTABLEKS                       R3 R1 K1 ["data"]
        6 JUMPIFNOT                        R3 ; [+13]
        7 GETTABLEKS                       R4 R1 K1 ["data"]
        9 LENGTH                           R3 R4
       10 LOADN                            R4 0
       11 JUMPIFNOTLT                      R4 R3 ; [+8]
       13 GETTABLEKS                       R5 R1 K1 ["data"]
       15 GETTABLEN                        R4 R5 1
       16 GETTABLEKS                       R3 R4 K2 ["itemTags"]
       18 SETTABLEKS                       R3 R2 K3 ["ItemTags"]
       20 GETUPVAL                         R3 0
       21 GETUPVAL                         R5 1
       22 MOVE                             R6 R2
       23 CALL                             R5 1 -1
       24 NAMECALL                         R3 R3 K4 ["dispatch"]
       26 CALL                             R3 -1 0
       27 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 GETUPVAL                         R6 2
        4 GETTABLEKS                       R5 R6 K0 ["GET_ASSET_DETAIL_FAILURE_ACTION"]
        6 CALL                             R3 2 -1
        7 NAMECALL                         R1 R1 K1 ["dispatch"]
        9 CALL                             R1 -1 0
       10 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 NAMECALL                         R1 R1 K0 ["getAssetItemTags"]
        4 CALL                             R1 2 1
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U2
        8 NEWCLOSURE                       R4 P1
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U3
       11 CAPTURE                          UPVAL U4
       12 NAMECALL                         R1 R1 K1 ["andThen"]
       14 CALL                             R1 3 -1
       15 RETURN                           R1 -1

PROTO_3:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETTABLEKS                       R2 R0 K3 ["Src"]
       13 GETTABLEKS                       R1 R2 K4 ["Actions"]
       15 GETIMPORT                        R2 K6 [require]
       17 GETTABLEKS                       R3 R1 K7 ["NetworkError"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K6 [require]
       22 GETTABLEKS                       R6 R0 K3 ["Src"]
       24 GETTABLEKS                       R5 R6 K8 ["Types"]
       26 GETTABLEKS                       R4 R5 K9 ["ConfigTypes"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K6 [require]
       31 GETTABLEKS                       R5 R1 K10 ["UpdateAssetConfigData"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K6 [require]
       36 GETTABLEKS                       R8 R0 K3 ["Src"]
       38 GETTABLEKS                       R7 R8 K11 ["Flags"]
       40 GETTABLEKS                       R6 R7 K12 ["getFFlagRemoveItemTags"]
       42 CALL                             R5 1 1
       43 MOVE                             R6 R5
       44 CALL                             R6 0 1
       45 JUMPIF                           R6 ; [+5]
       46 DUPCLOSURE                       R6 K13 [PROTO_3]
       47 CAPTURE                          VAL R4
       48 CAPTURE                          VAL R2
       49 CAPTURE                          VAL R3
       50 RETURN                           R6 1
       51 RETURN                           R0 0
