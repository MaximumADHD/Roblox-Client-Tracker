PROTO_0:
        0 JUMPIFEQKNIL                     R0 ; [+3]
        2 JUMPIFNOTEQKNIL                  R1 ; [+9]
        4 LOADB                            R2 0
        5 JUMPIFNOTEQKNIL                  R0 ; [+5]
        7 JUMPIFEQKNIL                     R1 ; [+2]
        9 LOADB                            R2 0 +1
       10 LOADB                            R2 1
       11 RETURN                           R2 1
       12 GETIMPORT                        R2 K1 [pairs]
       14 MOVE                             R3 R0
       15 CALL                             R2 1 3
       16 FORGPREP_NEXT                    R2
       17 GETTABLE                         R7 R1 R5
       18 JUMPIFEQ                         R6 R7 ; [+3]
       20 LOADB                            R7 0
       21 RETURN                           R7 1
       22 FORGLOOP                         R2 2 ; [-6]
       24 GETUPVAL                         R3 0
       25 MOVE                             R4 R0
       26 CALL                             R3 1 1
       27 GETUPVAL                         R4 0
       28 MOVE                             R5 R1
       29 CALL                             R4 1 1
       30 JUMPIFEQ                         R3 R4 ; [+2]
       32 LOADB                            R2 0 +1
       33 LOADB                            R2 1
       34 RETURN                           R2 1

PROTO_1:
        0 LOADN                            R1 0
        1 GETIMPORT                        R2 K1 [pairs]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 3
        5 FORGPREP_NEXT                    R2
        6 ADDK                             R1 R1 K2 [1]
        7 FORGLOOP                         R2 2 ; [-2]
        9 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 1 0
        3 LOADNIL                          R1
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          REF R1
        6 SETTABLEKS                       R2 R0 K0 ["isEqual"]
        8 DUPCLOSURE                       R1 K1 [PROTO_1]
        9 CLOSEUPVALS                      R1
       10 RETURN                           R0 1
