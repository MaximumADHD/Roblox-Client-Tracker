PROTO_0:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

PROTO_1:
        0 LOADNIL                          R0
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_2:
        0 SETUPVAL                         R0 0
        1 GETUPVAL                         R3 2
        2 ADD                              R2 R3 R1
        3 SETUPVAL                         R2 1
        4 RETURN                           R0 0

PROTO_3:
        0 LOADNIL                          R0
        1 SETUPVAL                         R0 0
        2 LOADN                            R0 255
        3 SETUPVAL                         R0 1
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 JUMPIFEQKN                       R1 K0 [-1] ; [+7]
        4 JUMPIFEQKNIL                     R0 ; [+5]
        6 LENGTH                           R1 R0
        7 GETUPVAL                         R2 1
        8 JUMPIFLE                         R2 R1 ; [+5]
       10 GETUPVAL                         R1 2
       11 JUMPIFNOT                        R1 ; [+6]
       12 GETUPVAL                         R1 3
       13 JUMPIFNOT                        R1 ; [+4]
       14 LOADB                            R1 1
       15 SETUPVAL                         R1 4
       16 LOADB                            R1 1
       17 RETURN                           R1 1
       18 LOADB                            R1 0
       19 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_6:
        0 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETIMPORT                        R0 K1 [error]
        4 LOADK                            R1 K2 ["Cannot reset while already flushing work."]
        5 CALL                             R0 1 0
        6 LOADN                            R0 0
        7 SETUPVAL                         R0 1
        8 LOADNIL                          R0
        9 SETUPVAL                         R0 2
       10 LOADNIL                          R0
       11 SETUPVAL                         R0 3
       12 LOADN                            R0 255
       13 SETUPVAL                         R0 4
       14 LOADNIL                          R0
       15 SETUPVAL                         R0 5
       16 LOADN                            R0 255
       17 SETUPVAL                         R0 6
       18 LOADB                            R0 0
       19 SETUPVAL                         R0 7
       20 LOADB                            R0 0
       21 SETUPVAL                         R0 0
       22 LOADB                            R0 0
       23 SETUPVAL                         R0 8
       24 RETURN                           R0 0

PROTO_8:
        0 LOADB                            R0 1
        1 GETUPVAL                         R1 0
        2 LOADB                            R2 1
        3 GETUPVAL                         R3 1
        4 CALL                             R1 2 1
        5 MOVE                             R0 R1
        6 JUMPIFNOT                        R0 ; [+3]
        7 GETUPVAL                         R1 2
        8 JUMPIF                           R1 ; [+1]
        9 JUMPBACK                         ; [-9]
       10 JUMPIF                           R0 ; [+2]
       11 LOADNIL                          R1
       12 SETUPVAL                         R1 3
       13 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+4]
        2 GETIMPORT                        R1 K1 [error]
        4 LOADK                            R2 K2 ["Already flushing work."]
        5 CALL                             R1 1 0
        6 GETUPVAL                         R1 1
        7 JUMPIFEQKNIL                     R1 ; [+24]
        9 GETUPVAL                         R1 1
       10 SETUPVAL                         R0 2
       11 LOADB                            R2 1
       12 SETUPVAL                         R2 0
       13 GETIMPORT                        R2 K4 [pcall]
       15 NEWCLOSURE                       R3 P0
       16 CAPTURE                          VAL R1
       17 CAPTURE                          UPVAL U3
       18 CAPTURE                          UPVAL U4
       19 CAPTURE                          UPVAL U1
       20 CALL                             R2 1 2
       21 LOADN                            R4 255
       22 SETUPVAL                         R4 2
       23 LOADB                            R4 0
       24 SETUPVAL                         R4 4
       25 LOADB                            R4 0
       26 SETUPVAL                         R4 0
       27 JUMPIF                           R2 ; [+4]
       28 GETIMPORT                        R4 K1 [error]
       30 MOVE                             R5 R3
       31 CALL                             R4 1 0
       32 RETURN                           R0 0

