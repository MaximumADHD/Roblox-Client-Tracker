PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLE                         R0 R1 R2
        3 GETIMPORT                        R1 K1 [pcall]
        5 GETUPVAL                         R2 2
        6 MOVE                             R3 R0
        7 GETUPVAL                         R4 1
        8 CALL                             R1 3 2
        9 JUMPIF                           R1 ; [+13]
       10 GETIMPORT                        R3 K3 [warn]
       12 GETIMPORT                        R4 K6 [string.format]
       14 LOADK                            R5 K7 ["[runWithConcurrencyAsync] worker %d errored: %s"]
       15 GETUPVAL                         R6 1
       16 FASTCALL1                        TOSTRING R2 ; [+3]
       17 MOVE                             R8 R2
       18 GETIMPORT                        R7 K9 [tostring]
       20 CALL                             R7 1 1
       21 CALL                             R4 3 -1
       22 CALL                             R3 -1 0
       23 GETUPVAL                         R3 3
       24 ADDK                             R3 R3 K10 [1]
       25 SETUPVAL                         R3 3
       26 GETUPVAL                         R3 4
       27 NAMECALL                         R3 R3 K11 ["Fire"]
       29 CALL                             R3 1 0
       30 GETUPVAL                         R3 5
       31 CALL                             R3 0 0
       32 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 JUMPIFNOTLT                      R1 R0 ; [+2]
        4 RETURN                           R0 0
        5 ADDK                             R1 R0 K0 [1]
        6 SETUPVAL                         R1 0
        7 GETIMPORT                        R1 K3 [task.spawn]
        9 NEWCLOSURE                       R2 P0
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          VAL R0
       12 CAPTURE                          UPVAL U3
       13 CAPTURE                          UPVAL U4
       14 CAPTURE                          UPVAL U5
       15 CAPTURE                          UPVAL U6
       16 CALL                             R1 1 0
       17 RETURN                           R0 0

PROTO_2:
        0 LOADB                            R4 0
        1 FASTCALL1                        TYPEOF R1 ; [+3]
        2 MOVE                             R6 R1
        3 GETIMPORT                        R5 K1 [typeof]
        5 CALL                             R5 1 1
        6 JUMPIFNOTEQKS                    R5 K2 ["number"] ; [+6]
        8 LOADN                            R5 1
        9 JUMPIFLE                         R5 R1 ; [+2]
       11 LOADB                            R4 0 +1
       12 LOADB                            R4 1
       13 FASTCALL2K                       ASSERT R4 K3 ; [+4]
       15 LOADK                            R5 K3 ["limit must be a positive integer"]
       16 GETIMPORT                        R3 K5 [assert]
       18 CALL                             R3 2 0
       19 LENGTH                           R3 R0
       20 JUMPIFNOTEQKN                    R3 K6 [0] ; [+2]
       22 RETURN                           R0 0
       23 LOADN                            R4 1
       24 LOADN                            R5 0
       25 GETIMPORT                        R6 K9 [Instance.new]
       27 LOADK                            R7 K10 ["BindableEvent"]
       28 CALL                             R6 1 1
       29 FASTCALL2                        MATH_MIN R1 R3 ; [+5]
       31 MOVE                             R8 R1
       32 MOVE                             R9 R3
       33 GETIMPORT                        R7 K13 [math.min]
       35 CALL                             R7 2 1
       36 NEWCLOSURE                       R8 P0
       37 CAPTURE                          REF R4
       38 CAPTURE                          VAL R3
       39 CAPTURE                          VAL R0
       40 CAPTURE                          VAL R2
       41 CAPTURE                          REF R5
       42 CAPTURE                          VAL R6
       43 CAPTURE                          VAL R8
       44 LOADN                            R11 1
       45 MOVE                             R9 R7
       46 LOADN                            R10 1
       47 FORNPREP                         R9
       48 MOVE                             R12 R4
       49 JUMPIFNOTLT                      R3 R12 ; [+2]
       51 JUMP                             ; [+11]
       52 ADDK                             R4 R12 K14 [1]
       53 GETIMPORT                        R13 K17 [task.spawn]
       55 NEWCLOSURE                       R14 P1
       56 CAPTURE                          VAL R0
       57 CAPTURE                          VAL R12
       58 CAPTURE                          VAL R2
       59 CAPTURE                          REF R5
       60 CAPTURE                          VAL R6
       61 CAPTURE                          VAL R8
       62 CALL                             R13 1 0
       63 FORNLOOP                         R9
       64 JUMPIFNOTLT                      R5 R3 ; [+7]
       66 GETTABLEKS                       R9 R6 K18 ["Event"]
       68 NAMECALL                         R9 R9 K19 ["Wait"]
       70 CALL                             R9 1 0
       71 JUMPBACK                         ; [-8]
       72 NAMECALL                         R9 R6 K20 ["Destroy"]
       74 CALL                             R9 1 0
       75 CLOSEUPVALS                      R4
       76 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_2]
        2 RETURN                           R0 1
