PROTO_0:
        0 JUMPIF                           R0 ; [+2]
        1 LOADK                            R3 K0 ["<nil>"]
        2 RETURN                           R3 1
        3 FASTCALL1                        ASSERT R0 ; [+3]
        4 MOVE                             R4 R0
        5 GETIMPORT                        R3 K2 [assert]
        7 CALL                             R3 1 0
        8 FASTCALL1                        TYPEOF R0 ; [+3]
        9 MOVE                             R4 R0
       10 GETIMPORT                        R3 K4 [typeof]
       12 CALL                             R3 1 1
       13 JUMPIFEQKS                       R3 K5 ["Instance"] ; [+3]
       15 LOADK                            R3 K6 ["<Not an instance>\n"]
       16 RETURN                           R3 1
       17 GETIMPORT                        R3 K9 [string.format]
       19 LOADK                            R4 K10 ["%s [%s]%s\n"]
       20 GETTABLEKS                       R5 R0 K11 ["Name"]
       22 GETTABLEKS                       R6 R0 K12 ["ClassName"]
       24 JUMPIFNOT                        R1 ; [+6]
       25 LOADK                            R8 K13 [" -> "]
       26 MOVE                             R9 R1
       27 MOVE                             R10 R0
       28 CALL                             R9 1 1
       29 CONCAT                           R7 R8 R9
       30 JUMP                             ; [+1]
       31 LOADK                            R7 K14 [""]
       32 CALL                             R3 4 1
       33 GETIMPORT                        R4 K16 [string.rep]
       35 LOADK                            R5 K17 [".."]
       36 MOVE                             R6 R2
       37 CALL                             R4 2 1
       38 GETIMPORT                        R5 K19 [pairs]
       40 NAMECALL                         R6 R0 K20 ["GetChildren"]
       42 CALL                             R6 1 -1
       43 CALL                             R5 -1 3
       44 FORGPREP_NEXT                    R5
       45 MOVE                             R10 R3
       46 MOVE                             R11 R4
       47 LOADK                            R12 K17 [".."]
       48 GETUPVAL                         R13 0
       49 MOVE                             R14 R9
       50 MOVE                             R15 R1
       51 ADDK                             R16 R2 K21 [1]
       52 CALL                             R13 3 1
       53 CONCAT                           R3 R10 R13
       54 FORGLOOP                         R5 2 ; [-10]
       56 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 LOADN                            R6 0
        4 CALL                             R3 3 1
        5 JUMPIFNOT                        R2 ; [+4]
        6 MOVE                             R4 R2
        7 MOVE                             R5 R3
        8 CALL                             R4 1 0
        9 RETURN                           R0 0
       10 GETIMPORT                        R4 K1 [print]
       12 MOVE                             R5 R3
       13 CALL                             R4 1 0
       14 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 CAPTURE                          VAL R0
        3 DUPCLOSURE                       R1 K1 [PROTO_1]
        4 CAPTURE                          VAL R0
        5 RETURN                           R1 1