PROTO_10:
        0 LOADB                            R0 1
        1 GETUPVAL                         R1 0
        2 LOADB                            R2 1
        3 GETUPVAL                         R3 1
        4 CALL                             R1 2 1
        5 MOVE                             R0 R1
        6 JUMPIFNOT                        R0 ; [+3]
        7 GETUPVAL                         R1 2
        8 JUMPIF                           R1 ; [+1]
        9 JUMPBACK                         ; [-9]
       10 JUMPIF                           R0 ; [+2]
       11 LOADNIL                          R1
       12 SETUPVAL                         R1 3
       13 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETIMPORT                        R0 K1 [error]
        4 LOADK                            R1 K2 ["Already flushing work."]
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 1
        7 JUMPIFEQKNIL                     R0 ; [+27]
        9 GETUPVAL                         R0 1
       10 LOADB                            R1 1
       11 SETUPVAL                         R1 2
       12 LOADB                            R1 0
       13 SETUPVAL                         R1 3
       14 LOADB                            R1 1
       15 SETUPVAL                         R1 0
       16 GETIMPORT                        R1 K4 [pcall]
       18 NEWCLOSURE                       R2 P0
       19 CAPTURE                          VAL R0
       20 CAPTURE                          UPVAL U4
       21 CAPTURE                          UPVAL U5
       22 CAPTURE                          UPVAL U1
       23 CALL                             R1 1 2
       24 LOADB                            R3 0
       25 SETUPVAL                         R3 2
       26 LOADB                            R3 0
       27 SETUPVAL                         R3 5
       28 LOADB                            R3 0
       29 SETUPVAL                         R3 0
       30 JUMPIF                           R1 ; [+4]
       31 GETIMPORT                        R3 K1 [error]
       33 MOVE                             R4 R2
       34 CALL                             R3 1 0
       35 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 MOVE                             R1 R0
        2 LOADB                            R2 0
        3 GETUPVAL                         R3 1
        4 CALL                             R1 2 1
        5 JUMPIF                           R1 ; [+2]
        6 LOADNIL                          R2
        7 SETUPVAL                         R2 0
        8 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETIMPORT                        R0 K1 [error]
        4 LOADK                            R1 K2 ["Already flushing work."]
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 1
        7 JUMPIFEQKNIL                     R0 ; [+16]
        9 LOADB                            R0 1
       10 SETUPVAL                         R0 0
       11 GETIMPORT                        R0 K4 [pcall]
       13 NEWCLOSURE                       R1 P0
       14 CAPTURE                          UPVAL U1
       15 CAPTURE                          UPVAL U2
       16 CALL                             R0 1 2
       17 LOADB                            R2 0
       18 SETUPVAL                         R2 0
       19 JUMPIF                           R0 ; [+4]
       20 GETIMPORT                        R2 K1 [error]
       22 MOVE                             R3 R1
       23 CALL                             R2 1 0
       24 RETURN                           R0 0

PROTO_14:
        0 LOADB                            R0 1
        1 GETUPVAL                         R1 0
        2 LOADB                            R2 1
        3 GETUPVAL                         R3 1
        4 CALL                             R1 2 1
        5 MOVE                             R0 R1
        6 JUMPIFNOT                        R0 ; [+1]
        7 JUMPBACK                         ; [-7]
        8 JUMPIF                           R0 ; [+2]
        9 LOADNIL                          R1
       10 SETUPVAL                         R1 2
       11 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETIMPORT                        R0 K1 [error]
        4 LOADK                            R1 K2 ["Already flushing work."]
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 1
        7 JUMPIFEQKNIL                     R0 ; [+20]
        9 GETUPVAL                         R0 1
       10 LOADB                            R1 1
       11 SETUPVAL                         R1 0
       12 GETIMPORT                        R1 K4 [pcall]
       14 NEWCLOSURE                       R2 P0
       15 CAPTURE                          VAL R0
       16 CAPTURE                          UPVAL U2
       17 CAPTURE                          UPVAL U1
       18 CALL                             R1 1 2
       19 LOADB                            R3 0
       20 SETUPVAL                         R3 0
       21 JUMPIF                           R1 ; [+4]
       22 GETIMPORT                        R3 K1 [error]
       24 MOVE                             R4 R2
       25 CALL                             R3 1 0
       26 LOADB                            R3 1
       27 RETURN                           R3 1
       28 LOADB                            R0 0
       29 RETURN                           R0 1

