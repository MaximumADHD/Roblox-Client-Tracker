PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQ                      R0 R1 ; [+3]
        3 LOADB                            R1 1
        4 RETURN                           R1 1
        5 FASTCALL1                        TYPE R0 ; [+3]
        6 MOVE                             R2 R0
        7 GETIMPORT                        R1 K1 [type]
        9 CALL                             R1 1 1
       10 JUMPIFNOTEQKS                    R1 K2 ["table"] ; [+17]
       12 FASTCALL1                        GETMETATABLE R0 ; [+3]
       13 MOVE                             R2 R0
       14 GETIMPORT                        R1 K4 [getmetatable]
       16 CALL                             R1 1 1
       17 LOADB                            R2 0
       18 JUMPIFEQKNIL                     R1 ; [+8]
       20 GETTABLEKS                       R3 R1 K5 ["__type"]
       22 GETUPVAL                         R4 1
       23 JUMPIFEQ                         R3 R4 ; [+2]
       25 LOADB                            R2 0 +1
       26 LOADB                            R2 1
       27 RETURN                           R2 1
       28 LOADB                            R1 0
       29 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R3 K3 [script]
        5 GETTABLEKS                       R2 R3 K4 ["Parent"]
        7 GETTABLEKS                       R1 R2 K5 ["HardBreakElement"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETIMPORT                        R4 K3 [script]
       14 GETTABLEKS                       R3 R4 K4 ["Parent"]
       16 GETTABLEKS                       R2 R3 K6 ["InlineElementType"]
       18 CALL                             R1 1 1
       19 DUPCLOSURE                       R2 K7 [PROTO_0]
       20 CAPTURE                          VAL R0
       21 CAPTURE                          VAL R1
       22 RETURN                           R2 1
