PROTO_0:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 GETTABLEKS                       R6 R2 K0 ["editableImages"]
        5 MOVE                             R7 R2
        6 CALL                             R3 4 2
        7 JUMPIF                           R3 ; [+2]
        8 LOADB                            R5 0
        9 RETURN                           R5 1
       10 LOADB                            R5 1
       11 MOVE                             R6 R4
       12 RETURN                           R5 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["util"]
       11 GETTABLEKS                       R2 R2 K6 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K5 ["util"]
       18 GETTABLEKS                       R3 R3 K7 ["getEditableInstanceFromContext"]
       20 CALL                             R2 1 1
       21 DUPCLOSURE                       R3 K8 [PROTO_0]
       22 CAPTURE                          VAL R2
       23 RETURN                           R3 1
