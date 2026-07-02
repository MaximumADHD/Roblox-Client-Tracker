PROTO_0:
        0 GETIMPORT                        R1 K3 [os.clock]
        2 CALL                             R1 0 1
        3 MULK                             R0 R1 K0 [1000]
        4 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R2 K3 [os.clock]
        2 CALL                             R2 0 1
        3 MULK                             R1 R2 K0 [1000]
        4 GETUPVAL                         R2 0
        5 JUMPIFLE                         R2 R1 ; [+2]
        7 LOADB                            R0 0 +1
        8 LOADB                            R0 1
        9 RETURN                           R0 1

PROTO_2:
        0 RETURN                           R0 0

PROTO_3:
        0 LOADN                            R1 0
        1 JUMPIFLT                         R0 R1 ; [+4]
        3 LOADN                            R1 125
        4 JUMPIFNOTLT                      R1 R0 ; [+7]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["warn"]
        9 LOADK                            R2 K1 ["forceFrameRate takes a positive int between 0 and 125, forcing frame rates higher than 125 fps is not supported"]
       10 CALL                             R1 1 0
       11 RETURN                           R0 0
       12 LOADN                            R1 0
       13 JUMPIFNOTLT                      R1 R0 ; [+8]
       15 DIVRK                            R2 K2 [1000] R0
       16 FASTCALL1                        MATH_FLOOR R2 ; [+2]
       17 GETIMPORT                        R1 K5 [math.floor]
       19 CALL                             R1 1 1
       20 SETUPVAL                         R1 1
       21 RETURN                           R0 0
       22 LOADN                            R1 5
       23 SETUPVAL                         R1 1
       24 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 GETUPVAL                         R2 1
        3 CALL                             R0 2 1
        4 JUMPIF                           R0 ; [+5]
        5 LOADB                            R1 0
        6 SETUPVAL                         R1 2
        7 LOADNIL                          R1
        8 SETUPVAL                         R1 0
        9 RETURN                           R0 0
       10 GETIMPORT                        R1 K2 [task.delay]
       12 LOADN                            R2 0
       13 GETUPVAL                         R3 3
       14 CALL                             R1 2 0
       15 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+56]
        3 GETIMPORT                        R1 K3 [os.clock]
        5 CALL                             R1 0 1
        6 MULK                             R0 R1 K0 [1000]
        7 GETUPVAL                         R2 2
        8 ADD                              R1 R0 R2
        9 SETUPVAL                         R1 1
       10 LOADNIL                          R1
       11 LOADNIL                          R2
       12 NEWCLOSURE                       R3 P0
       13 CAPTURE                          UPVAL U0
       14 CAPTURE                          VAL R0
       15 CAPTURE                          UPVAL U3
       16 CAPTURE                          UPVAL U4
       17 GETIMPORT                        R4 K5 [_G]
       19 GETTABLEKS                       R4 R4 K6 ["__YOLO__"]
       21 JUMPIF                           R4 ; [+8]
       22 GETIMPORT                        R4 K8 [xpcall]
       24 MOVE                             R5 R3
       25 GETUPVAL                         R6 5
       26 CALL                             R4 2 2
       27 MOVE                             R1 R4
       28 MOVE                             R2 R5
       29 JUMP                             ; [+17]
       30 GETUPVAL                         R4 0
       31 LOADB                            R5 1
       32 MOVE                             R6 R0
       33 CALL                             R4 2 1
       34 JUMPIF                           R4 ; [+5]
       35 LOADB                            R5 0
       36 SETUPVAL                         R5 3
       37 LOADNIL                          R5
       38 SETUPVAL                         R5 0
       39 JUMP                             ; [+5]
       40 GETIMPORT                        R5 K11 [task.delay]
       42 LOADN                            R6 0
       43 GETUPVAL                         R7 4
       44 CALL                             R5 2 0
       45 LOADNIL                          R2
       46 LOADB                            R1 1
       47 JUMPIF                           R1 ; [+12]
       48 GETIMPORT                        R4 K11 [task.delay]
       50 LOADN                            R5 0
       51 GETUPVAL                         R6 4
       52 CALL                             R4 2 0
       53 GETIMPORT                        R4 K13 [error]
       55 MOVE                             R5 R2
       56 CALL                             R4 1 0
       57 RETURN                           R0 0
       58 LOADB                            R0 0
       59 SETUPVAL                         R0 3
       60 RETURN                           R0 0

