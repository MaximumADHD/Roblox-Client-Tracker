PROTO_0:
        0 ORK                              R3 R3 K0 [7]
        1 LOADN                            R4 0
        2 JUMPIFNOTLE                      R1 R4 ; [+3]
        4 LOADK                            R4 K1 [""]
        5 RETURN                           R4 1
        6 MOVE                             R4 R2
        7 MOVE                             R5 R0
        8 CALL                             R4 1 1
        9 JUMPIFNOTLE                      R4 R1 ; [+2]
       11 RETURN                           R0 1
       12 GETUPVAL                         R4 0
       13 LOADN                            R5 0
       14 JUMPIFNOTLT                      R5 R3 ; [+13]
       16 MOVE                             R6 R4
       17 MINUS                            R9 R3
       18 NAMECALL                         R7 R0 K2 ["sub"]
       20 CALL                             R7 2 1
       21 CONCAT                           R5 R6 R7
       22 MOVE                             R6 R2
       23 MOVE                             R7 R5
       24 CALL                             R6 1 1
       25 JUMPIFNOTLT                      R6 R1 ; [+2]
       27 MOVE                             R4 R5
       28 MOVE                             R6 R2
       29 MOVE                             R7 R4
       30 CALL                             R6 1 1
       31 SUB                              R5 R1 R6
       32 LOADN                            R6 0
       33 JUMPIFNOTLE                      R5 R6 ; [+3]
       35 LOADK                            R6 K1 [""]
       36 RETURN                           R6 1
       37 LOADN                            R8 1
       38 GETIMPORT                        R11 K6 [utf8.len]
       40 MOVE                             R12 R4
       41 CALL                             R11 1 1
       42 ORK                              R10 R11 K3 [0]
       43 MINUS                            R9 R10
       44 NAMECALL                         R6 R0 K2 ["sub"]
       46 CALL                             R6 3 1
       47 LENGTH                           R7 R6
       48 LOADK                            R8 K1 [""]
       49 LOADN                            R9 0
       50 ADDK                             R9 R9 K7 [1]
       51 JUMPIFNOTLT                      R7 R9 ; [+2]
       53 RETURN                           R0 1
       54 LOADN                            R12 1
       55 MOVE                             R13 R9
       56 NAMECALL                         R10 R0 K2 ["sub"]
       58 CALL                             R10 3 1
       59 MOVE                             R11 R2
       60 MOVE                             R12 R10
       61 CALL                             R11 1 1
       62 JUMPIFNOTLT                      R5 R11 ; [+2]
       64 JUMP                             ; [+2]
       65 MOVE                             R8 R10
       66 JUMPBACK                         ; [-17]
       67 MOVE                             R11 R8
       68 MOVE                             R12 R4
       69 CONCAT                           R10 R11 R12
       70 RETURN                           R10 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K2 [utf8.char]
        3 LOADN                            R1 38
        4 CALL                             R0 1 1
        5 DUPCLOSURE                       R1 K3 [PROTO_0]
        6 CAPTURE                          VAL R0
        7 RETURN                           R1 1
