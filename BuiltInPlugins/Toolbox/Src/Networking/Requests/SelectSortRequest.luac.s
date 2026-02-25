PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 GETUPVAL                         R5 2
        3 DUPTABLE                         R6 K4 [{"sortIndex", "targetPage", "currentPage", "requestReason"}]
        4 GETUPVAL                         R7 3
        5 SETTABLEKS                       R7 R6 K0 ["sortIndex"]
        7 LOADN                            R7 1
        8 SETTABLEKS                       R7 R6 K1 ["targetPage"]
       10 LOADN                            R7 0
       11 SETTABLEKS                       R7 R6 K2 ["currentPage"]
       13 GETUPVAL                         R8 4
       14 GETTABLEKS                       R7 R8 K5 ["ChangeSort"]
       16 SETTABLEKS                       R7 R6 K3 ["requestReason"]
       18 CALL                             R3 3 -1
       19 NAMECALL                         R1 R0 K6 ["dispatch"]
       21 CALL                             R1 -1 0
       22 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          VAL R2
        5 CAPTURE                          UPVAL U1
        6 RETURN                           R3 1

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
