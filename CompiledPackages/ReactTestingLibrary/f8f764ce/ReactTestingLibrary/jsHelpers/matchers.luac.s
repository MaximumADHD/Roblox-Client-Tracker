PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 -1
        3 RETURN                           R1 -1

PROTO_1:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["string"] ; [+2]
        7 RETURN                           R0 1
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K3 ["isArray"]
       11 MOVE                             R2 R0
       12 CALL                             R1 1 1
       13 JUMPIFNOT                        R1 ; [+17]
       14 LOADK                            R1 K4 ["Array [\n%s\n]"]
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K5 ["join"]
       18 GETUPVAL                         R4 0
       19 GETTABLEKS                       R4 R4 K6 ["map"]
       21 MOVE                             R5 R0
       22 NEWCLOSURE                       R6 P0
       23 CAPTURE                          UPVAL U1
       24 CALL                             R4 2 1
       25 LOADK                            R5 K7 [","]
       26 CALL                             R3 2 -1
       27 NAMECALL                         R1 R1 K8 ["format"]
       29 CALL                             R1 -1 1
       30 RETURN                           R1 1
       31 GETIMPORT                        R1 K10 [error]
       33 LOADK                            R3 K11 ["toMatchInlineSnapshot does not support "]
       34 FASTCALL1                        TYPEOF R0 ; [+3]
       35 MOVE                             R7 R0
       36 GETIMPORT                        R6 K1 [typeof]
       38 CALL                             R6 1 1
       39 MOVE                             R4 R6
       40 LOADK                            R5 K12 [", please implement it yourself"]
       41 CONCAT                           R2 R3 R5
       42 CALL                             R1 1 0
       43 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 CALL                             R3 1 1
        3 JUMPIFEQ                         R3 R1 ; [+2]
        5 LOADB                            R2 0 +1
        6 LOADB                            R2 1
        7 RETURN                           R2 1

PROTO_3:
        0 LOADK                            R1 K0 ["expected "]
        1 GETUPVAL                         R2 0
        2 LOADK                            R3 K1 [" to equal "]
        3 GETUPVAL                         R4 1
        4 GETUPVAL                         R5 2
        5 CALL                             R4 1 1
        6 CONCAT                           R0 R1 R4
        7 RETURN                           R0 1

PROTO_4:
        0 DUPCLOSURE                       R3 K0 [PROTO_1]
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R3
        3 DUPCLOSURE                       R4 K1 [PROTO_2]
        4 CAPTURE                          VAL R3
        5 DUPTABLE                         R5 K4 [{"pass", "message"}]
        6 MOVE                             R7 R3
        7 MOVE                             R8 R1
        8 CALL                             R7 1 1
        9 JUMPIFEQ                         R7 R2 ; [+2]
       11 LOADB                            R6 0 +1
       12 LOADB                            R6 1
       13 SETTABLEKS                       R6 R5 K2 ["pass"]
       15 NEWCLOSURE                       R6 P2
       16 CAPTURE                          VAL R2
       17 CAPTURE                          VAL R3
       18 CAPTURE                          VAL R1
       19 SETTABLEKS                       R6 R5 K3 ["message"]
       21 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K6 ["Array"]
       16 NEWTABLE                         R3 1 0
       18 DUPCLOSURE                       R4 K7 [PROTO_4]
       19 CAPTURE                          VAL R2
       20 SETTABLEKS                       R4 R3 K8 ["toMatchInlineSnapshot"]
       22 RETURN                           R3 1
