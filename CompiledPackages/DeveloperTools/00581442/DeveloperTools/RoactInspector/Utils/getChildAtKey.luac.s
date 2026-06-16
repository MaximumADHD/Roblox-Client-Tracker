PROTO_0:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADNIL                          R2
        3 RETURN                           R2 1
        4 GETTABLE                         R2 R0 R1
        5 JUMPIFNOTEQKNIL                  R2 ; [+14]
        7 FASTCALL1                        TYPEOF R1 ; [+3]
        8 MOVE                             R4 R1
        9 GETIMPORT                        R3 K1 [typeof]
       11 CALL                             R3 1 1
       12 JUMPIFNOTEQKS                    R3 K2 ["number"] ; [+7]
       14 FASTCALL1                        TOSTRING R1 ; [+3]
       15 MOVE                             R4 R1
       16 GETIMPORT                        R3 K4 [tostring]
       18 CALL                             R3 1 1
       19 GETTABLE                         R2 R0 R3
       20 JUMPIFNOTEQKNIL                  R2 ; [+23]
       22 FASTCALL1                        TYPEOF R1 ; [+3]
       23 MOVE                             R4 R1
       24 GETIMPORT                        R3 K1 [typeof]
       26 CALL                             R3 1 1
       27 JUMPIFNOTEQKS                    R3 K5 ["string"] ; [+16]
       29 GETUPVAL                         R3 0
       30 MOVE                             R4 R1
       31 LOADK                            R5 K6 ["Symbol("]
       32 CALL                             R3 2 1
       33 JUMPIFNOT                        R3 ; [+10]
       34 LOADN                            R5 8
       35 LOADN                            R6 254
       36 NAMECALL                         R3 R1 K7 ["sub"]
       38 CALL                             R3 3 1
       39 GETUPVAL                         R4 1
       40 MOVE                             R5 R0
       41 MOVE                             R6 R3
       42 CALL                             R4 2 1
       43 MOVE                             R2 R4
       44 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K2 ["Parent"]
       11 GETIMPORT                        R2 K4 [require]
       13 GETTABLEKS                       R3 R0 K5 ["RoactInspector"]
       15 GETTABLEKS                       R3 R3 K6 ["Utils"]
       17 GETTABLEKS                       R3 R3 K7 ["getSymbol"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K4 [require]
       22 GETTABLEKS                       R4 R1 K8 ["Dash"]
       24 CALL                             R3 1 1
       25 GETTABLEKS                       R4 R3 K9 ["startsWith"]
       27 DUPCLOSURE                       R5 K10 [PROTO_0]
       28 CAPTURE                          VAL R4
       29 CAPTURE                          VAL R2
       30 RETURN                           R5 1
