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
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["Utils"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R5 R0 K7 ["Components"]
       13 GETTABLEKS                       R4 R5 K8 ["InlineLayout"]
       15 GETTABLEKS                       R3 R4 K9 ["InlineLayoutElements"]
       17 GETTABLEKS                       R2 R3 K10 ["HardBreakElement"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K6 [require]
       22 GETTABLEKS                       R4 R0 K2 ["Utils"]
       24 GETTABLEKS                       R3 R4 K11 ["InlineElementType"]
       26 CALL                             R2 1 1
       27 DUPCLOSURE                       R3 K12 [PROTO_0]
       28 CAPTURE                          VAL R1
       29 CAPTURE                          VAL R2
       30 RETURN                           R3 1
