PROTO_0:
        0 GETTABLE                         R2 R0 R1
        1 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIFNOT                        R2 ; [+13]
        3 GETTABLE                         R3 R2 R1
        4 GETUPVAL                         R4 1
        5 JUMPIFNOTEQ                      R3 R4 ; [+4]
        7 LOADB                            R4 1
        8 LOADNIL                          R5
        9 RETURN                           R4 2
       10 JUMPIFEQKNIL                     R3 ; [+9]
       12 LOADB                            R4 1
       13 MOVE                             R5 R3
       14 RETURN                           R4 2
       15 JUMP                             ; [+4]
       16 NEWTABLE                         R2 0 0
       18 GETUPVAL                         R3 0
       19 SETTABLE                         R2 R3 R0
       20 GETIMPORT                        R3 K2 [Instance.new]
       22 MOVE                             R4 R0
       23 CALL                             R3 1 1
       24 GETIMPORT                        R4 K4 [pcall]
       26 GETUPVAL                         R5 2
       27 MOVE                             R6 R3
       28 MOVE                             R7 R1
       29 CALL                             R4 3 2
       30 NAMECALL                         R6 R3 K5 ["Destroy"]
       32 CALL                             R6 1 0
       33 JUMPIFNOT                        R4 ; [+6]
       34 JUMPIFNOTEQKNIL                  R5 ; [+4]
       36 GETUPVAL                         R6 1
       37 SETTABLE                         R6 R2 R1
       38 RETURN                           R4 2
       39 SETTABLE                         R5 R2 R1
       40 RETURN                           R4 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R3 K3 [script]
        5 GETTABLEKS                       R2 R3 K4 ["Parent"]
        7 GETTABLEKS                       R1 R2 K5 ["Symbol"]
        9 CALL                             R0 1 1
       10 GETTABLEKS                       R1 R0 K6 ["named"]
       12 LOADK                            R2 K7 ["Nil"]
       13 CALL                             R1 1 1
       14 NEWTABLE                         R2 0 0
       16 DUPCLOSURE                       R3 K8 [PROTO_0]
       17 DUPCLOSURE                       R4 K9 [PROTO_1]
       18 CAPTURE                          VAL R2
       19 CAPTURE                          VAL R1
       20 CAPTURE                          VAL R3
       21 RETURN                           R4 1
