PROTO_0:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETUPVAL                         R1 1
        3 GETVARARGS                       R2 -1
        4 CALL                             R0 -1 -1
        5 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R1
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          VAL R2
        4 CAPTURE                          UPVAL U1
        5 SETTABLE                         R3 R0 R1
        6 RETURN                           R0 1

PROTO_2:
        0 JUMPIFNOTEQKNIL                  R1 ; [+3]
        2 GETUPVAL                         R3 0
        3 JUMP                             ; [+1]
        4 MOVE                             R3 R1
        5 JUMPIFNOTEQKNIL                  R2 ; [+4]
        7 NEWTABLE                         R4 0 0
        9 JUMP                             ; [+1]
       10 MOVE                             R4 R2
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R5 R6 K0 ["reduce"]
       14 GETUPVAL                         R7 2
       15 GETTABLEKS                       R6 R7 K1 ["keys"]
       17 MOVE                             R7 R3
       18 CALL                             R6 1 1
       19 NEWCLOSURE                       R7 P0
       20 CAPTURE                          VAL R3
       21 CAPTURE                          VAL R0
       22 MOVE                             R8 R4
       23 CALL                             R5 3 1
       24 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K6 ["Array"]
       14 GETTABLEKS                       R3 R1 K7 ["Object"]
       16 NEWTABLE                         R4 1 0
       18 GETIMPORT                        R5 K4 [require]
       20 GETIMPORT                        R8 K1 [script]
       22 GETTABLEKS                       R7 R8 K2 ["Parent"]
       24 GETTABLEKS                       R6 R7 K8 ["queries"]
       26 CALL                             R5 1 1
       27 DUPCLOSURE                       R6 K9 [PROTO_2]
       28 CAPTURE                          VAL R5
       29 CAPTURE                          VAL R2
       30 CAPTURE                          VAL R3
       31 SETTABLEKS                       R6 R4 K10 ["getQueriesForElement"]
       33 RETURN                           R4 1
