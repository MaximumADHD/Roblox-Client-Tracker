PROTO_0:
        0 GETIMPORT                        R1 K3 [os.clock]
        2 CALL                             R1 0 1
        3 MULK                             R0 R1 K0 [1000]
        4 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 LOADN                            R2 1
        2 JUMPIFNOTLT                      R2 R1 ; [+48]
        4 GETUPVAL                         R1 1
        5 JUMPIFNOT                        R1 ; [+28]
        6 GETUPVAL                         R1 2
        7 GETUPVAL                         R2 3
        8 MULK                             R3 R0 K0 [1000]
        9 SETTABLE                         R3 R1 R2
       10 GETUPVAL                         R3 3
       11 GETUPVAL                         R4 0
       12 MOD                              R2 R3 R4
       13 ADDK                             R1 R2 K1 [1]
       14 SETUPVAL                         R1 3
       15 LOADN                            R1 0
       16 GETUPVAL                         R2 0
       17 LOADN                            R5 1
       18 MOVE                             R3 R2
       19 LOADN                            R4 1
       20 FORNPREP                         R3
       21 GETUPVAL                         R7 2
       22 GETTABLE                         R6 R7 R5
       23 JUMPIFNOTEQKNIL                  R6 ; [+3]
       25 SUBK                             R2 R5 K1 [1]
       26 JUMP                             ; [+4]
       27 GETUPVAL                         R7 2
       28 GETTABLE                         R6 R7 R5
       29 ADD                              R1 R1 R6
       30 FORNLOOP                         R3
       31 DIV                              R3 R1 R2
       32 SETUPVAL                         R3 4
       33 JUMP                             ; [+8]
       34 GETUPVAL                         R1 0
       35 GETUPVAL                         R5 4
       36 SUBK                             R6 R1 K1 [1]
       37 MUL                              R4 R5 R6
       38 MULK                             R5 R0 K0 [1000]
       39 ADD                              R3 R4 R5
       40 DIV                              R2 R3 R1
       41 SETUPVAL                         R2 4
       42 GETUPVAL                         R2 4
       43 GETUPVAL                         R3 6
       44 GETUPVAL                         R4 7
       45 FASTCALL                         MATH_CLAMP ; [+2]
       46 GETIMPORT                        R1 K4 [math.clamp]
       48 CALL                             R1 3 1
       49 SETUPVAL                         R1 5
       50 RETURN                           R0 0
       51 MULK                             R2 R0 K0 [1000]
       52 GETUPVAL                         R3 6
       53 GETUPVAL                         R4 7
       54 FASTCALL                         MATH_CLAMP ; [+2]
       55 GETIMPORT                        R1 K4 [math.clamp]
       57 CALL                             R1 3 1
       58 SETUPVAL                         R1 5
       59 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 GETIMPORT                        R0 K2 [game]
        8 LOADK                            R2 K3 ["RunService"]
        9 NAMECALL                         R0 R0 K4 ["GetService"]
       11 CALL                             R0 2 1
       12 GETTABLEKS                       R0 R0 K5 ["Heartbeat"]
       14 NEWCLOSURE                       R2 P0
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          UPVAL U2
       17 CAPTURE                          UPVAL U3
       18 CAPTURE                          UPVAL U4
       19 CAPTURE                          UPVAL U5
       20 CAPTURE                          UPVAL U6
       21 CAPTURE                          UPVAL U7
       22 CAPTURE                          UPVAL U8
       23 NAMECALL                         R0 R0 K6 ["Connect"]
       25 CALL                             R0 2 1
       26 SETUPVAL                         R0 0
       27 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R1 K3 [os.clock]
        2 CALL                             R1 0 1
        3 MULK                             R0 R1 K0 [1000]
        4 SETUPVAL                         R0 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["yieldInterval"]
        2 JUMPIFEQKNIL                     R1 ; [+4]
        4 GETTABLEKS                       R1 R0 K0 ["yieldInterval"]
        6 SETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R0 K1 ["deferredWork"]
        9 JUMPIFEQKNIL                     R1 ; [+4]
       11 GETTABLEKS                       R1 R0 K1 ["deferredWork"]
       13 SETUPVAL                         R1 1
       14 GETTABLEKS                       R1 R0 K2 ["heartbeatFrameMarker"]
       16 JUMPIFEQKNIL                     R1 ; [+4]
       18 GETTABLEKS                       R1 R0 K2 ["heartbeatFrameMarker"]
       20 SETUPVAL                         R1 2
       21 GETTABLEKS                       R1 R0 K3 ["targetMsByHeartbeatDelta"]
       23 JUMPIFEQKNIL                     R1 ; [+45]
       25 GETTABLEKS                       R1 R0 K3 ["targetMsByHeartbeatDelta"]
       27 SETUPVAL                         R1 3
       28 GETTABLEKS                       R1 R0 K3 ["targetMsByHeartbeatDelta"]
       30 JUMPIFNOT                        R1 ; [+28]
       31 GETUPVAL                         R1 4
       32 JUMPIFNOT                        R1 ; [+4]
       33 GETUPVAL                         R1 4
       34 NAMECALL                         R1 R1 K4 ["Disconnect"]
       36 CALL                             R1 1 0
       37 GETIMPORT                        R1 K6 [game]
       39 LOADK                            R3 K7 ["RunService"]
       40 NAMECALL                         R1 R1 K8 ["GetService"]
       42 CALL                             R1 2 1
       43 GETTABLEKS                       R1 R1 K9 ["Heartbeat"]
       45 NEWCLOSURE                       R3 P0
       46 CAPTURE                          UPVAL U5
       47 CAPTURE                          UPVAL U6
       48 CAPTURE                          UPVAL U7
       49 CAPTURE                          UPVAL U8
       50 CAPTURE                          UPVAL U9
       51 CAPTURE                          UPVAL U10
       52 CAPTURE                          UPVAL U11
       53 CAPTURE                          UPVAL U12
       54 NAMECALL                         R1 R1 K10 ["Connect"]
       56 CALL                             R1 2 1
       57 SETUPVAL                         R1 4
       58 JUMP                             ; [+10]
       59 GETUPVAL                         R1 4
       60 JUMPIFNOT                        R1 ; [+8]
       61 GETUPVAL                         R1 4
       62 NAMECALL                         R1 R1 K4 ["Disconnect"]
       64 CALL                             R1 1 0
       65 LOADNIL                          R1
       66 SETUPVAL                         R1 4
       67 GETUPVAL                         R1 11
       68 SETUPVAL                         R1 10
       69 GETTABLEKS                       R1 R0 K11 ["numberOfLookbackFrames"]
       71 JUMPIFEQKNIL                     R1 ; [+4]
       73 GETTABLEKS                       R1 R0 K11 ["numberOfLookbackFrames"]
       75 SETUPVAL                         R1 5
       76 GETTABLEKS                       R1 R0 K12 ["lookbackUseRingBuffer"]
       78 JUMPIFEQKNIL                     R1 ; [+4]
       80 GETTABLEKS                       R1 R0 K12 ["lookbackUseRingBuffer"]
       82 SETUPVAL                         R1 6
       83 RETURN                           R0 0