PROTO_16:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+4]
        3 NEWTABLE                         R0 0 0
        5 RETURN                           R0 1
        6 GETUPVAL                         R0 0
        7 LOADNIL                          R1
        8 SETUPVAL                         R1 0
        9 RETURN                           R0 1

PROTO_17:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+5]
        3 GETIMPORT                        R0 K1 [error]
        5 LOADK                            R1 K2 ["Log is not empty. Assert on the log of yielded values before flushing additional work."]
        6 CALL                             R0 1 0
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R0 R1 K3 ["unstable_flushAllWithoutAsserting"]
       10 CALL                             R0 0 0
       11 GETUPVAL                         R0 0
       12 JUMPIFEQKNIL                     R0 ; [+5]
       14 GETIMPORT                        R0 K1 [error]
       16 LOADK                            R1 K4 ["While flushing work, something yielded a value. Use an assertion helper to assert on the log of yielded values, e.g. expect(Scheduler).toFlushAndYield([...])"]
       17 CALL                             R0 1 0
       18 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["log"]
        3 GETUPVAL                         R2 1
        4 JUMPIFNOTEQ                      R1 R2 ; [+2]
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 2
        8 JUMPIFNOTEQKNIL                  R1 ; [+8]
       10 NEWTABLE                         R1 0 1
       12 MOVE                             R2 R0
       13 SETLIST                          R1 R2 1 [1]
       15 SETUPVAL                         R1 2
       16 RETURN                           R0 0
       17 GETUPVAL                         R1 2
       18 FASTCALL2                        TABLE_INSERT R1 R0 ; [+5]
       20 MOVE                             R3 R1
       21 MOVE                             R4 R0
       22 GETIMPORT                        R2 K3 [table.insert]
       24 CALL                             R2 2 0
       25 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["log"]
        3 GETUPVAL                         R2 1
        4 JUMPIFNOTEQ                      R1 R2 ; [+2]
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 2
        8 ADD                              R1 R1 R0
        9 SETUPVAL                         R1 2
       10 GETUPVAL                         R1 3
       11 JUMPIFEQKNIL                     R1 ; [+13]
       13 GETUPVAL                         R1 4
       14 GETUPVAL                         R2 2
       15 JUMPIFNOTLE                      R1 R2 ; [+9]
       17 GETUPVAL                         R1 3
       18 MOVE                             R2 R1
       19 GETUPVAL                         R3 2
       20 CALL                             R2 1 0
       21 LOADN                            R2 255
       22 SETUPVAL                         R2 4
       23 LOADNIL                          R2
       24 SETUPVAL                         R2 3
       25 RETURN                           R0 0

