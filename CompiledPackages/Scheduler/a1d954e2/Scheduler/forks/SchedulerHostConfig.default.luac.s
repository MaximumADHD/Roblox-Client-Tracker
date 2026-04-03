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
        6 GETIMPORT                        R1 K2 [game]
        8 LOADK                            R3 K3 ["RunService"]
        9 NAMECALL                         R1 R1 K4 ["GetService"]
       11 CALL                             R1 2 1
       12 GETTABLEKS                       R0 R1 K5 ["Heartbeat"]
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
       37 GETIMPORT                        R2 K6 [game]
       39 LOADK                            R4 K7 ["RunService"]
       40 NAMECALL                         R2 R2 K8 ["GetService"]
       42 CALL                             R2 2 1
       43 GETTABLEKS                       R1 R2 K9 ["Heartbeat"]
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
       76 RETURN                           R0 0

PROTO_5:
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

PROTO_6:
        0 GETIMPORT                        R2 K3 [os.clock]
        2 CALL                             R2 0 1
        3 MULK                             R1 R2 K0 [1000]
        4 GETUPVAL                         R2 0
        5 JUMPIFLE                         R2 R1 ; [+2]
        7 LOADB                            R0 0 +1
        8 LOADB                            R0 1
        9 RETURN                           R0 1

PROTO_7:
        0 RETURN                           R0 0

PROTO_8:
        0 LOADN                            R1 0
        1 JUMPIFLT                         R0 R1 ; [+4]
        3 LOADN                            R1 125
        4 JUMPIFNOTLT                      R1 R0 ; [+7]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K0 ["warn"]
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

PROTO_9:
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

PROTO_10:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+87]
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
       52 GETIMPORT                        R6 K5 [_G]
       54 GETTABLEKS                       R5 R6 K6 ["__YOLO__"]
       56 JUMPIF                           R5 ; [+8]
       57 GETIMPORT                        R5 K8 [xpcall]
       59 MOVE                             R6 R4
       60 GETUPVAL                         R7 11
       61 CALL                             R5 2 2
       62 MOVE                             R2 R5
       63 MOVE                             R3 R6
       64 JUMP                             ; [+4]
       65 MOVE                             R5 R4
       66 CALL                             R5 0 1
       67 MOVE                             R3 R5
       68 LOADB                            R2 1
       69 JUMPIF                           R2 ; [+17]
       70 GETIMPORT                        R5 K11 [task.delay]
       72 LOADN                            R6 0
       73 GETUPVAL                         R7 9
       74 CALL                             R5 2 0
       75 GETUPVAL                         R5 4
       76 JUMPIFNOT                        R5 ; [+4]
       77 GETIMPORT                        R5 K13 [task.defer]
       79 GETUPVAL                         R6 10
       80 CALL                             R5 1 0
       81 GETIMPORT                        R5 K15 [error]
       83 GETUPVAL                         R6 12
       84 MOVE                             R7 R3
       85 CALL                             R6 1 -1
       86 CALL                             R5 -1 0
       87 CLOSEUPVALS                      R1
       88 RETURN                           R0 0
       89 LOADB                            R0 0
       90 SETUPVAL                         R0 8
       91 RETURN                           R0 0

PROTO_11:
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

PROTO_12:
        0 GETIMPORT                        R0 K2 [coroutine.resume]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 3
        4 JUMPIF                           R1 ; [+4]
        5 GETIMPORT                        R3 K4 [error]
        7 MOVE                             R4 R2
        8 CALL                             R3 1 0
        9 RETURN                           R0 0

PROTO_13:
        0 GETIMPORT                        R1 K2 [coroutine.create]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R0
        4 CALL                             R1 1 1
        5 NEWCLOSURE                       R2 P1
        6 CAPTURE                          VAL R1
        7 RETURN                           R2 1

PROTO_14:
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

