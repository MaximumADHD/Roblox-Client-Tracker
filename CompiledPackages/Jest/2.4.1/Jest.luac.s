PROTO_0:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETVARARGS                       R2 -1
        3 NAMECALL                         R0 R0 K0 ["fn"]
        5 CALL                             R0 -1 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["clearAllMocks"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["resetAllMocks"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["useFakeTimers"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["useRealTimers"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["runAllTicks"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["runAllTimers"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["advanceTimersByTime"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["advanceTimersByTime"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["runOnlyPendingTimers"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["advanceTimerstoNextTimer"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["clearAllTimers"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["getTimerCount"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["setSystemTime"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["getRealSystemTime"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R1 R0 K2 ["Parent"]
        5 GETIMPORT                        R3 K4 [require]
        7 GETTABLEKS                       R4 R1 K5 ["JestMock"]
        9 CALL                             R3 1 1
       10 GETTABLEKS                       R2 R3 K6 ["ModuleMocker"]
       12 GETIMPORT                        R3 K4 [require]
       14 GETTABLEKS                       R4 R1 K7 ["JestFakeTimers"]
       16 CALL                             R3 1 1
       17 GETTABLEKS                       R4 R3 K8 ["new"]
       19 CALL                             R4 0 1
       20 GETTABLEKS                       R5 R2 K8 ["new"]
       22 CALL                             R5 0 1
       23 DUPTABLE                         R6 K27 [{"fn", "clearAllMocks", "resetAllMocks", "_mock", "useFakeTimers", "useRealTimers", "runAllTicks", "runAllTimers", "advanceTimersByTime", "runTimersToTime", "runOnlyPendingTimers", "advanceTimerstoNextTimer", "clearAllTimers", "getTimerCount", "setSystemTime", "getRealSystemTime", "testEnv", "_fakeTimers"}]
       24 DUPCLOSURE                       R7 K28 [PROTO_0]
       25 CAPTURE                          VAL R5
       26 SETTABLEKS                       R7 R6 K9 ["fn"]
       28 DUPCLOSURE                       R7 K29 [PROTO_1]
       29 CAPTURE                          VAL R5
       30 SETTABLEKS                       R7 R6 K10 ["clearAllMocks"]
       32 DUPCLOSURE                       R7 K30 [PROTO_2]
       33 CAPTURE                          VAL R5
       34 SETTABLEKS                       R7 R6 K11 ["resetAllMocks"]
       36 SETTABLEKS                       R5 R6 K12 ["_mock"]
       38 DUPCLOSURE                       R7 K31 [PROTO_3]
       39 CAPTURE                          VAL R4
       40 SETTABLEKS                       R7 R6 K13 ["useFakeTimers"]
       42 DUPCLOSURE                       R7 K32 [PROTO_4]
       43 CAPTURE                          VAL R4
       44 SETTABLEKS                       R7 R6 K14 ["useRealTimers"]
       46 DUPCLOSURE                       R7 K33 [PROTO_5]
       47 CAPTURE                          VAL R4
       48 SETTABLEKS                       R7 R6 K15 ["runAllTicks"]
       50 DUPCLOSURE                       R7 K34 [PROTO_6]
       51 CAPTURE                          VAL R4
       52 SETTABLEKS                       R7 R6 K16 ["runAllTimers"]
       54 DUPCLOSURE                       R7 K35 [PROTO_7]
       55 CAPTURE                          VAL R4
       56 SETTABLEKS                       R7 R6 K17 ["advanceTimersByTime"]
       58 DUPCLOSURE                       R7 K36 [PROTO_8]
       59 CAPTURE                          VAL R4
       60 SETTABLEKS                       R7 R6 K18 ["runTimersToTime"]
       62 DUPCLOSURE                       R7 K37 [PROTO_9]
       63 CAPTURE                          VAL R4
       64 SETTABLEKS                       R7 R6 K19 ["runOnlyPendingTimers"]
       66 DUPCLOSURE                       R7 K38 [PROTO_10]
       67 CAPTURE                          VAL R4
       68 SETTABLEKS                       R7 R6 K20 ["advanceTimerstoNextTimer"]
       70 DUPCLOSURE                       R7 K39 [PROTO_11]
       71 CAPTURE                          VAL R4
       72 SETTABLEKS                       R7 R6 K21 ["clearAllTimers"]
       74 DUPCLOSURE                       R7 K40 [PROTO_12]
       75 CAPTURE                          VAL R4
       76 SETTABLEKS                       R7 R6 K22 ["getTimerCount"]
       78 DUPCLOSURE                       R7 K41 [PROTO_13]
       79 CAPTURE                          VAL R4
       80 SETTABLEKS                       R7 R6 K23 ["setSystemTime"]
       82 DUPCLOSURE                       R7 K42 [PROTO_14]
       83 CAPTURE                          VAL R4
       84 SETTABLEKS                       R7 R6 K24 ["getRealSystemTime"]
       86 DUPTABLE                         R7 K47 [{"delay", "tick", "DateTime", "os"}]
       87 GETTABLEKS                       R8 R4 K48 ["delayOverride"]
       89 SETTABLEKS                       R8 R7 K43 ["delay"]
       91 GETTABLEKS                       R8 R4 K49 ["tickOverride"]
       93 SETTABLEKS                       R8 R7 K44 ["tick"]
       95 GETTABLEKS                       R8 R4 K50 ["dateTimeOverride"]
       97 SETTABLEKS                       R8 R7 K45 ["DateTime"]
       99 GETTABLEKS                       R8 R4 K51 ["osOverride"]
      101 SETTABLEKS                       R8 R7 K46 ["os"]
      103 SETTABLEKS                       R7 R6 K25 ["testEnv"]
      105 SETTABLEKS                       R4 R6 K26 ["_fakeTimers"]
      107 RETURN                           R6 1
