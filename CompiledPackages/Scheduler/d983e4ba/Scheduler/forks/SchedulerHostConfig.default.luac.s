PROTO_0:
        0 GETIMPORT                        R1 K3 [os.clock]
        2 CALL                             R1 0 1
        3 MULK                             R0 R1 K0 [1000]
        4 RETURN                           R0 1

PROTO_1:
        0 MULK                             R2 R0 K0 [1000]
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 FASTCALL                         MATH_CLAMP ; [+2]
        4 GETIMPORT                        R1 K3 [math.clamp]
        6 CALL                             R1 3 1
        7 SETUPVAL                         R1 0
        8 RETURN                           R0 0

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
       18 NAMECALL                         R0 R0 K6 ["Connect"]
       20 CALL                             R0 2 1
       21 SETUPVAL                         R0 0
       22 RETURN                           R0 0

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
       23 JUMPIFEQKNIL                     R1 ; [+40]
       25 GETTABLEKS                       R1 R0 K3 ["targetMsByHeartbeatDelta"]
       27 SETUPVAL                         R1 3
       28 GETTABLEKS                       R1 R0 K3 ["targetMsByHeartbeatDelta"]
       30 JUMPIFNOT                        R1 ; [+23]
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
       49 NAMECALL                         R1 R1 K10 ["Connect"]
       51 CALL                             R1 2 1
       52 SETUPVAL                         R1 4
       53 RETURN                           R0 0
       54 GETUPVAL                         R1 4
       55 JUMPIFNOT                        R1 ; [+8]
       56 GETUPVAL                         R1 4
       57 NAMECALL                         R1 R1 K4 ["Disconnect"]
       59 CALL                             R1 1 0
       60 LOADNIL                          R1
       61 SETUPVAL                         R1 4
       62 GETUPVAL                         R1 6
       63 SETUPVAL                         R1 5
       64 RETURN                           R0 0

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
       73 LOADB                            R20 0
       74 LOADN                            R21 0
       75 DIVRK                            R22 R24 K15 ["None"]
       76 DIVRK                            R23 R24 K16 ["createGetFInt"]
       77 MOVE                             R24 R22
       78 LOADNIL                          R25
       79 NEWCLOSURE                       R26 P1
       80 CAPTURE                          REF R25
       81 CAPTURE                          REF R24
       82 CAPTURE                          VAL R22
       83 CAPTURE                          VAL R23
       84 JUMPIFNOT                        R19 ; [+20]
       85 JUMPIFNOT                        R25 ; [+3]
       86 NAMECALL                         R27 R25 K25 ["Disconnect"]
       88 CALL                             R27 1 0
       89 GETIMPORT                        R28 K27 [game]
       91 LOADK                            R30 K28 ["RunService"]
       92 NAMECALL                         R28 R28 K29 ["GetService"]
       94 CALL                             R28 2 1
       95 GETTABLEKS                       R27 R28 K30 ["Heartbeat"]
       97 NEWCLOSURE                       R29 P2
       98 CAPTURE                          REF R24
       99 CAPTURE                          VAL R22
      100 CAPTURE                          VAL R23
      101 NAMECALL                         R27 R27 K31 ["Connect"]
      103 CALL                             R27 2 1
      104 MOVE                             R25 R27
      105 NEWCLOSURE                       R27 P3
      106 CAPTURE                          REF R21
      107 MOVE                             R28 R14
      108 CALL                             R28 0 1
      109 LOADN                            R29 0
      110 NEWCLOSURE                       R30 P4
      111 CAPTURE                          REF R28
      112 CAPTURE                          REF R17
      113 CAPTURE                          REF R18
      114 CAPTURE                          REF R19
      115 CAPTURE                          REF R25
      116 CAPTURE                          REF R24
      117 CAPTURE                          VAL R22
      118 CAPTURE                          VAL R23
      119 NEWCLOSURE                       R31 P5
      120 CAPTURE                          REF R21
      121 CAPTURE                          REF R24
      122 CAPTURE                          REF R28
      123 NEWCLOSURE                       R32 P6
      124 CAPTURE                          REF R29
      125 DUPCLOSURE                       R33 K32 [PROTO_7]
      126 NEWCLOSURE                       R34 P8
      127 CAPTURE                          VAL R4
      128 CAPTURE                          REF R28
      129 NEWCLOSURE                       R35 P9
      130 CAPTURE                          REF R12
      131 CAPTURE                          REF R29
      132 CAPTURE                          REF R28
      133 CAPTURE                          REF R17
      134 CAPTURE                          REF R18
      135 CAPTURE                          REF R20
      136 CAPTURE                          REF R21
      137 CAPTURE                          REF R24
      138 CAPTURE                          REF R11
      139 CAPTURE                          REF R35
      140 CAPTURE                          VAL R27
      141 CAPTURE                          VAL R6
      142 CAPTURE                          VAL R5
      143 DUPCLOSURE                       R36 K33 [PROTO_13]
      144 MOVE                             R37 R35
      145 GETIMPORT                        R38 K36 [coroutine.create]
      147 NEWCLOSURE                       R39 P11
      148 CAPTURE                          VAL R37
      149 CALL                             R38 1 1
      150 NEWCLOSURE                       R35 P12
      151 CAPTURE                          VAL R38
      152 NEWCLOSURE                       R37 P13
      153 CAPTURE                          REF R12
      154 CAPTURE                          REF R11
      155 CAPTURE                          REF R35
      156 CAPTURE                          REF R18
      157 CAPTURE                          VAL R27
      158 NEWCLOSURE                       R38 P14
      159 CAPTURE                          REF R12
      160 NEWCLOSURE                       R39 P15
      161 CAPTURE                          REF R13
      162 CAPTURE                          VAL R9
      163 NEWCLOSURE                       R40 P16
      164 CAPTURE                          VAL R10
      165 CAPTURE                          REF R13
      166 CAPTURE                          VAL R2
      167 DUPTABLE                         R41 K46 [{"requestHostCallback", "cancelHostCallback", "requestHostTimeout", "cancelHostTimeout", "shouldYieldToHost", "requestPaint", "getCurrentTime", "forceFrameRate", "setSchedulerFlags"}]
      168 SETTABLEKS                       R37 R41 K37 ["requestHostCallback"]
      170 SETTABLEKS                       R38 R41 K38 ["cancelHostCallback"]
      172 SETTABLEKS                       R39 R41 K39 ["requestHostTimeout"]
      174 SETTABLEKS                       R40 R41 K40 ["cancelHostTimeout"]
      176 SETTABLEKS                       R32 R41 K41 ["shouldYieldToHost"]
      178 SETTABLEKS                       R33 R41 K42 ["requestPaint"]
      180 SETTABLEKS                       R8 R41 K43 ["getCurrentTime"]
      182 SETTABLEKS                       R34 R41 K44 ["forceFrameRate"]
      184 SETTABLEKS                       R30 R41 K45 ["setSchedulerFlags"]
      186 CLOSEUPVALS                      R11
      187 RETURN                           R41 1
