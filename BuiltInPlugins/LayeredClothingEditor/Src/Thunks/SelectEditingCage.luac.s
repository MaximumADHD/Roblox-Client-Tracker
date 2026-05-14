PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R2 R1 K1 ["selectItem"]
        5 GETTABLEKS                       R2 R2 K2 ["editingCage"]
        7 GETUPVAL                         R3 0
        8 JUMPIFEQ                         R2 R3 ; [+7]
       10 GETUPVAL                         R5 1
       11 GETUPVAL                         R6 0
       12 CALL                             R5 1 -1
       13 NAMECALL                         R3 R0 K3 ["dispatch"]
       15 CALL                             R3 -1 0
       16 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Actions"]
       15 GETTABLEKS                       R2 R2 K7 ["SetEditingCage"]
       17 CALL                             R1 1 1
       18 DUPCLOSURE                       R2 K8 [PROTO_1]
       19 CAPTURE                          VAL R1
       20 RETURN                           R2 1