PROTO_20:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 32 0
        3 LOADN                            R1 0
        4 LOADNIL                          R2
        5 LOADNIL                          R3
        6 LOADN                            R4 255
        7 LOADNIL                          R5
        8 LOADN                            R6 255
        9 LOADB                            R7 0
       10 LOADB                            R8 0
       11 LOADB                            R9 0
       12 LOADB                            R10 0
       13 GETIMPORT                        R14 K1 [script]
       15 GETTABLEKS                       R13 R14 K2 ["Parent"]
       17 GETTABLEKS                       R12 R13 K2 ["Parent"]
       19 GETTABLEKS                       R11 R12 K2 ["Parent"]
       21 GETIMPORT                        R13 K4 [require]
       23 GETTABLEKS                       R14 R11 K5 ["Shared"]
       25 CALL                             R13 1 1
       26 GETTABLEKS                       R12 R13 K6 ["console"]
       28 GETIMPORT                        R14 K4 [require]
       30 GETTABLEKS                       R15 R11 K5 ["Shared"]
       32 CALL                             R14 1 1
       33 GETTABLEKS                       R13 R14 K7 ["ConsolePatchingDev"]
       35 GETTABLEKS                       R14 R13 K8 ["disabledLog"]
       37 NEWCLOSURE                       R15 P0
       38 CAPTURE                          REF R2
       39 SETTABLEKS                       R15 R0 K9 ["requestHostCallback"]
       41 NEWCLOSURE                       R15 P1
       42 CAPTURE                          REF R2
       43 SETTABLEKS                       R15 R0 K10 ["cancelHostCallback"]
       45 NEWCLOSURE                       R15 P2
       46 CAPTURE                          REF R3
       47 CAPTURE                          REF R4
       48 CAPTURE                          REF R1
       49 SETTABLEKS                       R15 R0 K11 ["requestHostTimeout"]
       51 NEWCLOSURE                       R15 P3
       52 CAPTURE                          REF R3
       53 CAPTURE                          REF R4
       54 SETTABLEKS                       R15 R0 K12 ["cancelHostTimeout"]
       56 NEWCLOSURE                       R15 P4
       57 CAPTURE                          REF R5
       58 CAPTURE                          REF R6
       59 CAPTURE                          REF R10
       60 CAPTURE                          REF R9
       61 CAPTURE                          REF R7
       62 SETTABLEKS                       R15 R0 K13 ["shouldYieldToHost"]
       64 NEWCLOSURE                       R15 P5
       65 CAPTURE                          REF R1
       66 SETTABLEKS                       R15 R0 K14 ["getCurrentTime"]
       68 DUPCLOSURE                       R15 K15 [PROTO_6]
       69 SETTABLEKS                       R15 R0 K16 ["forceFrameRate"]
       71 NEWCLOSURE                       R15 P7
       72 CAPTURE                          REF R8
       73 CAPTURE                          REF R1
       74 CAPTURE                          REF R2
       75 CAPTURE                          REF R3
       76 CAPTURE                          REF R4
       77 CAPTURE                          REF R5
       78 CAPTURE                          REF R6
       79 CAPTURE                          REF R7
       80 CAPTURE                          REF R9
       81 SETTABLEKS                       R15 R0 K17 ["reset"]
       83 NEWCLOSURE                       R15 P8
       84 CAPTURE                          REF R8
       85 CAPTURE                          REF R2
       86 CAPTURE                          REF R6
       87 CAPTURE                          REF R1
       88 CAPTURE                          REF R7
       89 SETTABLEKS                       R15 R0 K18 ["unstable_flushNumberOfYields"]
       91 NEWCLOSURE                       R15 P9
       92 CAPTURE                          REF R8
       93 CAPTURE                          REF R2
       94 CAPTURE                          REF R10
       95 CAPTURE                          REF R9
       96 CAPTURE                          REF R1
       97 CAPTURE                          REF R7
       98 SETTABLEKS                       R15 R0 K19 ["unstable_flushUntilNextPaint"]
      100 NEWCLOSURE                       R15 P10
      101 CAPTURE                          REF R8
      102 CAPTURE                          REF R2
      103 CAPTURE                          REF R1
      104 SETTABLEKS                       R15 R0 K20 ["unstable_flushExpired"]
      106 NEWCLOSURE                       R15 P11
      107 CAPTURE                          REF R8
      108 CAPTURE                          REF R2
      109 CAPTURE                          REF R1
      110 SETTABLEKS                       R15 R0 K21 ["unstable_flushAllWithoutAsserting"]
      112 NEWCLOSURE                       R15 P12
      113 CAPTURE                          REF R5
      114 SETTABLEKS                       R15 R0 K22 ["unstable_clearYields"]
      116 NEWCLOSURE                       R15 P13
      117 CAPTURE                          REF R5
      118 CAPTURE                          VAL R0
      119 SETTABLEKS                       R15 R0 K23 ["unstable_flushAll"]
      121 NEWCLOSURE                       R15 P14
      122 CAPTURE                          VAL R12
      123 CAPTURE                          VAL R14
      124 CAPTURE                          REF R5
      125 SETTABLEKS                       R15 R0 K24 ["unstable_yieldValue"]
      127 NEWCLOSURE                       R15 P15
      128 CAPTURE                          VAL R12
      129 CAPTURE                          VAL R14
      130 CAPTURE                          REF R1
      131 CAPTURE                          REF R3
      132 CAPTURE                          REF R4
      133 SETTABLEKS                       R15 R0 K25 ["unstable_advanceTime"]
      135 NEWCLOSURE                       R15 P16
      136 CAPTURE                          REF R9
      137 SETTABLEKS                       R15 R0 K26 ["requestPaint"]
      139 CLOSEUPVALS                      R1
      140 RETURN                           R0 1