PROTO_5:
        0 DUPTABLE                         R0 K6 [{"yieldInterval", "deferredWork", "heartbeatFrameMarker", "targetMsByHeartbeatDelta", "numberOfLookbackFrames", "lookbackUseRingBuffer"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["yieldInterval"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["deferredWork"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["heartbeatFrameMarker"]
       10 GETUPVAL                         R1 3
       11 SETTABLEKS                       R1 R0 K3 ["targetMsByHeartbeatDelta"]
       13 GETUPVAL                         R1 4
       14 SETTABLEKS                       R1 R0 K4 ["numberOfLookbackFrames"]
       16 GETUPVAL                         R1 5
       17 SETTABLEKS                       R1 R0 K5 ["lookbackUseRingBuffer"]
       19 RETURN                           R0 1

PROTO_6:
        0 GETIMPORT                        R2 K3 [os.clock]
        2 CALL                             R2 0 1
        3 MULK                             R1 R2 K0 [1000]
        4 GETUPVAL                         R2 0
        5 SUB                              R0 R1 R2
        6 GETUPVAL                         R2 1
        7 SUB                              R1 R2 R0
        8 GETUPVAL                         R3 2
        9 JUMPIFLT                         R3 R1 ; [+2]
       11 LOADB                            R2 0 +1
       12 LOADB                            R2 1
       13 RETURN                           R2 1

PROTO_7:
        0 GETIMPORT                        R2 K3 [os.clock]
        2 CALL                             R2 0 1
        3 MULK                             R1 R2 K0 [1000]
        4 GETUPVAL                         R2 0
        5 JUMPIFLE                         R2 R1 ; [+2]
        7 LOADB                            R0 0 +1
        8 LOADB                            R0 1
        9 RETURN                           R0 1

PROTO_8:
        0 RETURN                           R0 0

PROTO_9:
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
       15 DIVRK                            R2 R2 K0 ["warn"]
       16 FASTCALL1                        MATH_FLOOR R2 ; [+2]
       17 GETIMPORT                        R1 K5 [math.floor]
       19 CALL                             R1 1 1
       20 SETUPVAL                         R1 1
       21 RETURN                           R0 0
       22 LOADN                            R1 5
       23 SETUPVAL                         R1 1
       24 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 1
        4 JUMPIF                           R0 ; [+5]
        5 LOADB                            R1 0
        6 SETUPVAL                         R1 3
        7 LOADNIL                          R1
        8 SETUPVAL                         R1 0
        9 JUMP                             ; [+42]
       10 GETUPVAL                         R1 4
       11 JUMPIFNOT                        R1 ; [+35]
       12 GETIMPORT                        R4 K3 [os.clock]
       14 CALL                             R4 0 1
       15 MULK                             R3 R4 K0 [1000]
       16 GETUPVAL                         R4 5
       17 SUB                              R2 R3 R4
       18 GETUPVAL                         R4 6
       19 SUB                              R3 R4 R2
       20 GETUPVAL                         R4 7
       21 JUMPIFLT                         R4 R3 ; [+2]
       23 LOADB                            R1 0 +1
       24 LOADB                            R1 1
       25 JUMPIFNOT                        R1 ; [+7]
       26 LOADB                            R1 1
       27 SETUPVAL                         R1 8
       28 GETIMPORT                        R1 K6 [task.defer]
       30 GETUPVAL                         R2 9
       31 CALL                             R1 1 0
       32 JUMP                             ; [+19]
       33 LOADB                            R1 0
       34 SETUPVAL                         R1 8
       35 GETIMPORT                        R1 K8 [task.delay]
       37 LOADN                            R2 0
       38 GETUPVAL                         R3 9
       39 CALL                             R1 2 0
       40 GETUPVAL                         R1 10
       41 JUMPIFNOT                        R1 ; [+10]
       42 GETIMPORT                        R1 K6 [task.defer]
       44 GETUPVAL                         R2 11
       45 CALL                             R1 1 0
       46 JUMP                             ; [+5]
       47 GETIMPORT                        R1 K8 [task.delay]
       49 LOADN                            R2 0
       50 GETUPVAL                         R3 9
       51 CALL                             R1 2 0
       52 LOADNIL                          R1
       53 RETURN                           R1 1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+86]
        3 GETIMPORT                        R1 K3 [os.clock]
        5 CALL                             R1 0 1
        6 MULK                             R0 R1 K0 [1000]
        7 GETUPVAL                         R2 2
        8 ADD                              R1 R0 R2
        9 SETUPVAL                         R1 1
       10 LOADB                            R1 1
       11 GETUPVAL                         R2 3
       12 JUMPIFNOT                        R2 ; [+5]
       13 GETUPVAL                         R2 4
       14 JUMPIF                           R2 ; [+3]
       15 GETUPVAL                         R2 5
       16 JUMPIF                           R2 ; [+1]
       17 SETUPVAL                         R0 6
       18 GETUPVAL                         R2 4
       19 JUMPIFNOT                        R2 ; [+17]
       20 GETUPVAL                         R2 5
       21 JUMPIFNOT                        R2 ; [+15]
       22 GETIMPORT                        R5 K3 [os.clock]
       24 CALL                             R5 0 1
       25 MULK                             R4 R5 K0 [1000]
       26 GETUPVAL                         R5 6
       27 SUB                              R3 R4 R5
       28 GETUPVAL                         R5 7
       29 SUB                              R4 R5 R3
       30 GETUPVAL                         R5 2
       31 JUMPIFLT                         R5 R4 ; [+2]
       33 LOADB                            R2 0 +1
       34 LOADB                            R2 1
       35 JUMPIF                           R2 ; [+1]
       36 LOADB                            R1 0
       37 LOADNIL                          R2
       38 LOADNIL                          R3
       39 NEWCLOSURE                       R4 P0
       40 CAPTURE                          UPVAL U0
       41 CAPTURE                          REF R1
       42 CAPTURE                          VAL R0
       43 CAPTURE                          UPVAL U8
       44 CAPTURE                          UPVAL U3
       45 CAPTURE                          UPVAL U6
       46 CAPTURE                          UPVAL U7
       47 CAPTURE                          UPVAL U2
       48 CAPTURE                          UPVAL U5
       49 CAPTURE                          UPVAL U9
       50 CAPTURE                          UPVAL U4
       51 CAPTURE                          UPVAL U10
       52 GETUPVAL                         R5 11
       53 GETTABLEKS                       R5 R5 K4 ["__YOLO__"]
       55 JUMPIF                           R5 ; [+8]
       56 GETIMPORT                        R5 K6 [xpcall]
       58 MOVE                             R6 R4
       59 GETUPVAL                         R7 12
       60 CALL                             R5 2 2
       61 MOVE                             R2 R5
       62 MOVE                             R3 R6
       63 JUMP                             ; [+4]
       64 MOVE                             R5 R4
       65 CALL                             R5 0 1
       66 MOVE                             R3 R5
       67 LOADB                            R2 1
       68 JUMPIF                           R2 ; [+17]
       69 GETIMPORT                        R5 K9 [task.delay]
       71 LOADN                            R6 0
       72 GETUPVAL                         R7 9
       73 CALL                             R5 2 0
       74 GETUPVAL                         R5 4
       75 JUMPIFNOT                        R5 ; [+4]
       76 GETIMPORT                        R5 K11 [task.defer]
       78 GETUPVAL                         R6 10
       79 CALL                             R5 1 0
       80 GETIMPORT                        R5 K13 [error]
       82 GETUPVAL                         R6 13
       83 MOVE                             R7 R3
       84 CALL                             R6 1 -1
       85 CALL                             R5 -1 0
       86 CLOSEUPVALS                      R1
       87 RETURN                           R0 0
       88 LOADB                            R0 0
       89 SETUPVAL                         R0 8
       90 RETURN                           R0 0

PROTO_12:
        0 GETIMPORT                        R0 K2 [coroutine.wrap]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 1
        4 GETIMPORT                        R1 K4 [pcall]
        6 MOVE                             R2 R0
        7 CALL                             R1 1 2
        8 GETIMPORT                        R3 K6 [coroutine.yield]
       10 MOVE                             R4 R1
       11 MOVE                             R5 R2
       12 CALL                             R3 2 0
       13 JUMPBACK                         ; [-14]
       14 RETURN                           R0 0

PROTO_13:
        0 GETIMPORT                        R0 K2 [coroutine.resume]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 3
        4 JUMPIF                           R1 ; [+4]
        5 GETIMPORT                        R3 K4 [error]
        7 MOVE                             R4 R2
        8 CALL                             R3 1 0
        9 RETURN                           R0 0

PROTO_14:
        0 GETIMPORT                        R1 K2 [coroutine.create]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R0
        4 CALL                             R1 1 1
        5 NEWCLOSURE                       R2 P1
        6 CAPTURE                          VAL R1
        7 RETURN                           R2 1

PROTO_15:
        0 SETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 JUMPIF                           R1 ; [+13]
        3 LOADB                            R1 1
        4 SETUPVAL                         R1 1
        5 GETIMPORT                        R1 K2 [task.delay]
        7 LOADN                            R2 0
        8 GETUPVAL                         R3 2
        9 CALL                             R1 2 0
       10 GETUPVAL                         R1 3
       11 JUMPIFNOT                        R1 ; [+4]
       12 GETIMPORT                        R1 K4 [task.defer]
       14 GETUPVAL                         R2 4
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_16:
        0 LOADNIL                          R0
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R2 K3 [os.clock]
        3 CALL                             R2 0 1
        4 MULK                             R1 R2 K0 [1000]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R2 1
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R0
        3 MOVE                             R4 R1
        4 CALL                             R2 2 1
        5 SETUPVAL                         R2 0
        6 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 2
        4 GETTABLEKS                       R0 R0 K0 ["None"]
        6 SETUPVAL                         R0 1
        7 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["ReactGlobals"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K6 ["LuauPolyfill"]
       18 CALL                             R2 1 1
       19 GETTABLEKS                       R3 R2 K7 ["Object"]
       21 GETIMPORT                        R4 K4 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Shared"]
       25 CALL                             R4 1 1
       26 GETTABLEKS                       R5 R4 K9 ["console"]
       28 GETTABLEKS                       R6 R4 K10 ["errorToString"]
       30 GETTABLEKS                       R7 R4 K11 ["describeError"]
       32 GETIMPORT                        R8 K4 [require]
       34 GETTABLEKS                       R9 R0 K12 ["SafeFlags"]
       36 CALL                             R8 1 1
       37 DUPCLOSURE                       R9 K13 [PROTO_0]
       38 GETTABLEKS                       R10 R2 K14 ["setTimeout"]
       40 GETTABLEKS                       R11 R2 K15 ["clearTimeout"]
       42 LOADB                            R12 0
       43 LOADNIL                          R13
       44 GETTABLEKS                       R14 R3 K16 ["None"]
       46 GETTABLEKS                       R15 R8 K17 ["createGetFInt"]
       48 LOADK                            R16 K18 ["ReactSchedulerYieldInterval2"]
       49 LOADN                            R17 15
       50 CALL                             R15 2 1
       51 GETTABLEKS                       R16 R8 K17 ["createGetFInt"]
       53 LOADK                            R17 K19 ["ReactSchedulerDesiredFrameRate"]
       54 LOADN                            R18 60
       55 CALL                             R16 2 1
       56 CALL                             R16 0 1
       57 GETTABLEKS                       R17 R8 K17 ["createGetFInt"]
       59 LOADK                            R18 K20 ["ReactSchedulerMinFrameRate"]
       60 LOADN                            R19 30
       61 CALL                             R17 2 1
       62 CALL                             R17 0 1
       63 GETTABLEKS                       R18 R8 K21 ["createGetFFlag"]
       65 LOADK                            R19 K22 ["ReactSchedulerEnableDeferredWork"]
       66 CALL                             R18 1 1
       67 CALL                             R18 0 1
       68 GETTABLEKS                       R19 R8 K21 ["createGetFFlag"]
       70 LOADK                            R20 K23 ["ReactSchedulerSetFrameMarkerOnHeartbeatEnd"]
       71 CALL                             R19 1 1
       72 CALL                             R19 0 1
       73 GETTABLEKS                       R20 R8 K21 ["createGetFFlag"]
       75 LOADK                            R21 K24 ["ReactSchedulerSetTargetMsByHeartbeatDelta"]
       76 CALL                             R20 1 1
       77 CALL                             R20 0 1
       78 GETTABLEKS                       R21 R8 K17 ["createGetFInt"]
       80 LOADK                            R22 K25 ["ReactSchedulerNumberOfLookbackFrames"]
       81 LOADN                            R23 1
       82 CALL                             R21 2 1
       83 CALL                             R21 0 1
       84 GETTABLEKS                       R22 R8 K21 ["createGetFFlag"]
       86 LOADK                            R23 K26 ["ReactSchedulerLookbackUseRingBuffer"]
       87 CALL                             R22 1 1
       88 CALL                             R22 0 1
       89 LOADB                            R23 0
       90 LOADN                            R24 0
       91 DIVRK                            R25 R27 K16 ["None"]
       92 DIVRK                            R26 R27 K17 ["createGetFInt"]
       93 MOVE                             R27 R25
       94 MOVE                             R28 R27
       95 LOADNIL                          R29
       96 JUMPIFNOT                        R22 ; [+5]
       97 GETIMPORT                        R30 K30 [table.create]
       99 MOVE                             R31 R21
      100 CALL                             R30 1 1
      101 JUMP                             ; [+1]
      102 LOADNIL                          R30
      103 LOADN                            R31 1
      104 NEWCLOSURE                       R32 P1
      105 CAPTURE                          REF R29
      106 CAPTURE                          REF R21
      107 CAPTURE                          REF R22
      108 CAPTURE                          VAL R30
      109 CAPTURE                          REF R31
      110 CAPTURE                          REF R28
      111 CAPTURE                          REF R27
      112 CAPTURE                          VAL R25
      113 CAPTURE                          VAL R26
      114 JUMPIFNOT                        R20 ; [+25]
      115 JUMPIFNOT                        R29 ; [+3]
      116 NAMECALL                         R33 R29 K31 ["Disconnect"]
      118 CALL                             R33 1 0
      119 GETIMPORT                        R33 K33 [game]
      121 LOADK                            R35 K34 ["RunService"]
      122 NAMECALL                         R33 R33 K35 ["GetService"]
      124 CALL                             R33 2 1
      125 GETTABLEKS                       R33 R33 K36 ["Heartbeat"]
      127 NEWCLOSURE                       R35 P2
      128 CAPTURE                          REF R21
      129 CAPTURE                          REF R22
      130 CAPTURE                          VAL R30
      131 CAPTURE                          REF R31
      132 CAPTURE                          REF R28
      133 CAPTURE                          REF R27
      134 CAPTURE                          VAL R25
      135 CAPTURE                          VAL R26
      136 NAMECALL                         R33 R33 K37 ["Connect"]
      138 CALL                             R33 2 1
      139 MOVE                             R29 R33
      140 NEWCLOSURE                       R33 P3
      141 CAPTURE                          REF R24
      142 MOVE                             R34 R15
      143 CALL                             R34 0 1
      144 LOADN                            R35 0
      145 NEWCLOSURE                       R36 P4
      146 CAPTURE                          REF R34
      147 CAPTURE                          REF R18
      148 CAPTURE                          REF R19
      149 CAPTURE                          REF R20
      150 CAPTURE                          REF R29
      151 CAPTURE                          REF R21
      152 CAPTURE                          REF R22
      153 CAPTURE                          VAL R30
      154 CAPTURE                          REF R31
      155 CAPTURE                          REF R28
      156 CAPTURE                          REF R27
      157 CAPTURE                          VAL R25
      158 CAPTURE                          VAL R26
      159 NEWCLOSURE                       R37 P5
      160 CAPTURE                          REF R34
      161 CAPTURE                          REF R18
      162 CAPTURE                          REF R19
      163 CAPTURE                          REF R20
      164 CAPTURE                          REF R21
      165 CAPTURE                          REF R22
      166 NEWCLOSURE                       R38 P6
      167 CAPTURE                          REF R24
      168 CAPTURE                          REF R27
      169 CAPTURE                          REF R34
      170 NEWCLOSURE                       R39 P7
      171 CAPTURE                          REF R35
      172 DUPCLOSURE                       R40 K38 [PROTO_8]
      173 NEWCLOSURE                       R41 P9
      174 CAPTURE                          VAL R5
      175 CAPTURE                          REF R34
      176 NEWCLOSURE                       R42 P10
      177 CAPTURE                          REF R13
      178 CAPTURE                          REF R35
      179 CAPTURE                          REF R34
      180 CAPTURE                          REF R18
      181 CAPTURE                          REF R19
      182 CAPTURE                          REF R23
      183 CAPTURE                          REF R24
      184 CAPTURE                          REF R27
      185 CAPTURE                          REF R12
      186 CAPTURE                          REF R42
      187 CAPTURE                          VAL R33
      188 CAPTURE                          VAL R1
      189 CAPTURE                          VAL R7
      190 CAPTURE                          VAL R6
      191 DUPCLOSURE                       R43 K39 [PROTO_14]
      192 MOVE                             R44 R42
      193 GETIMPORT                        R45 K41 [coroutine.create]
      195 NEWCLOSURE                       R46 P12
      196 CAPTURE                          VAL R44
      197 CALL                             R45 1 1
      198 NEWCLOSURE                       R42 P13
      199 CAPTURE                          VAL R45
      200 NEWCLOSURE                       R44 P14
      201 CAPTURE                          REF R13
      202 CAPTURE                          REF R12
      203 CAPTURE                          REF R42
      204 CAPTURE                          REF R19
      205 CAPTURE                          VAL R33
      206 NEWCLOSURE                       R45 P15
      207 CAPTURE                          REF R13
      208 NEWCLOSURE                       R46 P16
      209 CAPTURE                          REF R14
      210 CAPTURE                          VAL R10
      211 NEWCLOSURE                       R47 P17
      212 CAPTURE                          VAL R11
      213 CAPTURE                          REF R14
      214 CAPTURE                          VAL R3
      215 DUPTABLE                         R48 K52 [{"requestHostCallback", "cancelHostCallback", "requestHostTimeout", "cancelHostTimeout", "shouldYieldToHost", "requestPaint", "getCurrentTime", "forceFrameRate", "setSchedulerFlags", "getSchedulerFlags"}]
      216 SETTABLEKS                       R44 R48 K42 ["requestHostCallback"]
      218 SETTABLEKS                       R45 R48 K43 ["cancelHostCallback"]
      220 SETTABLEKS                       R46 R48 K44 ["requestHostTimeout"]
      222 SETTABLEKS                       R47 R48 K45 ["cancelHostTimeout"]
      224 SETTABLEKS                       R39 R48 K46 ["shouldYieldToHost"]
      226 SETTABLEKS                       R40 R48 K47 ["requestPaint"]
      228 SETTABLEKS                       R9 R48 K48 ["getCurrentTime"]
      230 SETTABLEKS                       R41 R48 K49 ["forceFrameRate"]
      232 SETTABLEKS                       R36 R48 K50 ["setSchedulerFlags"]
      234 SETTABLEKS                       R37 R48 K51 ["getSchedulerFlags"]
      236 CLOSEUPVALS                      R12
      237 RETURN                           R48 1
