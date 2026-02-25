PROTO_0:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R1 K1 [pcall]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 2
        4 JUMPIF                           R1 ; [+26]
        5 FASTCALL1                        TOSTRING R2 ; [+3]
        6 MOVE                             R4 R2
        7 GETIMPORT                        R3 K3 [tostring]
        9 CALL                             R3 1 1
       10 GETIMPORT                        R4 K6 [string.find]
       12 MOVE                             R5 R3
       13 LOADK                            R6 K7 [" "]
       14 CALL                             R4 2 1
       15 ADDK                             R7 R4 K8 [1]
       16 FASTCALL2                        STRING_SUB R3 R7 ; [+4]
       18 MOVE                             R6 R3
       19 GETIMPORT                        R5 K10 [string.sub]
       21 CALL                             R5 2 1
       22 DUPTABLE                         R6 K13 [{"pass", "message"}]
       23 LOADB                            R7 0
       24 SETTABLEKS                       R7 R6 K11 ["pass"]
       26 NEWCLOSURE                       R7 P0
       27 CAPTURE                          VAL R5
       28 SETTABLEKS                       R7 R6 K12 ["message"]
       30 RETURN                           R6 1
       31 DUPTABLE                         R3 K14 [{"pass"}]
       32 LOADB                            R4 1
       33 SETTABLEKS                       R4 R3 K11 ["pass"]
       35 RETURN                           R3 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["unstable_clearYields"]
        2 CALL                             R1 0 1
        3 LENGTH                           R2 R1
        4 JUMPIFEQKN                       R2 K1 [0] ; [+6]
        6 GETIMPORT                        R2 K3 [error]
        8 LOADK                            R3 K4 ["Log of yielded values is not empty. Call expectToHaveYielded(scheduler, ...) first."]
        9 LOADN                            R4 3
       10 CALL                             R2 2 0
       11 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R0 R1 K0 ["toEqual"]
        5 GETUPVAL                         R1 2
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R3 R1 K0 ["unstable_clearYields"]
        2 CALL                             R3 0 1
        3 LENGTH                           R4 R3
        4 JUMPIFEQKN                       R4 K1 [0] ; [+6]
        6 GETIMPORT                        R4 K3 [error]
        8 LOADK                            R5 K4 ["Log of yielded values is not empty. Call expectToHaveYielded(scheduler, ...) first."]
        9 LOADN                            R6 3
       10 CALL                             R4 2 0
       11 GETTABLEKS                       R3 R1 K5 ["unstable_flushAllWithoutAsserting"]
       13 CALL                             R3 0 0
       14 GETTABLEKS                       R3 R1 K0 ["unstable_clearYields"]
       16 CALL                             R3 0 1
       17 GETUPVAL                         R4 0
       18 NEWCLOSURE                       R5 P0
       19 CAPTURE                          UPVAL U1
       20 CAPTURE                          VAL R3
       21 CAPTURE                          VAL R2
       22 CALL                             R4 1 1
       23 RETURN                           R4 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R0 R1 K0 ["toEqual"]
        5 GETUPVAL                         R1 2
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R3 R1 K0 ["unstable_clearYields"]
        2 CALL                             R3 0 1
        3 LENGTH                           R4 R3
        4 JUMPIFEQKN                       R4 K1 [0] ; [+6]
        6 GETIMPORT                        R4 K3 [error]
        8 LOADK                            R5 K4 ["Log of yielded values is not empty. Call expectToHaveYielded(scheduler, ...) first."]
        9 LOADN                            R6 3
       10 CALL                             R4 2 0
       11 GETTABLEKS                       R3 R1 K5 ["unstable_flushNumberOfYields"]
       13 LENGTH                           R4 R2
       14 CALL                             R3 1 0
       15 GETTABLEKS                       R3 R1 K0 ["unstable_clearYields"]
       17 CALL                             R3 0 1
       18 GETUPVAL                         R4 0
       19 NEWCLOSURE                       R5 P0
       20 CAPTURE                          UPVAL U1
       21 CAPTURE                          VAL R3
       22 CAPTURE                          VAL R2
       23 CALL                             R4 1 1
       24 RETURN                           R4 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R0 R1 K0 ["toEqual"]
        5 GETUPVAL                         R1 2
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R3 R1 K0 ["unstable_clearYields"]
        2 CALL                             R3 0 1
        3 LENGTH                           R4 R3
        4 JUMPIFEQKN                       R4 K1 [0] ; [+6]
        6 GETIMPORT                        R4 K3 [error]
        8 LOADK                            R5 K4 ["Log of yielded values is not empty. Call expectToHaveYielded(scheduler, ...) first."]
        9 LOADN                            R6 3
       10 CALL                             R4 2 0
       11 GETTABLEKS                       R3 R1 K5 ["unstable_flushUntilNextPaint"]
       13 CALL                             R3 0 0
       14 GETTABLEKS                       R3 R1 K0 ["unstable_clearYields"]
       16 CALL                             R3 0 1
       17 GETUPVAL                         R4 0
       18 NEWCLOSURE                       R5 P0
       19 CAPTURE                          UPVAL U1
       20 CAPTURE                          VAL R3
       21 CAPTURE                          VAL R2
       22 CALL                             R4 1 1
       23 RETURN                           R4 1

