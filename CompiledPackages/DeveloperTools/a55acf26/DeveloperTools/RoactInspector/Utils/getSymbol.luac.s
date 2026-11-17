PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R1
        2 JUMPIFNOT                        R2 ; [+9]
        3 GETUPVAL                         R4 0
        4 GETTABLE                         R3 R4 R1
        5 GETTABLE                         R2 R0 R3
        6 JUMPIFEQKNIL                     R2 ; [+5]
        8 GETUPVAL                         R4 0
        9 GETTABLE                         R3 R4 R1
       10 GETTABLE                         R2 R0 R3
       11 RETURN                           R2 1
       12 GETIMPORT                        R2 K1 [pairs]
       14 MOVE                             R3 R0
       15 CALL                             R2 1 3
       16 FORGPREP_NEXT                    R2
       17 FASTCALL1                        TOSTRING R5 ; [+3]
       18 MOVE                             R8 R5
       19 GETIMPORT                        R7 K3 [tostring]
       21 CALL                             R7 1 1
       22 LOADK                            R9 K4 ["Symbol("]
       23 MOVE                             R10 R1
       24 LOADK                            R11 K5 [")"]
       25 CONCAT                           R8 R9 R11
       26 JUMPIFNOTEQ                      R7 R8 ; [+4]
       28 GETUPVAL                         R7 0
       29 SETTABLE                         R5 R7 R1
       30 RETURN                           R6 1
       31 FORGLOOP                         R2 2 ; [-15]
       33 LOADNIL                          R2
       34 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 CAPTURE                          VAL R0
        5 RETURN                           R1 1