PROTO_15:
        0 LOADNIL                          R0
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R2 K3 [os.clock]
        3 CALL                             R2 0 1
        4 MULK                             R1 R2 K0 [1000]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R2 1
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R0
        3 MOVE                             R4 R1
        4 CALL                             R2 2 1
        5 SETUPVAL                         R2 0
        6 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R1 2
        4 GETTABLEKS                       R0 R1 K0 ["None"]
        6 SETUPVAL                         R0 1
        7 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K6 ["Object"]
       16 GETIMPORT                        R3 K4 [require]
       18 GETTABLEKS                       R4 R0 K7 ["Shared"]
       20 CALL                             R3 1 1
       21 GETTABLEKS                       R4 R3 K8 ["console"]
       23 GETTABLEKS                       R5 R3 K9 ["errorToString"]
       25 GETTABLEKS                       R6 R3 K10 ["describeError"]
       27 GETIMPORT                        R7 K4 [require]
       29 GETTABLEKS                       R8 R0 K11 ["SafeFlags"]
       31 CALL                             R7 1 1
       32 DUPCLOSURE                       R8 K12 [PROTO_0]
       33 GETTABLEKS                       R9 R1 K13 ["setTimeout"]
       35 GETTABLEKS                       R10 R1 K14 ["clearTimeout"]
       37 LOADB                            R11 0
       38 LOADNIL                          R12
       39 GETTABLEKS                       R13 R2 K15 ["None"]
       41 GETTABLEKS                       R14 R7 K16 ["createGetFInt"]
       43 LOADK                            R15 K17 ["ReactSchedulerYieldInterval2"]
       44 LOADN                            R16 15
       45 CALL                             R14 2 1
       46 GETTABLEKS                       R15 R7 K16 ["createGetFInt"]
       48 LOADK                            R16 K18 ["ReactSchedulerDesiredFrameRate"]
       49 LOADN                            R17 60
       50 CALL                             R15 2 1
       51 CALL                             R15 0 1
       52 GETTABLEKS                       R16 R7 K16 ["createGetFInt"]
       54 LOADK                            R17 K19 ["ReactSchedulerMinFrameRate"]
       55 LOADN                            R18 30
       56 CALL                             R16 2 1
       57 CALL                             R16 0 1
       58 GETTABLEKS                       R17 R7 K20 ["createGetFFlag"]
       60 LOADK                            R18 K21 ["ReactSchedulerEnableDeferredWork"]
       61 CALL                             R17 1 1
       62 CALL                             R17 0 1
       63 GETTABLEKS                       R18 R7 K20 ["createGetFFlag"]
       65 LOADK                            R19 K22 ["ReactSchedulerSetFrameMarkerOnHeartbeatEnd"]
       66 CALL                             R18 1 1
       67 CALL                             R18 0 1
       68 GETTABLEKS                       R19 R7 K20 ["createGetFFlag"]
       70 LOADK                            R20 K23 ["ReactSchedulerSetTargetMsByHeartbeatDelta"]
       71 CALL                             R19 1 1
       72 CALL                             R19 0 1
       73 GETTABLEKS                       R20 R7 K16 ["createGetFInt"]
       75 LOADK                            R21 K24 ["ReactSchedulerNumberOfLookbackFrames"]
       76 LOADN                            R22 1
       77 CALL                             R20 2 1
       78 CALL                             R20 0 1
       79 GETTABLEKS                       R21 R7 K20 ["createGetFFlag"]
       81 LOADK                            R22 K25 ["ReactSchedulerLookbackUseRingBuffer"]
       82 CALL                             R21 1 1
       83 CALL                             R21 0 1
       84 LOADB                            R22 0
       85 LOADN                            R23 0
       86 DIVRK                            R24 R26 K15 ["None"]
       87 DIVRK                            R25 R26 K16 ["createGetFInt"]
       88 MOVE                             R26 R24
       89 MOVE                             R27 R26
       90 LOADNIL                          R28
       91 JUMPIFNOT                        R21 ; [+5]
       92 GETIMPORT                        R29 K29 [table.create]
       94 MOVE                             R30 R20
       95 CALL                             R29 1 1
       96 JUMP                             ; [+1]
       97 LOADNIL                          R29
       98 LOADN                            R30 1
       99 NEWCLOSURE                       R31 P1
      100 CAPTURE                          REF R28
      101 CAPTURE                          REF R20
      102 CAPTURE                          VAL R21
      103 CAPTURE                          VAL R29
      104 CAPTURE                          REF R30
      105 CAPTURE                          REF R27
      106 CAPTURE                          REF R26
      107 CAPTURE                          VAL R24
      108 CAPTURE                          VAL R25
      109 JUMPIFNOT                        R19 ; [+25]
      110 JUMPIFNOT                        R28 ; [+3]
      111 NAMECALL                         R32 R28 K30 ["Disconnect"]
      113 CALL                             R32 1 0
      114 GETIMPORT                        R33 K32 [game]
      116 LOADK                            R35 K33 ["RunService"]
      117 NAMECALL                         R33 R33 K34 ["GetService"]
      119 CALL                             R33 2 1
      120 GETTABLEKS                       R32 R33 K35 ["Heartbeat"]
      122 NEWCLOSURE                       R34 P2
      123 CAPTURE                          REF R20
      124 CAPTURE                          VAL R21
      125 CAPTURE                          VAL R29
      126 CAPTURE                          REF R30
      127 CAPTURE                          REF R27
      128 CAPTURE                          REF R26
      129 CAPTURE                          VAL R24
      130 CAPTURE                          VAL R25
      131 NAMECALL                         R32 R32 K36 ["Connect"]
      133 CALL                             R32 2 1
      134 MOVE                             R28 R32
      135 NEWCLOSURE                       R32 P3
      136 CAPTURE                          REF R23
      137 MOVE                             R33 R14
      138 CALL                             R33 0 1
      139 LOADN                            R34 0
      140 NEWCLOSURE                       R35 P4
      141 CAPTURE                          REF R33
      142 CAPTURE                          REF R17
      143 CAPTURE                          REF R18
      144 CAPTURE                          REF R19
      145 CAPTURE                          REF R28
      146 CAPTURE                          REF R20
      147 CAPTURE                          VAL R21
      148 CAPTURE                          VAL R29
      149 CAPTURE                          REF R30
      150 CAPTURE                          REF R27
      151 CAPTURE                          REF R26
      152 CAPTURE                          VAL R24
      153 CAPTURE                          VAL R25
      154 NEWCLOSURE                       R36 P5
      155 CAPTURE                          REF R23
      156 CAPTURE                          REF R26
      157 CAPTURE                          REF R33
      158 NEWCLOSURE                       R37 P6
      159 CAPTURE                          REF R34
      160 DUPCLOSURE                       R38 K37 [PROTO_7]
      161 NEWCLOSURE                       R39 P8
      162 CAPTURE                          VAL R4
      163 CAPTURE                          REF R33
      164 NEWCLOSURE                       R40 P9
      165 CAPTURE                          REF R12
      166 CAPTURE                          REF R34
      167 CAPTURE                          REF R33
      168 CAPTURE                          REF R17
      169 CAPTURE                          REF R18
      170 CAPTURE                          REF R22
      171 CAPTURE                          REF R23
      172 CAPTURE                          REF R26
      173 CAPTURE                          REF R11
      174 CAPTURE                          REF R40
      175 CAPTURE                          VAL R32
      176 CAPTURE                          VAL R6
      177 CAPTURE                          VAL R5
      178 DUPCLOSURE                       R41 K38 [PROTO_13]
      179 MOVE                             R42 R40
      180 GETIMPORT                        R43 K40 [coroutine.create]
      182 NEWCLOSURE                       R44 P11
      183 CAPTURE                          VAL R42
      184 CALL                             R43 1 1
      185 NEWCLOSURE                       R40 P12
      186 CAPTURE                          VAL R43
      187 NEWCLOSURE                       R42 P13
      188 CAPTURE                          REF R12
      189 CAPTURE                          REF R11
      190 CAPTURE                          REF R40
      191 CAPTURE                          REF R18
      192 CAPTURE                          VAL R32
      193 NEWCLOSURE                       R43 P14
      194 CAPTURE                          REF R12
      195 NEWCLOSURE                       R44 P15
      196 CAPTURE                          REF R13
      197 CAPTURE                          VAL R9
      198 NEWCLOSURE                       R45 P16
      199 CAPTURE                          VAL R10
      200 CAPTURE                          REF R13
      201 CAPTURE                          VAL R2
      202 DUPTABLE                         R46 K50 [{"requestHostCallback", "cancelHostCallback", "requestHostTimeout", "cancelHostTimeout", "shouldYieldToHost", "requestPaint", "getCurrentTime", "forceFrameRate", "setSchedulerFlags"}]
      203 SETTABLEKS                       R42 R46 K41 ["requestHostCallback"]
      205 SETTABLEKS                       R43 R46 K42 ["cancelHostCallback"]
      207 SETTABLEKS                       R44 R46 K43 ["requestHostTimeout"]
      209 SETTABLEKS                       R45 R46 K44 ["cancelHostTimeout"]
      211 SETTABLEKS                       R37 R46 K45 ["shouldYieldToHost"]
      213 SETTABLEKS                       R38 R46 K46 ["requestPaint"]
      215 SETTABLEKS                       R8 R46 K47 ["getCurrentTime"]
      217 SETTABLEKS                       R39 R46 K48 ["forceFrameRate"]
      219 SETTABLEKS                       R35 R46 K49 ["setSchedulerFlags"]
      221 CLOSEUPVALS                      R11
      222 RETURN                           R46 1