PROTO_6:
        0 SETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 JUMPIF                           R1 ; [+7]
        3 LOADB                            R1 1
        4 SETUPVAL                         R1 1
        5 GETIMPORT                        R1 K2 [task.delay]
        7 LOADN                            R2 0
        8 GETUPVAL                         R3 2
        9 CALL                             R1 2 0
       10 RETURN                           R0 0

PROTO_7:
        0 LOADNIL                          R0
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R2 K3 [os.clock]
        3 CALL                             R2 0 1
        4 MULK                             R1 R2 K0 [1000]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 1
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R0
        3 MOVE                             R4 R1
        4 CALL                             R2 2 1
        5 SETUPVAL                         R2 0
        6 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 LOADN                            R0 -1
        4 SETUPVAL                         R0 1
        5 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Shared"]
       18 CALL                             R2 1 1
       19 GETTABLEKS                       R3 R2 K7 ["console"]
       21 GETTABLEKS                       R4 R2 K8 ["errorToString"]
       23 DUPCLOSURE                       R5 K9 [PROTO_0]
       24 GETTABLEKS                       R6 R1 K10 ["setTimeout"]
       26 GETTABLEKS                       R7 R1 K11 ["clearTimeout"]
       28 LOADB                            R8 0
       29 LOADNIL                          R9
       30 LOADN                            R10 -1
       31 LOADN                            R11 15
       32 LOADN                            R12 0
       33 NEWCLOSURE                       R13 P1
       34 CAPTURE                          REF R12
       35 DUPCLOSURE                       R14 K12 [PROTO_2]
       36 NEWCLOSURE                       R15 P3
       37 CAPTURE                          VAL R3
       38 CAPTURE                          REF R11
       39 NEWCLOSURE                       R16 P4
       40 CAPTURE                          REF R9
       41 CAPTURE                          REF R12
       42 CAPTURE                          REF R11
       43 CAPTURE                          REF R8
       44 CAPTURE                          VAL R16
       45 CAPTURE                          VAL R4
       46 NEWCLOSURE                       R17 P5
       47 CAPTURE                          REF R9
       48 CAPTURE                          REF R8
       49 CAPTURE                          VAL R16
       50 NEWCLOSURE                       R18 P6
       51 CAPTURE                          REF R9
       52 NEWCLOSURE                       R19 P7
       53 CAPTURE                          REF R10
       54 CAPTURE                          VAL R6
       55 NEWCLOSURE                       R20 P8
       56 CAPTURE                          VAL R7
       57 CAPTURE                          REF R10
       58 DUPTABLE                         R21 K21 [{"requestHostCallback", "cancelHostCallback", "requestHostTimeout", "cancelHostTimeout", "shouldYieldToHost", "requestPaint", "getCurrentTime", "forceFrameRate"}]
       59 SETTABLEKS                       R17 R21 K13 ["requestHostCallback"]
       61 SETTABLEKS                       R18 R21 K14 ["cancelHostCallback"]
       63 SETTABLEKS                       R19 R21 K15 ["requestHostTimeout"]
       65 SETTABLEKS                       R20 R21 K16 ["cancelHostTimeout"]
       67 SETTABLEKS                       R13 R21 K17 ["shouldYieldToHost"]
       69 SETTABLEKS                       R14 R21 K18 ["requestPaint"]
       71 SETTABLEKS                       R5 R21 K19 ["getCurrentTime"]
       73 SETTABLEKS                       R15 R21 K20 ["forceFrameRate"]
       75 CLOSEUPVALS                      R8
       76 RETURN                           R21 1
