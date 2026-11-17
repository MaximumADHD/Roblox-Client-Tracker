PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 FASTCALL1                        TOSTRING R6 ; [+3]
        7 MOVE                             R8 R6
        8 GETIMPORT                        R7 K1 [tostring]
       10 CALL                             R7 1 1
       11 JUMPIFNOTEQKNIL                  R7 ; [+2]
       13 LOADB                            R9 0 +1
       14 LOADB                            R9 1
       15 FASTCALL1                        ASSERT R9 ; [+2]
       16 GETIMPORT                        R8 K3 [assert]
       18 CALL                             R8 1 0
       19 FASTCALL2                        TABLE_INSERT R1 R7 ; [+5]
       21 MOVE                             R9 R1
       22 MOVE                             R10 R7
       23 GETIMPORT                        R8 K6 [table.insert]
       25 CALL                             R8 2 0
       26 FORGLOOP                         R2 2 ; [-21]
       28 RETURN                           R1 1

PROTO_1:
        0 JUMPIFNOT                        R0 ; [+3]
        1 LENGTH                           R1 R0
        2 JUMPIFNOTEQKN                    R1 K0 [0] ; [+3]
        4 LOADK                            R1 K1 [""]
        5 RETURN                           R1 1
        6 LENGTH                           R1 R0
        7 GETTABLEN                        R3 R0 1
        8 LENGTH                           R2 R3
        9 LOADN                            R5 0
       10 JUMPIFLT                         R5 R2 ; [+2]
       12 LOADB                            R4 0 +1
       13 LOADB                            R4 1
       14 FASTCALL1                        ASSERT R4 ; [+2]
       15 GETIMPORT                        R3 K3 [assert]
       17 CALL                             R3 1 0
       18 LOADK                            R3 K1 [""]
       19 MOVE                             R4 R0
       20 LOADNIL                          R5
       21 LOADNIL                          R6
       22 FORGPREP                         R4
       23 LENGTH                           R11 R8
       24 JUMPIFEQ                         R11 R2 ; [+2]
       26 LOADB                            R10 0 +1
       27 LOADB                            R10 1
       28 FASTCALL1                        ASSERT R10 ; [+2]
       29 GETIMPORT                        R9 K3 [assert]
       31 CALL                             R9 1 0
       32 GETUPVAL                         R9 0
       33 MOVE                             R10 R8
       34 CALL                             R9 1 1
       35 MOVE                             R10 R3
       36 GETIMPORT                        R11 K6 [table.concat]
       38 MOVE                             R12 R9
       39 LOADK                            R13 K7 [","]
       40 CALL                             R11 2 1
       41 CONCAT                           R3 R10 R11
       42 JUMPIFEQ                         R7 R1 ; [+4]
       44 MOVE                             R10 R3
       45 LOADK                            R11 K8 ["\n"]
       46 CONCAT                           R3 R10 R11
       47 FORGLOOP                         R4 2 ; [-25]
       49 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 DUPCLOSURE                       R1 K1 [PROTO_1]
        3 CAPTURE                          VAL R0
        4 RETURN                           R1 1
