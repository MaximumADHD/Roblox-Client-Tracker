PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["GetStatuses"]
        2 CALL                             R1 1 1
        3 MOVE                             R2 R1
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 GETTABLEKS                       R7 R6 K1 ["Level"]
        9 JUMPIFNOTEQKS                    R7 K2 ["Error"] ; [+6]
       11 GETTABLEKS                       R7 R0 K3 ["ShouldImport"]
       13 JUMPIFNOT                        R7 ; [+2]
       14 LOADB                            R7 1
       15 RETURN                           R7 1
       16 FORGLOOP                         R2 2 ; [-10]
       18 LOADB                            R2 0
       19 RETURN                           R2 1

PROTO_1:
        0 NAMECALL                         R2 R0 K0 ["GetStatuses"]
        2 CALL                             R2 1 1
        3 MOVE                             R3 R2
        4 LOADNIL                          R4
        5 LOADNIL                          R5
        6 FORGPREP                         R3
        7 GETTABLEKS                       R8 R7 K1 ["Level"]
        9 JUMPIFNOTEQKS                    R8 K2 ["Error"] ; [+6]
       11 GETTABLEKS                       R8 R0 K3 ["ShouldImport"]
       13 JUMPIFNOT                        R8 ; [+2]
       14 LOADB                            R1 1
       15 JUMP                             ; [+3]
       16 FORGLOOP                         R3 2 ; [-10]
       18 LOADB                            R1 0
       19 JUMPIFNOT                        R1 ; [+2]
       20 LOADB                            R1 1
       21 RETURN                           R1 1
       22 GETIMPORT                        R1 K5 [pairs]
       24 NAMECALL                         R2 R0 K6 ["GetDescendants"]
       26 CALL                             R2 1 -1
       27 CALL                             R1 -1 3
       28 FORGPREP_NEXT                    R1
       29 NAMECALL                         R7 R5 K0 ["GetStatuses"]
       31 CALL                             R7 1 1
       32 MOVE                             R8 R7
       33 LOADNIL                          R9
       34 LOADNIL                          R10
       35 FORGPREP                         R8
       36 GETTABLEKS                       R13 R12 K1 ["Level"]
       38 JUMPIFNOTEQKS                    R13 K2 ["Error"] ; [+6]
       40 GETTABLEKS                       R13 R5 K3 ["ShouldImport"]
       42 JUMPIFNOT                        R13 ; [+2]
       43 LOADB                            R6 1
       44 JUMP                             ; [+3]
       45 FORGLOOP                         R8 2 ; [-10]
       47 LOADB                            R6 0
       48 JUMPIFNOT                        R6 ; [+2]
       49 LOADB                            R6 1
       50 RETURN                           R6 1
       51 FORGLOOP                         R1 2 ; [-23]
       53 LOADB                            R1 0
       54 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 DUPCLOSURE                       R1 K1 [PROTO_1]
        3 RETURN                           R1 1