PROTO_9:
        0 NEWTABLE                         R3 0 0
        2 GETTABLEKS                       R4 R1 K0 ["unstable_clearYields"]
        4 CALL                             R4 0 1
        5 LENGTH                           R5 R4
        6 JUMPIFEQKN                       R5 K1 [0] ; [+6]
        8 GETIMPORT                        R5 K3 [error]
       10 LOADK                            R6 K4 ["Log of yielded values is not empty. Call expectToHaveYielded(scheduler, ...) first."]
       11 LOADN                            R7 3
       12 CALL                             R5 2 0
       13 GETTABLEKS                       R4 R1 K5 ["unstable_flushAllWithoutAsserting"]
       15 CALL                             R4 0 0
       16 GETTABLEKS                       R4 R1 K0 ["unstable_clearYields"]
       18 CALL                             R4 0 1
       19 GETUPVAL                         R5 0
       20 NEWCLOSURE                       R6 P0
       21 CAPTURE                          UPVAL U1
       22 CAPTURE                          VAL R4
       23 CAPTURE                          VAL R3
       24 CALL                             R5 1 1
       25 MOVE                             R2 R5
       26 RETURN                           R2 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R0 R1 K0 ["toEqual"]
        5 GETUPVAL                         R1 2
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R3 R1 K0 ["unstable_clearYields"]
        2 CALL                             R3 0 1
        3 LENGTH                           R4 R3
        4 JUMPIFEQKN                       R4 K1 [0] ; [+6]
        6 GETIMPORT                        R4 K3 [error]
        8 LOADK                            R5 K4 ["Log of yielded values is not empty. Call expectToHaveYielded(scheduler, ...) first."]
        9 LOADN                            R6 3
       10 CALL                             R4 2 0
       11 GETTABLEKS                       R3 R1 K5 ["unstable_flushExpired"]
       13 CALL                             R3 0 0
       14 GETTABLEKS                       R3 R1 K0 ["unstable_clearYields"]
       16 CALL                             R3 0 1
       17 GETUPVAL                         R4 0
       18 NEWCLOSURE                       R5 P0
       19 CAPTURE                          UPVAL U1
       20 CAPTURE                          VAL R3
       21 CAPTURE                          VAL R2
       22 CALL                             R4 1 1
       23 RETURN                           R4 1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R0 R1 K0 ["toEqual"]
        5 GETUPVAL                         R1 2
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R3 R1 K0 ["unstable_clearYields"]
        2 CALL                             R3 0 1
        3 GETUPVAL                         R4 0
        4 NEWCLOSURE                       R5 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R3
        7 CAPTURE                          VAL R2
        8 CALL                             R4 1 1
        9 RETURN                           R4 1

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["unstable_flushAllWithoutAsserting"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R0 R1 K0 ["toThrow"]
        6 GETUPVAL                         R1 2
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R3 R1 K0 ["unstable_clearYields"]
        2 CALL                             R3 0 1
        3 LENGTH                           R4 R3
        4 JUMPIFEQKN                       R4 K1 [0] ; [+6]
        6 GETIMPORT                        R4 K3 [error]
        8 LOADK                            R5 K4 ["Log of yielded values is not empty. Call expectToHaveYielded(scheduler, ...) first."]
        9 LOADN                            R6 3
       10 CALL                             R4 2 0
       11 GETUPVAL                         R3 0
       12 NEWCLOSURE                       R4 P0
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          VAL R1
       15 CAPTURE                          VAL R2
       16 CALL                             R3 1 1
       17 RETURN                           R3 1

PROTO_17:
        0 DUPCLOSURE                       R1 K0 [PROTO_2]
        1 NEWCLOSURE                       R2 P1
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R0
        4 NEWCLOSURE                       R3 P2
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          VAL R0
        7 NEWCLOSURE                       R4 P3
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          VAL R0
       10 NEWCLOSURE                       R5 P4
       11 CAPTURE                          UPVAL U0
       12 CAPTURE                          VAL R0
       13 NEWCLOSURE                       R6 P5
       14 CAPTURE                          UPVAL U0
       15 CAPTURE                          VAL R0
       16 NEWCLOSURE                       R7 P6
       17 CAPTURE                          UPVAL U0
       18 CAPTURE                          VAL R0
       19 NEWCLOSURE                       R8 P7
       20 CAPTURE                          UPVAL U0
       21 CAPTURE                          VAL R0
       22 DUPTABLE                         R9 K8 [{"toFlushAndYield", "toFlushAndYieldThrough", "toFlushWithoutYielding", "toFlushUntilNextPaint", "toFlushExpired", "toHaveYielded", "toFlushAndThrow"}]
       23 SETTABLEKS                       R2 R9 K1 ["toFlushAndYield"]
       25 SETTABLEKS                       R3 R9 K2 ["toFlushAndYieldThrough"]
       27 SETTABLEKS                       R5 R9 K3 ["toFlushWithoutYielding"]
       29 SETTABLEKS                       R4 R9 K4 ["toFlushUntilNextPaint"]
       31 SETTABLEKS                       R6 R9 K5 ["toFlushExpired"]
       33 SETTABLEKS                       R7 R9 K6 ["toHaveYielded"]
       35 SETTABLEKS                       R8 R9 K7 ["toFlushAndThrow"]
       37 RETURN                           R9 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_1]
        2 DUPCLOSURE                       R1 K1 [PROTO_17]
        3 CAPTURE                          VAL R0
        4 RETURN                           R1 1
