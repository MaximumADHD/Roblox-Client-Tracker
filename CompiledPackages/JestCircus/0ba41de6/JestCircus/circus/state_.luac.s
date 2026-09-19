PROTO_0:
        0 GETIMPORT                        R1 K1 [_G]
        2 GETUPVAL                         R2 0
        3 GETTABLE                         R0 R1 R2
        4 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETTABLEKS                       R1 R1 K2 ["Parent"]
        9 GETIMPORT                        R2 K4 [require]
       11 GETTABLEKS                       R3 R1 K5 ["JestTypes"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K4 [require]
       16 GETIMPORT                        R4 K1 [script]
       18 GETTABLEKS                       R4 R4 K2 ["Parent"]
       20 GETTABLEKS                       R4 R4 K6 ["types"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R3 R3 K7 ["STATE_SYM"]
       25 NEWTABLE                         R4 2 0
       27 LOADK                            R5 K8 ["ROOT_DESCRIBE_BLOCK"]
       28 SETTABLEKS                       R5 R4 K9 ["ROOT_DESCRIBE_BLOCK_NAME"]
       30 DUPCLOSURE                       R5 K10 [PROTO_0]
       31 CAPTURE                          VAL R3
       32 SETTABLEKS                       R5 R4 K11 ["getState"]
       34 RETURN                           R4 1
