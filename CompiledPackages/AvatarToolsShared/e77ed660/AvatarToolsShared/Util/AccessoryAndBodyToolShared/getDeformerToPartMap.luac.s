PROTO_0:
        0 JUMPIFNOT                        R0 ; [+34]
        1 NEWTABLE                         R2 0 0
        3 GETUPVAL                         R3 0
        4 NEWTABLE                         R4 0 0
        6 MOVE                             R5 R0
        7 CALL                             R3 2 1
        8 GETIMPORT                        R4 K1 [ipairs]
       10 MOVE                             R5 R3
       11 CALL                             R4 1 3
       12 FORGPREP_INEXT                   R4
       13 JUMPIFNOT                        R1 ; [+9]
       14 LOADK                            R11 K2 ["WrapTarget"]
       15 NAMECALL                         R9 R8 K3 ["IsA"]
       17 CALL                             R9 2 1
       18 JUMPIFNOT                        R9 ; [+4]
       19 GETTABLEKS                       R9 R8 K4 ["Parent"]
       21 SETTABLE                         R8 R2 R9
       22 JUMP                             ; [+9]
       23 JUMPIF                           R1 ; [+8]
       24 LOADK                            R11 K5 ["WrapLayer"]
       25 NAMECALL                         R9 R8 K3 ["IsA"]
       27 CALL                             R9 2 1
       28 JUMPIFNOT                        R9 ; [+3]
       29 GETTABLEKS                       R9 R8 K4 ["Parent"]
       31 SETTABLE                         R8 R2 R9
       32 FORGLOOP                         R4 2 [inext] ; [-20]
       34 RETURN                           R2 1
       35 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R4 K3 [script]
        5 GETTABLEKS                       R3 R4 K4 ["Parent"]
        7 GETTABLEKS                       R2 R3 K4 ["Parent"]
        9 GETTABLEKS                       R1 R2 K5 ["getDescendants"]
       11 CALL                             R0 1 1
       12 DUPCLOSURE                       R1 K6 [PROTO_0]
       13 CAPTURE                          VAL R0
       14 RETURN                           R1 1
