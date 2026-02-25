PROTO_0:
        0 GETIMPORT                        R1 K1 [_G]
        2 GETUPVAL                         R2 0
        3 GETTABLE                         R0 R1 R2
        4 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETTABLEKS                       R2 R0 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETIMPORT                        R2 K4 [require]
       11 GETTABLEKS                       R3 R1 K5 ["JestTypes"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R4 K4 [require]
       16 GETIMPORT                        R7 K1 [script]
       18 GETTABLEKS                       R6 R7 K2 ["Parent"]
       20 GETTABLEKS                       R5 R6 K6 ["types"]
       22 CALL                             R4 1 1
       23 GETTABLEKS                       R3 R4 K7 ["STATE_SYM"]
       25 NEWTABLE                         R4 2 0
       27 LOADK                            R5 K8 ["ROOT_DESCRIBE_BLOCK"]
       28 SETTABLEKS                       R5 R4 K9 ["ROOT_DESCRIBE_BLOCK_NAME"]
       30 DUPCLOSURE                       R5 K10 [PROTO_0]
       31 CAPTURE                          VAL R3
       32 SETTABLEKS                       R5 R4 K11 ["getState"]
       34 RETURN                           R4 1
