PROTO_0:
        0 NAMECALL                         R2 R0 K0 ["getState"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R1 R2 K1 ["assets"]
        5 GETTABLEKS                       R2 R1 K2 ["isLoading"]
        7 JUMPIF                           R2 ; [+3]
        8 GETTABLEKS                       R2 R1 K3 ["hasReachedBottom"]
       10 JUMPIFNOT                        R2 ; [+1]
       11 RETURN                           R0 0
       12 NAMECALL                         R5 R0 K0 ["getState"]
       14 CALL                             R5 1 1
       15 GETTABLEKS                       R4 R5 K5 ["pageInfo"]
       17 GETTABLEKS                       R3 R4 K6 ["currentPage"]
       19 ORK                              R2 R3 K4 [0]
       20 GETUPVAL                         R5 0
       21 GETUPVAL                         R6 1
       22 GETUPVAL                         R7 2
       23 DUPTABLE                         R8 K9 [{"targetPage", "requestReason"}]
       24 ADDK                             R9 R2 K10 [1]
       25 SETTABLEKS                       R9 R8 K7 ["targetPage"]
       27 GETUPVAL                         R10 3
       28 GETTABLEKS                       R9 R10 K11 ["NextPage"]
       30 SETTABLEKS                       R9 R8 K8 ["requestReason"]
       32 CALL                             R5 3 -1
       33 NAMECALL                         R3 R0 K12 ["dispatch"]
       35 CALL                             R3 -1 0
       36 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          UPVAL U1
        5 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R4 R0 K5 ["Src"]
       15 GETTABLEKS                       R3 R4 K6 ["Types"]
       17 GETTABLEKS                       R2 R3 K7 ["RequestReason"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K4 [require]
       22 GETTABLEKS                       R6 R0 K5 ["Src"]
       24 GETTABLEKS                       R5 R6 K8 ["Networking"]
       26 GETTABLEKS                       R4 R5 K9 ["Requests"]
       28 GETTABLEKS                       R3 R4 K10 ["UpdatePageInfoAndSendRequest"]
       30 CALL                             R2 1 1
       31 DUPCLOSURE                       R3 K11 [PROTO_1]
       32 CAPTURE                          VAL R2
       33 CAPTURE                          VAL R1
       34 RETURN                           R3 1
